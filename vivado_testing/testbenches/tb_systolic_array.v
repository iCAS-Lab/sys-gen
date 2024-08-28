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
module tb_systolic_array;
  reg clk;
  reg rstn;
  reg signed [15:0] in_row_0;
  reg signed [15:0] in_row_1;
  reg signed [15:0] in_col_0;
  reg signed [15:0] in_col_1;
  reg r_en;
  reg w_en;
  wire signed [15:0] out_data_0_0;
  wire signed [15:0] out_data_0_1;
  wire signed [15:0] out_data_1_0;
  wire signed [15:0] out_data_1_1;

  integer seed = 123;

  systolic_array_2x2 test_systolic_array(
    .clk (clk), 
    .rstn (rstn),
    .in_row_0 (in_row_0),
    .row_fifo_0_r_en (r_en),
    .row_fifo_0_w_en (w_en),
    .in_row_1 (in_row_1),
    .row_fifo_1_r_en (r_en),
    .row_fifo_1_w_en (w_en),
    .in_col_0 (in_col_0),
    .col_fifo_0_r_en (r_en),
    .col_fifo_0_w_en (w_en),
    .in_col_1 (in_col_1),
    .col_fifo_1_r_en (r_en),
    .col_fifo_1_w_en (w_en),
    .out_data_0_0 (out_data_0_0),
    .out_data_0_1 (out_data_0_1),
    .out_data_1_0 (out_data_1_0),
    .out_data_1_1 (out_data_1_1)
  );

  always #1 clk = ~clk;

  initial begin
    clk <= 0;
    rstn <= 0;
    #2 rstn <= 1;
    #1 w_en <= 1;
    in_row_0 <= 1;
    in_col_0 <= 2;
    in_row_1 <= 0;
    in_col_1 <= 0;
    #2 in_row_1 <= 3;
    in_col_1 <= 4;
    in_row_0 <= 5;
    in_col_0 <= 6;
    #2 in_row_1 <= 7;
    in_col_1 <= 8;
    in_row_0 <= 0;
    in_col_0 <= 0;
    #2 in_row_1 <= 0;
    in_col_1 <= 0;
    #2 w_en <= 0;
    r_en <= 1;
  end
endmodule