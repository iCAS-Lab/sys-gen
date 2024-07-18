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
    input signed [15:0] in_membrane_potential,
    input signed [15:0] threshold,
    output reg signed out_spike
);

    always @ (posedge clk) begin
        if (! rstn) begin
            out_spike <= 0;
        end
        else if (in_membrane_potential >= threshold) begin
            out_spike <= 1;
        end
        else
            out_spike <= 0;
    end
endmodule
