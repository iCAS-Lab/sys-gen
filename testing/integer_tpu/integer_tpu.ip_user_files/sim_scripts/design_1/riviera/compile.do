transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/xlconstant_v1_1_9

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap xlconstant_v1_1_9 riviera/xlconstant_v1_1_9

vlog -work xpm  -incr "+incdir+../../../../integer_tpu.gen/sources_1/bd/design_1/ipshared/3242" -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 \
"C:/Xilinx/2024.1/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/2024.1/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../integer_tpu.gen/sources_1/bd/design_1/ipshared/3242" -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 \
"../../../bd/design_1/ip/design_1_systolic_array_2x2_s_0_1/sim/design_1_systolic_array_2x2_s_0_1.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0/design_1_clk_wiz_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0/design_1_clk_wiz_0.v" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../integer_tpu.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../integer_tpu.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_100M_0/sim/design_1_rst_clk_wiz_100M_0.vhd" \

vlog -work xlconstant_v1_1_9  -incr -v2k5 "+incdir+../../../../integer_tpu.gen/sources_1/bd/design_1/ipshared/3242" -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 \
"../../../../integer_tpu.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../integer_tpu.gen/sources_1/bd/design_1/ipshared/3242" -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l xlconstant_v1_1_9 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_2_0/sim/design_1_xlconstant_2_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_3_0/sim/design_1_xlconstant_3_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

