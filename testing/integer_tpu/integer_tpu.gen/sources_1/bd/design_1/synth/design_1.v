//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Wed Jul 31 02:00:29 2024
//Host        : S7117-Evolution running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
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

  wire clk_100MHz_1;
  wire clk_wiz_clk_out1;
  wire clk_wiz_locked;
  wire ext_reset_in_1;
  wire read_enables_1;
  wire [0:0]rst_clk_wiz_100M_peripheral_aresetn;
  wire [15:0]systolic_array_2x2_s_0_ofmap_wires_00;
  wire [15:0]systolic_array_2x2_s_0_ofmap_wires_01;
  wire [15:0]systolic_array_2x2_s_0_ofmap_wires_10;
  wire [15:0]systolic_array_2x2_s_0_ofmap_wires_11;
  wire write_enables_1;
  wire [15:0]xlconstant_0_dout;
  wire [15:0]xlconstant_1_dout;
  wire [15:0]xlconstant_2_dout;
  wire [15:0]xlconstant_3_dout;

  assign clk_100MHz_1 = clk_100MHz;
  assign ext_reset_in_1 = ext_reset_in;
  assign ofmap_00[15:0] = systolic_array_2x2_s_0_ofmap_wires_00;
  assign ofmap_01[15:0] = systolic_array_2x2_s_0_ofmap_wires_01;
  assign ofmap_10[15:0] = systolic_array_2x2_s_0_ofmap_wires_10;
  assign ofmap_11[15:0] = systolic_array_2x2_s_0_ofmap_wires_11;
  assign read_enables_1 = read_enables;
  assign write_enables_1 = write_enables;
  design_1_clk_wiz_0 clk_wiz
       (.clk_in1(clk_100MHz_1),
        .clk_out1(clk_wiz_clk_out1),
        .locked(clk_wiz_locked),
        .reset(1'b0));
  design_1_rst_clk_wiz_100M_0 rst_clk_wiz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_clk_out1));
  design_1_systolic_array_2x2_s_0_1 systolic_array_2x2_s_0
       (.clk(clk_wiz_clk_out1),
        .ofmap_wires_00(systolic_array_2x2_s_0_ofmap_wires_00),
        .ofmap_wires_01(systolic_array_2x2_s_0_ofmap_wires_01),
        .ofmap_wires_10(systolic_array_2x2_s_0_ofmap_wires_10),
        .ofmap_wires_11(systolic_array_2x2_s_0_ofmap_wires_11),
        .r_en0_i(read_enables_1),
        .r_en0_w(read_enables_1),
        .r_en1_i(read_enables_1),
        .r_en1_w(read_enables_1),
        .rstn(rst_clk_wiz_100M_peripheral_aresetn),
        .test_ifmap0(xlconstant_2_dout),
        .test_ifmap1(xlconstant_3_dout),
        .test_weight0(xlconstant_0_dout),
        .test_weight1(xlconstant_1_dout),
        .w_en0_i(write_enables_1),
        .w_en0_w(write_enables_1),
        .w_en1_i(write_enables_1),
        .w_en1_w(write_enables_1));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_1_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  design_1_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
endmodule
