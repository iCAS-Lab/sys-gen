// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Jul 31 03:31:03 2024
// Host        : S7117-Evolution running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/S7117/Repos/Spike-TPU/testing/integer_tpu/integer_tpu.gen/sources_1/bd/design_1/ip/design_1_systolic_array_2x2_s_0_1/design_1_systolic_array_2x2_s_0_1_stub.v
// Design      : design_1_systolic_array_2x2_s_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "systolic_array_2x2_syn,Vivado 2024.1" *)
module design_1_systolic_array_2x2_s_0_1(clk, rstn, r_en0_w, r_en1_w, r_en0_i, r_en1_i, 
  w_en0_w, w_en1_w, w_en0_i, w_en1_i, test_weight0, test_weight1, test_ifmap0, test_ifmap1, 
  full0_w, full1_w, full0_i, full1_i, empty0_w, empty1_w, empty0_i, empty1_i, ofmap_wires_00, 
  out_weight_00, out_ifmap_00, ofmap_wires_01, out_weight_01, out_ifmap_01, ofmap_wires_10, 
  out_weight_10, out_ifmap_10, ofmap_wires_11, out_weight_11, out_ifmap_11)
/* synthesis syn_black_box black_box_pad_pin="rstn,r_en0_w,r_en1_w,r_en0_i,r_en1_i,w_en0_w,w_en1_w,w_en0_i,w_en1_i,test_weight0[15:0],test_weight1[15:0],test_ifmap0[15:0],test_ifmap1[15:0],full0_w,full1_w,full0_i,full1_i,empty0_w,empty1_w,empty0_i,empty1_i,ofmap_wires_00[15:0],out_weight_00[15:0],out_ifmap_00[15:0],ofmap_wires_01[15:0],out_weight_01[15:0],out_ifmap_01[15:0],ofmap_wires_10[15:0],out_weight_10[15:0],out_ifmap_10[15:0],ofmap_wires_11[15:0],out_weight_11[15:0],out_ifmap_11[15:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rstn;
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
endmodule
