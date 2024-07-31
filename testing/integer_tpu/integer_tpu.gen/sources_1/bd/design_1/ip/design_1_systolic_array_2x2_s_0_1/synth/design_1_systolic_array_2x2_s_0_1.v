// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:systolic_array_2x2_syn:1.0
// IP Revision: 1

(* X_CORE_INFO = "systolic_array_2x2_syn,Vivado 2024.1" *)
(* CHECK_LICENSE_TYPE = "design_1_systolic_array_2x2_s_0_1,systolic_array_2x2_syn,{}" *)
(* CORE_GENERATION_INFO = "design_1_systolic_array_2x2_s_0_1,systolic_array_2x2_syn,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=systolic_array_2x2_syn,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DATA_WIDTH=16}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_systolic_array_2x2_s_0_1 (
  clk,
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
  out_ifmap_11
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire rstn;
input wire r_en0_w;
input wire r_en1_w;
input wire r_en0_i;
input wire r_en1_i;
input wire w_en0_w;
input wire w_en1_w;
input wire w_en0_i;
input wire w_en1_i;
input wire [15 : 0] test_weight0;
input wire [15 : 0] test_weight1;
input wire [15 : 0] test_ifmap0;
input wire [15 : 0] test_ifmap1;
output wire full0_w;
output wire full1_w;
output wire full0_i;
output wire full1_i;
output wire empty0_w;
output wire empty1_w;
output wire empty0_i;
output wire empty1_i;
output wire [15 : 0] ofmap_wires_00;
output wire [15 : 0] out_weight_00;
output wire [15 : 0] out_ifmap_00;
output wire [15 : 0] ofmap_wires_01;
output wire [15 : 0] out_weight_01;
output wire [15 : 0] out_ifmap_01;
output wire [15 : 0] ofmap_wires_10;
output wire [15 : 0] out_weight_10;
output wire [15 : 0] out_ifmap_10;
output wire [15 : 0] ofmap_wires_11;
output wire [15 : 0] out_weight_11;
output wire [15 : 0] out_ifmap_11;

  systolic_array_2x2_syn #(
    .DATA_WIDTH(16)
  ) inst (
    .clk(clk),
    .rstn(rstn),
    .r_en0_w(r_en0_w),
    .r_en1_w(r_en1_w),
    .r_en0_i(r_en0_i),
    .r_en1_i(r_en1_i),
    .w_en0_w(w_en0_w),
    .w_en1_w(w_en1_w),
    .w_en0_i(w_en0_i),
    .w_en1_i(w_en1_i),
    .test_weight0(test_weight0),
    .test_weight1(test_weight1),
    .test_ifmap0(test_ifmap0),
    .test_ifmap1(test_ifmap1),
    .full0_w(full0_w),
    .full1_w(full1_w),
    .full0_i(full0_i),
    .full1_i(full1_i),
    .empty0_w(empty0_w),
    .empty1_w(empty1_w),
    .empty0_i(empty0_i),
    .empty1_i(empty1_i),
    .ofmap_wires_00(ofmap_wires_00),
    .out_weight_00(out_weight_00),
    .out_ifmap_00(out_ifmap_00),
    .ofmap_wires_01(ofmap_wires_01),
    .out_weight_01(out_weight_01),
    .out_ifmap_01(out_ifmap_01),
    .ofmap_wires_10(ofmap_wires_10),
    .out_weight_10(out_weight_10),
    .out_ifmap_10(out_ifmap_10),
    .ofmap_wires_11(ofmap_wires_11),
    .out_weight_11(out_weight_11),
    .out_ifmap_11(out_ifmap_11)
  );
endmodule
