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

# -------------------------------------------------------------------------- #
# --------------------------- Design Constraints --------------------------- #
# -------------------------------------------------------------------------- #
reset_design

set auto_wire_load_selection true
set_wire_load_mode top

#Creating Clock
set clkPrd 10;
set clkPrd_h [expr {$clkPrd / 2.0}]; #Half Clock Period
set clkSkewSU [expr {$clkPrd * 0.02}]; #Clock Skew Setup

create_clock -period $clkPrd -name clk; #[get_ports clk]
set_clock_uncertainty -setup $clkSkewSU [get_clocks clk]

set_clock_latency -source -max [expr {$clkPrd*0.05}] [get_clocks clk]
set_clock_latency -max [expr {$clkPrd*0.05}] [get_clocks clk]


#Setting Input/Output Delay

set ALL_INP_EXC_CLK_RST [remove_from_collection [all_inputs] [get_ports "clk"]]
set ALL_INP_EXC_CLK_RST [remove_from_collection $ALL_INP_EXC_CLK_RST [get_ports "rstn"]]


set_input_delay -max [expr {$clkPrd*0.35}] -clock [get_clocks clk] [all_inputs] 

set_output_delay -max [expr {$clkPrd*0.35}] -clock [get_clocks clk] [all_outputs]


#Setting Input/Output Design Rule Constraints

set MAX_INPUT_LOAD [expr {6 * [load_of NangateOpenCellLibrary/AND2_X1/A1]}]

set_max_capacitance $MAX_INPUT_LOAD [all_inputs]; #DC limits load on input ports

set_load -max [expr {4 * $MAX_INPUT_LOAD}] [all_outputs]; #DC set output port driving capability

set_input_transition -max 0.2 [all_inputs]; #specify transition times of input ports
#set_input_transition -max 0.2 $ALL_INP_EXC_CLK; #specify transition times of input ports

#set_driving cell specifies the input driving capabilities, as well as transition times
#if set_driving_cell has lower capability than set_max_capacitance, DC ignores set_max_cap..

set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary [all_inputs]

# -------------------------------------------------------------------------- #
# -------------------------     Compile_first     -------------------------- #
# -------------------------------------------------------------------------- #
compile_ultra -no_autoungroup
puts "first iteration of compilation"
# -------------------------------------------------------------------------- #
# -------------------------    Compile-iterate2   -------------------------- #
# -------------------------------------------------------------------------- #
compile_ultra -no_autoungroup -incremental


# -------------------------------------------------------------------------- #
# ------------------------     Generate Reports     ------------------------ #
# -------------------------------------------------------------------------- #

report_constraint -all_violators

report_clock -attributes -skew  > ./results/report_clock.txt
report_hierarchy                > ./results/report_hier.txt
report_compile_options          > ./results/report_option.txt
report_resources -hierarchy     > ./results/report_resource.txt
report_port -verbose            > ./results/report_port.txt
all_registers -level_sensitive  > ./results/report_latches.txt
report_timing -loops            > ./results/report_loops.txt
report_power                    > ./results/report_power.txt

report_timing > report_timing.txt

# maximum transition violation
report_constraint -all_violators -max_transition -nosplit -significant_digits 4 \
                                > ./results/report_maxttransitions.txt

# maximum fanout violation
report_constraint -all_violators -max_fanout -nosplit -significant_digits 4 \
                                > ./results/report_maxfanout.txt

# setup violation report
report_constraint -all_violators -max_delay -nosplit -significant_digits 4 \
                                > ./results/report_vio_max_simple.txt

report_constraint -all_violators -max_delay -nosplit -significant_digits 4 -verbose \
                                > ./results/report_vio_max_verbose.txt


report_area     > ./results/report_area.txt

# -------------------------------------------------------------------------- #
# ------------------------     Generate Outputs     ------------------------ #
# -------------------------------------------------------------------------- #

current_design $TopDesign

define_name_rules verilog -remove_internal_net_bus -equal_ports_nets

change_names -rules verilog -hierarchy

#write_file -format ddc     -output $DdcFile  -hierarchy
write_file -format ddc     -output ./results/$TopDesign.ddc  -hierarchy

write_file -format verilog -output ./results/$TopDesign.syn.v -hierarchy

write_sdc ./results/$TopDesign.sdc

write_sdf ./results/$TopDesign.sdf
