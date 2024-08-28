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
module tb_fifo;
  reg clk;
  reg rstn;
  reg w_en;
  reg r_en;
  reg signed [15:0] in_data;
  wire [15:0] out_data;
  wire full;
  wire empty;

  integer seed = 123;

  fifo test_fifo (
    .clk (clk),
    .rstn (rstn),
    .w_en (w_en),
    .r_en (r_en),
    .in_data (in_data),
    .out_data (out_data),
    .full (full),
    .empty (empty)
  );

  always #1 clk = ~clk;

  always @ (posedge clk) begin
    in_data <= $random(seed) % 127;
  end

  initial begin
    clk <= 0;
    rstn <= 0;
    #2 rstn <= 1;
    w_en <= 1;
    #8 r_en <= 1;
  end
endmodule