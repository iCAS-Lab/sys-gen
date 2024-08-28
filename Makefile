DC:=./design_compiler

.SILENT:

all: generate copy dirs systolic-array spike-systolic-array activation-unit

systolic-array:
	cd ${DC} && nohup dc_shell-xg-t -f ./scripts/script_area.tcl \
	| tee ./logs/area_log.log &> ./logs/area_nohup.txt &
	cd ${DC} && nohup dc_shell-xg-t -f ./scripts/script_speed.tcl \
	| tee ./logs/speed_log.log &> ./logs/speed_nohup.txt &

spike-systolic-array:
	cd ${DC} && nohup dc_shell-xg-t -f ./scripts/script_spike_area.tcl \
	| tee ./logs/spike_area_log.log &> ./logs/spike_area_nohup.txt &
	cd ${DC} && nohup dc_shell-xg-t -f ./scripts/script_spike_speed.tcl \
	| tee ./logs/spike_speed_log.log &> ./logs/spike_speed_nohup.txt &

activation-unit:
	cd ${DC} && nohup dc_shell-xg-t -f ./scripts/script_activation_unit_area.tcl \
	| tee ./logs/activation_unit_area_log.log &> ./logs/activation_unit_area_nohup.txt &
	cd ${DC} && nohup dc_shell-xg-t -f ./scripts/script_activation_unit_speed.tcl \
	| tee ./logs/activation_unit_speed_log.log &> ./logs/activation_unit_speed_nohup.txt &

generate: clean-rtl 
	cd src && python3 main.py

dirs:
	mkdir -p ${DC}/net/rtl ${DC}/net/syn ${DC}/logs \
	${DC}/work/speed ${DC}/work/area \
	${DC}/work/spike_speed ${DC}/work/spike_area \
	${DC}/work/activation_unit_speed ${DC}/work/activation_unit_area \
	${DC}/reports/speed ${DC}/reports/area \
	${DC}/reports/spike_speed ${DC}/reports/spike_area \
	${DC}/reports/activation_unit_speed ${DC}/reports/activation_unit_area \
	${DC}/net/syn/speed ${DC}/net/syn/area \
	${DC}/net/syn/spike_speed ${DC}/net/syn/spike_area \
	${DC}/net/syn/activation_unit_speed ${DC}/net/syn/activation_unit_area \
	verilog
	
copy:
	cp ./verilog/* ${DC}/net/rtl

clean-rtl:
	rm -rf ./verilog ${DC}/net/rtl/*

clean-dc:
	rm -rf ${DC}/net/syn ${DC}/reports ${DC}/work ${DC}/alib-52 ${DC}/*.log \
	${DC}/default.svf ${DC}/logs/* ${DC}/work

clean: clean-rtl clean-dc
