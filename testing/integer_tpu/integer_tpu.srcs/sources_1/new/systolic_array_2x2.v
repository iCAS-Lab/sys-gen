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

module systolic_array_2x2 #(parameter DATA_WIDTH=16) (
    input clk, rstn
);

// Controll signals
wire r_en0_w, r_en1_w, r_en0_i, r_en1_i;
wire w_en1_w, w_en2_w, w_en0_i, w_en1_i;
wire full0_w, full1_w, full0_i, full1_i;
wire empty0_w, empty1_w, empty0_i, empty1_i;

// Values to place in FIFOs as a temp test
wire [DATA_WIDTH-1:0] test_weight0;
wire [DATA_WIDTH-1:0] test_weight1;
wire [DATA_WIDTH-1:0] test_ifmap0;
wire [DATA_WIDTH-1:0] test_ifmap1;

// From FIFOs to PEs
wire [DATA_WIDTH-1:0] weight_wires0;
wire [DATA_WIDTH-1:0] weight_wires1;
wire [DATA_WIDTH-1:0] ifmap_wires0;
wire [DATA_WIDTH-1:0] ifmap_wires1;

// Ouputs of PEs
wire signed [DATA_WIDTH-1:0] ofmap_wires_00;
wire signed [DATA_WIDTH-1:0] out_weight_00;
wire signed [DATA_WIDTH-1:0] out_ifmap_00;
wire signed [DATA_WIDTH-1:0] ofmap_wires_01;
wire signed [DATA_WIDTH-1:0] out_weight_01;
wire signed [DATA_WIDTH-1:0] out_ifmap_01;
wire signed [DATA_WIDTH-1:0] ofmap_wires_10;
wire signed [DATA_WIDTH-1:0] out_weight_10;
wire signed [DATA_WIDTH-1:0] out_ifmap_10;
wire signed [DATA_WIDTH-1:0] ofmap_wires_11;
wire signed [DATA_WIDTH-1:0] out_weight_11;
wire signed [DATA_WIDTH-1:0] out_ifmap_11;

fifo weight_fifo0 (
    .clk (clk), .rstn (rstn),
    .w_en (w_en0_w), .r_en (r_en0_w),
    .in_data (test_weight0),
    .out_data (weight_wires0),
    .full (full0), .empty(empty0)
);

fifo weight_fifo1 (
    .clk (clk), .rstn (rstn),
    .w_en (w_en1_w), .r_en (r_en1_w),
    .in_data (test_weight1),
    .out_data (weight_wires1),
    .full (full1), .empty(empty1)
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