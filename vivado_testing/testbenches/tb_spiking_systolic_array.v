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
module tb_spiking_systolic_array;
  reg clk;
  reg rstn;
  reg in_row_0;
  reg in_row_1;
  reg signed [15:0] in_col_0;
  reg signed [15:0] in_col_1;
  reg r_en;
  reg w_en;
  wire signed [15:0] out_data_0_0;
  wire signed [15:0] out_data_0_1;
  wire signed [15:0] out_data_1_0;
  wire signed [15:0] out_data_1_1;

  integer seed = 123;

  spiking_systolic_array_2x2 test_spike_systolic_array (
    .clk (clk),
    .rstn (rstn),
    .row_fifo_0_r_en (r_en),
    .row_fifo_1_r_en (r_en),
    .row_fifo_0_w_en (w_en),
    .row_fifo_1_w_en (w_en),
    .col_fifo_0_r_en (r_en),
    .col_fifo_1_r_en (r_en),
    .col_fifo_0_w_en (w_en),
    .col_fifo_1_w_en (w_en),
    .in_row_0 (in_row_0),
    .in_col_0 (in_col_0),
    .in_row_1 (in_row_1),
    .in_col_1 (in_col_1),
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
    in_col_0 <= 14;
    in_row_1 <= 0;
    in_col_1 <= 0;
    #2 in_row_1 <= 1;
    in_col_1 <= 23;
    in_row_0 <= 0;
    in_col_0 <= -21;
    #2 in_row_1 <= 1;
    in_col_1 <= -30;
    in_row_0 <= 0;
    in_col_0 <= 0;
    #2 in_row_1 <= 0;
    in_col_1 <= 0;
    #2 w_en <= 0;
    r_en <= 1;
  end

endmodule