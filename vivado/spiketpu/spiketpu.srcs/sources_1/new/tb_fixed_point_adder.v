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
module tb_fixed_point_adder;
    reg clk;
    reg rstn;
    reg in_spike;
    reg in_polarity;
    reg [15:0] in_weight;
    wire [15:0] membrane_potential;
    integer seed = 1;

    fixed_point_adder fxp_add (
        .clk (clk),
        .rstn (rstn),
        .in_spike (in_spike),
        .in_polarity (in_polarity),
        .in_weight (in_weight),
        .membrane_potential (membrane_potential)
    );

    always #1 clk = ~clk;

    always @ (posedge clk) begin
        in_polarity <= $random(seed);
        in_spike <= $random(seed);
        in_weight <= $random%65535;
    end

    initial begin
        clk <= 0;
        rstn <= 0;
        #2 rstn <= 1;
    end
endmodule