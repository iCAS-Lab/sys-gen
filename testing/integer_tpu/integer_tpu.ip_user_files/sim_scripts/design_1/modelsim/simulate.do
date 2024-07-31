onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xpm -L xil_defaultlib -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_15 -L xlconstant_v1_1_9 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run 1000ns

quit -force
