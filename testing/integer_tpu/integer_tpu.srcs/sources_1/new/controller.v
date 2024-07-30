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

module systolic_array_controller #(parameter N=2, M=2) (
    input clk, rstn
);

// Read enable wires
wire [N-1:0] ifmap_fifo_r_ens;
wire [M-1:0] weight_fifo_r_ens;

// Write enable wires
wire [N-1:0] ifmap_fifo_w_ens;
wire [M-1:0] weight_fifo_w_ens;

// Wires for full and empty signals
wire [N-1:0] ifmap_fifo_full_signals;
wire [M-1:0] weight_fifo_full_signals;
wire [N-1:0] ifmap_fifo_empty_signals;
wire [M-1:0] weight_fifo_empty_signals;

endmodule