transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" -l xil_defaultlib \
"../../../../spiketpu.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0_clk_wiz.v" \
"../../../../spiketpu.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

