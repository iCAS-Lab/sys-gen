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
module tb_spikepu;
    reg clk;
    reg rstn;
    reg signed [15:0] in_membrane_potential;
    reg signed [15:0] threshold;
    wire out_spike;
    integer seed = 123;

    spikepu spu (
        .clk (clk),
        .rstn (rstn),
        .in_membrane_potential (in_membrane_potential),
        .out_spike (out_spike),
        .threshold (threshold)
    );

    always #1 clk = ~clk;

    always @ (posedge clk) begin
        in_membrane_potential <= $random%16384;
        threshold <= 14000;
    end

    initial begin
        clk <= 0;
        rstn <= 0;
        #2 rstn <= 1;
    end
endmodule