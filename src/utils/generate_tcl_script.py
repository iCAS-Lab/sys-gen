"""Relevant code for generating TCL scripts for synthesizing the verilog.
"""
################################################################################
import textwrap
from generics.verilog_module import VerilogModule
from utils.config import Config
from utils.functional import get_all_verilog_files, replace_middle_string
from pathlib import Path
################################################################################


class TCLGenerator:
    def __init__(
        self,
        top_module: VerilogModule,
        config: Config,
        skip_outputs: bool = True
    ):
        self.config = config
        self.run_cores = 8
        self.work_path = './work'
        self.top_module = top_module
        self.top_module_name = self.top_module.module_name
        self.skip_outputs = skip_outputs
        self.search_path = [
            '/opt/hardware_tools/Free_PDK /opt/hardware_tools/Free_PDK'
        ]
        self.link_library = [
            'NangateOpenCellLibrary_typical_conditional_nldm.db',
            '/opt/synopsys/design_compiler/syn/V-2023.12-SP5/libraries/syn/dw_foundation.sldb'
        ]
        self.target_library = [
            'NangateOpenCellLibrary_typical_conditional_nldm.db'
        ]
        self.section_dividers = (
            '# ' + '-' * (self.config.LINE_LENGTH - 4) + ' #\n'
        )

    def init_prefix(self):
        section_title = ' Setup '
        script = self.section_dividers
        script += replace_middle_string(self.section_dividers, section_title)
        script += self.section_dividers
        script += textwrap.dedent(f"""
        set_host_options -max_cores {self.run_cores}
        define_design_lib WORK -path "{self.work_path}"
        set TopDesign "{self.top_module_name}"
        set_svf ./results/${{TopDesign}}.svf
        set search_path [list {' '.join(self.search_path)}]
        set link_library [list * {' '.join(self.link_library)}]
        set target_library {' '.join(self.target_library)}
        \n""")
        return script

    def init_rtl_files(self):
        section_title = ' RTL File List '
        script = self.section_dividers
        script += replace_middle_string(self.section_dividers, section_title)
        script += self.section_dividers
        all_verilog_files = []
        get_all_verilog_files(self.top_module, all_verilog_files)
        file_list = ' \\\n '.join(all_verilog_files)
        script += '\nset RTL_files {\\\n'
        script += ' ' + file_list
        script += '\n}\n'
        script += textwrap.dedent("""
        foreach design $RTL_files {
         analyze - format verilog ./rtl /${design}
        }\n
        """)
        return script

    def init_design_constraints(self):
        # TODO: Make this parameterizable
        section_title = ' Design Constraints '
        script = self.section_dividers
        script += replace_middle_string(self.section_dividers, section_title)
        script += self.section_dividers
        script += textwrap.dedent(f"""
        reset_design

        set auto_wire_load_selection true
        set_wire_load_mode top

        #Creating Clock
        set clkPrd 10;
        set clkPrd_h [expr {{$clkPrd / 2}}]; #Half Clock Period
        set clkSkewSU [expr {{$clkPrd * 0.02}}]; #Clock Skew Setup

        create_clock -period $clkPrd -name clk; #[get_ports clk]
        set_clock_uncertainty -setup $clkSkewSU [get_clocks clk]

        set_clock_latency -source -max [expr {{$clkPrd*0.05}}] [get_clocks clk]
        set_clock_latency -max [expr {{$clkPrd*0.05}}] [get_clocks clk]

        #set_clock_transition -max 0.08 [get_clocks clk]

        #Setting Input/Output Delay
        set ALL_INP [all_inputs]
        set_input_delay -max [expr {{$clkPrd*0.30}}] -clock [get_clocks clk] $ALL_INP
        set_output_delay -max [expr {{$clkPrd*0.30}}] -clock [get_clocks clk] [all_outputs]

        #Setting Input/Output Design Rule Constraints
        set MAX_INPUT_LOAD [expr {{6 * [load_of NangateOpenCellLibrary/AND2_X1/A1]}}]
        set_max_capacitance $MAX_INPUT_LOAD $ALL_INP; #DC limits load on input ports
        set_load -max [expr {{4 * $MAX_INPUT_LOAD}}] [all_outputs]; #DC set output port driving capability
        set_input_transition -max 0.2 $ALL_INP; #specify transition times of input ports
        set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary $ALL_INP;
        \n""")
        return script

    def init_timing_closure(self):
        # TODO: Make this parameterizable
        section_title = ' Timing Closure '
        script = self.section_dividers
        script += replace_middle_string(self.section_dividers, section_title)
        script += self.section_dividers
        script += textwrap.dedent("""
        set violation_counter 0 

        # Timing closure loop
        while {1} {
            # Compiling
            compile
            # Save the timing/area reports
            report_timing
            report_area
            report_timing >> ./reports/dump_timing.txt
            set deleted_name "./reports/dump_timing.txt"
            set timing_file [open "./reports/dump_timing.txt" r] 
            set timing_file_content [read $timing_file]
            close $timing_file
            file delete $deleted_name
            if {[regexp {VIOLATED} $timing_file_content]} {
                puts "Design Violated Timing"
                puts "Clock time that violates is equal to $clkPrd"
                incr violation_counter 
                set clkPrd [expr {$clkPrd * 1.01}]
            } elseif {[regexp {MET} $timing_file_content] && $violation_counter < 4} {
                puts "Design MEETS Timing"
                puts "Valid clock time is $clkPrd"
                set clkPrd [expr {$clkPrd * 0.98}]
            } elseif {[regexp {MET} $timing_file_content] && $violation_counter >= 4} {
                puts "Design should be done now after 4 iterations" 
                puts "Faster clock time is $clkPrd" 
                puts "End of while loop"
                break 
            }
            set clkPrd_h [expr {$clkPrd / 2}]; #Half Clock Period
            set clkSkewSU [expr {$clkPrd * 0.02}]; #Clock Skew Setup
            remove_clock -all 
            create_clock -period $clkPrd -name clk
            set_clock_latency -source -max [expr {$clkPrd*0.05}] [get_clocks clk]
            set_clock_latency -max [expr {$clkPrd*0.05}] [get_clocks clk]
            #Setting Input/Output Delay
            set ALL_INP [all_inputs]
            set_input_delay -max [expr {$clkPrd*0.30}] -clock [get_clocks clk] $ALL_INP
            set_output_delay -max [expr {$clkPrd*0.30}] -clock [get_clocks clk] [all_outputs]
            #Setting Input/Output Design Rule Constraints
            set MAX_INPUT_LOAD [expr {6 * [load_of NangateOpenCellLibrary/AND2_X1/A1]}]
            set_max_capacitance $MAX_INPUT_LOAD $ALL_INP; #DC limits load on input ports
            set_load -max [expr {4 * $MAX_INPUT_LOAD}] [all_outputs]; #DC set output port driving capability
            set_input_transition -max 0.2 $ALL_INP; #specify transition times of input ports
            set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary $ALL_INP;
        }

        puts "Final compilation stage" 
        compile_ultra -no_autoungroup
        \n""")
        return script

    def compile(self):
        section_title = ' Final Compile of Best Timing '
        script = self.section_dividers
        script += replace_middle_string(self.section_dividers, section_title)
        script += self.section_dividers
        script += textwrap.dedent("""
        compile_ultra -no_autoungroup -incremental
        puts "Starting generating reports"
        \n""")
        return script

    def create_reports(self):
        section_title = ' Generate Reports '
        script = self.section_dividers
        script += replace_middle_string(self.section_dividers, section_title)
        script += self.section_dividers
        script += textwrap.dedent("""
        report_constraint -all_violators
        report_clock -attributes -skew  > ./reports/report_clock.txt
        report_hierarchy                > ./reports/report_hier.txt
        report_compile_options          > ./reports/report_option.txt
        report_resources -hierarchy     > ./reports/report_resource.txt
        report_port -verbose            > ./reports/report_port.txt
        all_registers -level_sensitive  > ./reports/report_latches.txt
        report_timing -loops            > ./reports/report_loops.txt
        report_power                    > ./reports/report_power.txt
        report_timing                   > ./reports/report_timing.txt
        # maximum transition violation
        report_constraint -all_violators -max_transition -nosplit -significant_digits 4 \\
                                        > ./reports/report_maxttransitions.txt
        # maximum fanout violation
        report_constraint -all_violators -max_fanout -nosplit -significant_digits 4 \\
                                        > ./reports/report_maxfanout.txt
        # setup violation report
        report_constraint -all_violators -max_delay -nosplit -significant_digits 4 \\
                                        > ./reports/report_vio_max_simple.txt
        report_constraint -all_violators -max_delay -nosplit -significant_digits 4 -verbose \\
                                        > ./reports/report_vio_max_verbose.txt
        report_area                     > ./reports/report_area.txt
        \n""")
        return script

    def generate_outputs(self):
        if self.skip_outputs:
            return '\n# Skipped Generating Output\n'
        section_title = ' Generate Outputs '
        script = self.section_dividers
        script += replace_middle_string(self.section_dividers, section_title)
        script += self.section_dividers
        script += textwrap.dedent("""
        \n""")
        return script

    def write(self):
        with open(
            self.config.OUT_PATH / f'script_{self.top_module_name}.tcl', 'w+'
        ) as f:
            f.write(self.init_prefix())
            f.write(self.init_rtl_files())
            f.write(self.init_design_constraints())
            f.write(self.init_timing_closure())
            f.write(self.compile())
            f.write(self.create_reports())
            f.write(self.generate_outputs())
            f.write('\nquit\n')
