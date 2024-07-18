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


module fixed_point_pepu(
    input clk,
    input rstn,
    input in_spike,
    input in_polarity,
    input signed [15:0] in_weight,
    input signed [15:0] threshold,
    output signed [15:0] membrane_potential,
    output out_spike
);
    // Instantiate fixed point adder pe
    fixed_point_adder pe (
        .clk (clk),
        .rstn (rstn),
        .in_spike (in_spike),
        .in_polarity (in_polarity),
        .in_weight (in_weight),
        .membrane_potential (membrane_potential)
    );

    // Instantiate thresholding pu
    spikepu pu (
        .clk (clk),
        .rstn (rstn),
        .in_membrane_potential (membrane_potential),
        .threshold (threshold),
        .out_spike (out_spike)
    );

endmodule
