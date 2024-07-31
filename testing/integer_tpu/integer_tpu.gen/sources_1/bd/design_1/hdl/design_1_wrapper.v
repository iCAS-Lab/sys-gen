//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Wed Jul 31 02:00:29 2024
//Host        : S7117-Evolution running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

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

  wire clk_100MHz;
  wire ext_reset_in;
  wire [15:0]ofmap_00;
  wire [15:0]ofmap_01;
  wire [15:0]ofmap_10;
  wire [15:0]ofmap_11;
  wire read_enables;
  wire write_enables;

  design_1 design_1_i
       (.clk_100MHz(clk_100MHz),
        .ext_reset_in(ext_reset_in),
        .ofmap_00(ofmap_00),
        .ofmap_01(ofmap_01),
        .ofmap_10(ofmap_10),
        .ofmap_11(ofmap_11),
        .read_enables(read_enables),
        .write_enables(write_enables));
endmodule
