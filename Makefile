DC:=./design_compiler

.SILENT:

all: dirs generate copy 

systolic-array:
	cd ${DC} && nohup dc_shell-xg-t -f ./scripts/script_area.tcl \
	| tee ./logs/area_log.log &> ./logs/area_nohup.txt &

spike-systolic-array:
	cd ${DC} && nohup dc_shell-xg-t -f ./scripts/script_spike_area.tcl \
	| tee ./logs/spike_area_log.log &> ./logs/spike_area_nohup.txt &

activation-unit:
	cd ${DC} && nohup dc_shell-xg-t -f ./scripts/script_activation_unit_area.tcl \
	| tee ./logs/activation_unit_area_log.log &> ./logs/activation_unit_area_nohup.txt &

generate: clean-rtl 
	cd src && python3 main.py

dirs:
	mkdir -p ${DC}/net/rtl ${DC}/net/syn ${DC}/logs \
	${DC}/work/area ${DC}/work/spike_area \
	${DC}/work/activation_unit_area \
	${DC}/reports/area ${DC}/reports/spike_area \
	${DC}/reports/activation_unit_area \
	${DC}/net/syn/area ${DC}/net/syn/spike_area \
	${DC}/net/syn/activation_unit_area \
	verilog
	
copy:
	cp ./verilog/* ${DC}/net/rtl

clean-rtl:
	rm -rf ./verilog ${DC}/net/rtl/*

clean-dc:
	rm -rf ${DC}/net/syn ${DC}/reports ${DC}/work ${DC}/alib-52 ${DC}/*.log \
	${DC}/default.svf ${DC}/logs/* ${DC}/work ${DC}/*.txt

clean: clean-rtl clean-dc
