`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
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
//////////////////////////////////////////////////////////////////////////////////

module flex_mac_pe #(parameter DATA_WIDTH=16) (
    input clk, rstn,
    input dataflow_control,
    input signed [DATA_WIDTH-1:0] in_weight,
    input signed [DATA_WIDTH-1:0] in_ifmap,
    input signed [DATA_WIDTH-1:0] in_psum,
    output reg signed [DATA_WIDTH-1:0] out_psum = 0,
    output reg signed [DATA_WIDTH-1:0] out_weight = 0,
    output reg signed [DATA_WIDTH-1:0] out_ifmap = 0
);

// Added register for fixing the IS/WS value inside the PE
reg signed [DATA_WIDTH-1:0] stationary_data = if_map;

// Compute the MAC operation
always @ (posedge clk) begin
    if (! rstn) begin
        out_psum <= 0;
        stationary_data <= 0;
    end
    else if (! dataflow_control) begin
        // OS dataflow
        out_psum = out_psum + (in_weight * in_ifmap);
    end
    else
        // Default to IS/WS
        out_psum = input_psum + (in_weight * stationary_data);
end

// Fix the input values in a register
always @ (posedge clk) begin
    if (! rstn) begin
        out_weight <= 0;
        out_ifmap <= 0;
    end
    else
        out_weight <= in_weight;
        out_ifmap <= in_ifmap;
end


endmodule