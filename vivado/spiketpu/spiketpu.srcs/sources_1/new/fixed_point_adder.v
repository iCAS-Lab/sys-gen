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


module fixed_point_adder(
    input clk,
    input rstn,
    input in_spike,
    input in_polarity,
    input signed [15:0] in_weight,
    output reg signed [15:0] membrane_potential
);

    always @ (posedge clk) begin
        if (! rstn) begin
            membrane_potential <= 0;
        end
        else if (in_spike) begin
            if (in_polarity) begin
                membrane_potential <= membrane_potential + in_weight;
            end
            else
                membrane_potential <= membrane_potential - in_weight;
        end
        else
            membrane_potential <= membrane_potential;
    end
endmodule
