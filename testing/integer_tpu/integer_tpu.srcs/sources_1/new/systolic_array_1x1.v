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

module systolic_array_1x1 #(parameter DATA_WIDTH=16) (
    input clk, rstn
);

wire r_en1, r_en2;
wire w_en1, w_en2;
wire full1, full2;
wire empty1, empty2;
wire [DATA_WIDTH-1:0] test_weight;
wire [DATA_WIDTH-1:0] test_ifmap;
wire [DATA_WIDTH-1:0] weight_wires;
wire [DATA_WIDTH-1:0] ifmap_wires;
wire signed [DATA_WIDTH-1:0] ofmap_wires;
wire signed [DATA_WIDTH-1:0] out_weight;
wire signed [DATA_WIDTH-1:0] out_ifmap;

fifo weight_fifo (
    .clk (clk), .rstn (rstn),
    .w_en (w_en1), .r_en (r_en1),
    .in_data (test_weight),
    .out_data (weight_wires),
    .full (full1), .empty(empty1)
);

fifo ifmap_fifo (
    .clk (clk), .rstn (rstn),
    .w_en (w_en2), .r_en (r_en2),
    .in_data (test_ifmap),
    .out_data (ifmap_wires),
    .full (full2), .empty(empty2)
);

integer_mac_pe single_pe (
    .clk (clk), .rstn (rstn),
    .in_weight (weight_wires),
    .in_ifmap (ifmap_wires),
    .out_ofmap (ofmap_wires),
    .out_weight (out_weight),
    .out_ifmap (out_ifmap)
);

endmodule