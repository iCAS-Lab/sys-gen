// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Jul 31 02:53:07 2024
// Host        : S7117-Evolution running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/S7117/Repos/Spike-TPU/testing/integer_tpu/integer_tpu.sim/sim_1/impl/func/xsim/design_1_wrapper_func_impl.v
// Design      : design_1_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_100MHz,
    ext_reset_in,
    ofmap_00,
    ofmap_01,
    ofmap_10,
    ofmap_11,
    read_enables,
    write_enables);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN design_1_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_100MHz;
  input ext_reset_in;
  output [15:0]ofmap_00;
  output [15:0]ofmap_01;
  output [15:0]ofmap_10;
  output [15:0]ofmap_11;
  input read_enables;
  input write_enables;

  wire clk_100MHz;
  wire clk_wiz_clk_out1;
  wire clk_wiz_locked;
  wire ext_reset_in;
  wire [15:0]ofmap_00;
  wire [15:0]ofmap_01;
  wire [15:0]ofmap_10;
  wire [15:0]ofmap_11;
  wire read_enables;
  wire rst_clk_wiz_100M_peripheral_aresetn;
  wire write_enables;
  wire NLW_rst_clk_wiz_100M_aux_reset_in_UNCONNECTED;
  wire NLW_rst_clk_wiz_100M_mb_debug_sys_rst_UNCONNECTED;
  wire NLW_rst_clk_wiz_100M_mb_reset_UNCONNECTED;
  wire [0:0]NLW_rst_clk_wiz_100M_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_rst_clk_wiz_100M_interconnect_aresetn_UNCONNECTED;
  wire [0:0]NLW_rst_clk_wiz_100M_peripheral_reset_UNCONNECTED;
  wire NLW_systolic_array_2x2_s_0_empty0_i_UNCONNECTED;
  wire NLW_systolic_array_2x2_s_0_empty0_w_UNCONNECTED;
  wire NLW_systolic_array_2x2_s_0_empty1_i_UNCONNECTED;
  wire NLW_systolic_array_2x2_s_0_empty1_w_UNCONNECTED;
  wire NLW_systolic_array_2x2_s_0_full0_i_UNCONNECTED;
  wire NLW_systolic_array_2x2_s_0_full0_w_UNCONNECTED;
  wire NLW_systolic_array_2x2_s_0_full1_i_UNCONNECTED;
  wire NLW_systolic_array_2x2_s_0_full1_w_UNCONNECTED;
  wire [15:0]NLW_systolic_array_2x2_s_0_out_ifmap_00_UNCONNECTED;
  wire [15:0]NLW_systolic_array_2x2_s_0_out_ifmap_01_UNCONNECTED;
  wire [15:0]NLW_systolic_array_2x2_s_0_out_ifmap_10_UNCONNECTED;
  wire [15:0]NLW_systolic_array_2x2_s_0_out_ifmap_11_UNCONNECTED;
  wire [15:0]NLW_systolic_array_2x2_s_0_out_weight_00_UNCONNECTED;
  wire [15:0]NLW_systolic_array_2x2_s_0_out_weight_01_UNCONNECTED;
  wire [15:0]NLW_systolic_array_2x2_s_0_out_weight_10_UNCONNECTED;
  wire [15:0]NLW_systolic_array_2x2_s_0_out_weight_11_UNCONNECTED;

  (* IMPORTED_FROM = "c:/Users/S7117/Repos/Spike-TPU/testing/integer_tpu/integer_tpu.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0/design_1_clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  design_1_clk_wiz_0 clk_wiz
       (.clk_in1(clk_100MHz),
        .clk_out1(clk_wiz_clk_out1),
        .locked(clk_wiz_locked),
        .reset(1'b0));
  (* IMPORTED_FROM = "c:/Users/S7117/Repos/Spike-TPU/testing/integer_tpu/integer_tpu.gen/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_100M_0/design_1_rst_clk_wiz_100M_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* x_core_info = "proc_sys_reset,Vivado 2024.1" *) 
  design_1_rst_clk_wiz_100M_0 rst_clk_wiz_100M
       (.aux_reset_in(NLW_rst_clk_wiz_100M_aux_reset_in_UNCONNECTED),
        .bus_struct_reset(NLW_rst_clk_wiz_100M_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(ext_reset_in),
        .interconnect_aresetn(NLW_rst_clk_wiz_100M_interconnect_aresetn_UNCONNECTED[0]),
        .mb_debug_sys_rst(NLW_rst_clk_wiz_100M_mb_debug_sys_rst_UNCONNECTED),
        .mb_reset(NLW_rst_clk_wiz_100M_mb_reset_UNCONNECTED),
        .peripheral_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .peripheral_reset(NLW_rst_clk_wiz_100M_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(clk_wiz_clk_out1));
  (* IMPORTED_FROM = "c:/Users/S7117/Repos/Spike-TPU/testing/integer_tpu/integer_tpu.gen/sources_1/bd/design_1/ip/design_1_systolic_array_2x2_s_0_1/design_1_systolic_array_2x2_s_0_1.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* x_core_info = "systolic_array_2x2_syn,Vivado 2024.1" *) 
  design_1_systolic_array_2x2_s_0_1 systolic_array_2x2_s_0
       (.clk(clk_wiz_clk_out1),
        .empty0_i(NLW_systolic_array_2x2_s_0_empty0_i_UNCONNECTED),
        .empty0_w(NLW_systolic_array_2x2_s_0_empty0_w_UNCONNECTED),
        .empty1_i(NLW_systolic_array_2x2_s_0_empty1_i_UNCONNECTED),
        .empty1_w(NLW_systolic_array_2x2_s_0_empty1_w_UNCONNECTED),
        .full0_i(NLW_systolic_array_2x2_s_0_full0_i_UNCONNECTED),
        .full0_w(NLW_systolic_array_2x2_s_0_full0_w_UNCONNECTED),
        .full1_i(NLW_systolic_array_2x2_s_0_full1_i_UNCONNECTED),
        .full1_w(NLW_systolic_array_2x2_s_0_full1_w_UNCONNECTED),
        .ofmap_wires_00(ofmap_00),
        .ofmap_wires_01(ofmap_01),
        .ofmap_wires_10(ofmap_10),
        .ofmap_wires_11(ofmap_11),
        .out_ifmap_00(NLW_systolic_array_2x2_s_0_out_ifmap_00_UNCONNECTED[15:0]),
        .out_ifmap_01(NLW_systolic_array_2x2_s_0_out_ifmap_01_UNCONNECTED[15:0]),
        .out_ifmap_10(NLW_systolic_array_2x2_s_0_out_ifmap_10_UNCONNECTED[15:0]),
        .out_ifmap_11(NLW_systolic_array_2x2_s_0_out_ifmap_11_UNCONNECTED[15:0]),
        .out_weight_00(NLW_systolic_array_2x2_s_0_out_weight_00_UNCONNECTED[15:0]),
        .out_weight_01(NLW_systolic_array_2x2_s_0_out_weight_01_UNCONNECTED[15:0]),
        .out_weight_10(NLW_systolic_array_2x2_s_0_out_weight_10_UNCONNECTED[15:0]),
        .out_weight_11(NLW_systolic_array_2x2_s_0_out_weight_11_UNCONNECTED[15:0]),
        .r_en0_i(read_enables),
        .r_en0_w(read_enables),
        .r_en1_i(read_enables),
        .r_en1_w(read_enables),
        .rstn(rst_clk_wiz_100M_peripheral_aresetn),
        .test_ifmap0({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1}),
        .test_ifmap1({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b1}),
        .test_weight0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0}),
        .test_weight1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .w_en0_i(write_enables),
        .w_en0_w(write_enables),
        .w_en1_i(write_enables),
        .w_en1_w(write_enables));
endmodule

module design_1_clk_wiz_0
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire locked;
  wire reset;

  design_1_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked),
        .reset(reset));
endmodule

module design_1_clk_wiz_0_clk_wiz
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_design_1_clk_wiz_0;
  (* MAX_PROG_DELAY = "0" *) wire clk_out1;
  wire clk_out1_design_1_clk_wiz_0;
  wire locked;
  wire reset;
  wire NLW_mmcme4_adv_inst_CDDCDONE_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKFBOUT_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcme4_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcme4_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibuf
       (.I(clk_in1),
        .O(clk_in1_design_1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    clkout1_buf
       (.CE(1'b1),
        .I(clk_out1_design_1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  MMCME4_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(12.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(12.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKFBIN_INVERTED(1'b0),
    .IS_CLKIN1_INVERTED(1'b0),
    .IS_CLKIN2_INVERTED(1'b0),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcme4_adv_inst
       (.CDDCDONE(NLW_mmcme4_adv_inst_CDDCDONE_UNCONNECTED),
        .CDDCREQ(1'b0),
        .CLKFBIN(1'b0),
        .CLKFBOUT(NLW_mmcme4_adv_inst_CLKFBOUT_UNCONNECTED),
        .CLKFBOUTB(NLW_mmcme4_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcme4_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_design_1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcme4_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_design_1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcme4_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcme4_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcme4_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcme4_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcme4_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcme4_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcme4_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcme4_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcme4_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcme4_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcme4_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcme4_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcme4_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_rst_clk_wiz_100M_0,proc_sys_reset,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* x_core_info = "proc_sys_reset,Vivado 2024.1" *) 
module design_1_rst_clk_wiz_100M_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_RESET mb_reset:bus_struct_reset:interconnect_aresetn:peripheral_aresetn:peripheral_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input slowest_sync_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ext_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ext_reset, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ext_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aux_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aux_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aux_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dbg_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input mb_debug_sys_rst;
  input dcm_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 mb_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mb_rst, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0" *) output mb_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 bus_struct_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bus_struct_reset, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]bus_struct_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 peripheral_high_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME peripheral_high_rst, POLARITY ACTIVE_HIGH, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 interconnect_low_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interconnect_low_rst, POLARITY ACTIVE_LOW, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]interconnect_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 peripheral_low_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME peripheral_low_rst, POLARITY ACTIVE_LOW, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_aresetn;

  wire dcm_locked;
  wire ext_reset_in;
  wire [0:0]peripheral_aresetn;
  wire slowest_sync_clk;
  wire NLW_U0_aux_reset_in_UNCONNECTED;
  wire NLW_U0_mb_debug_sys_rst_UNCONNECTED;
  wire NLW_U0_mb_reset_UNCONNECTED;
  wire [0:0]NLW_U0_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_U0_interconnect_aresetn_UNCONNECTED;
  wire [0:0]NLW_U0_peripheral_reset_UNCONNECTED;

  (* C_AUX_RESET_HIGH = "1'b0" *) 
  (* C_AUX_RST_WIDTH = "4" *) 
  (* C_EXT_RESET_HIGH = "1'b0" *) 
  (* C_EXT_RST_WIDTH = "4" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_NUM_BUS_RST = "1" *) 
  (* C_NUM_INTERCONNECT_ARESETN = "1" *) 
  (* C_NUM_PERP_ARESETN = "1" *) 
  (* C_NUM_PERP_RST = "1" *) 
  design_1_rst_clk_wiz_100M_0_proc_sys_reset U0
       (.aux_reset_in(NLW_U0_aux_reset_in_UNCONNECTED),
        .bus_struct_reset(NLW_U0_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(dcm_locked),
        .ext_reset_in(ext_reset_in),
        .interconnect_aresetn(NLW_U0_interconnect_aresetn_UNCONNECTED[0]),
        .mb_debug_sys_rst(NLW_U0_mb_debug_sys_rst_UNCONNECTED),
        .mb_reset(NLW_U0_mb_reset_UNCONNECTED),
        .peripheral_aresetn(peripheral_aresetn),
        .peripheral_reset(NLW_U0_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(slowest_sync_clk));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module design_1_rst_clk_wiz_100M_0_cdc_sync
   (lpf_asr_reg,
    scndry_out,
    lpf_asr,
    p_1_in,
    p_2_in,
    asr_lpf,
    aux_reset_in,
    slowest_sync_clk);
  output lpf_asr_reg;
  output scndry_out;
  input lpf_asr;
  input p_1_in;
  input p_2_in;
  input [0:0]asr_lpf;
  input aux_reset_in;
  input slowest_sync_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  wire Q;
  wire [0:0]asr_lpf;
  wire lpf_asr;
  wire lpf_asr_reg;
  wire p_1_in;
  wire p_2_in;
  wire scndry_out;
  wire slowest_sync_clk;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(Q),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(Q),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(scndry_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEAAAAAA8)) 
    lpf_asr_i_1
       (.I0(lpf_asr),
        .I1(p_1_in),
        .I2(p_2_in),
        .I3(scndry_out),
        .I4(asr_lpf),
        .O(lpf_asr_reg));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module design_1_rst_clk_wiz_100M_0_cdc_sync_0
   (lpf_exr_reg,
    scndry_out,
    lpf_exr,
    p_1_in4_in,
    p_2_in3_in,
    exr_lpf,
    mb_debug_sys_rst,
    ext_reset_in,
    slowest_sync_clk);
  output lpf_exr_reg;
  output scndry_out;
  input lpf_exr;
  input p_1_in4_in;
  input p_2_in3_in;
  input [0:0]exr_lpf;
  input mb_debug_sys_rst;
  input ext_reset_in;
  input slowest_sync_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  wire Q;
  wire exr_d1;
  wire [0:0]exr_lpf;
  wire ext_reset_in;
  wire lpf_exr;
  wire lpf_exr_reg;
  wire p_1_in4_in;
  wire p_2_in3_in;
  wire scndry_out;
  wire slowest_sync_clk;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(exr_d1),
        .Q(Q),
        .R(1'b0));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(ext_reset_in),
        .O(exr_d1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(Q),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(scndry_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEAAAAAA8)) 
    lpf_exr_i_1
       (.I0(lpf_exr),
        .I1(p_1_in4_in),
        .I2(p_2_in3_in),
        .I3(scndry_out),
        .I4(exr_lpf),
        .O(lpf_exr_reg));
endmodule

(* ORIG_REF_NAME = "lpf" *) 
module design_1_rst_clk_wiz_100M_0_lpf
   (lpf_int,
    slowest_sync_clk,
    dcm_locked,
    mb_debug_sys_rst,
    ext_reset_in,
    aux_reset_in);
  output lpf_int;
  input slowest_sync_clk;
  input dcm_locked;
  input mb_debug_sys_rst;
  input ext_reset_in;
  input aux_reset_in;

  wire \ACTIVE_LOW_AUX.ACT_LO_AUX_n_0 ;
  wire \ACTIVE_LOW_EXT.ACT_LO_EXT_n_0 ;
  wire Q;
  wire [0:0]asr_lpf;
  wire dcm_locked;
  wire [0:0]exr_lpf;
  wire ext_reset_in;
  wire lpf_asr;
  wire lpf_exr;
  wire lpf_int;
  wire lpf_int0__0;
  wire p_1_in;
  wire p_1_in4_in;
  wire p_2_in;
  wire p_2_in3_in;
  wire p_3_in1_in;
  wire p_3_in6_in;
  wire slowest_sync_clk;
  wire \NLW_ACTIVE_LOW_AUX.ACT_LO_AUX_aux_reset_in_UNCONNECTED ;
  wire \NLW_ACTIVE_LOW_EXT.ACT_LO_EXT_mb_debug_sys_rst_UNCONNECTED ;

  design_1_rst_clk_wiz_100M_0_cdc_sync \ACTIVE_LOW_AUX.ACT_LO_AUX 
       (.asr_lpf(asr_lpf),
        .aux_reset_in(\NLW_ACTIVE_LOW_AUX.ACT_LO_AUX_aux_reset_in_UNCONNECTED ),
        .lpf_asr(lpf_asr),
        .lpf_asr_reg(\ACTIVE_LOW_AUX.ACT_LO_AUX_n_0 ),
        .p_1_in(p_1_in),
        .p_2_in(p_2_in),
        .scndry_out(p_3_in1_in),
        .slowest_sync_clk(slowest_sync_clk));
  design_1_rst_clk_wiz_100M_0_cdc_sync_0 \ACTIVE_LOW_EXT.ACT_LO_EXT 
       (.exr_lpf(exr_lpf),
        .ext_reset_in(ext_reset_in),
        .lpf_exr(lpf_exr),
        .lpf_exr_reg(\ACTIVE_LOW_EXT.ACT_LO_EXT_n_0 ),
        .mb_debug_sys_rst(\NLW_ACTIVE_LOW_EXT.ACT_LO_EXT_mb_debug_sys_rst_UNCONNECTED ),
        .p_1_in4_in(p_1_in4_in),
        .p_2_in3_in(p_2_in3_in),
        .scndry_out(p_3_in6_in),
        .slowest_sync_clk(slowest_sync_clk));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[1].asr_lpf_reg[1] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_3_in1_in),
        .Q(p_2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[2].asr_lpf_reg[2] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[3].asr_lpf_reg[3] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(asr_lpf),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[1].exr_lpf_reg[1] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_3_in6_in),
        .Q(p_2_in3_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[2].exr_lpf_reg[2] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_2_in3_in),
        .Q(p_1_in4_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[3].exr_lpf_reg[3] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_1_in4_in),
        .Q(exr_lpf),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* srl_name = "U0/\\EXT_LPF/POR_SRL_I " *) 
  SRL16E #(
    .INIT(16'hFFFF)) 
    POR_SRL_I
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(slowest_sync_clk),
        .D(1'b0),
        .Q(Q));
  FDRE #(
    .INIT(1'b0)) 
    lpf_asr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\ACTIVE_LOW_AUX.ACT_LO_AUX_n_0 ),
        .Q(lpf_asr),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    lpf_exr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\ACTIVE_LOW_EXT.ACT_LO_EXT_n_0 ),
        .Q(lpf_exr),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    lpf_int0
       (.I0(dcm_locked),
        .I1(lpf_exr),
        .I2(lpf_asr),
        .I3(Q),
        .O(lpf_int0__0));
  FDRE #(
    .INIT(1'b0)) 
    lpf_int_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(lpf_int0__0),
        .Q(lpf_int),
        .R(1'b0));
endmodule

(* C_AUX_RESET_HIGH = "1'b0" *) (* C_AUX_RST_WIDTH = "4" *) (* C_EXT_RESET_HIGH = "1'b0" *) 
(* C_EXT_RST_WIDTH = "4" *) (* C_FAMILY = "zynquplus" *) (* C_NUM_BUS_RST = "1" *) 
(* C_NUM_INTERCONNECT_ARESETN = "1" *) (* C_NUM_PERP_ARESETN = "1" *) (* C_NUM_PERP_RST = "1" *) 
(* ORIG_REF_NAME = "proc_sys_reset" *) 
module design_1_rst_clk_wiz_100M_0_proc_sys_reset
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;

  wire SEQ_n_4;
  wire dcm_locked;
  wire ext_reset_in;
  wire lpf_int;
  wire [0:0]peripheral_aresetn;
  wire slowest_sync_clk;
  wire NLW_EXT_LPF_aux_reset_in_UNCONNECTED;
  wire NLW_EXT_LPF_mb_debug_sys_rst_UNCONNECTED;
  wire NLW_SEQ_Bsr_out_UNCONNECTED;
  wire NLW_SEQ_MB_out_UNCONNECTED;
  wire NLW_SEQ_Pr_out_UNCONNECTED;
  wire NLW_SEQ_bsr_reg_0_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(SEQ_n_4),
        .Q(peripheral_aresetn),
        .R(1'b0));
  design_1_rst_clk_wiz_100M_0_lpf EXT_LPF
       (.aux_reset_in(NLW_EXT_LPF_aux_reset_in_UNCONNECTED),
        .dcm_locked(dcm_locked),
        .ext_reset_in(ext_reset_in),
        .lpf_int(lpf_int),
        .mb_debug_sys_rst(NLW_EXT_LPF_mb_debug_sys_rst_UNCONNECTED),
        .slowest_sync_clk(slowest_sync_clk));
  design_1_rst_clk_wiz_100M_0_sequence_psr SEQ
       (.Bsr_out(NLW_SEQ_Bsr_out_UNCONNECTED),
        .MB_out(NLW_SEQ_MB_out_UNCONNECTED),
        .Pr_out(NLW_SEQ_Pr_out_UNCONNECTED),
        .bsr_reg_0(NLW_SEQ_bsr_reg_0_UNCONNECTED),
        .lpf_int(lpf_int),
        .pr_reg_0(SEQ_n_4),
        .slowest_sync_clk(slowest_sync_clk));
endmodule

(* ORIG_REF_NAME = "sequence_psr" *) 
module design_1_rst_clk_wiz_100M_0_sequence_psr
   (MB_out,
    Bsr_out,
    Pr_out,
    bsr_reg_0,
    pr_reg_0,
    lpf_int,
    slowest_sync_clk);
  output MB_out;
  output Bsr_out;
  output Pr_out;
  output bsr_reg_0;
  output pr_reg_0;
  input lpf_int;
  input slowest_sync_clk;

  wire Core_i_1_n_0;
  wire \^MB_out ;
  wire \^Pr_out ;
  wire \core_dec[0]_i_1_n_0 ;
  wire \core_dec[2]_i_1_n_0 ;
  wire \core_dec_reg_n_0_[0] ;
  wire \core_dec_reg_n_0_[1] ;
  wire from_sys_i_1_n_0;
  wire lpf_int;
  wire p_0_in;
  wire [2:0]p_3_out;
  wire pr_dec0__0;
  wire \pr_dec_reg_n_0_[0] ;
  wire \pr_dec_reg_n_0_[2] ;
  wire pr_i_1_n_0;
  wire pr_reg_0;
  wire seq_clr;
  wire [5:0]seq_cnt;
  wire seq_cnt_en;
  wire slowest_sync_clk;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N_i_1 
       (.I0(\^Pr_out ),
        .O(pr_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    Core_i_1
       (.I0(\^MB_out ),
        .I1(p_0_in),
        .O(Core_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    Core_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(Core_i_1_n_0),
        .Q(\^MB_out ),
        .S(lpf_int));
  design_1_rst_clk_wiz_100M_0_upcnt_n SEQ_COUNTER
       (.Q(seq_cnt),
        .seq_clr(seq_clr),
        .seq_cnt_en(seq_cnt_en),
        .slowest_sync_clk(slowest_sync_clk));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9000)) 
    \core_dec[0]_i_1 
       (.I0(seq_cnt_en),
        .I1(seq_cnt[4]),
        .I2(seq_cnt[3]),
        .I3(seq_cnt[5]),
        .O(\core_dec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \core_dec[2]_i_1 
       (.I0(\core_dec_reg_n_0_[1] ),
        .I1(\core_dec_reg_n_0_[0] ),
        .O(\core_dec[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \core_dec_reg[0] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\core_dec[0]_i_1_n_0 ),
        .Q(\core_dec_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \core_dec_reg[1] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(pr_dec0__0),
        .Q(\core_dec_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \core_dec_reg[2] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\core_dec[2]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    from_sys_i_1
       (.I0(\^MB_out ),
        .I1(seq_cnt_en),
        .O(from_sys_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    from_sys_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(from_sys_i_1_n_0),
        .Q(seq_cnt_en),
        .S(lpf_int));
  LUT4 #(
    .INIT(16'h0018)) 
    pr_dec0
       (.I0(seq_cnt_en),
        .I1(seq_cnt[0]),
        .I2(seq_cnt[2]),
        .I3(seq_cnt[1]),
        .O(pr_dec0__0));
  LUT4 #(
    .INIT(16'h0480)) 
    \pr_dec[0]_i_1 
       (.I0(seq_cnt_en),
        .I1(seq_cnt[3]),
        .I2(seq_cnt[5]),
        .I3(seq_cnt[4]),
        .O(p_3_out[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \pr_dec[2]_i_1 
       (.I0(\core_dec_reg_n_0_[1] ),
        .I1(\pr_dec_reg_n_0_[0] ),
        .O(p_3_out[2]));
  FDRE #(
    .INIT(1'b0)) 
    \pr_dec_reg[0] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_3_out[0]),
        .Q(\pr_dec_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pr_dec_reg[2] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_3_out[2]),
        .Q(\pr_dec_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    pr_i_1
       (.I0(\^Pr_out ),
        .I1(\pr_dec_reg_n_0_[2] ),
        .O(pr_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    pr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(pr_i_1_n_0),
        .Q(\^Pr_out ),
        .S(lpf_int));
  FDRE #(
    .INIT(1'b0)) 
    seq_clr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(seq_clr),
        .R(lpf_int));
endmodule

(* ORIG_REF_NAME = "upcnt_n" *) 
module design_1_rst_clk_wiz_100M_0_upcnt_n
   (Q,
    seq_clr,
    seq_cnt_en,
    slowest_sync_clk);
  output [5:0]Q;
  input seq_clr;
  input seq_cnt_en;
  input slowest_sync_clk;

  wire [5:0]Q;
  wire [5:0]q_int0;
  wire seq_clr;
  wire seq_cnt_en;
  wire slowest_sync_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \q_int[0]_i_1 
       (.I0(Q[0]),
        .O(q_int0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_int[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(q_int0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_int[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(q_int0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_int[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(q_int0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_int[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(q_int0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \q_int[5]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(q_int0[5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_R_INVERTED(1'b1)) 
    \q_int_reg[0] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[0]),
        .Q(Q[0]),
        .R(seq_clr));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_R_INVERTED(1'b1)) 
    \q_int_reg[1] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[1]),
        .Q(Q[1]),
        .R(seq_clr));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_R_INVERTED(1'b1)) 
    \q_int_reg[2] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[2]),
        .Q(Q[2]),
        .R(seq_clr));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_R_INVERTED(1'b1)) 
    \q_int_reg[3] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[3]),
        .Q(Q[3]),
        .R(seq_clr));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_R_INVERTED(1'b1)) 
    \q_int_reg[4] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[4]),
        .Q(Q[4]),
        .R(seq_clr));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_R_INVERTED(1'b1)) 
    \q_int_reg[5] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[5]),
        .Q(Q[5]),
        .R(seq_clr));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_systolic_array_2x2_s_0_1,systolic_array_2x2_syn,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* x_core_info = "systolic_array_2x2_syn,Vivado 2024.1" *) 
module design_1_systolic_array_2x2_s_0_1
   (clk,
    rstn,
    r_en0_w,
    r_en1_w,
    r_en0_i,
    r_en1_i,
    w_en0_w,
    w_en1_w,
    w_en0_i,
    w_en1_i,
    test_weight0,
    test_weight1,
    test_ifmap0,
    test_ifmap1,
    full0_w,
    full1_w,
    full0_i,
    full1_i,
    empty0_w,
    empty1_w,
    empty0_i,
    empty1_i,
    ofmap_wires_00,
    out_weight_00,
    out_ifmap_00,
    ofmap_wires_01,
    out_weight_01,
    out_ifmap_01,
    ofmap_wires_10,
    out_weight_10,
    out_ifmap_10,
    ofmap_wires_11,
    out_weight_11,
    out_ifmap_11);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input r_en0_w;
  input r_en1_w;
  input r_en0_i;
  input r_en1_i;
  input w_en0_w;
  input w_en1_w;
  input w_en0_i;
  input w_en1_i;
  input [15:0]test_weight0;
  input [15:0]test_weight1;
  input [15:0]test_ifmap0;
  input [15:0]test_ifmap1;
  output full0_w;
  output full1_w;
  output full0_i;
  output full1_i;
  output empty0_w;
  output empty1_w;
  output empty0_i;
  output empty1_i;
  output [15:0]ofmap_wires_00;
  output [15:0]out_weight_00;
  output [15:0]out_ifmap_00;
  output [15:0]ofmap_wires_01;
  output [15:0]out_weight_01;
  output [15:0]out_ifmap_01;
  output [15:0]ofmap_wires_10;
  output [15:0]out_weight_10;
  output [15:0]out_ifmap_10;
  output [15:0]ofmap_wires_11;
  output [15:0]out_weight_11;
  output [15:0]out_ifmap_11;

  wire clk;
  wire [15:0]ofmap_wires_00;
  wire [15:0]ofmap_wires_01;
  wire [15:0]ofmap_wires_10;
  wire [15:0]ofmap_wires_11;
  wire r_en0_i;
  wire r_en0_w;
  wire r_en1_i;
  wire r_en1_w;
  wire rstn;
  wire [15:0]test_ifmap0;
  wire [15:0]test_ifmap1;
  wire [15:0]test_weight0;
  wire [15:0]test_weight1;
  wire w_en0_i;
  wire w_en0_w;
  wire w_en1_i;
  wire w_en1_w;
  wire NLW_inst_empty0_i_UNCONNECTED;
  wire NLW_inst_empty0_w_UNCONNECTED;
  wire NLW_inst_empty1_i_UNCONNECTED;
  wire NLW_inst_empty1_w_UNCONNECTED;
  wire NLW_inst_full0_i_UNCONNECTED;
  wire NLW_inst_full0_w_UNCONNECTED;
  wire NLW_inst_full1_i_UNCONNECTED;
  wire NLW_inst_full1_w_UNCONNECTED;
  wire [15:0]NLW_inst_out_ifmap_00_UNCONNECTED;
  wire [15:0]NLW_inst_out_ifmap_01_UNCONNECTED;
  wire [15:0]NLW_inst_out_ifmap_10_UNCONNECTED;
  wire [15:0]NLW_inst_out_ifmap_11_UNCONNECTED;
  wire [15:0]NLW_inst_out_weight_00_UNCONNECTED;
  wire [15:0]NLW_inst_out_weight_01_UNCONNECTED;
  wire [15:0]NLW_inst_out_weight_10_UNCONNECTED;
  wire [15:0]NLW_inst_out_weight_11_UNCONNECTED;

  design_1_systolic_array_2x2_s_0_1_systolic_array_2x2_syn inst
       (.clk(clk),
        .empty0_i(NLW_inst_empty0_i_UNCONNECTED),
        .empty0_w(NLW_inst_empty0_w_UNCONNECTED),
        .empty1_i(NLW_inst_empty1_i_UNCONNECTED),
        .empty1_w(NLW_inst_empty1_w_UNCONNECTED),
        .full0_i(NLW_inst_full0_i_UNCONNECTED),
        .full0_w(NLW_inst_full0_w_UNCONNECTED),
        .full1_i(NLW_inst_full1_i_UNCONNECTED),
        .full1_w(NLW_inst_full1_w_UNCONNECTED),
        .ofmap_wires_00(ofmap_wires_00),
        .ofmap_wires_01(ofmap_wires_01),
        .ofmap_wires_10(ofmap_wires_10),
        .ofmap_wires_11(ofmap_wires_11),
        .out_ifmap_00(NLW_inst_out_ifmap_00_UNCONNECTED[15:0]),
        .out_ifmap_01(NLW_inst_out_ifmap_01_UNCONNECTED[15:0]),
        .out_ifmap_10(NLW_inst_out_ifmap_10_UNCONNECTED[15:0]),
        .out_ifmap_11(NLW_inst_out_ifmap_11_UNCONNECTED[15:0]),
        .out_weight_00(NLW_inst_out_weight_00_UNCONNECTED[15:0]),
        .out_weight_01(NLW_inst_out_weight_01_UNCONNECTED[15:0]),
        .out_weight_10(NLW_inst_out_weight_10_UNCONNECTED[15:0]),
        .out_weight_11(NLW_inst_out_weight_11_UNCONNECTED[15:0]),
        .r_en0_i(r_en0_i),
        .r_en0_w(r_en0_w),
        .r_en1_i(r_en1_i),
        .r_en1_w(r_en1_w),
        .rstn(rstn),
        .test_ifmap0(test_ifmap0),
        .test_ifmap1(test_ifmap1),
        .test_weight0(test_weight0),
        .test_weight1(test_weight1),
        .w_en0_i(w_en0_i),
        .w_en0_w(w_en0_w),
        .w_en1_i(w_en1_i),
        .w_en1_w(w_en1_w));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module design_1_systolic_array_2x2_s_0_1_fifo
   (D,
    E,
    Q,
    full0_i,
    empty0_i,
    clk,
    test_ifmap0,
    RSTB,
    w_en0_i,
    rstn,
    r_en0_i);
  output [15:0]D;
  output [0:0]E;
  output [15:0]Q;
  output full0_i;
  output empty0_i;
  input clk;
  input [15:0]test_ifmap0;
  input RSTB;
  input w_en0_i;
  input rstn;
  input r_en0_i;

  wire [15:0]D;
  wire [0:0]E;
  wire [15:0]Q;
  wire RSTB;
  wire clk;
  wire fifo_reg_0_7_0_13_i_2__1_n_0;
  wire out_ofmap_reg_i_5_n_0;
  wire p_0_in__0;
  wire r_en0_i;
  wire [2:0]r_ptr;
  wire \r_ptr[0]_i_1__1_n_0 ;
  wire \r_ptr[1]_i_1__1_n_0 ;
  wire \r_ptr[2]_i_1__1_n_0 ;
  wire rstn;
  wire [15:0]test_ifmap0;
  wire w_en0_i;
  wire [2:0]w_ptr;
  wire [2:0]w_ptr0;
  wire \w_ptr[2]_i_1__1_n_0 ;
  wire [1:0]NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED;
  wire NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED;
  wire NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/ifmap_fifo0/fifo_reg_0_7_0_13" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    fifo_reg_0_7_0_13
       (.ADDRA({1'b0,1'b0,r_ptr}),
        .ADDRB({1'b0,1'b0,r_ptr}),
        .ADDRC({1'b0,1'b0,r_ptr}),
        .ADDRD({1'b0,1'b0,r_ptr}),
        .ADDRE({1'b0,1'b0,r_ptr}),
        .ADDRF({1'b0,1'b0,r_ptr}),
        .ADDRG({1'b0,1'b0,r_ptr}),
        .ADDRH({1'b0,1'b0,w_ptr}),
        .DIA(test_ifmap0[1:0]),
        .DIB(test_ifmap0[3:2]),
        .DIC(test_ifmap0[5:4]),
        .DID(test_ifmap0[7:6]),
        .DIE(test_ifmap0[9:8]),
        .DIF(test_ifmap0[11:10]),
        .DIG(test_ifmap0[13:12]),
        .DIH({1'b0,1'b0}),
        .DOA(D[1:0]),
        .DOB(D[3:2]),
        .DOC(D[5:4]),
        .DOD(D[7:6]),
        .DOE(D[9:8]),
        .DOF(D[11:10]),
        .DOG(D[13:12]),
        .DOH(NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in__0));
  LUT6 #(
    .INIT(64'hFFFFB04000000000)) 
    fifo_reg_0_7_0_13_i_1__0
       (.I0(r_ptr[1]),
        .I1(w_ptr[1]),
        .I2(w_en0_i),
        .I3(out_ofmap_reg_i_5_n_0),
        .I4(fifo_reg_0_7_0_13_i_2__1_n_0),
        .I5(rstn),
        .O(p_0_in__0));
  LUT5 #(
    .INIT(32'hF96F0000)) 
    fifo_reg_0_7_0_13_i_2__1
       (.I0(r_ptr[1]),
        .I1(w_ptr[1]),
        .I2(r_ptr[0]),
        .I3(w_ptr[0]),
        .I4(w_en0_i),
        .O(fifo_reg_0_7_0_13_i_2__1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/ifmap_fifo0/fifo_reg_0_7_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    fifo_reg_0_7_14_15
       (.A0(w_ptr[0]),
        .A1(w_ptr[1]),
        .A2(w_ptr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(test_ifmap0[14]),
        .DPO(D[14]),
        .DPRA0(r_ptr[0]),
        .DPRA1(r_ptr[1]),
        .DPRA2(r_ptr[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/ifmap_fifo0/fifo_reg_0_7_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    fifo_reg_0_7_14_15__0
       (.A0(w_ptr[0]),
        .A1(w_ptr[1]),
        .A2(w_ptr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(test_ifmap0[15]),
        .DPO(D[15]),
        .DPRA0(r_ptr[0]),
        .DPRA1(r_ptr[1]),
        .DPRA2(r_ptr[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in__0));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(RSTB));
  LUT6 #(
    .INIT(64'hFFFF6FF600000000)) 
    out_ofmap_reg_i_2__0
       (.I0(r_ptr[0]),
        .I1(w_ptr[0]),
        .I2(w_ptr[1]),
        .I3(r_ptr[1]),
        .I4(out_ofmap_reg_i_5_n_0),
        .I5(r_en0_i),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    out_ofmap_reg_i_5
       (.I0(r_ptr[2]),
        .I1(w_ptr[2]),
        .O(out_ofmap_reg_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr[0]_i_1__1 
       (.I0(r_ptr[0]),
        .O(\r_ptr[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr[1]_i_1__1 
       (.I0(r_ptr[0]),
        .I1(r_ptr[1]),
        .O(\r_ptr[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_ptr[2]_i_1__1 
       (.I0(r_ptr[1]),
        .I1(r_ptr[0]),
        .I2(r_ptr[2]),
        .O(\r_ptr[2]_i_1__1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \r_ptr_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\r_ptr[0]_i_1__1_n_0 ),
        .Q(r_ptr[0]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \r_ptr_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\r_ptr[1]_i_1__1_n_0 ),
        .Q(r_ptr[1]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \r_ptr_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\r_ptr[2]_i_1__1_n_0 ),
        .Q(r_ptr[2]),
        .R(RSTB));
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr[0]_i_1__1 
       (.I0(w_ptr[0]),
        .O(w_ptr0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr[1]_i_1__1 
       (.I0(w_ptr[0]),
        .I1(w_ptr[1]),
        .O(w_ptr0[1]));
  LUT6 #(
    .INIT(64'hFB00FD00DF00FB00)) 
    \w_ptr[2]_i_1__1 
       (.I0(w_ptr[0]),
        .I1(r_ptr[0]),
        .I2(out_ofmap_reg_i_5_n_0),
        .I3(w_en0_i),
        .I4(w_ptr[1]),
        .I5(r_ptr[1]),
        .O(\w_ptr[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \w_ptr[2]_i_2__1 
       (.I0(w_ptr[1]),
        .I1(w_ptr[0]),
        .I2(w_ptr[2]),
        .O(w_ptr0[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \w_ptr_reg[0] 
       (.C(clk),
        .CE(\w_ptr[2]_i_1__1_n_0 ),
        .D(w_ptr0[0]),
        .Q(w_ptr[0]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \w_ptr_reg[1] 
       (.C(clk),
        .CE(\w_ptr[2]_i_1__1_n_0 ),
        .D(w_ptr0[1]),
        .Q(w_ptr[1]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \w_ptr_reg[2] 
       (.C(clk),
        .CE(\w_ptr[2]_i_1__1_n_0 ),
        .D(w_ptr0[2]),
        .Q(w_ptr[2]),
        .R(RSTB));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module design_1_systolic_array_2x2_s_0_1_fifo_0
   (D,
    E,
    Q,
    full1_i,
    empty1_i,
    clk,
    test_ifmap1,
    RSTB,
    w_en1_i,
    rstn,
    r_en1_i);
  output [15:0]D;
  output [0:0]E;
  output [15:0]Q;
  output full1_i;
  output empty1_i;
  input clk;
  input [15:0]test_ifmap1;
  input RSTB;
  input w_en1_i;
  input rstn;
  input r_en1_i;

  wire [15:0]D;
  wire [0:0]E;
  wire [15:0]Q;
  wire RSTB;
  wire clk;
  wire fifo_reg_0_7_0_13_i_2__2_n_0;
  wire out_ofmap_reg_i_2__1_n_0;
  wire p_0_in__2;
  wire r_en1_i;
  wire [2:0]r_ptr;
  wire \r_ptr[0]_i_1__2_n_0 ;
  wire \r_ptr[1]_i_1__2_n_0 ;
  wire \r_ptr[2]_i_1__2_n_0 ;
  wire rstn;
  wire [15:0]test_ifmap1;
  wire w_en1_i;
  wire [2:0]w_ptr;
  wire [2:0]w_ptr0;
  wire \w_ptr[2]_i_1__2_n_0 ;
  wire [1:0]NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED;
  wire NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED;
  wire NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/ifmap_fifo1/fifo_reg_0_7_0_13" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    fifo_reg_0_7_0_13
       (.ADDRA({1'b0,1'b0,r_ptr}),
        .ADDRB({1'b0,1'b0,r_ptr}),
        .ADDRC({1'b0,1'b0,r_ptr}),
        .ADDRD({1'b0,1'b0,r_ptr}),
        .ADDRE({1'b0,1'b0,r_ptr}),
        .ADDRF({1'b0,1'b0,r_ptr}),
        .ADDRG({1'b0,1'b0,r_ptr}),
        .ADDRH({1'b0,1'b0,w_ptr}),
        .DIA(test_ifmap1[1:0]),
        .DIB(test_ifmap1[3:2]),
        .DIC(test_ifmap1[5:4]),
        .DID(test_ifmap1[7:6]),
        .DIE(test_ifmap1[9:8]),
        .DIF(test_ifmap1[11:10]),
        .DIG(test_ifmap1[13:12]),
        .DIH({1'b0,1'b0}),
        .DOA(D[1:0]),
        .DOB(D[3:2]),
        .DOC(D[5:4]),
        .DOD(D[7:6]),
        .DOE(D[9:8]),
        .DOF(D[11:10]),
        .DOG(D[13:12]),
        .DOH(NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in__2));
  LUT6 #(
    .INIT(64'hFFFFB04000000000)) 
    fifo_reg_0_7_0_13_i_1__2
       (.I0(r_ptr[1]),
        .I1(w_ptr[1]),
        .I2(w_en1_i),
        .I3(out_ofmap_reg_i_2__1_n_0),
        .I4(fifo_reg_0_7_0_13_i_2__2_n_0),
        .I5(rstn),
        .O(p_0_in__2));
  LUT5 #(
    .INIT(32'hF96F0000)) 
    fifo_reg_0_7_0_13_i_2__2
       (.I0(r_ptr[1]),
        .I1(w_ptr[1]),
        .I2(r_ptr[0]),
        .I3(w_ptr[0]),
        .I4(w_en1_i),
        .O(fifo_reg_0_7_0_13_i_2__2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/ifmap_fifo1/fifo_reg_0_7_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    fifo_reg_0_7_14_15
       (.A0(w_ptr[0]),
        .A1(w_ptr[1]),
        .A2(w_ptr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(test_ifmap1[14]),
        .DPO(D[14]),
        .DPRA0(r_ptr[0]),
        .DPRA1(r_ptr[1]),
        .DPRA2(r_ptr[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in__2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/ifmap_fifo1/fifo_reg_0_7_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    fifo_reg_0_7_14_15__0
       (.A0(w_ptr[0]),
        .A1(w_ptr[1]),
        .A2(w_ptr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(test_ifmap1[15]),
        .DPO(D[15]),
        .DPRA0(r_ptr[0]),
        .DPRA1(r_ptr[1]),
        .DPRA2(r_ptr[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in__2));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(RSTB));
  LUT6 #(
    .INIT(64'hFFFF6FF600000000)) 
    out_ofmap_reg_i_1__1
       (.I0(r_ptr[0]),
        .I1(w_ptr[0]),
        .I2(w_ptr[1]),
        .I3(r_ptr[1]),
        .I4(out_ofmap_reg_i_2__1_n_0),
        .I5(r_en1_i),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    out_ofmap_reg_i_2__1
       (.I0(r_ptr[2]),
        .I1(w_ptr[2]),
        .O(out_ofmap_reg_i_2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr[0]_i_1__2 
       (.I0(r_ptr[0]),
        .O(\r_ptr[0]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr[1]_i_1__2 
       (.I0(r_ptr[0]),
        .I1(r_ptr[1]),
        .O(\r_ptr[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_ptr[2]_i_1__2 
       (.I0(r_ptr[1]),
        .I1(r_ptr[0]),
        .I2(r_ptr[2]),
        .O(\r_ptr[2]_i_1__2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \r_ptr_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\r_ptr[0]_i_1__2_n_0 ),
        .Q(r_ptr[0]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \r_ptr_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\r_ptr[1]_i_1__2_n_0 ),
        .Q(r_ptr[1]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \r_ptr_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\r_ptr[2]_i_1__2_n_0 ),
        .Q(r_ptr[2]),
        .R(RSTB));
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr[0]_i_1__2 
       (.I0(w_ptr[0]),
        .O(w_ptr0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr[1]_i_1__2 
       (.I0(w_ptr[0]),
        .I1(w_ptr[1]),
        .O(w_ptr0[1]));
  LUT6 #(
    .INIT(64'hFB00FD00DF00FB00)) 
    \w_ptr[2]_i_1__2 
       (.I0(w_ptr[0]),
        .I1(r_ptr[0]),
        .I2(out_ofmap_reg_i_2__1_n_0),
        .I3(w_en1_i),
        .I4(w_ptr[1]),
        .I5(r_ptr[1]),
        .O(\w_ptr[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \w_ptr[2]_i_2__2 
       (.I0(w_ptr[1]),
        .I1(w_ptr[0]),
        .I2(w_ptr[2]),
        .O(w_ptr0[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \w_ptr_reg[0] 
       (.C(clk),
        .CE(\w_ptr[2]_i_1__2_n_0 ),
        .D(w_ptr0[0]),
        .Q(w_ptr[0]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \w_ptr_reg[1] 
       (.C(clk),
        .CE(\w_ptr[2]_i_1__2_n_0 ),
        .D(w_ptr0[1]),
        .Q(w_ptr[1]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \w_ptr_reg[2] 
       (.C(clk),
        .CE(\w_ptr[2]_i_1__2_n_0 ),
        .D(w_ptr0[2]),
        .Q(w_ptr[2]),
        .R(RSTB));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module design_1_systolic_array_2x2_s_0_1_fifo_4
   (D,
    E,
    Q,
    full0_w,
    empty0_w,
    clk,
    test_weight0,
    RSTB,
    w_en0_w,
    rstn,
    r_en0_w);
  output [15:0]D;
  output [0:0]E;
  output [15:0]Q;
  output full0_w;
  output empty0_w;
  input clk;
  input [15:0]test_weight0;
  input RSTB;
  input w_en0_w;
  input rstn;
  input r_en0_w;

  wire [15:0]D;
  wire [0:0]E;
  wire [15:0]Q;
  wire RSTB;
  wire clk;
  wire fifo_reg_0_7_0_13_i_2_n_0;
  wire out_ofmap_reg_i_4_n_0;
  wire p_0_in;
  wire r_en0_w;
  wire [2:0]r_ptr;
  wire \r_ptr[0]_i_1_n_0 ;
  wire \r_ptr[1]_i_1_n_0 ;
  wire \r_ptr[2]_i_1_n_0 ;
  wire rstn;
  wire [15:0]test_weight0;
  wire w_en0_w;
  wire [2:0]w_ptr;
  wire [2:0]w_ptr0;
  wire \w_ptr[2]_i_1_n_0 ;
  wire [1:0]NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED;
  wire NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED;
  wire NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/weight_fifo0/fifo_reg_0_7_0_13" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    fifo_reg_0_7_0_13
       (.ADDRA({1'b0,1'b0,r_ptr}),
        .ADDRB({1'b0,1'b0,r_ptr}),
        .ADDRC({1'b0,1'b0,r_ptr}),
        .ADDRD({1'b0,1'b0,r_ptr}),
        .ADDRE({1'b0,1'b0,r_ptr}),
        .ADDRF({1'b0,1'b0,r_ptr}),
        .ADDRG({1'b0,1'b0,r_ptr}),
        .ADDRH({1'b0,1'b0,w_ptr}),
        .DIA(test_weight0[1:0]),
        .DIB(test_weight0[3:2]),
        .DIC(test_weight0[5:4]),
        .DID(test_weight0[7:6]),
        .DIE(test_weight0[9:8]),
        .DIF(test_weight0[11:10]),
        .DIG(test_weight0[13:12]),
        .DIH({1'b0,1'b0}),
        .DOA(D[1:0]),
        .DOB(D[3:2]),
        .DOC(D[5:4]),
        .DOD(D[7:6]),
        .DOE(D[9:8]),
        .DOF(D[11:10]),
        .DOG(D[13:12]),
        .DOH(NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFB04000000000)) 
    fifo_reg_0_7_0_13_i_1
       (.I0(r_ptr[1]),
        .I1(w_ptr[1]),
        .I2(w_en0_w),
        .I3(out_ofmap_reg_i_4_n_0),
        .I4(fifo_reg_0_7_0_13_i_2_n_0),
        .I5(rstn),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'hF96F0000)) 
    fifo_reg_0_7_0_13_i_2
       (.I0(r_ptr[1]),
        .I1(w_ptr[1]),
        .I2(r_ptr[0]),
        .I3(w_ptr[0]),
        .I4(w_en0_w),
        .O(fifo_reg_0_7_0_13_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/weight_fifo0/fifo_reg_0_7_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    fifo_reg_0_7_14_15
       (.A0(w_ptr[0]),
        .A1(w_ptr[1]),
        .A2(w_ptr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(test_weight0[14]),
        .DPO(D[14]),
        .DPRA0(r_ptr[0]),
        .DPRA1(r_ptr[1]),
        .DPRA2(r_ptr[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/weight_fifo0/fifo_reg_0_7_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    fifo_reg_0_7_14_15__0
       (.A0(w_ptr[0]),
        .A1(w_ptr[1]),
        .A2(w_ptr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(test_weight0[15]),
        .DPO(D[15]),
        .DPRA0(r_ptr[0]),
        .DPRA1(r_ptr[1]),
        .DPRA2(r_ptr[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(RSTB));
  LUT6 #(
    .INIT(64'hFFFF6FF600000000)) 
    out_ofmap_reg_i_1
       (.I0(r_ptr[0]),
        .I1(w_ptr[0]),
        .I2(w_ptr[1]),
        .I3(r_ptr[1]),
        .I4(out_ofmap_reg_i_4_n_0),
        .I5(r_en0_w),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    out_ofmap_reg_i_4
       (.I0(r_ptr[2]),
        .I1(w_ptr[2]),
        .O(out_ofmap_reg_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr[0]_i_1 
       (.I0(r_ptr[0]),
        .O(\r_ptr[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr[1]_i_1 
       (.I0(r_ptr[0]),
        .I1(r_ptr[1]),
        .O(\r_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_ptr[2]_i_1 
       (.I0(r_ptr[1]),
        .I1(r_ptr[0]),
        .I2(r_ptr[2]),
        .O(\r_ptr[2]_i_1_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \r_ptr_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\r_ptr[0]_i_1_n_0 ),
        .Q(r_ptr[0]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \r_ptr_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\r_ptr[1]_i_1_n_0 ),
        .Q(r_ptr[1]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \r_ptr_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\r_ptr[2]_i_1_n_0 ),
        .Q(r_ptr[2]),
        .R(RSTB));
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr[0]_i_1 
       (.I0(w_ptr[0]),
        .O(w_ptr0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr[1]_i_1 
       (.I0(w_ptr[0]),
        .I1(w_ptr[1]),
        .O(w_ptr0[1]));
  LUT6 #(
    .INIT(64'hFB00FD00DF00FB00)) 
    \w_ptr[2]_i_1 
       (.I0(w_ptr[0]),
        .I1(r_ptr[0]),
        .I2(out_ofmap_reg_i_4_n_0),
        .I3(w_en0_w),
        .I4(w_ptr[1]),
        .I5(r_ptr[1]),
        .O(\w_ptr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \w_ptr[2]_i_2 
       (.I0(w_ptr[1]),
        .I1(w_ptr[0]),
        .I2(w_ptr[2]),
        .O(w_ptr0[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \w_ptr_reg[0] 
       (.C(clk),
        .CE(\w_ptr[2]_i_1_n_0 ),
        .D(w_ptr0[0]),
        .Q(w_ptr[0]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \w_ptr_reg[1] 
       (.C(clk),
        .CE(\w_ptr[2]_i_1_n_0 ),
        .D(w_ptr0[1]),
        .Q(w_ptr[1]),
        .R(RSTB));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \w_ptr_reg[2] 
       (.C(clk),
        .CE(\w_ptr[2]_i_1_n_0 ),
        .D(w_ptr0[2]),
        .Q(w_ptr[2]),
        .R(RSTB));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module design_1_systolic_array_2x2_s_0_1_fifo_5
   (D,
    RSTB,
    E,
    Q,
    full1_w,
    empty1_w,
    clk,
    test_weight1,
    rstn,
    w_en1_w,
    r_en1_w);
  output [15:0]D;
  output RSTB;
  output [0:0]E;
  output [15:0]Q;
  output full1_w;
  output empty1_w;
  input clk;
  input [15:0]test_weight1;
  input rstn;
  input w_en1_w;
  input r_en1_w;

  wire [15:0]D;
  wire [0:0]E;
  wire [15:0]Q;
  wire clk;
  wire fifo_reg_0_7_0_13_i_2__0_n_0;
  wire out_ofmap_reg_i_2_n_0;
  wire p_0_in__1;
  wire r_en1_w;
  wire [2:0]r_ptr;
  wire \r_ptr[0]_i_1__0_n_0 ;
  wire \r_ptr[1]_i_1__0_n_0 ;
  wire \r_ptr[2]_i_1__0_n_0 ;
  wire rstn;
  wire [15:0]test_weight1;
  wire w_en1_w;
  wire [2:0]w_ptr;
  wire [2:0]w_ptr0;
  wire \w_ptr[2]_i_1__0_n_0 ;
  wire [1:0]NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED;
  wire NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED;
  wire NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED;

  assign RSTB = rstn;
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/weight_fifo1/fifo_reg_0_7_0_13" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    fifo_reg_0_7_0_13
       (.ADDRA({1'b0,1'b0,r_ptr}),
        .ADDRB({1'b0,1'b0,r_ptr}),
        .ADDRC({1'b0,1'b0,r_ptr}),
        .ADDRD({1'b0,1'b0,r_ptr}),
        .ADDRE({1'b0,1'b0,r_ptr}),
        .ADDRF({1'b0,1'b0,r_ptr}),
        .ADDRG({1'b0,1'b0,r_ptr}),
        .ADDRH({1'b0,1'b0,w_ptr}),
        .DIA(test_weight1[1:0]),
        .DIB(test_weight1[3:2]),
        .DIC(test_weight1[5:4]),
        .DID(test_weight1[7:6]),
        .DIE(test_weight1[9:8]),
        .DIF(test_weight1[11:10]),
        .DIG(test_weight1[13:12]),
        .DIH({1'b0,1'b0}),
        .DOA(D[1:0]),
        .DOB(D[3:2]),
        .DOC(D[5:4]),
        .DOD(D[7:6]),
        .DOE(D[9:8]),
        .DOF(D[11:10]),
        .DOG(D[13:12]),
        .DOH(NLW_fifo_reg_0_7_0_13_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in__1));
  LUT6 #(
    .INIT(64'hFFFFB04000000000)) 
    fifo_reg_0_7_0_13_i_1__1
       (.I0(r_ptr[1]),
        .I1(w_ptr[1]),
        .I2(w_en1_w),
        .I3(out_ofmap_reg_i_2_n_0),
        .I4(fifo_reg_0_7_0_13_i_2__0_n_0),
        .I5(rstn),
        .O(p_0_in__1));
  LUT5 #(
    .INIT(32'hF96F0000)) 
    fifo_reg_0_7_0_13_i_2__0
       (.I0(r_ptr[1]),
        .I1(w_ptr[1]),
        .I2(r_ptr[0]),
        .I3(w_ptr[0]),
        .I4(w_en1_w),
        .O(fifo_reg_0_7_0_13_i_2__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/weight_fifo1/fifo_reg_0_7_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    fifo_reg_0_7_14_15
       (.A0(w_ptr[0]),
        .A1(w_ptr[1]),
        .A2(w_ptr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(test_weight1[14]),
        .DPO(D[14]),
        .DPRA0(r_ptr[0]),
        .DPRA1(r_ptr[1]),
        .DPRA2(r_ptr[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_fifo_reg_0_7_14_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in__1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "128" *) 
  (* RTL_RAM_NAME = "inst/weight_fifo1/fifo_reg_0_7_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    fifo_reg_0_7_14_15__0
       (.A0(w_ptr[0]),
        .A1(w_ptr[1]),
        .A2(w_ptr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(test_weight1[15]),
        .DPO(D[15]),
        .DPRA0(r_ptr[0]),
        .DPRA1(r_ptr[1]),
        .DPRA2(r_ptr[2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_fifo_reg_0_7_14_15__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in__1));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \out_data_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(rstn));
  LUT6 #(
    .INIT(64'hFFFF6FF600000000)) 
    out_ofmap_reg_i_1__0
       (.I0(r_ptr[0]),
        .I1(w_ptr[0]),
        .I2(w_ptr[1]),
        .I3(r_ptr[1]),
        .I4(out_ofmap_reg_i_2_n_0),
        .I5(r_en1_w),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    out_ofmap_reg_i_2
       (.I0(r_ptr[2]),
        .I1(w_ptr[2]),
        .O(out_ofmap_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr[0]_i_1__0 
       (.I0(r_ptr[0]),
        .O(\r_ptr[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr[1]_i_1__0 
       (.I0(r_ptr[0]),
        .I1(r_ptr[1]),
        .O(\r_ptr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_ptr[2]_i_1__0 
       (.I0(r_ptr[1]),
        .I1(r_ptr[0]),
        .I2(r_ptr[2]),
        .O(\r_ptr[2]_i_1__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \r_ptr_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\r_ptr[0]_i_1__0_n_0 ),
        .Q(r_ptr[0]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \r_ptr_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\r_ptr[1]_i_1__0_n_0 ),
        .Q(r_ptr[1]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \r_ptr_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\r_ptr[2]_i_1__0_n_0 ),
        .Q(r_ptr[2]),
        .R(rstn));
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr[0]_i_1__0 
       (.I0(w_ptr[0]),
        .O(w_ptr0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr[1]_i_1__0 
       (.I0(w_ptr[0]),
        .I1(w_ptr[1]),
        .O(w_ptr0[1]));
  LUT6 #(
    .INIT(64'hFB00FD00DF00FB00)) 
    \w_ptr[2]_i_1__0 
       (.I0(w_ptr[0]),
        .I1(r_ptr[0]),
        .I2(out_ofmap_reg_i_2_n_0),
        .I3(w_en1_w),
        .I4(w_ptr[1]),
        .I5(r_ptr[1]),
        .O(\w_ptr[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \w_ptr[2]_i_2__0 
       (.I0(w_ptr[1]),
        .I1(w_ptr[0]),
        .I2(w_ptr[2]),
        .O(w_ptr0[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \w_ptr_reg[0] 
       (.C(clk),
        .CE(\w_ptr[2]_i_1__0_n_0 ),
        .D(w_ptr0[0]),
        .Q(w_ptr[0]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \w_ptr_reg[1] 
       (.C(clk),
        .CE(\w_ptr[2]_i_1__0_n_0 ),
        .D(w_ptr0[1]),
        .Q(w_ptr[1]),
        .R(rstn));
  (* OPT_MODIFIED = "RETARGET" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_R_INVERTED(1'b1)) 
    \w_ptr_reg[2] 
       (.C(clk),
        .CE(\w_ptr[2]_i_1__0_n_0 ),
        .D(w_ptr0[2]),
        .Q(w_ptr[2]),
        .R(rstn));
endmodule

(* ORIG_REF_NAME = "integer_mac_pe" *) 
module design_1_systolic_array_2x2_s_0_1_integer_mac_pe
   (ofmap_wires_00,
    out_weight_00,
    out_ifmap_00,
    E,
    DSP_ALU_INST,
    clk,
    RSTB,
    D,
    A,
    out_data,
    Q);
  output [15:0]ofmap_wires_00;
  output [15:0]out_weight_00;
  output [15:0]out_ifmap_00;
  input [0:0]E;
  input [0:0]DSP_ALU_INST;
  input clk;
  input RSTB;
  input [15:0]D;
  input [15:0]A;
  input [15:0]out_data;
  input [15:0]Q;

  wire [15:0]A;
  wire [15:0]D;
  wire [0:0]DSP_ALU_INST;
  wire [0:0]E;
  wire RSTB;
  wire clk;
  wire [15:0]ofmap_wires_00;
  wire NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED;
  wire NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_out_ofmap_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_out_ofmap_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_out_ofmap_reg_P_UNCONNECTED;
  wire [47:0]NLW_out_ofmap_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_out_ofmap_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .IS_RSTA_INVERTED(1'b1),
    .IS_RSTB_INVERTED(1'b1),
    .IS_RSTP_INVERTED(1'b1),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    out_ofmap_reg
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_out_ofmap_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({D[15],D[15],D}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_out_ofmap_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(E),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(DSP_ALU_INST),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_out_ofmap_reg_P_UNCONNECTED[47:16],ofmap_wires_00}),
        .PATTERNBDETECT(NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_out_ofmap_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(RSTB),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(RSTB),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(RSTB),
        .UNDERFLOW(NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_out_ofmap_reg_XOROUT_UNCONNECTED[7:0]));
endmodule

(* ORIG_REF_NAME = "integer_mac_pe" *) 
module design_1_systolic_array_2x2_s_0_1_integer_mac_pe_1
   (ofmap_wires_01,
    out_weight_01,
    out_ifmap_01,
    E,
    clk,
    RSTB,
    Q,
    A,
    out_data,
    out_ifmap_00);
  output [15:0]ofmap_wires_01;
  output [15:0]out_weight_01;
  output [15:0]out_ifmap_01;
  input [0:0]E;
  input clk;
  input RSTB;
  input [15:0]Q;
  input [15:0]A;
  input [15:0]out_data;
  input [15:0]out_ifmap_00;

  wire [15:0]A;
  wire [0:0]E;
  wire [15:0]Q;
  wire RSTB;
  wire clk;
  wire [15:0]ofmap_wires_01;
  wire NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED;
  wire NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_out_ofmap_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_out_ofmap_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_out_ofmap_reg_P_UNCONNECTED;
  wire [47:0]NLW_out_ofmap_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_out_ofmap_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .IS_RSTA_INVERTED(1'b1),
    .IS_RSTP_INVERTED(1'b1),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    out_ofmap_reg
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_out_ofmap_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[15],Q[15],Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_out_ofmap_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(E),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_out_ofmap_reg_P_UNCONNECTED[47:16],ofmap_wires_01}),
        .PATTERNBDETECT(NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_out_ofmap_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(RSTB),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(RSTB),
        .UNDERFLOW(NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_out_ofmap_reg_XOROUT_UNCONNECTED[7:0]));
endmodule

(* ORIG_REF_NAME = "integer_mac_pe" *) 
module design_1_systolic_array_2x2_s_0_1_integer_mac_pe_2
   (ofmap_wires_10,
    out_weight_10,
    out_ifmap_10,
    E,
    clk,
    RSTB,
    D,
    out_data,
    out_weight_00,
    Q);
  output [15:0]ofmap_wires_10;
  output [15:0]out_weight_10;
  output [15:0]out_ifmap_10;
  input [0:0]E;
  input clk;
  input RSTB;
  input [15:0]D;
  input [15:0]out_data;
  input [15:0]out_weight_00;
  input [15:0]Q;

  wire [15:0]D;
  wire [0:0]E;
  wire RSTB;
  wire clk;
  wire [15:0]ofmap_wires_10;
  wire [15:0]out_data;
  wire NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED;
  wire NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_out_ofmap_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_out_ofmap_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_out_ofmap_reg_P_UNCONNECTED;
  wire [47:0]NLW_out_ofmap_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_out_ofmap_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .IS_RSTB_INVERTED(1'b1),
    .IS_RSTP_INVERTED(1'b1),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    out_ofmap_reg
       (.A({out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_out_ofmap_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({D[15],D[15],D}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_out_ofmap_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(E),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_out_ofmap_reg_P_UNCONNECTED[47:16],ofmap_wires_10}),
        .PATTERNBDETECT(NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_out_ofmap_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(RSTB),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(RSTB),
        .UNDERFLOW(NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_out_ofmap_reg_XOROUT_UNCONNECTED[7:0]));
endmodule

(* ORIG_REF_NAME = "integer_mac_pe" *) 
module design_1_systolic_array_2x2_s_0_1_integer_mac_pe_3
   (ofmap_wires_11,
    out_weight_11,
    out_ifmap_11,
    clk,
    RSTB,
    Q,
    out_data,
    out_weight_01,
    out_ifmap_10);
  output [15:0]ofmap_wires_11;
  output [15:0]out_weight_11;
  output [15:0]out_ifmap_11;
  input clk;
  input RSTB;
  input [15:0]Q;
  input [15:0]out_data;
  input [15:0]out_weight_01;
  input [15:0]out_ifmap_10;

  wire [15:0]Q;
  wire RSTB;
  wire clk;
  wire [15:0]ofmap_wires_11;
  wire [15:0]out_data;
  wire NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED;
  wire NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_out_ofmap_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_out_ofmap_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_out_ofmap_reg_P_UNCONNECTED;
  wire [47:0]NLW_out_ofmap_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_out_ofmap_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .IS_RSTP_INVERTED(1'b1),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    out_ofmap_reg
       (.A({out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data[15],out_data}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_out_ofmap_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[15],Q[15],Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_out_ofmap_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_out_ofmap_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_out_ofmap_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_out_ofmap_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_out_ofmap_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_out_ofmap_reg_P_UNCONNECTED[47:16],ofmap_wires_11}),
        .PATTERNBDETECT(NLW_out_ofmap_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_out_ofmap_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_out_ofmap_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(RSTB),
        .UNDERFLOW(NLW_out_ofmap_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_out_ofmap_reg_XOROUT_UNCONNECTED[7:0]));
endmodule

(* ORIG_REF_NAME = "systolic_array_2x2_syn" *) 
module design_1_systolic_array_2x2_s_0_1_systolic_array_2x2_syn
   (ofmap_wires_00,
    out_weight_00,
    out_ifmap_00,
    ofmap_wires_01,
    out_weight_01,
    out_ifmap_01,
    ofmap_wires_10,
    out_weight_10,
    out_ifmap_10,
    ofmap_wires_11,
    out_weight_11,
    out_ifmap_11,
    full0_w,
    empty0_w,
    full1_w,
    empty1_w,
    full0_i,
    empty0_i,
    full1_i,
    empty1_i,
    clk,
    test_weight0,
    test_ifmap0,
    test_weight1,
    test_ifmap1,
    w_en0_w,
    rstn,
    w_en0_i,
    w_en1_w,
    w_en1_i,
    r_en0_w,
    r_en1_w,
    r_en0_i,
    r_en1_i);
  output [15:0]ofmap_wires_00;
  output [15:0]out_weight_00;
  output [15:0]out_ifmap_00;
  output [15:0]ofmap_wires_01;
  output [15:0]out_weight_01;
  output [15:0]out_ifmap_01;
  output [15:0]ofmap_wires_10;
  output [15:0]out_weight_10;
  output [15:0]out_ifmap_10;
  output [15:0]ofmap_wires_11;
  output [15:0]out_weight_11;
  output [15:0]out_ifmap_11;
  output full0_w;
  output empty0_w;
  output full1_w;
  output empty1_w;
  output full0_i;
  output empty0_i;
  output full1_i;
  output empty1_i;
  input clk;
  input [15:0]test_weight0;
  input [15:0]test_ifmap0;
  input [15:0]test_weight1;
  input [15:0]test_ifmap1;
  input w_en0_w;
  input rstn;
  input w_en0_i;
  input w_en1_w;
  input w_en1_i;
  input r_en0_w;
  input r_en1_w;
  input r_en0_i;
  input r_en1_i;

  wire clk;
  wire ifmap_fifo0_n_16;
  wire ifmap_fifo0_n_17;
  wire ifmap_fifo0_n_18;
  wire ifmap_fifo0_n_19;
  wire ifmap_fifo0_n_20;
  wire ifmap_fifo0_n_21;
  wire ifmap_fifo0_n_22;
  wire ifmap_fifo0_n_23;
  wire ifmap_fifo0_n_24;
  wire ifmap_fifo0_n_25;
  wire ifmap_fifo0_n_26;
  wire ifmap_fifo0_n_27;
  wire ifmap_fifo0_n_28;
  wire ifmap_fifo0_n_29;
  wire ifmap_fifo0_n_30;
  wire ifmap_fifo0_n_31;
  wire ifmap_fifo0_n_32;
  wire ifmap_fifo1_n_16;
  wire ifmap_fifo1_n_17;
  wire ifmap_fifo1_n_18;
  wire ifmap_fifo1_n_19;
  wire ifmap_fifo1_n_20;
  wire ifmap_fifo1_n_21;
  wire ifmap_fifo1_n_22;
  wire ifmap_fifo1_n_23;
  wire ifmap_fifo1_n_24;
  wire ifmap_fifo1_n_25;
  wire ifmap_fifo1_n_26;
  wire ifmap_fifo1_n_27;
  wire ifmap_fifo1_n_28;
  wire ifmap_fifo1_n_29;
  wire ifmap_fifo1_n_30;
  wire ifmap_fifo1_n_31;
  wire ifmap_fifo1_n_32;
  wire [15:0]ofmap_wires_00;
  wire [15:0]ofmap_wires_01;
  wire [15:0]ofmap_wires_10;
  wire [15:0]ofmap_wires_11;
  wire [15:0]out_data;
  wire [15:0]out_data0;
  wire [15:0]out_data0__0;
  wire [15:0]out_data0__1;
  wire [15:0]out_data0__2;
  wire r_en0_i;
  wire r_en0_w;
  wire r_en1_i;
  wire r_en1_w;
  wire rstn;
  wire [15:0]test_ifmap0;
  wire [15:0]test_ifmap1;
  wire [15:0]test_weight0;
  wire [15:0]test_weight1;
  wire w_en0_i;
  wire w_en0_w;
  wire w_en1_i;
  wire w_en1_w;
  wire weight_fifo0_n_16;
  wire weight_fifo1_n_16;
  wire weight_fifo1_n_17;
  wire weight_fifo1_n_18;
  wire weight_fifo1_n_19;
  wire weight_fifo1_n_20;
  wire weight_fifo1_n_21;
  wire weight_fifo1_n_22;
  wire weight_fifo1_n_23;
  wire weight_fifo1_n_24;
  wire weight_fifo1_n_25;
  wire weight_fifo1_n_26;
  wire weight_fifo1_n_27;
  wire weight_fifo1_n_28;
  wire weight_fifo1_n_29;
  wire weight_fifo1_n_30;
  wire weight_fifo1_n_31;
  wire weight_fifo1_n_32;
  wire weight_fifo1_n_33;
  wire NLW_ifmap_fifo0_empty0_i_UNCONNECTED;
  wire NLW_ifmap_fifo0_full0_i_UNCONNECTED;
  wire NLW_ifmap_fifo1_empty1_i_UNCONNECTED;
  wire NLW_ifmap_fifo1_full1_i_UNCONNECTED;
  wire [15:0]NLW_pe00_Q_UNCONNECTED;
  wire [15:0]NLW_pe00_out_data_UNCONNECTED;
  wire [15:0]NLW_pe00_out_ifmap_00_UNCONNECTED;
  wire [15:0]NLW_pe00_out_weight_00_UNCONNECTED;
  wire [15:0]NLW_pe01_out_data_UNCONNECTED;
  wire [15:0]NLW_pe01_out_ifmap_00_UNCONNECTED;
  wire [15:0]NLW_pe01_out_ifmap_01_UNCONNECTED;
  wire [15:0]NLW_pe01_out_weight_01_UNCONNECTED;
  wire [15:0]NLW_pe10_Q_UNCONNECTED;
  wire [15:0]NLW_pe10_out_ifmap_10_UNCONNECTED;
  wire [15:0]NLW_pe10_out_weight_00_UNCONNECTED;
  wire [15:0]NLW_pe10_out_weight_10_UNCONNECTED;
  wire [15:0]NLW_pe11_out_ifmap_10_UNCONNECTED;
  wire [15:0]NLW_pe11_out_ifmap_11_UNCONNECTED;
  wire [15:0]NLW_pe11_out_weight_01_UNCONNECTED;
  wire [15:0]NLW_pe11_out_weight_11_UNCONNECTED;
  wire NLW_weight_fifo0_empty0_w_UNCONNECTED;
  wire NLW_weight_fifo0_full0_w_UNCONNECTED;
  wire NLW_weight_fifo1_empty1_w_UNCONNECTED;
  wire NLW_weight_fifo1_full1_w_UNCONNECTED;

  design_1_systolic_array_2x2_s_0_1_fifo ifmap_fifo0
       (.D(out_data0__0),
        .E(ifmap_fifo0_n_16),
        .Q({ifmap_fifo0_n_17,ifmap_fifo0_n_18,ifmap_fifo0_n_19,ifmap_fifo0_n_20,ifmap_fifo0_n_21,ifmap_fifo0_n_22,ifmap_fifo0_n_23,ifmap_fifo0_n_24,ifmap_fifo0_n_25,ifmap_fifo0_n_26,ifmap_fifo0_n_27,ifmap_fifo0_n_28,ifmap_fifo0_n_29,ifmap_fifo0_n_30,ifmap_fifo0_n_31,ifmap_fifo0_n_32}),
        .RSTB(weight_fifo1_n_16),
        .clk(clk),
        .empty0_i(NLW_ifmap_fifo0_empty0_i_UNCONNECTED),
        .full0_i(NLW_ifmap_fifo0_full0_i_UNCONNECTED),
        .r_en0_i(r_en0_i),
        .rstn(rstn),
        .test_ifmap0(test_ifmap0),
        .w_en0_i(w_en0_i));
  design_1_systolic_array_2x2_s_0_1_fifo_0 ifmap_fifo1
       (.D(out_data0__2),
        .E(ifmap_fifo1_n_16),
        .Q({ifmap_fifo1_n_17,ifmap_fifo1_n_18,ifmap_fifo1_n_19,ifmap_fifo1_n_20,ifmap_fifo1_n_21,ifmap_fifo1_n_22,ifmap_fifo1_n_23,ifmap_fifo1_n_24,ifmap_fifo1_n_25,ifmap_fifo1_n_26,ifmap_fifo1_n_27,ifmap_fifo1_n_28,ifmap_fifo1_n_29,ifmap_fifo1_n_30,ifmap_fifo1_n_31,ifmap_fifo1_n_32}),
        .RSTB(weight_fifo1_n_16),
        .clk(clk),
        .empty1_i(NLW_ifmap_fifo1_empty1_i_UNCONNECTED),
        .full1_i(NLW_ifmap_fifo1_full1_i_UNCONNECTED),
        .r_en1_i(r_en1_i),
        .rstn(rstn),
        .test_ifmap1(test_ifmap1),
        .w_en1_i(w_en1_i));
  design_1_systolic_array_2x2_s_0_1_integer_mac_pe pe00
       (.A(out_data0),
        .D(out_data0__0),
        .DSP_ALU_INST(ifmap_fifo0_n_16),
        .E(weight_fifo0_n_16),
        .Q(NLW_pe00_Q_UNCONNECTED[15:0]),
        .RSTB(weight_fifo1_n_16),
        .clk(clk),
        .ofmap_wires_00(ofmap_wires_00),
        .out_data(NLW_pe00_out_data_UNCONNECTED[15:0]),
        .out_ifmap_00(NLW_pe00_out_ifmap_00_UNCONNECTED[15:0]),
        .out_weight_00(NLW_pe00_out_weight_00_UNCONNECTED[15:0]));
  design_1_systolic_array_2x2_s_0_1_integer_mac_pe_1 pe01
       (.A(out_data0__1),
        .E(weight_fifo1_n_17),
        .Q({ifmap_fifo0_n_17,ifmap_fifo0_n_18,ifmap_fifo0_n_19,ifmap_fifo0_n_20,ifmap_fifo0_n_21,ifmap_fifo0_n_22,ifmap_fifo0_n_23,ifmap_fifo0_n_24,ifmap_fifo0_n_25,ifmap_fifo0_n_26,ifmap_fifo0_n_27,ifmap_fifo0_n_28,ifmap_fifo0_n_29,ifmap_fifo0_n_30,ifmap_fifo0_n_31,ifmap_fifo0_n_32}),
        .RSTB(weight_fifo1_n_16),
        .clk(clk),
        .ofmap_wires_01(ofmap_wires_01),
        .out_data(NLW_pe01_out_data_UNCONNECTED[15:0]),
        .out_ifmap_00(NLW_pe01_out_ifmap_00_UNCONNECTED[15:0]),
        .out_ifmap_01(NLW_pe01_out_ifmap_01_UNCONNECTED[15:0]),
        .out_weight_01(NLW_pe01_out_weight_01_UNCONNECTED[15:0]));
  design_1_systolic_array_2x2_s_0_1_integer_mac_pe_2 pe10
       (.D(out_data0__2),
        .E(ifmap_fifo1_n_16),
        .Q(NLW_pe10_Q_UNCONNECTED[15:0]),
        .RSTB(weight_fifo1_n_16),
        .clk(clk),
        .ofmap_wires_10(ofmap_wires_10),
        .out_data(out_data),
        .out_ifmap_10(NLW_pe10_out_ifmap_10_UNCONNECTED[15:0]),
        .out_weight_00(NLW_pe10_out_weight_00_UNCONNECTED[15:0]),
        .out_weight_10(NLW_pe10_out_weight_10_UNCONNECTED[15:0]));
  design_1_systolic_array_2x2_s_0_1_integer_mac_pe_3 pe11
       (.Q({ifmap_fifo1_n_17,ifmap_fifo1_n_18,ifmap_fifo1_n_19,ifmap_fifo1_n_20,ifmap_fifo1_n_21,ifmap_fifo1_n_22,ifmap_fifo1_n_23,ifmap_fifo1_n_24,ifmap_fifo1_n_25,ifmap_fifo1_n_26,ifmap_fifo1_n_27,ifmap_fifo1_n_28,ifmap_fifo1_n_29,ifmap_fifo1_n_30,ifmap_fifo1_n_31,ifmap_fifo1_n_32}),
        .RSTB(weight_fifo1_n_16),
        .clk(clk),
        .ofmap_wires_11(ofmap_wires_11),
        .out_data({weight_fifo1_n_18,weight_fifo1_n_19,weight_fifo1_n_20,weight_fifo1_n_21,weight_fifo1_n_22,weight_fifo1_n_23,weight_fifo1_n_24,weight_fifo1_n_25,weight_fifo1_n_26,weight_fifo1_n_27,weight_fifo1_n_28,weight_fifo1_n_29,weight_fifo1_n_30,weight_fifo1_n_31,weight_fifo1_n_32,weight_fifo1_n_33}),
        .out_ifmap_10(NLW_pe11_out_ifmap_10_UNCONNECTED[15:0]),
        .out_ifmap_11(NLW_pe11_out_ifmap_11_UNCONNECTED[15:0]),
        .out_weight_01(NLW_pe11_out_weight_01_UNCONNECTED[15:0]),
        .out_weight_11(NLW_pe11_out_weight_11_UNCONNECTED[15:0]));
  design_1_systolic_array_2x2_s_0_1_fifo_4 weight_fifo0
       (.D(out_data0),
        .E(weight_fifo0_n_16),
        .Q(out_data),
        .RSTB(weight_fifo1_n_16),
        .clk(clk),
        .empty0_w(NLW_weight_fifo0_empty0_w_UNCONNECTED),
        .full0_w(NLW_weight_fifo0_full0_w_UNCONNECTED),
        .r_en0_w(r_en0_w),
        .rstn(rstn),
        .test_weight0(test_weight0),
        .w_en0_w(w_en0_w));
  design_1_systolic_array_2x2_s_0_1_fifo_5 weight_fifo1
       (.D(out_data0__1),
        .E(weight_fifo1_n_17),
        .Q({weight_fifo1_n_18,weight_fifo1_n_19,weight_fifo1_n_20,weight_fifo1_n_21,weight_fifo1_n_22,weight_fifo1_n_23,weight_fifo1_n_24,weight_fifo1_n_25,weight_fifo1_n_26,weight_fifo1_n_27,weight_fifo1_n_28,weight_fifo1_n_29,weight_fifo1_n_30,weight_fifo1_n_31,weight_fifo1_n_32,weight_fifo1_n_33}),
        .RSTB(weight_fifo1_n_16),
        .clk(clk),
        .empty1_w(NLW_weight_fifo1_empty1_w_UNCONNECTED),
        .full1_w(NLW_weight_fifo1_full1_w_UNCONNECTED),
        .r_en1_w(r_en1_w),
        .rstn(rstn),
        .test_weight1(test_weight1),
        .w_en1_w(w_en1_w));
endmodule

(* ECO_CHECKSUM = "576d8864" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module design_1_wrapper
   (clk_100MHz,
    ext_reset_in,
    ofmap_00,
    ofmap_01,
    ofmap_10,
    ofmap_11,
    read_enables,
    write_enables);
  input clk_100MHz;
  input ext_reset_in;
  output [15:0]ofmap_00;
  output [15:0]ofmap_01;
  output [15:0]ofmap_10;
  output [15:0]ofmap_11;
  input read_enables;
  input write_enables;

  (* IBUF_LOW_PWR *) wire clk_100MHz;
  wire ext_reset_in;
  wire ext_reset_in_IBUF;
  wire [15:0]ofmap_00;
  wire [15:0]ofmap_00_OBUF;
  wire [15:0]ofmap_01;
  wire [15:0]ofmap_01_OBUF;
  wire [15:0]ofmap_10;
  wire [15:0]ofmap_10_OBUF;
  wire [15:0]ofmap_11;
  wire [15:0]ofmap_11_OBUF;
  wire read_enables;
  wire read_enables_IBUF;
  wire write_enables;
  wire write_enables_IBUF;

  (* HW_HANDOFF = "design_1.hwdef" *) 
  design_1 design_1_i
       (.clk_100MHz(clk_100MHz),
        .ext_reset_in(ext_reset_in_IBUF),
        .ofmap_00(ofmap_00_OBUF),
        .ofmap_01(ofmap_01_OBUF),
        .ofmap_10(ofmap_10_OBUF),
        .ofmap_11(ofmap_11_OBUF),
        .read_enables(read_enables_IBUF),
        .write_enables(write_enables_IBUF));
  IBUF ext_reset_in_IBUF_inst
       (.I(ext_reset_in),
        .O(ext_reset_in_IBUF));
  OBUF \ofmap_00_OBUF[0]_inst 
       (.I(ofmap_00_OBUF[0]),
        .O(ofmap_00[0]));
  OBUF \ofmap_00_OBUF[10]_inst 
       (.I(ofmap_00_OBUF[10]),
        .O(ofmap_00[10]));
  OBUF \ofmap_00_OBUF[11]_inst 
       (.I(ofmap_00_OBUF[11]),
        .O(ofmap_00[11]));
  OBUF \ofmap_00_OBUF[12]_inst 
       (.I(ofmap_00_OBUF[12]),
        .O(ofmap_00[12]));
  OBUF \ofmap_00_OBUF[13]_inst 
       (.I(ofmap_00_OBUF[13]),
        .O(ofmap_00[13]));
  OBUF \ofmap_00_OBUF[14]_inst 
       (.I(ofmap_00_OBUF[14]),
        .O(ofmap_00[14]));
  OBUF \ofmap_00_OBUF[15]_inst 
       (.I(ofmap_00_OBUF[15]),
        .O(ofmap_00[15]));
  OBUF \ofmap_00_OBUF[1]_inst 
       (.I(ofmap_00_OBUF[1]),
        .O(ofmap_00[1]));
  OBUF \ofmap_00_OBUF[2]_inst 
       (.I(ofmap_00_OBUF[2]),
        .O(ofmap_00[2]));
  OBUF \ofmap_00_OBUF[3]_inst 
       (.I(ofmap_00_OBUF[3]),
        .O(ofmap_00[3]));
  OBUF \ofmap_00_OBUF[4]_inst 
       (.I(ofmap_00_OBUF[4]),
        .O(ofmap_00[4]));
  OBUF \ofmap_00_OBUF[5]_inst 
       (.I(ofmap_00_OBUF[5]),
        .O(ofmap_00[5]));
  OBUF \ofmap_00_OBUF[6]_inst 
       (.I(ofmap_00_OBUF[6]),
        .O(ofmap_00[6]));
  OBUF \ofmap_00_OBUF[7]_inst 
       (.I(ofmap_00_OBUF[7]),
        .O(ofmap_00[7]));
  OBUF \ofmap_00_OBUF[8]_inst 
       (.I(ofmap_00_OBUF[8]),
        .O(ofmap_00[8]));
  OBUF \ofmap_00_OBUF[9]_inst 
       (.I(ofmap_00_OBUF[9]),
        .O(ofmap_00[9]));
  OBUF \ofmap_01_OBUF[0]_inst 
       (.I(ofmap_01_OBUF[0]),
        .O(ofmap_01[0]));
  OBUF \ofmap_01_OBUF[10]_inst 
       (.I(ofmap_01_OBUF[10]),
        .O(ofmap_01[10]));
  OBUF \ofmap_01_OBUF[11]_inst 
       (.I(ofmap_01_OBUF[11]),
        .O(ofmap_01[11]));
  OBUF \ofmap_01_OBUF[12]_inst 
       (.I(ofmap_01_OBUF[12]),
        .O(ofmap_01[12]));
  OBUF \ofmap_01_OBUF[13]_inst 
       (.I(ofmap_01_OBUF[13]),
        .O(ofmap_01[13]));
  OBUF \ofmap_01_OBUF[14]_inst 
       (.I(ofmap_01_OBUF[14]),
        .O(ofmap_01[14]));
  OBUF \ofmap_01_OBUF[15]_inst 
       (.I(ofmap_01_OBUF[15]),
        .O(ofmap_01[15]));
  OBUF \ofmap_01_OBUF[1]_inst 
       (.I(ofmap_01_OBUF[1]),
        .O(ofmap_01[1]));
  OBUF \ofmap_01_OBUF[2]_inst 
       (.I(ofmap_01_OBUF[2]),
        .O(ofmap_01[2]));
  OBUF \ofmap_01_OBUF[3]_inst 
       (.I(ofmap_01_OBUF[3]),
        .O(ofmap_01[3]));
  OBUF \ofmap_01_OBUF[4]_inst 
       (.I(ofmap_01_OBUF[4]),
        .O(ofmap_01[4]));
  OBUF \ofmap_01_OBUF[5]_inst 
       (.I(ofmap_01_OBUF[5]),
        .O(ofmap_01[5]));
  OBUF \ofmap_01_OBUF[6]_inst 
       (.I(ofmap_01_OBUF[6]),
        .O(ofmap_01[6]));
  OBUF \ofmap_01_OBUF[7]_inst 
       (.I(ofmap_01_OBUF[7]),
        .O(ofmap_01[7]));
  OBUF \ofmap_01_OBUF[8]_inst 
       (.I(ofmap_01_OBUF[8]),
        .O(ofmap_01[8]));
  OBUF \ofmap_01_OBUF[9]_inst 
       (.I(ofmap_01_OBUF[9]),
        .O(ofmap_01[9]));
  OBUF \ofmap_10_OBUF[0]_inst 
       (.I(ofmap_10_OBUF[0]),
        .O(ofmap_10[0]));
  OBUF \ofmap_10_OBUF[10]_inst 
       (.I(ofmap_10_OBUF[10]),
        .O(ofmap_10[10]));
  OBUF \ofmap_10_OBUF[11]_inst 
       (.I(ofmap_10_OBUF[11]),
        .O(ofmap_10[11]));
  OBUF \ofmap_10_OBUF[12]_inst 
       (.I(ofmap_10_OBUF[12]),
        .O(ofmap_10[12]));
  OBUF \ofmap_10_OBUF[13]_inst 
       (.I(ofmap_10_OBUF[13]),
        .O(ofmap_10[13]));
  OBUF \ofmap_10_OBUF[14]_inst 
       (.I(ofmap_10_OBUF[14]),
        .O(ofmap_10[14]));
  OBUF \ofmap_10_OBUF[15]_inst 
       (.I(ofmap_10_OBUF[15]),
        .O(ofmap_10[15]));
  OBUF \ofmap_10_OBUF[1]_inst 
       (.I(ofmap_10_OBUF[1]),
        .O(ofmap_10[1]));
  OBUF \ofmap_10_OBUF[2]_inst 
       (.I(ofmap_10_OBUF[2]),
        .O(ofmap_10[2]));
  OBUF \ofmap_10_OBUF[3]_inst 
       (.I(ofmap_10_OBUF[3]),
        .O(ofmap_10[3]));
  OBUF \ofmap_10_OBUF[4]_inst 
       (.I(ofmap_10_OBUF[4]),
        .O(ofmap_10[4]));
  OBUF \ofmap_10_OBUF[5]_inst 
       (.I(ofmap_10_OBUF[5]),
        .O(ofmap_10[5]));
  OBUF \ofmap_10_OBUF[6]_inst 
       (.I(ofmap_10_OBUF[6]),
        .O(ofmap_10[6]));
  OBUF \ofmap_10_OBUF[7]_inst 
       (.I(ofmap_10_OBUF[7]),
        .O(ofmap_10[7]));
  OBUF \ofmap_10_OBUF[8]_inst 
       (.I(ofmap_10_OBUF[8]),
        .O(ofmap_10[8]));
  OBUF \ofmap_10_OBUF[9]_inst 
       (.I(ofmap_10_OBUF[9]),
        .O(ofmap_10[9]));
  OBUF \ofmap_11_OBUF[0]_inst 
       (.I(ofmap_11_OBUF[0]),
        .O(ofmap_11[0]));
  OBUF \ofmap_11_OBUF[10]_inst 
       (.I(ofmap_11_OBUF[10]),
        .O(ofmap_11[10]));
  OBUF \ofmap_11_OBUF[11]_inst 
       (.I(ofmap_11_OBUF[11]),
        .O(ofmap_11[11]));
  OBUF \ofmap_11_OBUF[12]_inst 
       (.I(ofmap_11_OBUF[12]),
        .O(ofmap_11[12]));
  OBUF \ofmap_11_OBUF[13]_inst 
       (.I(ofmap_11_OBUF[13]),
        .O(ofmap_11[13]));
  OBUF \ofmap_11_OBUF[14]_inst 
       (.I(ofmap_11_OBUF[14]),
        .O(ofmap_11[14]));
  OBUF \ofmap_11_OBUF[15]_inst 
       (.I(ofmap_11_OBUF[15]),
        .O(ofmap_11[15]));
  OBUF \ofmap_11_OBUF[1]_inst 
       (.I(ofmap_11_OBUF[1]),
        .O(ofmap_11[1]));
  OBUF \ofmap_11_OBUF[2]_inst 
       (.I(ofmap_11_OBUF[2]),
        .O(ofmap_11[2]));
  OBUF \ofmap_11_OBUF[3]_inst 
       (.I(ofmap_11_OBUF[3]),
        .O(ofmap_11[3]));
  OBUF \ofmap_11_OBUF[4]_inst 
       (.I(ofmap_11_OBUF[4]),
        .O(ofmap_11[4]));
  OBUF \ofmap_11_OBUF[5]_inst 
       (.I(ofmap_11_OBUF[5]),
        .O(ofmap_11[5]));
  OBUF \ofmap_11_OBUF[6]_inst 
       (.I(ofmap_11_OBUF[6]),
        .O(ofmap_11[6]));
  OBUF \ofmap_11_OBUF[7]_inst 
       (.I(ofmap_11_OBUF[7]),
        .O(ofmap_11[7]));
  OBUF \ofmap_11_OBUF[8]_inst 
       (.I(ofmap_11_OBUF[8]),
        .O(ofmap_11[8]));
  OBUF \ofmap_11_OBUF[9]_inst 
       (.I(ofmap_11_OBUF[9]),
        .O(ofmap_11[9]));
  IBUF read_enables_IBUF_inst
       (.I(read_enables),
        .O(read_enables_IBUF));
  IBUF write_enables_IBUF_inst
       (.I(write_enables),
        .O(write_enables_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
