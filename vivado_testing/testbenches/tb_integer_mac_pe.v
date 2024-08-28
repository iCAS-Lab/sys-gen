`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: TODO
// Engineer: TODO
//
// Create Date: 2024-08-27 18:00:11.101809
// Target Devices: TODO
// Tool Versions: TODO
// Description: TODO
//
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////
module tb_integer_mac_pe;
  reg clk;
  reg rstn;
  reg signed [15:0] in_row;
  reg signed [15:0] in_col;
  wire signed [15:0] out_row;
  wire signed [15:0] out_col;
  wire signed [15:0] out_data;

  integer seed = 123;

  integer_mac_pe pe (
    .clk (clk),
    .rstn (rstn),
    .in_row (in_row),
    .in_col (in_col),
    .out_row (out_row),
    .out_col (out_col),
    .out_data (out_data)
  );

  always #1 clk = ~clk;

  always @ (posedge clk) begin
    in_row <= $random(seed) % 127;
    in_col <= $random(seed) % 127;
  end

  initial begin
    clk <= 0;
    rstn <= 0;
    #2 rstn <= 1;
  end
endmodule