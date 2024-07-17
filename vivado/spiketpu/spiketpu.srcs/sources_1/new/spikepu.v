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
// 
//////////////////////////////////////////////////////////////////////////////////


module spikepu(
    input clk,
    input rstn,
    input [15:0] in_membrane_potential,
    input [15:0] threshold,
    output reg out_spike
);

    always @ (posedge clk) begin
        if (in_membrane_potential >= threshold) begin
            out_spike <= 1;
        end
        else
            out_spike <= 0;
    end
endmodule
