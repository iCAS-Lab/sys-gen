create_bd_design "design_1"


connect_bd_net [get_bd_ports out_data_0_0] [get_bd_pins systolic_array_3x3_0/out_data_0_0]
connect_bd_net [get_bd_ports out_data_0_1] [get_bd_pins systolic_array_3x3_0/out_data_0_1]
connect_bd_net [get_bd_ports out_data_0_2] [get_bd_pins systolic_array_3x3_0/out_data_0_2]
connect_bd_net [get_bd_ports out_data_1_0] [get_bd_pins systolic_array_3x3_0/out_data_1_0]
connect_bd_net [get_bd_ports out_data_1_1] [get_bd_pins systolic_array_3x3_0/out_data_1_1]
connect_bd_net [get_bd_ports out_data_1_2] [get_bd_pins systolic_array_3x3_0/out_data_1_2]
connect_bd_net [get_bd_ports out_data_2_0] [get_bd_pins systolic_array_3x3_0/out_data_2_0]
connect_bd_net [get_bd_ports out_data_2_1] [get_bd_pins systolic_array_3x3_0/out_data_2_1]
connect_bd_net [get_bd_ports out_data_2_2] [get_bd_pins systolic_array_3x3_0/out_data_2_2]
validate_bd_design