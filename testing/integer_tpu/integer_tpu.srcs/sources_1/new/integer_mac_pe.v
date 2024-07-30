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

module integer_mac_pe #(parameter DATA_WIDTH=16) (
    input clk, rstn,
    input signed [DATA_WIDTH-1:0] in_weight,
    input signed [DATA_WIDTH-1:0] in_ifmap,
    output reg signed [DATA_WIDTH-1:0] out_ofmap = 0,
    output signed [DATA_WIDTH-1:0] out_weight,
    output signed [DATA_WIDTH-1:0] out_ifmap
);


always @ (posedge clk) begin
    if (! rstn) begin
        out_ofmap <= 0;
    end
    else
        out_ofmap = out_ofmap + (in_weight * in_ifmap);
end

assign out_weight = in_weight;
assign out_ifmap = in_ifmap;

endmodule