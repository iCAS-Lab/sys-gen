`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2024 02:14:02 PM
// Design Name: 
// Module Name: adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////

module systolic_array_2x2_syn #(parameter DATA_WIDTH=16) (
    // Controll signals
    input clk, rstn,
    input r_en0_w, r_en1_w, r_en0_i, r_en1_i,
    input w_en0_w, w_en1_w, w_en0_i, w_en1_i,

    // Values to place in FIFOs as a temp test
    input [DATA_WIDTH-1:0] test_weight0,
    input [DATA_WIDTH-1:0] test_weight1,
    input [DATA_WIDTH-1:0] test_ifmap0,
    input [DATA_WIDTH-1:0] test_ifmap1,
    
    // FIFOs to Controller
    output full0_w, full1_w, full0_i, full1_i,
    output empty0_w, empty1_w, empty0_i, empty1_i,
    
    // Ouputs of PEs
    output signed [DATA_WIDTH-1:0] ofmap_wires_00,
    output signed [DATA_WIDTH-1:0] out_weight_00,
    output signed [DATA_WIDTH-1:0] out_ifmap_00,
    output signed [DATA_WIDTH-1:0] ofmap_wires_01,
    output signed [DATA_WIDTH-1:0] out_weight_01,
    output signed [DATA_WIDTH-1:0] out_ifmap_01,
    output signed [DATA_WIDTH-1:0] ofmap_wires_10,
    output signed [DATA_WIDTH-1:0] out_weight_10,
    output signed [DATA_WIDTH-1:0] out_ifmap_10,
    output signed [DATA_WIDTH-1:0] ofmap_wires_11,
    output signed [DATA_WIDTH-1:0] out_weight_11,
    output signed [DATA_WIDTH-1:0] out_ifmap_11
);


// From FIFOs to PEs
wire [DATA_WIDTH-1:0] weight_wires0;
wire [DATA_WIDTH-1:0] weight_wires1;
wire [DATA_WIDTH-1:0] ifmap_wires0;
wire  [DATA_WIDTH-1:0] ifmap_wires1;

fifo weight_fifo0 (
    .clk (clk), .rstn (rstn),
    .w_en (w_en0_w), .r_en (r_en0_w),
    .in_data (test_weight0),
    .out_data (weight_wires0),
    .full (full0_w), .empty(empty0_w)
);

fifo weight_fifo1 (
    .clk (clk), .rstn (rstn),
    .w_en (w_en1_w), .r_en (r_en1_w),
    .in_data (test_weight1),
    .out_data (weight_wires1),
    .full (full1_w), .empty(empty1_w)
);

fifo ifmap_fifo0 (
    .clk (clk), .rstn (rstn),
    .w_en (w_en0_i), .r_en (r_en0_i),
    .in_data (test_ifmap0),
    .out_data (ifmap_wires0),
    .full (full0_i), .empty(empty0_i)
);

fifo ifmap_fifo1 (
    .clk (clk), .rstn (rstn),
    .w_en (w_en1_i), .r_en (r_en1_i),
    .in_data (test_ifmap1),
    .out_data (ifmap_wires1),
    .full (full1_i), .empty(empty1_i)
);

integer_mac_pe pe00 (
    .clk (clk), .rstn (rstn),
    .in_weight (weight_wires0),
    .in_ifmap (ifmap_wires0),
    .out_ofmap (ofmap_wires_00),
    .out_weight (out_weight_00),
    .out_ifmap (out_ifmap_00)
);

integer_mac_pe pe01 (
    .clk (clk), .rstn (rstn),
    .in_weight (weight_wires1),
    .in_ifmap (out_ifmap_00),
    .out_ofmap (ofmap_wires_01),
    .out_weight (out_weight_01),
    .out_ifmap (out_ifmap_01)
);

integer_mac_pe pe10 (
    .clk (clk), .rstn (rstn),
    .in_weight (out_weight_00),
    .in_ifmap (ifmap_wires1),
    .out_ofmap (ofmap_wires_10),
    .out_weight (out_weight_10),
    .out_ifmap (out_ifmap_10)
);

integer_mac_pe pe11 (
    .clk (clk), .rstn (rstn),
    .in_weight (out_weight_01),
    .in_ifmap (out_ifmap_10),
    .out_ofmap (ofmap_wires_11),
    .out_weight (out_weight_11),
    .out_ifmap (out_ifmap_11)
);

endmodule