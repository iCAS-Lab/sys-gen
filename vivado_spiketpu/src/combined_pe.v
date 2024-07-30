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

module fixed_point_pe (
    input clk,
    input rstn,
    input in_spike,
    input in_polarity,
    input [15:0] in_weight,
    input signed [15:0] threshold,
    output reg signed out_spike
);
    reg signed [15:0] membrane_potential = 16'b0;
    wire [15:0] in_weight_1;
       
    assign in_weight_1 = (in_spike)?in_weight:(~in_weight+1);
    
    // Integrate spikes into membrane potential
    always @ (posedge clk) begin
        // Reset logic
        if (! rstn) begin
            membrane_potential <= 0;
        end
        else
            membrane_potential <= membrane_potential + in_weight_1;
    end

    // Check membrane_potential against threshold
    always @ (posedge clk) begin
        if (! rstn) begin
            out_spike <= 0;
        end
        else if (membrane_potential >= threshold) begin
            out_spike <= 1;
        end
        else
            out_spike <= 0;
    end
endmodule