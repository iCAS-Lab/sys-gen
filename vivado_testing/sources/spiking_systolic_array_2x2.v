`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: TODO
// Engineer: TODO
//
// Create Date: 2024-08-27 22:35:09.825901
// Target Devices: TODO
// Tool Versions: TODO
// Description: TODO
//
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////
module spiking_systolic_array_2x2 #(parameter DEPTH=8, DATA_WIDTH=16) (
	input clk, rstn,
	input in_row_0,
	input row_fifo_0_r_en, row_fifo_0_w_en,
	input in_row_1,
	input row_fifo_1_r_en, row_fifo_1_w_en,
	input signed [DATA_WIDTH-1:0] in_col_0,
	input col_fifo_0_r_en, col_fifo_0_w_en,
	input signed [DATA_WIDTH-1:0] in_col_1,
	input col_fifo_1_r_en, col_fifo_1_w_en,
	output signed [DATA_WIDTH-1:0] out_data_0_0,
	output signed [DATA_WIDTH-1:0] out_data_0_1,
	output signed [DATA_WIDTH-1:0] out_data_1_0,
	output signed [DATA_WIDTH-1:0] out_data_1_1
);
	////////////////////////////////////////////////////
	// FIFO Instantiations
	////////////////////////////////////////////////////
	wire signed row_fifo_0_out;
	fifo #(.DATA_WIDTH(1)) row_fifo_0 (
		.clk (clk),
		.rstn (rstn),
		.w_en (row_fifo_0_w_en),
		.r_en (row_fifo_0_r_en),
		.in_data (in_row_0),
		.out_data (row_fifo_0_out),
		.full (row_fifo_0_full),
		.empty(row_fifo_0_empty)
	);
	wire signed row_fifo_1_out;
	fifo #(.DATA_WIDTH(1)) row_fifo_1 (
		.clk (clk),
		.rstn (rstn),
		.w_en (row_fifo_1_w_en),
		.r_en (row_fifo_1_r_en),
		.in_data (in_row_1),
		.out_data (row_fifo_1_out),
		.full (row_fifo_1_full),
		.empty(row_fifo_1_empty)
	);
	wire signed [DATA_WIDTH-1:0] col_fifo_0_out;
	fifo  col_fifo_0 (
		.clk (clk),
		.rstn (rstn),
		.w_en (col_fifo_0_w_en),
		.r_en (col_fifo_0_r_en),
		.in_data (in_col_0),
		.out_data (col_fifo_0_out),
		.full (col_fifo_0_full),
		.empty(col_fifo_0_empty)
	);
	wire signed [DATA_WIDTH-1:0] col_fifo_1_out;
	fifo  col_fifo_1 (
		.clk (clk),
		.rstn (rstn),
		.w_en (col_fifo_1_w_en),
		.r_en (col_fifo_1_r_en),
		.in_data (in_col_1),
		.out_data (col_fifo_1_out),
		.full (col_fifo_1_full),
		.empty(col_fifo_1_empty)
	);
	////////////////////////////////////////////////////
	// MAC PE Instantiations
	////////////////////////////////////////////////////
	wire out_row_0_0;
	wire signed [DATA_WIDTH-1:0] out_col_0_0;
	spiking_pe spiking_pe_0_0 (
		.clk (clk),
		.rstn (rstn),
		.in_row (row_fifo_0_out),
		.in_col (col_fifo_0_out),
		.out_row (out_row_0_0),
		.out_col (out_col_0_0),
		.out_data (out_data_0_0)
	);
	wire out_row_0_1;
	wire signed [DATA_WIDTH-1:0] out_col_0_1;
	spiking_pe spiking_pe_0_1 (
		.clk (clk),
		.rstn (rstn),
		.in_row (out_row_0_0),
		.in_col (col_fifo_1_out),
		.out_row (out_row_0_1),
		.out_col (out_col_0_1),
		.out_data (out_data_0_1)
	);
	wire out_row_1_0;
	wire signed [DATA_WIDTH-1:0] out_col_1_0;
	spiking_pe spiking_pe_1_0 (
		.clk (clk),
		.rstn (rstn),
		.in_row (row_fifo_1_out),
		.in_col (out_col_0_0),
		.out_row (out_row_1_0),
		.out_col (out_col_1_0),
		.out_data (out_data_1_0)
	);
	wire out_row_1_1;
	wire signed [DATA_WIDTH-1:0] out_col_1_1;
	spiking_pe spiking_pe_1_1 (
		.clk (clk),
		.rstn (rstn),
		.in_row (out_row_1_0),
		.in_col (out_col_0_1),
		.out_row (out_row_1_1),
		.out_col (out_col_1_1),
		.out_data (out_data_1_1)
	);

endmodule
