// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Jul 31 03:31:03 2024
// Host        : S7117-Evolution running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/S7117/Repos/Spike-TPU/testing/integer_tpu/integer_tpu.gen/sources_1/bd/design_1/ip/design_1_systolic_array_2x2_s_0_1/design_1_systolic_array_2x2_s_0_1_sim_netlist.v
// Design      : design_1_systolic_array_2x2_s_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_systolic_array_2x2_s_0_1,systolic_array_2x2_syn,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "systolic_array_2x2_syn,Vivado 2024.1" *) 
(* NotValidForBitStream *)
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
  wire empty0_i;
  wire empty0_w;
  wire empty1_i;
  wire empty1_w;
  wire full0_i;
  wire full0_w;
  wire full1_i;
  wire full1_w;
  wire [15:0]ofmap_wires_00;
  wire [15:0]ofmap_wires_01;
  wire [15:0]ofmap_wires_10;
  wire [15:0]ofmap_wires_11;
  wire [15:0]out_ifmap_00;
  wire [15:0]out_ifmap_01;
  wire [15:0]out_ifmap_10;
  wire [15:0]out_ifmap_11;
  wire [15:0]out_weight_00;
  wire [15:0]out_weight_01;
  wire [15:0]out_weight_10;
  wire [15:0]out_weight_11;
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

  design_1_systolic_array_2x2_s_0_1_systolic_array_2x2_syn inst
       (.clk(clk),
        .empty0_i(empty0_i),
        .empty0_w(empty0_w),
        .empty1_i(empty1_i),
        .empty1_w(empty1_w),
        .full0_i(full0_i),
        .full0_w(full0_w),
        .full1_i(full1_i),
        .full1_w(full1_w),
        .ofmap_wires_00(ofmap_wires_00),
        .ofmap_wires_01(ofmap_wires_01),
        .ofmap_wires_10(ofmap_wires_10),
        .ofmap_wires_11(ofmap_wires_11),
        .out_ifmap_00(out_ifmap_00),
        .out_ifmap_01(out_ifmap_01),
        .out_ifmap_10(out_ifmap_10),
        .out_ifmap_11(out_ifmap_11),
        .out_weight_00(out_weight_00),
        .out_weight_01(out_weight_01),
        .out_weight_10(out_weight_10),
        .out_weight_11(out_weight_11),
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
    CEB2,
    empty0_i,
    full0_i,
    Q,
    clk,
    test_ifmap0,
    RSTB,
    r_en0_i,
    w_en0_i,
    rstn);
  output [15:0]D;
  output CEB2;
  output empty0_i;
  output full0_i;
  output [15:0]Q;
  input clk;
  input [15:0]test_ifmap0;
  input RSTB;
  input r_en0_i;
  input w_en0_i;
  input rstn;

  wire CEB2;
  wire [15:0]D;
  wire [15:0]Q;
  wire RSTB;
  wire clk;
  wire empty0_i;
  wire empty0_i_INST_0_i_1_n_0;
  wire fifo_reg_0_31_0_13_i_2__1_n_0;
  wire full0_i;
  wire full0_i_INST_0_i_1_n_0;
  wire full0_i_INST_0_i_2_n_0;
  wire p_0_in__0;
  wire r_en0_i;
  wire \r_ptr[0]_i_1__1_n_0 ;
  wire \r_ptr[1]_i_1__1_n_0 ;
  wire \r_ptr[2]_i_1__1_n_0 ;
  wire \r_ptr[3]_i_1__1_n_0 ;
  wire \r_ptr[4]_i_1__1_n_0 ;
  wire [4:0]r_ptr_reg;
  wire rstn;
  wire [15:0]test_ifmap0;
  wire w_en0_i;
  wire \w_ptr[0]_i_1__1_n_0 ;
  wire \w_ptr[1]_i_1__1_n_0 ;
  wire \w_ptr[2]_i_1__1_n_0 ;
  wire \w_ptr[3]_i_1__1_n_0 ;
  wire \w_ptr[4]_i_1__1_n_0 ;
  wire \w_ptr[4]_i_2__1_n_0 ;
  wire \w_ptr_reg_n_0_[0] ;
  wire \w_ptr_reg_n_0_[1] ;
  wire \w_ptr_reg_n_0_[2] ;
  wire \w_ptr_reg_n_0_[3] ;
  wire \w_ptr_reg_n_0_[4] ;
  wire [1:0]NLW_fifo_reg_0_31_0_13_DOH_UNCONNECTED;
  wire NLW_fifo_reg_0_31_14_15_SPO_UNCONNECTED;
  wire NLW_fifo_reg_0_31_14_15__0_SPO_UNCONNECTED;

  LUT5 #(
    .INIT(32'h90000090)) 
    empty0_i_INST_0
       (.I0(\w_ptr_reg_n_0_[3] ),
        .I1(r_ptr_reg[3]),
        .I2(empty0_i_INST_0_i_1_n_0),
        .I3(r_ptr_reg[4]),
        .I4(\w_ptr_reg_n_0_[4] ),
        .O(empty0_i));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty0_i_INST_0_i_1
       (.I0(r_ptr_reg[0]),
        .I1(\w_ptr_reg_n_0_[0] ),
        .I2(r_ptr_reg[2]),
        .I3(\w_ptr_reg_n_0_[2] ),
        .I4(r_ptr_reg[1]),
        .I5(\w_ptr_reg_n_0_[1] ),
        .O(empty0_i_INST_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/ifmap_fifo0/fifo_reg_0_31_0_13" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 fifo_reg_0_31_0_13
       (.ADDRA(r_ptr_reg),
        .ADDRB(r_ptr_reg),
        .ADDRC(r_ptr_reg),
        .ADDRD(r_ptr_reg),
        .ADDRE(r_ptr_reg),
        .ADDRF(r_ptr_reg),
        .ADDRG(r_ptr_reg),
        .ADDRH({\w_ptr_reg_n_0_[4] ,\w_ptr_reg_n_0_[3] ,\w_ptr_reg_n_0_[2] ,\w_ptr_reg_n_0_[1] ,\w_ptr_reg_n_0_[0] }),
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
        .DOH(NLW_fifo_reg_0_31_0_13_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in__0));
  LUT6 #(
    .INIT(64'h6FFF000000000000)) 
    fifo_reg_0_31_0_13_i_1__0
       (.I0(\w_ptr[3]_i_1__1_n_0 ),
        .I1(r_ptr_reg[3]),
        .I2(full0_i_INST_0_i_1_n_0),
        .I3(fifo_reg_0_31_0_13_i_2__1_n_0),
        .I4(w_en0_i),
        .I5(rstn),
        .O(p_0_in__0));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    fifo_reg_0_31_0_13_i_2__1
       (.I0(r_ptr_reg[4]),
        .I1(\w_ptr_reg_n_0_[4] ),
        .I2(\w_ptr_reg_n_0_[3] ),
        .I3(\w_ptr_reg_n_0_[1] ),
        .I4(\w_ptr_reg_n_0_[0] ),
        .I5(\w_ptr_reg_n_0_[2] ),
        .O(fifo_reg_0_31_0_13_i_2__1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/ifmap_fifo0/fifo_reg_0_31_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D fifo_reg_0_31_14_15
       (.A0(\w_ptr_reg_n_0_[0] ),
        .A1(\w_ptr_reg_n_0_[1] ),
        .A2(\w_ptr_reg_n_0_[2] ),
        .A3(\w_ptr_reg_n_0_[3] ),
        .A4(\w_ptr_reg_n_0_[4] ),
        .D(test_ifmap0[14]),
        .DPO(D[14]),
        .DPRA0(r_ptr_reg[0]),
        .DPRA1(r_ptr_reg[1]),
        .DPRA2(r_ptr_reg[2]),
        .DPRA3(r_ptr_reg[3]),
        .DPRA4(r_ptr_reg[4]),
        .SPO(NLW_fifo_reg_0_31_14_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in__0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/ifmap_fifo0/fifo_reg_0_31_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D fifo_reg_0_31_14_15__0
       (.A0(\w_ptr_reg_n_0_[0] ),
        .A1(\w_ptr_reg_n_0_[1] ),
        .A2(\w_ptr_reg_n_0_[2] ),
        .A3(\w_ptr_reg_n_0_[3] ),
        .A4(\w_ptr_reg_n_0_[4] ),
        .D(test_ifmap0[15]),
        .DPO(D[15]),
        .DPRA0(r_ptr_reg[0]),
        .DPRA1(r_ptr_reg[1]),
        .DPRA2(r_ptr_reg[2]),
        .DPRA3(r_ptr_reg[3]),
        .DPRA4(r_ptr_reg[4]),
        .SPO(NLW_fifo_reg_0_31_14_15__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in__0));
  LUT6 #(
    .INIT(64'h0440800880084004)) 
    full0_i_INST_0
       (.I0(r_ptr_reg[3]),
        .I1(full0_i_INST_0_i_1_n_0),
        .I2(r_ptr_reg[4]),
        .I3(\w_ptr_reg_n_0_[4] ),
        .I4(\w_ptr_reg_n_0_[3] ),
        .I5(full0_i_INST_0_i_2_n_0),
        .O(full0_i));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    full0_i_INST_0_i_1
       (.I0(r_ptr_reg[0]),
        .I1(r_ptr_reg[2]),
        .I2(\w_ptr_reg_n_0_[2] ),
        .I3(\w_ptr_reg_n_0_[1] ),
        .I4(\w_ptr_reg_n_0_[0] ),
        .I5(r_ptr_reg[1]),
        .O(full0_i_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    full0_i_INST_0_i_2
       (.I0(\w_ptr_reg_n_0_[2] ),
        .I1(\w_ptr_reg_n_0_[0] ),
        .I2(\w_ptr_reg_n_0_[1] ),
        .O(full0_i_INST_0_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[0] 
       (.C(clk),
        .CE(CEB2),
        .D(D[0]),
        .Q(Q[0]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[10] 
       (.C(clk),
        .CE(CEB2),
        .D(D[10]),
        .Q(Q[10]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[11] 
       (.C(clk),
        .CE(CEB2),
        .D(D[11]),
        .Q(Q[11]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[12] 
       (.C(clk),
        .CE(CEB2),
        .D(D[12]),
        .Q(Q[12]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[13] 
       (.C(clk),
        .CE(CEB2),
        .D(D[13]),
        .Q(Q[13]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[14] 
       (.C(clk),
        .CE(CEB2),
        .D(D[14]),
        .Q(Q[14]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[15] 
       (.C(clk),
        .CE(CEB2),
        .D(D[15]),
        .Q(Q[15]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[1] 
       (.C(clk),
        .CE(CEB2),
        .D(D[1]),
        .Q(Q[1]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[2] 
       (.C(clk),
        .CE(CEB2),
        .D(D[2]),
        .Q(Q[2]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[3] 
       (.C(clk),
        .CE(CEB2),
        .D(D[3]),
        .Q(Q[3]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[4] 
       (.C(clk),
        .CE(CEB2),
        .D(D[4]),
        .Q(Q[4]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[5] 
       (.C(clk),
        .CE(CEB2),
        .D(D[5]),
        .Q(Q[5]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[6] 
       (.C(clk),
        .CE(CEB2),
        .D(D[6]),
        .Q(Q[6]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[7] 
       (.C(clk),
        .CE(CEB2),
        .D(D[7]),
        .Q(Q[7]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[8] 
       (.C(clk),
        .CE(CEB2),
        .D(D[8]),
        .Q(Q[8]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[9] 
       (.C(clk),
        .CE(CEB2),
        .D(D[9]),
        .Q(Q[9]),
        .R(RSTB));
  LUT6 #(
    .INIT(64'h28AAAAAAAAAA28AA)) 
    out_ofmap_reg_i_2
       (.I0(r_en0_i),
        .I1(\w_ptr_reg_n_0_[4] ),
        .I2(r_ptr_reg[4]),
        .I3(empty0_i_INST_0_i_1_n_0),
        .I4(r_ptr_reg[3]),
        .I5(\w_ptr_reg_n_0_[3] ),
        .O(CEB2));
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr[0]_i_1__1 
       (.I0(r_ptr_reg[0]),
        .O(\r_ptr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr[1]_i_1__1 
       (.I0(r_ptr_reg[0]),
        .I1(r_ptr_reg[1]),
        .O(\r_ptr[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_ptr[2]_i_1__1 
       (.I0(r_ptr_reg[0]),
        .I1(r_ptr_reg[1]),
        .I2(r_ptr_reg[2]),
        .O(\r_ptr[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_ptr[3]_i_1__1 
       (.I0(r_ptr_reg[1]),
        .I1(r_ptr_reg[0]),
        .I2(r_ptr_reg[2]),
        .I3(r_ptr_reg[3]),
        .O(\r_ptr[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_ptr[4]_i_1__1 
       (.I0(r_ptr_reg[2]),
        .I1(r_ptr_reg[0]),
        .I2(r_ptr_reg[1]),
        .I3(r_ptr_reg[3]),
        .I4(r_ptr_reg[4]),
        .O(\r_ptr[4]_i_1__1_n_0 ));
  FDRE \r_ptr_reg[0] 
       (.C(clk),
        .CE(CEB2),
        .D(\r_ptr[0]_i_1__1_n_0 ),
        .Q(r_ptr_reg[0]),
        .R(RSTB));
  FDRE \r_ptr_reg[1] 
       (.C(clk),
        .CE(CEB2),
        .D(\r_ptr[1]_i_1__1_n_0 ),
        .Q(r_ptr_reg[1]),
        .R(RSTB));
  FDRE \r_ptr_reg[2] 
       (.C(clk),
        .CE(CEB2),
        .D(\r_ptr[2]_i_1__1_n_0 ),
        .Q(r_ptr_reg[2]),
        .R(RSTB));
  FDRE \r_ptr_reg[3] 
       (.C(clk),
        .CE(CEB2),
        .D(\r_ptr[3]_i_1__1_n_0 ),
        .Q(r_ptr_reg[3]),
        .R(RSTB));
  FDRE \r_ptr_reg[4] 
       (.C(clk),
        .CE(CEB2),
        .D(\r_ptr[4]_i_1__1_n_0 ),
        .Q(r_ptr_reg[4]),
        .R(RSTB));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr[0]_i_1__1 
       (.I0(\w_ptr_reg_n_0_[0] ),
        .O(\w_ptr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr[1]_i_1__1 
       (.I0(\w_ptr_reg_n_0_[0] ),
        .I1(\w_ptr_reg_n_0_[1] ),
        .O(\w_ptr[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \w_ptr[2]_i_1__1 
       (.I0(\w_ptr_reg_n_0_[0] ),
        .I1(\w_ptr_reg_n_0_[1] ),
        .I2(\w_ptr_reg_n_0_[2] ),
        .O(\w_ptr[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \w_ptr[3]_i_1__1 
       (.I0(\w_ptr_reg_n_0_[1] ),
        .I1(\w_ptr_reg_n_0_[0] ),
        .I2(\w_ptr_reg_n_0_[2] ),
        .I3(\w_ptr_reg_n_0_[3] ),
        .O(\w_ptr[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h28AAAAAAAAAA28AA)) 
    \w_ptr[4]_i_1__1 
       (.I0(w_en0_i),
        .I1(\w_ptr[4]_i_2__1_n_0 ),
        .I2(r_ptr_reg[4]),
        .I3(full0_i_INST_0_i_1_n_0),
        .I4(r_ptr_reg[3]),
        .I5(\w_ptr[3]_i_1__1_n_0 ),
        .O(\w_ptr[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \w_ptr[4]_i_2__1 
       (.I0(\w_ptr_reg_n_0_[2] ),
        .I1(\w_ptr_reg_n_0_[0] ),
        .I2(\w_ptr_reg_n_0_[1] ),
        .I3(\w_ptr_reg_n_0_[3] ),
        .I4(\w_ptr_reg_n_0_[4] ),
        .O(\w_ptr[4]_i_2__1_n_0 ));
  FDRE \w_ptr_reg[0] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1__1_n_0 ),
        .D(\w_ptr[0]_i_1__1_n_0 ),
        .Q(\w_ptr_reg_n_0_[0] ),
        .R(RSTB));
  FDRE \w_ptr_reg[1] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1__1_n_0 ),
        .D(\w_ptr[1]_i_1__1_n_0 ),
        .Q(\w_ptr_reg_n_0_[1] ),
        .R(RSTB));
  FDRE \w_ptr_reg[2] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1__1_n_0 ),
        .D(\w_ptr[2]_i_1__1_n_0 ),
        .Q(\w_ptr_reg_n_0_[2] ),
        .R(RSTB));
  FDRE \w_ptr_reg[3] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1__1_n_0 ),
        .D(\w_ptr[3]_i_1__1_n_0 ),
        .Q(\w_ptr_reg_n_0_[3] ),
        .R(RSTB));
  FDRE \w_ptr_reg[4] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1__1_n_0 ),
        .D(\w_ptr[4]_i_2__1_n_0 ),
        .Q(\w_ptr_reg_n_0_[4] ),
        .R(RSTB));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module design_1_systolic_array_2x2_s_0_1_fifo_0
   (D,
    RSTB,
    CEB2,
    empty1_i,
    full1_i,
    Q,
    clk,
    test_ifmap1,
    r_en1_i,
    w_en1_i,
    rstn);
  output [15:0]D;
  output RSTB;
  output CEB2;
  output empty1_i;
  output full1_i;
  output [15:0]Q;
  input clk;
  input [15:0]test_ifmap1;
  input r_en1_i;
  input w_en1_i;
  input rstn;

  wire CEB2;
  wire [15:0]D;
  wire [15:0]Q;
  wire RSTB;
  wire clk;
  wire empty1_i;
  wire empty1_i_INST_0_i_1_n_0;
  wire fifo_reg_0_31_0_13_i_2__2_n_0;
  wire full1_i;
  wire full1_i_INST_0_i_1_n_0;
  wire full1_i_INST_0_i_2_n_0;
  wire p_0_in__2;
  wire r_en1_i;
  wire \r_ptr[0]_i_1__2_n_0 ;
  wire \r_ptr[1]_i_1__2_n_0 ;
  wire \r_ptr[2]_i_1__2_n_0 ;
  wire \r_ptr[3]_i_1__2_n_0 ;
  wire \r_ptr[4]_i_1__2_n_0 ;
  wire [4:0]r_ptr_reg;
  wire rstn;
  wire [15:0]test_ifmap1;
  wire w_en1_i;
  wire \w_ptr[0]_i_1__2_n_0 ;
  wire \w_ptr[1]_i_1__2_n_0 ;
  wire \w_ptr[2]_i_1__2_n_0 ;
  wire \w_ptr[3]_i_1__2_n_0 ;
  wire \w_ptr[4]_i_1__2_n_0 ;
  wire \w_ptr[4]_i_2__2_n_0 ;
  wire \w_ptr_reg_n_0_[0] ;
  wire \w_ptr_reg_n_0_[1] ;
  wire \w_ptr_reg_n_0_[2] ;
  wire \w_ptr_reg_n_0_[3] ;
  wire \w_ptr_reg_n_0_[4] ;
  wire [1:0]NLW_fifo_reg_0_31_0_13_DOH_UNCONNECTED;
  wire NLW_fifo_reg_0_31_14_15_SPO_UNCONNECTED;
  wire NLW_fifo_reg_0_31_14_15__0_SPO_UNCONNECTED;

  LUT5 #(
    .INIT(32'h90000090)) 
    empty1_i_INST_0
       (.I0(\w_ptr_reg_n_0_[3] ),
        .I1(r_ptr_reg[3]),
        .I2(empty1_i_INST_0_i_1_n_0),
        .I3(r_ptr_reg[4]),
        .I4(\w_ptr_reg_n_0_[4] ),
        .O(empty1_i));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty1_i_INST_0_i_1
       (.I0(r_ptr_reg[0]),
        .I1(\w_ptr_reg_n_0_[0] ),
        .I2(r_ptr_reg[2]),
        .I3(\w_ptr_reg_n_0_[2] ),
        .I4(r_ptr_reg[1]),
        .I5(\w_ptr_reg_n_0_[1] ),
        .O(empty1_i_INST_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/ifmap_fifo1/fifo_reg_0_31_0_13" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 fifo_reg_0_31_0_13
       (.ADDRA(r_ptr_reg),
        .ADDRB(r_ptr_reg),
        .ADDRC(r_ptr_reg),
        .ADDRD(r_ptr_reg),
        .ADDRE(r_ptr_reg),
        .ADDRF(r_ptr_reg),
        .ADDRG(r_ptr_reg),
        .ADDRH({\w_ptr_reg_n_0_[4] ,\w_ptr_reg_n_0_[3] ,\w_ptr_reg_n_0_[2] ,\w_ptr_reg_n_0_[1] ,\w_ptr_reg_n_0_[0] }),
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
        .DOH(NLW_fifo_reg_0_31_0_13_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in__2));
  LUT6 #(
    .INIT(64'h6FFF000000000000)) 
    fifo_reg_0_31_0_13_i_1__2
       (.I0(\w_ptr[3]_i_1__2_n_0 ),
        .I1(r_ptr_reg[3]),
        .I2(full1_i_INST_0_i_1_n_0),
        .I3(fifo_reg_0_31_0_13_i_2__2_n_0),
        .I4(w_en1_i),
        .I5(rstn),
        .O(p_0_in__2));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    fifo_reg_0_31_0_13_i_2__2
       (.I0(r_ptr_reg[4]),
        .I1(\w_ptr_reg_n_0_[4] ),
        .I2(\w_ptr_reg_n_0_[3] ),
        .I3(\w_ptr_reg_n_0_[1] ),
        .I4(\w_ptr_reg_n_0_[0] ),
        .I5(\w_ptr_reg_n_0_[2] ),
        .O(fifo_reg_0_31_0_13_i_2__2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/ifmap_fifo1/fifo_reg_0_31_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D fifo_reg_0_31_14_15
       (.A0(\w_ptr_reg_n_0_[0] ),
        .A1(\w_ptr_reg_n_0_[1] ),
        .A2(\w_ptr_reg_n_0_[2] ),
        .A3(\w_ptr_reg_n_0_[3] ),
        .A4(\w_ptr_reg_n_0_[4] ),
        .D(test_ifmap1[14]),
        .DPO(D[14]),
        .DPRA0(r_ptr_reg[0]),
        .DPRA1(r_ptr_reg[1]),
        .DPRA2(r_ptr_reg[2]),
        .DPRA3(r_ptr_reg[3]),
        .DPRA4(r_ptr_reg[4]),
        .SPO(NLW_fifo_reg_0_31_14_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in__2));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/ifmap_fifo1/fifo_reg_0_31_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D fifo_reg_0_31_14_15__0
       (.A0(\w_ptr_reg_n_0_[0] ),
        .A1(\w_ptr_reg_n_0_[1] ),
        .A2(\w_ptr_reg_n_0_[2] ),
        .A3(\w_ptr_reg_n_0_[3] ),
        .A4(\w_ptr_reg_n_0_[4] ),
        .D(test_ifmap1[15]),
        .DPO(D[15]),
        .DPRA0(r_ptr_reg[0]),
        .DPRA1(r_ptr_reg[1]),
        .DPRA2(r_ptr_reg[2]),
        .DPRA3(r_ptr_reg[3]),
        .DPRA4(r_ptr_reg[4]),
        .SPO(NLW_fifo_reg_0_31_14_15__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in__2));
  LUT6 #(
    .INIT(64'h0440800880084004)) 
    full1_i_INST_0
       (.I0(r_ptr_reg[3]),
        .I1(full1_i_INST_0_i_1_n_0),
        .I2(r_ptr_reg[4]),
        .I3(\w_ptr_reg_n_0_[4] ),
        .I4(\w_ptr_reg_n_0_[3] ),
        .I5(full1_i_INST_0_i_2_n_0),
        .O(full1_i));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    full1_i_INST_0_i_1
       (.I0(r_ptr_reg[0]),
        .I1(r_ptr_reg[2]),
        .I2(\w_ptr_reg_n_0_[2] ),
        .I3(\w_ptr_reg_n_0_[1] ),
        .I4(\w_ptr_reg_n_0_[0] ),
        .I5(r_ptr_reg[1]),
        .O(full1_i_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    full1_i_INST_0_i_2
       (.I0(\w_ptr_reg_n_0_[2] ),
        .I1(\w_ptr_reg_n_0_[0] ),
        .I2(\w_ptr_reg_n_0_[1] ),
        .O(full1_i_INST_0_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[0] 
       (.C(clk),
        .CE(CEB2),
        .D(D[0]),
        .Q(Q[0]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[10] 
       (.C(clk),
        .CE(CEB2),
        .D(D[10]),
        .Q(Q[10]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[11] 
       (.C(clk),
        .CE(CEB2),
        .D(D[11]),
        .Q(Q[11]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[12] 
       (.C(clk),
        .CE(CEB2),
        .D(D[12]),
        .Q(Q[12]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[13] 
       (.C(clk),
        .CE(CEB2),
        .D(D[13]),
        .Q(Q[13]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[14] 
       (.C(clk),
        .CE(CEB2),
        .D(D[14]),
        .Q(Q[14]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[15] 
       (.C(clk),
        .CE(CEB2),
        .D(D[15]),
        .Q(Q[15]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[1] 
       (.C(clk),
        .CE(CEB2),
        .D(D[1]),
        .Q(Q[1]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[2] 
       (.C(clk),
        .CE(CEB2),
        .D(D[2]),
        .Q(Q[2]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[3] 
       (.C(clk),
        .CE(CEB2),
        .D(D[3]),
        .Q(Q[3]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[4] 
       (.C(clk),
        .CE(CEB2),
        .D(D[4]),
        .Q(Q[4]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[5] 
       (.C(clk),
        .CE(CEB2),
        .D(D[5]),
        .Q(Q[5]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[6] 
       (.C(clk),
        .CE(CEB2),
        .D(D[6]),
        .Q(Q[6]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[7] 
       (.C(clk),
        .CE(CEB2),
        .D(D[7]),
        .Q(Q[7]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[8] 
       (.C(clk),
        .CE(CEB2),
        .D(D[8]),
        .Q(Q[8]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[9] 
       (.C(clk),
        .CE(CEB2),
        .D(D[9]),
        .Q(Q[9]),
        .R(RSTB));
  LUT6 #(
    .INIT(64'h28AAAAAAAAAA28AA)) 
    out_ofmap_reg_i_1__1
       (.I0(r_en1_i),
        .I1(\w_ptr_reg_n_0_[4] ),
        .I2(r_ptr_reg[4]),
        .I3(empty1_i_INST_0_i_1_n_0),
        .I4(r_ptr_reg[3]),
        .I5(\w_ptr_reg_n_0_[3] ),
        .O(CEB2));
  LUT1 #(
    .INIT(2'h1)) 
    out_ofmap_reg_i_3
       (.I0(rstn),
        .O(RSTB));
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr[0]_i_1__2 
       (.I0(r_ptr_reg[0]),
        .O(\r_ptr[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr[1]_i_1__2 
       (.I0(r_ptr_reg[0]),
        .I1(r_ptr_reg[1]),
        .O(\r_ptr[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_ptr[2]_i_1__2 
       (.I0(r_ptr_reg[0]),
        .I1(r_ptr_reg[1]),
        .I2(r_ptr_reg[2]),
        .O(\r_ptr[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_ptr[3]_i_1__2 
       (.I0(r_ptr_reg[1]),
        .I1(r_ptr_reg[0]),
        .I2(r_ptr_reg[2]),
        .I3(r_ptr_reg[3]),
        .O(\r_ptr[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_ptr[4]_i_1__2 
       (.I0(r_ptr_reg[2]),
        .I1(r_ptr_reg[0]),
        .I2(r_ptr_reg[1]),
        .I3(r_ptr_reg[3]),
        .I4(r_ptr_reg[4]),
        .O(\r_ptr[4]_i_1__2_n_0 ));
  FDRE \r_ptr_reg[0] 
       (.C(clk),
        .CE(CEB2),
        .D(\r_ptr[0]_i_1__2_n_0 ),
        .Q(r_ptr_reg[0]),
        .R(RSTB));
  FDRE \r_ptr_reg[1] 
       (.C(clk),
        .CE(CEB2),
        .D(\r_ptr[1]_i_1__2_n_0 ),
        .Q(r_ptr_reg[1]),
        .R(RSTB));
  FDRE \r_ptr_reg[2] 
       (.C(clk),
        .CE(CEB2),
        .D(\r_ptr[2]_i_1__2_n_0 ),
        .Q(r_ptr_reg[2]),
        .R(RSTB));
  FDRE \r_ptr_reg[3] 
       (.C(clk),
        .CE(CEB2),
        .D(\r_ptr[3]_i_1__2_n_0 ),
        .Q(r_ptr_reg[3]),
        .R(RSTB));
  FDRE \r_ptr_reg[4] 
       (.C(clk),
        .CE(CEB2),
        .D(\r_ptr[4]_i_1__2_n_0 ),
        .Q(r_ptr_reg[4]),
        .R(RSTB));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr[0]_i_1__2 
       (.I0(\w_ptr_reg_n_0_[0] ),
        .O(\w_ptr[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr[1]_i_1__2 
       (.I0(\w_ptr_reg_n_0_[0] ),
        .I1(\w_ptr_reg_n_0_[1] ),
        .O(\w_ptr[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \w_ptr[2]_i_1__2 
       (.I0(\w_ptr_reg_n_0_[0] ),
        .I1(\w_ptr_reg_n_0_[1] ),
        .I2(\w_ptr_reg_n_0_[2] ),
        .O(\w_ptr[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \w_ptr[3]_i_1__2 
       (.I0(\w_ptr_reg_n_0_[1] ),
        .I1(\w_ptr_reg_n_0_[0] ),
        .I2(\w_ptr_reg_n_0_[2] ),
        .I3(\w_ptr_reg_n_0_[3] ),
        .O(\w_ptr[3]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h28AAAAAAAAAA28AA)) 
    \w_ptr[4]_i_1__2 
       (.I0(w_en1_i),
        .I1(\w_ptr[4]_i_2__2_n_0 ),
        .I2(r_ptr_reg[4]),
        .I3(full1_i_INST_0_i_1_n_0),
        .I4(r_ptr_reg[3]),
        .I5(\w_ptr[3]_i_1__2_n_0 ),
        .O(\w_ptr[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \w_ptr[4]_i_2__2 
       (.I0(\w_ptr_reg_n_0_[2] ),
        .I1(\w_ptr_reg_n_0_[0] ),
        .I2(\w_ptr_reg_n_0_[1] ),
        .I3(\w_ptr_reg_n_0_[3] ),
        .I4(\w_ptr_reg_n_0_[4] ),
        .O(\w_ptr[4]_i_2__2_n_0 ));
  FDRE \w_ptr_reg[0] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1__2_n_0 ),
        .D(\w_ptr[0]_i_1__2_n_0 ),
        .Q(\w_ptr_reg_n_0_[0] ),
        .R(RSTB));
  FDRE \w_ptr_reg[1] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1__2_n_0 ),
        .D(\w_ptr[1]_i_1__2_n_0 ),
        .Q(\w_ptr_reg_n_0_[1] ),
        .R(RSTB));
  FDRE \w_ptr_reg[2] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1__2_n_0 ),
        .D(\w_ptr[2]_i_1__2_n_0 ),
        .Q(\w_ptr_reg_n_0_[2] ),
        .R(RSTB));
  FDRE \w_ptr_reg[3] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1__2_n_0 ),
        .D(\w_ptr[3]_i_1__2_n_0 ),
        .Q(\w_ptr_reg_n_0_[3] ),
        .R(RSTB));
  FDRE \w_ptr_reg[4] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1__2_n_0 ),
        .D(\w_ptr[4]_i_2__2_n_0 ),
        .Q(\w_ptr_reg_n_0_[4] ),
        .R(RSTB));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module design_1_systolic_array_2x2_s_0_1_fifo_4
   (D,
    CEA2,
    empty0_w,
    full0_w,
    Q,
    clk,
    test_weight0,
    RSTB,
    r_en0_w,
    w_en0_w,
    rstn);
  output [15:0]D;
  output CEA2;
  output empty0_w;
  output full0_w;
  output [15:0]Q;
  input clk;
  input [15:0]test_weight0;
  input RSTB;
  input r_en0_w;
  input w_en0_w;
  input rstn;

  wire CEA2;
  wire [15:0]D;
  wire [15:0]Q;
  wire RSTB;
  wire clk;
  wire empty0_w;
  wire empty0_w_INST_0_i_1_n_0;
  wire fifo_reg_0_31_0_13_i_2_n_0;
  wire full0_w;
  wire full0_w_INST_0_i_1_n_0;
  wire full0_w_INST_0_i_2_n_0;
  wire p_0_in;
  wire r_en0_w;
  wire \r_ptr[0]_i_1_n_0 ;
  wire \r_ptr[1]_i_1_n_0 ;
  wire \r_ptr[2]_i_1_n_0 ;
  wire \r_ptr[3]_i_1_n_0 ;
  wire \r_ptr[4]_i_1_n_0 ;
  wire [4:0]r_ptr_reg;
  wire rstn;
  wire [15:0]test_weight0;
  wire w_en0_w;
  wire [4:0]w_ptr0;
  wire \w_ptr[4]_i_1_n_0 ;
  wire [4:0]w_ptr_reg;
  wire [1:0]NLW_fifo_reg_0_31_0_13_DOH_UNCONNECTED;
  wire NLW_fifo_reg_0_31_14_15_SPO_UNCONNECTED;
  wire NLW_fifo_reg_0_31_14_15__0_SPO_UNCONNECTED;

  LUT5 #(
    .INIT(32'h90000090)) 
    empty0_w_INST_0
       (.I0(w_ptr_reg[3]),
        .I1(r_ptr_reg[3]),
        .I2(empty0_w_INST_0_i_1_n_0),
        .I3(r_ptr_reg[4]),
        .I4(w_ptr_reg[4]),
        .O(empty0_w));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty0_w_INST_0_i_1
       (.I0(r_ptr_reg[0]),
        .I1(w_ptr_reg[0]),
        .I2(r_ptr_reg[2]),
        .I3(w_ptr_reg[2]),
        .I4(r_ptr_reg[1]),
        .I5(w_ptr_reg[1]),
        .O(empty0_w_INST_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/weight_fifo0/fifo_reg_0_31_0_13" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 fifo_reg_0_31_0_13
       (.ADDRA(r_ptr_reg),
        .ADDRB(r_ptr_reg),
        .ADDRC(r_ptr_reg),
        .ADDRD(r_ptr_reg),
        .ADDRE(r_ptr_reg),
        .ADDRF(r_ptr_reg),
        .ADDRG(r_ptr_reg),
        .ADDRH(w_ptr_reg),
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
        .DOH(NLW_fifo_reg_0_31_0_13_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'h6FFF000000000000)) 
    fifo_reg_0_31_0_13_i_1
       (.I0(w_ptr0[3]),
        .I1(r_ptr_reg[3]),
        .I2(full0_w_INST_0_i_1_n_0),
        .I3(fifo_reg_0_31_0_13_i_2_n_0),
        .I4(w_en0_w),
        .I5(rstn),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    fifo_reg_0_31_0_13_i_2
       (.I0(r_ptr_reg[4]),
        .I1(w_ptr_reg[4]),
        .I2(w_ptr_reg[3]),
        .I3(w_ptr_reg[1]),
        .I4(w_ptr_reg[0]),
        .I5(w_ptr_reg[2]),
        .O(fifo_reg_0_31_0_13_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/weight_fifo0/fifo_reg_0_31_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D fifo_reg_0_31_14_15
       (.A0(w_ptr_reg[0]),
        .A1(w_ptr_reg[1]),
        .A2(w_ptr_reg[2]),
        .A3(w_ptr_reg[3]),
        .A4(w_ptr_reg[4]),
        .D(test_weight0[14]),
        .DPO(D[14]),
        .DPRA0(r_ptr_reg[0]),
        .DPRA1(r_ptr_reg[1]),
        .DPRA2(r_ptr_reg[2]),
        .DPRA3(r_ptr_reg[3]),
        .DPRA4(r_ptr_reg[4]),
        .SPO(NLW_fifo_reg_0_31_14_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/weight_fifo0/fifo_reg_0_31_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D fifo_reg_0_31_14_15__0
       (.A0(w_ptr_reg[0]),
        .A1(w_ptr_reg[1]),
        .A2(w_ptr_reg[2]),
        .A3(w_ptr_reg[3]),
        .A4(w_ptr_reg[4]),
        .D(test_weight0[15]),
        .DPO(D[15]),
        .DPRA0(r_ptr_reg[0]),
        .DPRA1(r_ptr_reg[1]),
        .DPRA2(r_ptr_reg[2]),
        .DPRA3(r_ptr_reg[3]),
        .DPRA4(r_ptr_reg[4]),
        .SPO(NLW_fifo_reg_0_31_14_15__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'h0440800880084004)) 
    full0_w_INST_0
       (.I0(r_ptr_reg[3]),
        .I1(full0_w_INST_0_i_1_n_0),
        .I2(r_ptr_reg[4]),
        .I3(w_ptr_reg[4]),
        .I4(w_ptr_reg[3]),
        .I5(full0_w_INST_0_i_2_n_0),
        .O(full0_w));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    full0_w_INST_0_i_1
       (.I0(r_ptr_reg[0]),
        .I1(r_ptr_reg[2]),
        .I2(w_ptr_reg[2]),
        .I3(w_ptr_reg[1]),
        .I4(w_ptr_reg[0]),
        .I5(r_ptr_reg[1]),
        .O(full0_w_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    full0_w_INST_0_i_2
       (.I0(w_ptr_reg[2]),
        .I1(w_ptr_reg[0]),
        .I2(w_ptr_reg[1]),
        .O(full0_w_INST_0_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[0] 
       (.C(clk),
        .CE(CEA2),
        .D(D[0]),
        .Q(Q[0]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[10] 
       (.C(clk),
        .CE(CEA2),
        .D(D[10]),
        .Q(Q[10]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[11] 
       (.C(clk),
        .CE(CEA2),
        .D(D[11]),
        .Q(Q[11]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[12] 
       (.C(clk),
        .CE(CEA2),
        .D(D[12]),
        .Q(Q[12]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[13] 
       (.C(clk),
        .CE(CEA2),
        .D(D[13]),
        .Q(Q[13]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[14] 
       (.C(clk),
        .CE(CEA2),
        .D(D[14]),
        .Q(Q[14]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[15] 
       (.C(clk),
        .CE(CEA2),
        .D(D[15]),
        .Q(Q[15]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[1] 
       (.C(clk),
        .CE(CEA2),
        .D(D[1]),
        .Q(Q[1]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[2] 
       (.C(clk),
        .CE(CEA2),
        .D(D[2]),
        .Q(Q[2]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[3] 
       (.C(clk),
        .CE(CEA2),
        .D(D[3]),
        .Q(Q[3]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[4] 
       (.C(clk),
        .CE(CEA2),
        .D(D[4]),
        .Q(Q[4]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[5] 
       (.C(clk),
        .CE(CEA2),
        .D(D[5]),
        .Q(Q[5]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[6] 
       (.C(clk),
        .CE(CEA2),
        .D(D[6]),
        .Q(Q[6]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[7] 
       (.C(clk),
        .CE(CEA2),
        .D(D[7]),
        .Q(Q[7]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[8] 
       (.C(clk),
        .CE(CEA2),
        .D(D[8]),
        .Q(Q[8]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[9] 
       (.C(clk),
        .CE(CEA2),
        .D(D[9]),
        .Q(Q[9]),
        .R(RSTB));
  LUT6 #(
    .INIT(64'h28AAAAAAAAAA28AA)) 
    out_ofmap_reg_i_1
       (.I0(r_en0_w),
        .I1(w_ptr_reg[4]),
        .I2(r_ptr_reg[4]),
        .I3(empty0_w_INST_0_i_1_n_0),
        .I4(r_ptr_reg[3]),
        .I5(w_ptr_reg[3]),
        .O(CEA2));
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr[0]_i_1 
       (.I0(r_ptr_reg[0]),
        .O(\r_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr[1]_i_1 
       (.I0(r_ptr_reg[0]),
        .I1(r_ptr_reg[1]),
        .O(\r_ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_ptr[2]_i_1 
       (.I0(r_ptr_reg[0]),
        .I1(r_ptr_reg[1]),
        .I2(r_ptr_reg[2]),
        .O(\r_ptr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_ptr[3]_i_1 
       (.I0(r_ptr_reg[1]),
        .I1(r_ptr_reg[0]),
        .I2(r_ptr_reg[2]),
        .I3(r_ptr_reg[3]),
        .O(\r_ptr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_ptr[4]_i_1 
       (.I0(r_ptr_reg[2]),
        .I1(r_ptr_reg[0]),
        .I2(r_ptr_reg[1]),
        .I3(r_ptr_reg[3]),
        .I4(r_ptr_reg[4]),
        .O(\r_ptr[4]_i_1_n_0 ));
  FDRE \r_ptr_reg[0] 
       (.C(clk),
        .CE(CEA2),
        .D(\r_ptr[0]_i_1_n_0 ),
        .Q(r_ptr_reg[0]),
        .R(RSTB));
  FDRE \r_ptr_reg[1] 
       (.C(clk),
        .CE(CEA2),
        .D(\r_ptr[1]_i_1_n_0 ),
        .Q(r_ptr_reg[1]),
        .R(RSTB));
  FDRE \r_ptr_reg[2] 
       (.C(clk),
        .CE(CEA2),
        .D(\r_ptr[2]_i_1_n_0 ),
        .Q(r_ptr_reg[2]),
        .R(RSTB));
  FDRE \r_ptr_reg[3] 
       (.C(clk),
        .CE(CEA2),
        .D(\r_ptr[3]_i_1_n_0 ),
        .Q(r_ptr_reg[3]),
        .R(RSTB));
  FDRE \r_ptr_reg[4] 
       (.C(clk),
        .CE(CEA2),
        .D(\r_ptr[4]_i_1_n_0 ),
        .Q(r_ptr_reg[4]),
        .R(RSTB));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr[0]_i_1 
       (.I0(w_ptr_reg[0]),
        .O(w_ptr0[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr[1]_i_1 
       (.I0(w_ptr_reg[0]),
        .I1(w_ptr_reg[1]),
        .O(w_ptr0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \w_ptr[2]_i_1 
       (.I0(w_ptr_reg[0]),
        .I1(w_ptr_reg[1]),
        .I2(w_ptr_reg[2]),
        .O(w_ptr0[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \w_ptr[3]_i_1 
       (.I0(w_ptr_reg[1]),
        .I1(w_ptr_reg[0]),
        .I2(w_ptr_reg[2]),
        .I3(w_ptr_reg[3]),
        .O(w_ptr0[3]));
  LUT6 #(
    .INIT(64'h28AAAAAAAAAA28AA)) 
    \w_ptr[4]_i_1 
       (.I0(w_en0_w),
        .I1(w_ptr0[4]),
        .I2(r_ptr_reg[4]),
        .I3(full0_w_INST_0_i_1_n_0),
        .I4(r_ptr_reg[3]),
        .I5(w_ptr0[3]),
        .O(\w_ptr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \w_ptr[4]_i_2 
       (.I0(w_ptr_reg[2]),
        .I1(w_ptr_reg[0]),
        .I2(w_ptr_reg[1]),
        .I3(w_ptr_reg[3]),
        .I4(w_ptr_reg[4]),
        .O(w_ptr0[4]));
  FDRE \w_ptr_reg[0] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1_n_0 ),
        .D(w_ptr0[0]),
        .Q(w_ptr_reg[0]),
        .R(RSTB));
  FDRE \w_ptr_reg[1] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1_n_0 ),
        .D(w_ptr0[1]),
        .Q(w_ptr_reg[1]),
        .R(RSTB));
  FDRE \w_ptr_reg[2] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1_n_0 ),
        .D(w_ptr0[2]),
        .Q(w_ptr_reg[2]),
        .R(RSTB));
  FDRE \w_ptr_reg[3] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1_n_0 ),
        .D(w_ptr0[3]),
        .Q(w_ptr_reg[3]),
        .R(RSTB));
  FDRE \w_ptr_reg[4] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1_n_0 ),
        .D(w_ptr0[4]),
        .Q(w_ptr_reg[4]),
        .R(RSTB));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module design_1_systolic_array_2x2_s_0_1_fifo_5
   (D,
    CEA2,
    empty1_w,
    full1_w,
    Q,
    clk,
    test_weight1,
    RSTB,
    r_en1_w,
    w_en1_w,
    rstn);
  output [15:0]D;
  output CEA2;
  output empty1_w;
  output full1_w;
  output [15:0]Q;
  input clk;
  input [15:0]test_weight1;
  input RSTB;
  input r_en1_w;
  input w_en1_w;
  input rstn;

  wire CEA2;
  wire [15:0]D;
  wire [15:0]Q;
  wire RSTB;
  wire clk;
  wire empty1_w;
  wire empty1_w_INST_0_i_1_n_0;
  wire fifo_reg_0_31_0_13_i_2__0_n_0;
  wire full1_w;
  wire full1_w_INST_0_i_1_n_0;
  wire full1_w_INST_0_i_2_n_0;
  wire p_0_in__1;
  wire r_en1_w;
  wire \r_ptr[0]_i_1__0_n_0 ;
  wire \r_ptr[1]_i_1__0_n_0 ;
  wire \r_ptr[2]_i_1__0_n_0 ;
  wire \r_ptr[3]_i_1__0_n_0 ;
  wire \r_ptr[4]_i_1__0_n_0 ;
  wire [4:0]r_ptr_reg;
  wire rstn;
  wire [15:0]test_weight1;
  wire w_en1_w;
  wire \w_ptr[0]_i_1__0_n_0 ;
  wire \w_ptr[1]_i_1__0_n_0 ;
  wire \w_ptr[2]_i_1__0_n_0 ;
  wire \w_ptr[3]_i_1__0_n_0 ;
  wire \w_ptr[4]_i_1__0_n_0 ;
  wire \w_ptr[4]_i_2__0_n_0 ;
  wire \w_ptr_reg_n_0_[0] ;
  wire \w_ptr_reg_n_0_[1] ;
  wire \w_ptr_reg_n_0_[2] ;
  wire \w_ptr_reg_n_0_[3] ;
  wire \w_ptr_reg_n_0_[4] ;
  wire [1:0]NLW_fifo_reg_0_31_0_13_DOH_UNCONNECTED;
  wire NLW_fifo_reg_0_31_14_15_SPO_UNCONNECTED;
  wire NLW_fifo_reg_0_31_14_15__0_SPO_UNCONNECTED;

  LUT5 #(
    .INIT(32'h90000090)) 
    empty1_w_INST_0
       (.I0(\w_ptr_reg_n_0_[3] ),
        .I1(r_ptr_reg[3]),
        .I2(empty1_w_INST_0_i_1_n_0),
        .I3(r_ptr_reg[4]),
        .I4(\w_ptr_reg_n_0_[4] ),
        .O(empty1_w));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty1_w_INST_0_i_1
       (.I0(r_ptr_reg[0]),
        .I1(\w_ptr_reg_n_0_[0] ),
        .I2(r_ptr_reg[2]),
        .I3(\w_ptr_reg_n_0_[2] ),
        .I4(r_ptr_reg[1]),
        .I5(\w_ptr_reg_n_0_[1] ),
        .O(empty1_w_INST_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/weight_fifo1/fifo_reg_0_31_0_13" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 fifo_reg_0_31_0_13
       (.ADDRA(r_ptr_reg),
        .ADDRB(r_ptr_reg),
        .ADDRC(r_ptr_reg),
        .ADDRD(r_ptr_reg),
        .ADDRE(r_ptr_reg),
        .ADDRF(r_ptr_reg),
        .ADDRG(r_ptr_reg),
        .ADDRH({\w_ptr_reg_n_0_[4] ,\w_ptr_reg_n_0_[3] ,\w_ptr_reg_n_0_[2] ,\w_ptr_reg_n_0_[1] ,\w_ptr_reg_n_0_[0] }),
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
        .DOH(NLW_fifo_reg_0_31_0_13_DOH_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_0_in__1));
  LUT6 #(
    .INIT(64'h6FFF000000000000)) 
    fifo_reg_0_31_0_13_i_1__1
       (.I0(\w_ptr[3]_i_1__0_n_0 ),
        .I1(r_ptr_reg[3]),
        .I2(full1_w_INST_0_i_1_n_0),
        .I3(fifo_reg_0_31_0_13_i_2__0_n_0),
        .I4(w_en1_w),
        .I5(rstn),
        .O(p_0_in__1));
  LUT6 #(
    .INIT(64'h6999999999999999)) 
    fifo_reg_0_31_0_13_i_2__0
       (.I0(r_ptr_reg[4]),
        .I1(\w_ptr_reg_n_0_[4] ),
        .I2(\w_ptr_reg_n_0_[3] ),
        .I3(\w_ptr_reg_n_0_[1] ),
        .I4(\w_ptr_reg_n_0_[0] ),
        .I5(\w_ptr_reg_n_0_[2] ),
        .O(fifo_reg_0_31_0_13_i_2__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/weight_fifo1/fifo_reg_0_31_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D fifo_reg_0_31_14_15
       (.A0(\w_ptr_reg_n_0_[0] ),
        .A1(\w_ptr_reg_n_0_[1] ),
        .A2(\w_ptr_reg_n_0_[2] ),
        .A3(\w_ptr_reg_n_0_[3] ),
        .A4(\w_ptr_reg_n_0_[4] ),
        .D(test_weight1[14]),
        .DPO(D[14]),
        .DPRA0(r_ptr_reg[0]),
        .DPRA1(r_ptr_reg[1]),
        .DPRA2(r_ptr_reg[2]),
        .DPRA3(r_ptr_reg[3]),
        .DPRA4(r_ptr_reg[4]),
        .SPO(NLW_fifo_reg_0_31_14_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in__1));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "inst/weight_fifo1/fifo_reg_0_31_14_15" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1D fifo_reg_0_31_14_15__0
       (.A0(\w_ptr_reg_n_0_[0] ),
        .A1(\w_ptr_reg_n_0_[1] ),
        .A2(\w_ptr_reg_n_0_[2] ),
        .A3(\w_ptr_reg_n_0_[3] ),
        .A4(\w_ptr_reg_n_0_[4] ),
        .D(test_weight1[15]),
        .DPO(D[15]),
        .DPRA0(r_ptr_reg[0]),
        .DPRA1(r_ptr_reg[1]),
        .DPRA2(r_ptr_reg[2]),
        .DPRA3(r_ptr_reg[3]),
        .DPRA4(r_ptr_reg[4]),
        .SPO(NLW_fifo_reg_0_31_14_15__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(p_0_in__1));
  LUT6 #(
    .INIT(64'h0440800880084004)) 
    full1_w_INST_0
       (.I0(r_ptr_reg[3]),
        .I1(full1_w_INST_0_i_1_n_0),
        .I2(r_ptr_reg[4]),
        .I3(\w_ptr_reg_n_0_[4] ),
        .I4(\w_ptr_reg_n_0_[3] ),
        .I5(full1_w_INST_0_i_2_n_0),
        .O(full1_w));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    full1_w_INST_0_i_1
       (.I0(r_ptr_reg[0]),
        .I1(r_ptr_reg[2]),
        .I2(\w_ptr_reg_n_0_[2] ),
        .I3(\w_ptr_reg_n_0_[1] ),
        .I4(\w_ptr_reg_n_0_[0] ),
        .I5(r_ptr_reg[1]),
        .O(full1_w_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    full1_w_INST_0_i_2
       (.I0(\w_ptr_reg_n_0_[2] ),
        .I1(\w_ptr_reg_n_0_[0] ),
        .I2(\w_ptr_reg_n_0_[1] ),
        .O(full1_w_INST_0_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[0] 
       (.C(clk),
        .CE(CEA2),
        .D(D[0]),
        .Q(Q[0]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[10] 
       (.C(clk),
        .CE(CEA2),
        .D(D[10]),
        .Q(Q[10]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[11] 
       (.C(clk),
        .CE(CEA2),
        .D(D[11]),
        .Q(Q[11]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[12] 
       (.C(clk),
        .CE(CEA2),
        .D(D[12]),
        .Q(Q[12]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[13] 
       (.C(clk),
        .CE(CEA2),
        .D(D[13]),
        .Q(Q[13]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[14] 
       (.C(clk),
        .CE(CEA2),
        .D(D[14]),
        .Q(Q[14]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[15] 
       (.C(clk),
        .CE(CEA2),
        .D(D[15]),
        .Q(Q[15]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[1] 
       (.C(clk),
        .CE(CEA2),
        .D(D[1]),
        .Q(Q[1]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[2] 
       (.C(clk),
        .CE(CEA2),
        .D(D[2]),
        .Q(Q[2]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[3] 
       (.C(clk),
        .CE(CEA2),
        .D(D[3]),
        .Q(Q[3]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[4] 
       (.C(clk),
        .CE(CEA2),
        .D(D[4]),
        .Q(Q[4]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[5] 
       (.C(clk),
        .CE(CEA2),
        .D(D[5]),
        .Q(Q[5]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[6] 
       (.C(clk),
        .CE(CEA2),
        .D(D[6]),
        .Q(Q[6]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[7] 
       (.C(clk),
        .CE(CEA2),
        .D(D[7]),
        .Q(Q[7]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[8] 
       (.C(clk),
        .CE(CEA2),
        .D(D[8]),
        .Q(Q[8]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[9] 
       (.C(clk),
        .CE(CEA2),
        .D(D[9]),
        .Q(Q[9]),
        .R(RSTB));
  LUT6 #(
    .INIT(64'h28AAAAAAAAAA28AA)) 
    out_ofmap_reg_i_1__0
       (.I0(r_en1_w),
        .I1(\w_ptr_reg_n_0_[4] ),
        .I2(r_ptr_reg[4]),
        .I3(empty1_w_INST_0_i_1_n_0),
        .I4(r_ptr_reg[3]),
        .I5(\w_ptr_reg_n_0_[3] ),
        .O(CEA2));
  LUT1 #(
    .INIT(2'h1)) 
    \r_ptr[0]_i_1__0 
       (.I0(r_ptr_reg[0]),
        .O(\r_ptr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_ptr[1]_i_1__0 
       (.I0(r_ptr_reg[0]),
        .I1(r_ptr_reg[1]),
        .O(\r_ptr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_ptr[2]_i_1__0 
       (.I0(r_ptr_reg[0]),
        .I1(r_ptr_reg[1]),
        .I2(r_ptr_reg[2]),
        .O(\r_ptr[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_ptr[3]_i_1__0 
       (.I0(r_ptr_reg[1]),
        .I1(r_ptr_reg[0]),
        .I2(r_ptr_reg[2]),
        .I3(r_ptr_reg[3]),
        .O(\r_ptr[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_ptr[4]_i_1__0 
       (.I0(r_ptr_reg[2]),
        .I1(r_ptr_reg[0]),
        .I2(r_ptr_reg[1]),
        .I3(r_ptr_reg[3]),
        .I4(r_ptr_reg[4]),
        .O(\r_ptr[4]_i_1__0_n_0 ));
  FDRE \r_ptr_reg[0] 
       (.C(clk),
        .CE(CEA2),
        .D(\r_ptr[0]_i_1__0_n_0 ),
        .Q(r_ptr_reg[0]),
        .R(RSTB));
  FDRE \r_ptr_reg[1] 
       (.C(clk),
        .CE(CEA2),
        .D(\r_ptr[1]_i_1__0_n_0 ),
        .Q(r_ptr_reg[1]),
        .R(RSTB));
  FDRE \r_ptr_reg[2] 
       (.C(clk),
        .CE(CEA2),
        .D(\r_ptr[2]_i_1__0_n_0 ),
        .Q(r_ptr_reg[2]),
        .R(RSTB));
  FDRE \r_ptr_reg[3] 
       (.C(clk),
        .CE(CEA2),
        .D(\r_ptr[3]_i_1__0_n_0 ),
        .Q(r_ptr_reg[3]),
        .R(RSTB));
  FDRE \r_ptr_reg[4] 
       (.C(clk),
        .CE(CEA2),
        .D(\r_ptr[4]_i_1__0_n_0 ),
        .Q(r_ptr_reg[4]),
        .R(RSTB));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_ptr[0]_i_1__0 
       (.I0(\w_ptr_reg_n_0_[0] ),
        .O(\w_ptr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_ptr[1]_i_1__0 
       (.I0(\w_ptr_reg_n_0_[0] ),
        .I1(\w_ptr_reg_n_0_[1] ),
        .O(\w_ptr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \w_ptr[2]_i_1__0 
       (.I0(\w_ptr_reg_n_0_[0] ),
        .I1(\w_ptr_reg_n_0_[1] ),
        .I2(\w_ptr_reg_n_0_[2] ),
        .O(\w_ptr[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \w_ptr[3]_i_1__0 
       (.I0(\w_ptr_reg_n_0_[1] ),
        .I1(\w_ptr_reg_n_0_[0] ),
        .I2(\w_ptr_reg_n_0_[2] ),
        .I3(\w_ptr_reg_n_0_[3] ),
        .O(\w_ptr[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h28AAAAAAAAAA28AA)) 
    \w_ptr[4]_i_1__0 
       (.I0(w_en1_w),
        .I1(\w_ptr[4]_i_2__0_n_0 ),
        .I2(r_ptr_reg[4]),
        .I3(full1_w_INST_0_i_1_n_0),
        .I4(r_ptr_reg[3]),
        .I5(\w_ptr[3]_i_1__0_n_0 ),
        .O(\w_ptr[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \w_ptr[4]_i_2__0 
       (.I0(\w_ptr_reg_n_0_[2] ),
        .I1(\w_ptr_reg_n_0_[0] ),
        .I2(\w_ptr_reg_n_0_[1] ),
        .I3(\w_ptr_reg_n_0_[3] ),
        .I4(\w_ptr_reg_n_0_[4] ),
        .O(\w_ptr[4]_i_2__0_n_0 ));
  FDRE \w_ptr_reg[0] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1__0_n_0 ),
        .D(\w_ptr[0]_i_1__0_n_0 ),
        .Q(\w_ptr_reg_n_0_[0] ),
        .R(RSTB));
  FDRE \w_ptr_reg[1] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1__0_n_0 ),
        .D(\w_ptr[1]_i_1__0_n_0 ),
        .Q(\w_ptr_reg_n_0_[1] ),
        .R(RSTB));
  FDRE \w_ptr_reg[2] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1__0_n_0 ),
        .D(\w_ptr[2]_i_1__0_n_0 ),
        .Q(\w_ptr_reg_n_0_[2] ),
        .R(RSTB));
  FDRE \w_ptr_reg[3] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1__0_n_0 ),
        .D(\w_ptr[3]_i_1__0_n_0 ),
        .Q(\w_ptr_reg_n_0_[3] ),
        .R(RSTB));
  FDRE \w_ptr_reg[4] 
       (.C(clk),
        .CE(\w_ptr[4]_i_1__0_n_0 ),
        .D(\w_ptr[4]_i_2__0_n_0 ),
        .Q(\w_ptr_reg_n_0_[4] ),
        .R(RSTB));
endmodule

(* ORIG_REF_NAME = "integer_mac_pe" *) 
module design_1_systolic_array_2x2_s_0_1_integer_mac_pe
   (ofmap_wires_00,
    out_weight_00,
    out_ifmap_00,
    CEA2,
    CEB2,
    clk,
    RSTB,
    D,
    A,
    out_data,
    Q);
  output [15:0]ofmap_wires_00;
  output [15:0]out_weight_00;
  output [15:0]out_ifmap_00;
  input CEA2;
  input CEB2;
  input clk;
  input RSTB;
  input [15:0]D;
  input [15:0]A;
  input [15:0]out_data;
  input [15:0]Q;

  wire [15:0]A;
  wire CEA2;
  wire CEB2;
  wire [15:0]D;
  wire [15:0]Q;
  wire RSTB;
  wire clk;
  wire [15:0]ofmap_wires_00;
  wire [15:0]out_data;
  wire [15:0]out_ifmap_00;
  wire [15:0]out_weight_00;
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

  FDRE \out_ifmap_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(out_ifmap_00[0]),
        .R(1'b0));
  FDRE \out_ifmap_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(out_ifmap_00[10]),
        .R(1'b0));
  FDRE \out_ifmap_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(out_ifmap_00[11]),
        .R(1'b0));
  FDRE \out_ifmap_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(out_ifmap_00[12]),
        .R(1'b0));
  FDRE \out_ifmap_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(out_ifmap_00[13]),
        .R(1'b0));
  FDRE \out_ifmap_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(out_ifmap_00[14]),
        .R(1'b0));
  FDRE \out_ifmap_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(out_ifmap_00[15]),
        .R(1'b0));
  FDRE \out_ifmap_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(out_ifmap_00[1]),
        .R(1'b0));
  FDRE \out_ifmap_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(out_ifmap_00[2]),
        .R(1'b0));
  FDRE \out_ifmap_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(out_ifmap_00[3]),
        .R(1'b0));
  FDRE \out_ifmap_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(out_ifmap_00[4]),
        .R(1'b0));
  FDRE \out_ifmap_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(out_ifmap_00[5]),
        .R(1'b0));
  FDRE \out_ifmap_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(out_ifmap_00[6]),
        .R(1'b0));
  FDRE \out_ifmap_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(out_ifmap_00[7]),
        .R(1'b0));
  FDRE \out_ifmap_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(out_ifmap_00[8]),
        .R(1'b0));
  FDRE \out_ifmap_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(out_ifmap_00[9]),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
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
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEB2),
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
  FDRE \out_weight_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[0]),
        .Q(out_weight_00[0]),
        .R(1'b0));
  FDRE \out_weight_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[10]),
        .Q(out_weight_00[10]),
        .R(1'b0));
  FDRE \out_weight_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[11]),
        .Q(out_weight_00[11]),
        .R(1'b0));
  FDRE \out_weight_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[12]),
        .Q(out_weight_00[12]),
        .R(1'b0));
  FDRE \out_weight_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[13]),
        .Q(out_weight_00[13]),
        .R(1'b0));
  FDRE \out_weight_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[14]),
        .Q(out_weight_00[14]),
        .R(1'b0));
  FDRE \out_weight_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[15]),
        .Q(out_weight_00[15]),
        .R(1'b0));
  FDRE \out_weight_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[1]),
        .Q(out_weight_00[1]),
        .R(1'b0));
  FDRE \out_weight_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[2]),
        .Q(out_weight_00[2]),
        .R(1'b0));
  FDRE \out_weight_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[3]),
        .Q(out_weight_00[3]),
        .R(1'b0));
  FDRE \out_weight_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[4]),
        .Q(out_weight_00[4]),
        .R(1'b0));
  FDRE \out_weight_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[5]),
        .Q(out_weight_00[5]),
        .R(1'b0));
  FDRE \out_weight_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[6]),
        .Q(out_weight_00[6]),
        .R(1'b0));
  FDRE \out_weight_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[7]),
        .Q(out_weight_00[7]),
        .R(1'b0));
  FDRE \out_weight_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[8]),
        .Q(out_weight_00[8]),
        .R(1'b0));
  FDRE \out_weight_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[9]),
        .Q(out_weight_00[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "integer_mac_pe" *) 
module design_1_systolic_array_2x2_s_0_1_integer_mac_pe_1
   (ofmap_wires_01,
    out_weight_01,
    out_ifmap_01,
    CEA2,
    clk,
    RSTB,
    Q,
    A,
    out_data,
    out_ifmap_00);
  output [15:0]ofmap_wires_01;
  output [15:0]out_weight_01;
  output [15:0]out_ifmap_01;
  input CEA2;
  input clk;
  input RSTB;
  input [15:0]Q;
  input [15:0]A;
  input [15:0]out_data;
  input [15:0]out_ifmap_00;

  wire [15:0]A;
  wire CEA2;
  wire [15:0]Q;
  wire RSTB;
  wire clk;
  wire [15:0]ofmap_wires_01;
  wire [15:0]out_data;
  wire [15:0]out_ifmap_00;
  wire [15:0]out_ifmap_01;
  wire [15:0]out_weight_01;
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

  FDRE \out_ifmap_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[0]),
        .Q(out_ifmap_01[0]),
        .R(1'b0));
  FDRE \out_ifmap_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[10]),
        .Q(out_ifmap_01[10]),
        .R(1'b0));
  FDRE \out_ifmap_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[11]),
        .Q(out_ifmap_01[11]),
        .R(1'b0));
  FDRE \out_ifmap_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[12]),
        .Q(out_ifmap_01[12]),
        .R(1'b0));
  FDRE \out_ifmap_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[13]),
        .Q(out_ifmap_01[13]),
        .R(1'b0));
  FDRE \out_ifmap_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[14]),
        .Q(out_ifmap_01[14]),
        .R(1'b0));
  FDRE \out_ifmap_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[15]),
        .Q(out_ifmap_01[15]),
        .R(1'b0));
  FDRE \out_ifmap_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[1]),
        .Q(out_ifmap_01[1]),
        .R(1'b0));
  FDRE \out_ifmap_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[2]),
        .Q(out_ifmap_01[2]),
        .R(1'b0));
  FDRE \out_ifmap_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[3]),
        .Q(out_ifmap_01[3]),
        .R(1'b0));
  FDRE \out_ifmap_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[4]),
        .Q(out_ifmap_01[4]),
        .R(1'b0));
  FDRE \out_ifmap_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[5]),
        .Q(out_ifmap_01[5]),
        .R(1'b0));
  FDRE \out_ifmap_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[6]),
        .Q(out_ifmap_01[6]),
        .R(1'b0));
  FDRE \out_ifmap_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[7]),
        .Q(out_ifmap_01[7]),
        .R(1'b0));
  FDRE \out_ifmap_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[8]),
        .Q(out_ifmap_01[8]),
        .R(1'b0));
  FDRE \out_ifmap_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_00[9]),
        .Q(out_ifmap_01[9]),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
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
        .CEA2(CEA2),
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
  FDRE \out_weight_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[0]),
        .Q(out_weight_01[0]),
        .R(1'b0));
  FDRE \out_weight_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[10]),
        .Q(out_weight_01[10]),
        .R(1'b0));
  FDRE \out_weight_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[11]),
        .Q(out_weight_01[11]),
        .R(1'b0));
  FDRE \out_weight_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[12]),
        .Q(out_weight_01[12]),
        .R(1'b0));
  FDRE \out_weight_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[13]),
        .Q(out_weight_01[13]),
        .R(1'b0));
  FDRE \out_weight_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[14]),
        .Q(out_weight_01[14]),
        .R(1'b0));
  FDRE \out_weight_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[15]),
        .Q(out_weight_01[15]),
        .R(1'b0));
  FDRE \out_weight_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[1]),
        .Q(out_weight_01[1]),
        .R(1'b0));
  FDRE \out_weight_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[2]),
        .Q(out_weight_01[2]),
        .R(1'b0));
  FDRE \out_weight_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[3]),
        .Q(out_weight_01[3]),
        .R(1'b0));
  FDRE \out_weight_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[4]),
        .Q(out_weight_01[4]),
        .R(1'b0));
  FDRE \out_weight_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[5]),
        .Q(out_weight_01[5]),
        .R(1'b0));
  FDRE \out_weight_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[6]),
        .Q(out_weight_01[6]),
        .R(1'b0));
  FDRE \out_weight_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[7]),
        .Q(out_weight_01[7]),
        .R(1'b0));
  FDRE \out_weight_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[8]),
        .Q(out_weight_01[8]),
        .R(1'b0));
  FDRE \out_weight_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(out_data[9]),
        .Q(out_weight_01[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "integer_mac_pe" *) 
module design_1_systolic_array_2x2_s_0_1_integer_mac_pe_2
   (ofmap_wires_10,
    out_weight_10,
    out_ifmap_10,
    CEB2,
    clk,
    RSTB,
    D,
    out_data,
    out_weight_00,
    Q);
  output [15:0]ofmap_wires_10;
  output [15:0]out_weight_10;
  output [15:0]out_ifmap_10;
  input CEB2;
  input clk;
  input RSTB;
  input [15:0]D;
  input [15:0]out_data;
  input [15:0]out_weight_00;
  input [15:0]Q;

  wire CEB2;
  wire [15:0]D;
  wire [15:0]Q;
  wire RSTB;
  wire clk;
  wire [15:0]ofmap_wires_10;
  wire [15:0]out_data;
  wire [15:0]out_ifmap_10;
  wire [15:0]out_weight_00;
  wire [15:0]out_weight_10;
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

  FDRE \out_ifmap_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(out_ifmap_10[0]),
        .R(1'b0));
  FDRE \out_ifmap_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(out_ifmap_10[10]),
        .R(1'b0));
  FDRE \out_ifmap_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(out_ifmap_10[11]),
        .R(1'b0));
  FDRE \out_ifmap_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(out_ifmap_10[12]),
        .R(1'b0));
  FDRE \out_ifmap_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(out_ifmap_10[13]),
        .R(1'b0));
  FDRE \out_ifmap_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(out_ifmap_10[14]),
        .R(1'b0));
  FDRE \out_ifmap_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(out_ifmap_10[15]),
        .R(1'b0));
  FDRE \out_ifmap_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(out_ifmap_10[1]),
        .R(1'b0));
  FDRE \out_ifmap_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(out_ifmap_10[2]),
        .R(1'b0));
  FDRE \out_ifmap_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(out_ifmap_10[3]),
        .R(1'b0));
  FDRE \out_ifmap_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(out_ifmap_10[4]),
        .R(1'b0));
  FDRE \out_ifmap_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(out_ifmap_10[5]),
        .R(1'b0));
  FDRE \out_ifmap_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(out_ifmap_10[6]),
        .R(1'b0));
  FDRE \out_ifmap_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(out_ifmap_10[7]),
        .R(1'b0));
  FDRE \out_ifmap_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(out_ifmap_10[8]),
        .R(1'b0));
  FDRE \out_ifmap_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(out_ifmap_10[9]),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
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
        .CEB2(CEB2),
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
  FDRE \out_weight_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[0]),
        .Q(out_weight_10[0]),
        .R(1'b0));
  FDRE \out_weight_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[10]),
        .Q(out_weight_10[10]),
        .R(1'b0));
  FDRE \out_weight_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[11]),
        .Q(out_weight_10[11]),
        .R(1'b0));
  FDRE \out_weight_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[12]),
        .Q(out_weight_10[12]),
        .R(1'b0));
  FDRE \out_weight_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[13]),
        .Q(out_weight_10[13]),
        .R(1'b0));
  FDRE \out_weight_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[14]),
        .Q(out_weight_10[14]),
        .R(1'b0));
  FDRE \out_weight_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[15]),
        .Q(out_weight_10[15]),
        .R(1'b0));
  FDRE \out_weight_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[1]),
        .Q(out_weight_10[1]),
        .R(1'b0));
  FDRE \out_weight_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[2]),
        .Q(out_weight_10[2]),
        .R(1'b0));
  FDRE \out_weight_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[3]),
        .Q(out_weight_10[3]),
        .R(1'b0));
  FDRE \out_weight_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[4]),
        .Q(out_weight_10[4]),
        .R(1'b0));
  FDRE \out_weight_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[5]),
        .Q(out_weight_10[5]),
        .R(1'b0));
  FDRE \out_weight_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[6]),
        .Q(out_weight_10[6]),
        .R(1'b0));
  FDRE \out_weight_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[7]),
        .Q(out_weight_10[7]),
        .R(1'b0));
  FDRE \out_weight_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[8]),
        .Q(out_weight_10[8]),
        .R(1'b0));
  FDRE \out_weight_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_00[9]),
        .Q(out_weight_10[9]),
        .R(1'b0));
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
  wire [15:0]out_ifmap_10;
  wire [15:0]out_ifmap_11;
  wire [15:0]out_weight_01;
  wire [15:0]out_weight_11;
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

  FDRE \out_ifmap_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[0]),
        .Q(out_ifmap_11[0]),
        .R(1'b0));
  FDRE \out_ifmap_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[10]),
        .Q(out_ifmap_11[10]),
        .R(1'b0));
  FDRE \out_ifmap_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[11]),
        .Q(out_ifmap_11[11]),
        .R(1'b0));
  FDRE \out_ifmap_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[12]),
        .Q(out_ifmap_11[12]),
        .R(1'b0));
  FDRE \out_ifmap_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[13]),
        .Q(out_ifmap_11[13]),
        .R(1'b0));
  FDRE \out_ifmap_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[14]),
        .Q(out_ifmap_11[14]),
        .R(1'b0));
  FDRE \out_ifmap_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[15]),
        .Q(out_ifmap_11[15]),
        .R(1'b0));
  FDRE \out_ifmap_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[1]),
        .Q(out_ifmap_11[1]),
        .R(1'b0));
  FDRE \out_ifmap_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[2]),
        .Q(out_ifmap_11[2]),
        .R(1'b0));
  FDRE \out_ifmap_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[3]),
        .Q(out_ifmap_11[3]),
        .R(1'b0));
  FDRE \out_ifmap_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[4]),
        .Q(out_ifmap_11[4]),
        .R(1'b0));
  FDRE \out_ifmap_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[5]),
        .Q(out_ifmap_11[5]),
        .R(1'b0));
  FDRE \out_ifmap_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[6]),
        .Q(out_ifmap_11[6]),
        .R(1'b0));
  FDRE \out_ifmap_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[7]),
        .Q(out_ifmap_11[7]),
        .R(1'b0));
  FDRE \out_ifmap_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[8]),
        .Q(out_ifmap_11[8]),
        .R(1'b0));
  FDRE \out_ifmap_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(out_ifmap_10[9]),
        .Q(out_ifmap_11[9]),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
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
  FDRE \out_weight_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[0]),
        .Q(out_weight_11[0]),
        .R(1'b0));
  FDRE \out_weight_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[10]),
        .Q(out_weight_11[10]),
        .R(1'b0));
  FDRE \out_weight_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[11]),
        .Q(out_weight_11[11]),
        .R(1'b0));
  FDRE \out_weight_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[12]),
        .Q(out_weight_11[12]),
        .R(1'b0));
  FDRE \out_weight_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[13]),
        .Q(out_weight_11[13]),
        .R(1'b0));
  FDRE \out_weight_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[14]),
        .Q(out_weight_11[14]),
        .R(1'b0));
  FDRE \out_weight_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[15]),
        .Q(out_weight_11[15]),
        .R(1'b0));
  FDRE \out_weight_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[1]),
        .Q(out_weight_11[1]),
        .R(1'b0));
  FDRE \out_weight_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[2]),
        .Q(out_weight_11[2]),
        .R(1'b0));
  FDRE \out_weight_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[3]),
        .Q(out_weight_11[3]),
        .R(1'b0));
  FDRE \out_weight_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[4]),
        .Q(out_weight_11[4]),
        .R(1'b0));
  FDRE \out_weight_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[5]),
        .Q(out_weight_11[5]),
        .R(1'b0));
  FDRE \out_weight_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[6]),
        .Q(out_weight_11[6]),
        .R(1'b0));
  FDRE \out_weight_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[7]),
        .Q(out_weight_11[7]),
        .R(1'b0));
  FDRE \out_weight_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[8]),
        .Q(out_weight_11[8]),
        .R(1'b0));
  FDRE \out_weight_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(out_weight_01[9]),
        .Q(out_weight_11[9]),
        .R(1'b0));
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
    empty0_w,
    full0_w,
    empty1_w,
    full1_w,
    empty0_i,
    full0_i,
    empty1_i,
    full1_i,
    clk,
    test_weight0,
    test_ifmap0,
    test_weight1,
    test_ifmap1,
    r_en0_w,
    r_en1_w,
    r_en0_i,
    r_en1_i,
    w_en0_w,
    rstn,
    w_en0_i,
    w_en1_w,
    w_en1_i);
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
  output empty0_w;
  output full0_w;
  output empty1_w;
  output full1_w;
  output empty0_i;
  output full0_i;
  output empty1_i;
  output full1_i;
  input clk;
  input [15:0]test_weight0;
  input [15:0]test_ifmap0;
  input [15:0]test_weight1;
  input [15:0]test_ifmap1;
  input r_en0_w;
  input r_en1_w;
  input r_en0_i;
  input r_en1_i;
  input w_en0_w;
  input rstn;
  input w_en0_i;
  input w_en1_w;
  input w_en1_i;

  wire clk;
  wire empty0_i;
  wire empty0_w;
  wire empty1_i;
  wire empty1_w;
  wire full0_i;
  wire full0_w;
  wire full1_i;
  wire full1_w;
  wire ifmap_fifo0_n_16;
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
  wire ifmap_fifo0_n_33;
  wire ifmap_fifo0_n_34;
  wire ifmap_fifo1_n_16;
  wire ifmap_fifo1_n_17;
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
  wire ifmap_fifo1_n_33;
  wire ifmap_fifo1_n_34;
  wire ifmap_fifo1_n_35;
  wire [15:0]ofmap_wires_00;
  wire [15:0]ofmap_wires_01;
  wire [15:0]ofmap_wires_10;
  wire [15:0]ofmap_wires_11;
  wire [15:0]out_data;
  wire [15:0]out_data0;
  wire [15:0]out_data0__0;
  wire [15:0]out_data0__1;
  wire [15:0]out_data0__2;
  wire [15:0]out_ifmap_00;
  wire [15:0]out_ifmap_01;
  wire [15:0]out_ifmap_10;
  wire [15:0]out_ifmap_11;
  wire [15:0]out_weight_00;
  wire [15:0]out_weight_01;
  wire [15:0]out_weight_10;
  wire [15:0]out_weight_11;
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
  wire weight_fifo1_n_34;

  design_1_systolic_array_2x2_s_0_1_fifo ifmap_fifo0
       (.CEB2(ifmap_fifo0_n_16),
        .D(out_data0__0),
        .Q({ifmap_fifo0_n_19,ifmap_fifo0_n_20,ifmap_fifo0_n_21,ifmap_fifo0_n_22,ifmap_fifo0_n_23,ifmap_fifo0_n_24,ifmap_fifo0_n_25,ifmap_fifo0_n_26,ifmap_fifo0_n_27,ifmap_fifo0_n_28,ifmap_fifo0_n_29,ifmap_fifo0_n_30,ifmap_fifo0_n_31,ifmap_fifo0_n_32,ifmap_fifo0_n_33,ifmap_fifo0_n_34}),
        .RSTB(ifmap_fifo1_n_16),
        .clk(clk),
        .empty0_i(empty0_i),
        .full0_i(full0_i),
        .r_en0_i(r_en0_i),
        .rstn(rstn),
        .test_ifmap0(test_ifmap0),
        .w_en0_i(w_en0_i));
  design_1_systolic_array_2x2_s_0_1_fifo_0 ifmap_fifo1
       (.CEB2(ifmap_fifo1_n_17),
        .D(out_data0__2),
        .Q({ifmap_fifo1_n_20,ifmap_fifo1_n_21,ifmap_fifo1_n_22,ifmap_fifo1_n_23,ifmap_fifo1_n_24,ifmap_fifo1_n_25,ifmap_fifo1_n_26,ifmap_fifo1_n_27,ifmap_fifo1_n_28,ifmap_fifo1_n_29,ifmap_fifo1_n_30,ifmap_fifo1_n_31,ifmap_fifo1_n_32,ifmap_fifo1_n_33,ifmap_fifo1_n_34,ifmap_fifo1_n_35}),
        .RSTB(ifmap_fifo1_n_16),
        .clk(clk),
        .empty1_i(empty1_i),
        .full1_i(full1_i),
        .r_en1_i(r_en1_i),
        .rstn(rstn),
        .test_ifmap1(test_ifmap1),
        .w_en1_i(w_en1_i));
  design_1_systolic_array_2x2_s_0_1_integer_mac_pe pe00
       (.A(out_data0),
        .CEA2(weight_fifo0_n_16),
        .CEB2(ifmap_fifo0_n_16),
        .D(out_data0__0),
        .Q({ifmap_fifo0_n_19,ifmap_fifo0_n_20,ifmap_fifo0_n_21,ifmap_fifo0_n_22,ifmap_fifo0_n_23,ifmap_fifo0_n_24,ifmap_fifo0_n_25,ifmap_fifo0_n_26,ifmap_fifo0_n_27,ifmap_fifo0_n_28,ifmap_fifo0_n_29,ifmap_fifo0_n_30,ifmap_fifo0_n_31,ifmap_fifo0_n_32,ifmap_fifo0_n_33,ifmap_fifo0_n_34}),
        .RSTB(ifmap_fifo1_n_16),
        .clk(clk),
        .ofmap_wires_00(ofmap_wires_00),
        .out_data(out_data),
        .out_ifmap_00(out_ifmap_00),
        .out_weight_00(out_weight_00));
  design_1_systolic_array_2x2_s_0_1_integer_mac_pe_1 pe01
       (.A(out_data0__1),
        .CEA2(weight_fifo1_n_16),
        .Q({ifmap_fifo0_n_19,ifmap_fifo0_n_20,ifmap_fifo0_n_21,ifmap_fifo0_n_22,ifmap_fifo0_n_23,ifmap_fifo0_n_24,ifmap_fifo0_n_25,ifmap_fifo0_n_26,ifmap_fifo0_n_27,ifmap_fifo0_n_28,ifmap_fifo0_n_29,ifmap_fifo0_n_30,ifmap_fifo0_n_31,ifmap_fifo0_n_32,ifmap_fifo0_n_33,ifmap_fifo0_n_34}),
        .RSTB(ifmap_fifo1_n_16),
        .clk(clk),
        .ofmap_wires_01(ofmap_wires_01),
        .out_data({weight_fifo1_n_19,weight_fifo1_n_20,weight_fifo1_n_21,weight_fifo1_n_22,weight_fifo1_n_23,weight_fifo1_n_24,weight_fifo1_n_25,weight_fifo1_n_26,weight_fifo1_n_27,weight_fifo1_n_28,weight_fifo1_n_29,weight_fifo1_n_30,weight_fifo1_n_31,weight_fifo1_n_32,weight_fifo1_n_33,weight_fifo1_n_34}),
        .out_ifmap_00(out_ifmap_00),
        .out_ifmap_01(out_ifmap_01),
        .out_weight_01(out_weight_01));
  design_1_systolic_array_2x2_s_0_1_integer_mac_pe_2 pe10
       (.CEB2(ifmap_fifo1_n_17),
        .D(out_data0__2),
        .Q({ifmap_fifo1_n_20,ifmap_fifo1_n_21,ifmap_fifo1_n_22,ifmap_fifo1_n_23,ifmap_fifo1_n_24,ifmap_fifo1_n_25,ifmap_fifo1_n_26,ifmap_fifo1_n_27,ifmap_fifo1_n_28,ifmap_fifo1_n_29,ifmap_fifo1_n_30,ifmap_fifo1_n_31,ifmap_fifo1_n_32,ifmap_fifo1_n_33,ifmap_fifo1_n_34,ifmap_fifo1_n_35}),
        .RSTB(ifmap_fifo1_n_16),
        .clk(clk),
        .ofmap_wires_10(ofmap_wires_10),
        .out_data(out_data),
        .out_ifmap_10(out_ifmap_10),
        .out_weight_00(out_weight_00),
        .out_weight_10(out_weight_10));
  design_1_systolic_array_2x2_s_0_1_integer_mac_pe_3 pe11
       (.Q({ifmap_fifo1_n_20,ifmap_fifo1_n_21,ifmap_fifo1_n_22,ifmap_fifo1_n_23,ifmap_fifo1_n_24,ifmap_fifo1_n_25,ifmap_fifo1_n_26,ifmap_fifo1_n_27,ifmap_fifo1_n_28,ifmap_fifo1_n_29,ifmap_fifo1_n_30,ifmap_fifo1_n_31,ifmap_fifo1_n_32,ifmap_fifo1_n_33,ifmap_fifo1_n_34,ifmap_fifo1_n_35}),
        .RSTB(ifmap_fifo1_n_16),
        .clk(clk),
        .ofmap_wires_11(ofmap_wires_11),
        .out_data({weight_fifo1_n_19,weight_fifo1_n_20,weight_fifo1_n_21,weight_fifo1_n_22,weight_fifo1_n_23,weight_fifo1_n_24,weight_fifo1_n_25,weight_fifo1_n_26,weight_fifo1_n_27,weight_fifo1_n_28,weight_fifo1_n_29,weight_fifo1_n_30,weight_fifo1_n_31,weight_fifo1_n_32,weight_fifo1_n_33,weight_fifo1_n_34}),
        .out_ifmap_10(out_ifmap_10),
        .out_ifmap_11(out_ifmap_11),
        .out_weight_01(out_weight_01),
        .out_weight_11(out_weight_11));
  design_1_systolic_array_2x2_s_0_1_fifo_4 weight_fifo0
       (.CEA2(weight_fifo0_n_16),
        .D(out_data0),
        .Q(out_data),
        .RSTB(ifmap_fifo1_n_16),
        .clk(clk),
        .empty0_w(empty0_w),
        .full0_w(full0_w),
        .r_en0_w(r_en0_w),
        .rstn(rstn),
        .test_weight0(test_weight0),
        .w_en0_w(w_en0_w));
  design_1_systolic_array_2x2_s_0_1_fifo_5 weight_fifo1
       (.CEA2(weight_fifo1_n_16),
        .D(out_data0__1),
        .Q({weight_fifo1_n_19,weight_fifo1_n_20,weight_fifo1_n_21,weight_fifo1_n_22,weight_fifo1_n_23,weight_fifo1_n_24,weight_fifo1_n_25,weight_fifo1_n_26,weight_fifo1_n_27,weight_fifo1_n_28,weight_fifo1_n_29,weight_fifo1_n_30,weight_fifo1_n_31,weight_fifo1_n_32,weight_fifo1_n_33,weight_fifo1_n_34}),
        .RSTB(ifmap_fifo1_n_16),
        .clk(clk),
        .empty1_w(empty1_w),
        .full1_w(full1_w),
        .r_en1_w(r_en1_w),
        .rstn(rstn),
        .test_weight1(test_weight1),
        .w_en1_w(w_en1_w));
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
