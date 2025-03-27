set_host_options -max_cores 8

define_design_lib WORK -path "./results"

set TopDesign "spiking_systolic_array_32x32"

set_svf ./results/${TopDesign}.svf

set search_path [list /opt/hardware_tools/Free_PDK /opt/hardware_tools/Free_PDK]
set link_library [list * NangateOpenCellLibrary_typical_conditional_nldm.db /opt/synopsys/design_compiler/syn/V-2023.12-SP5/libraries/syn/dw_foundation.sldb]
set target_library NangateOpenCellLibrary_typical_conditional_nldm.db

# -------------------------------------------------------------------------- #
# ----------------------------- RTL files List ----------------------------- #
# -------------------------------------------------------------------------- #
set RTL_files {\
  demux_1_to_32.v \
	fifo.v \
	spiking_pe.v \
	spiking_systolic_array_32x32.v \
  mux_1024_to_1.v \
}

#--------------------- Read and Analyze input RTL files
foreach design $RTL_files {
  analyze -format verilog ./rtl/${design}
}

elaborate ${TopDesign}

current_design ${TopDesign}

set_max_area 0

# -------------------------------------------------------------------------- #
# --------------------------- Design Constraints --------------------------- #
# -------------------------------------------------------------------------- #

reset_design

set auto_wire_load_selection true
set_wire_load_mode top

#Creating Clock
set clkPrd 10;
set clkPrd_h [expr {$clkPrd / 2}]; #Half Clock Period
set clkSkewSU [expr {$clkPrd * 0.02}]; #Clock Skew Setup

create_clock -period $clkPrd -name clk; #[get_ports clk]
set_clock_uncertainty -setup $clkSkewSU [get_clocks clk]

set_clock_latency -source -max [expr {$clkPrd*0.05}] [get_clocks clk]
set_clock_latency -max [expr {$clkPrd*0.05}] [get_clocks clk]

#set_clock_transition -max 0.08 [get_clocks clk]

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

# -------------------------------------------------------------------------- #
# ----------------------------- Timing Closure ----------------------------- #
# -------------------------------------------------------------------------- #

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
	set timing_report [open "./reports/dump_timing.txt" r] 
	set timing_report_content [read $timing_report]
	close $timing_report
	file delete $deleted_name
	if {[regexp {VIOLATED} $timing_report_content]} {
		puts "Design Violated Timing"
		puts "Clock time that violates is equal to $clkPrd"
		incr violation_counter 
		set clkPrd [expr {$clkPrd * 1.01}]
	} elseif {[regexp {MET} $timing_report_content] && $violation_counter < 4} {
		puts "Design MEETS Timing"
		puts "Valid clock time is $clkPrd"
		set clkPrd [expr {$clkPrd * 0.98}]
	} elseif {[regexp {MET} $timing_report_content] && $violation_counter >= 4} {
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



# -------------------------------------------------------------------------- #
# ------------------------- End of Timing Closure -------------------------- #
# -------------------------------------------------------------------------- #


# -------------------------------------------------------------------------- #
# -------------------------    Compile-iterate2   -------------------------- #
# -------------------------------------------------------------------------- #
compile_ultra -no_autoungroup -incremental

puts "Starting generating reports" 


# -------------------------------------------------------------------------- #
# ------------------------     Generate Reports     ------------------------ #
# -------------------------------------------------------------------------- #

report_constraint -all_violators

report_clock -attributes -skew  > ./reports/report_clock.txt
report_hierarchy                > ./reports/report_hier.txt
report_compile_options          > ./reports/report_option.txt
report_resources -hierarchy     > ./reports/report_resource.txt
report_port -verbose            > ./reports/report_port.txt
all_registers -level_sensitive  > ./reports/report_latches.txt
report_timing -loops            > ./reports/report_loops.txt
report_power                    > ./reports/report_power.txt

report_timing > reports/report_timing.txt

# maximum transition violation
report_constraint -all_violators -max_transition -nosplit -significant_digits 4 \
                                > ./reports/report_maxttransitions.txt

# maximum fanout violation
report_constraint -all_violators -max_fanout -nosplit -significant_digits 4 \
                                > ./reports/report_maxfanout.txt

# setup violation report
report_constraint -all_violators -max_delay -nosplit -significant_digits 4 \
                                > ./reports/report_vio_max_simple.txt

report_constraint -all_violators -max_delay -nosplit -significant_digits 4 -verbose \
                                > ./reports/report_vio_max_verbose.txt


report_area     > ./reports/report_area.txt

# -------------------------------------------------------------------------- #
# ------------------------     Generate Outputs     ------------------------ #
# -------------------------------------------------------------------------- #

current_design $TopDesign

define_name_rules verilog -remove_internal_net_bus -equal_ports_nets

change_names -rules verilog -hierarchy

#write_file -format ddc     -output $DdcFile  -hierarchy
write_file -format ddc     -output ./results/$TopDesign.ddc  -hierarchy

write_file -format verilog -output ./results/$TopDesign.syn.v -hierarchy

write_sdc results/$TopDesign.sdc

write_sdf results/$TopDesign.sdf

#


quit
