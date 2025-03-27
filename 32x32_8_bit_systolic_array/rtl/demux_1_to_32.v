`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: TODO
// Engineer: TODO
//
// Create Date: 2025-03-27 13:29:30.129470
// Target Devices: TODO
// Tool Versions: TODO
// Description: TODO
//
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////
module demux_1_to_32 #(parameter SELECT_WIDTH=5, DATA_WIDTH=16) 
(
  input [SELECT_WIDTH-1:0] select,
	input signed [DATA_WIDTH-1:0] in_data,
	output reg signed [DATA_WIDTH-1:0] out_data_0,
	output reg signed [DATA_WIDTH-1:0] out_data_1,
	output reg signed [DATA_WIDTH-1:0] out_data_2,
	output reg signed [DATA_WIDTH-1:0] out_data_3,
	output reg signed [DATA_WIDTH-1:0] out_data_4,
	output reg signed [DATA_WIDTH-1:0] out_data_5,
	output reg signed [DATA_WIDTH-1:0] out_data_6,
	output reg signed [DATA_WIDTH-1:0] out_data_7,
	output reg signed [DATA_WIDTH-1:0] out_data_8,
	output reg signed [DATA_WIDTH-1:0] out_data_9,
	output reg signed [DATA_WIDTH-1:0] out_data_10,
	output reg signed [DATA_WIDTH-1:0] out_data_11,
	output reg signed [DATA_WIDTH-1:0] out_data_12,
	output reg signed [DATA_WIDTH-1:0] out_data_13,
	output reg signed [DATA_WIDTH-1:0] out_data_14,
	output reg signed [DATA_WIDTH-1:0] out_data_15,
	output reg signed [DATA_WIDTH-1:0] out_data_16,
	output reg signed [DATA_WIDTH-1:0] out_data_17,
	output reg signed [DATA_WIDTH-1:0] out_data_18,
	output reg signed [DATA_WIDTH-1:0] out_data_19,
	output reg signed [DATA_WIDTH-1:0] out_data_20,
	output reg signed [DATA_WIDTH-1:0] out_data_21,
	output reg signed [DATA_WIDTH-1:0] out_data_22,
	output reg signed [DATA_WIDTH-1:0] out_data_23,
	output reg signed [DATA_WIDTH-1:0] out_data_24,
	output reg signed [DATA_WIDTH-1:0] out_data_25,
	output reg signed [DATA_WIDTH-1:0] out_data_26,
	output reg signed [DATA_WIDTH-1:0] out_data_27,
	output reg signed [DATA_WIDTH-1:0] out_data_28,
	output reg signed [DATA_WIDTH-1:0] out_data_29,
	output reg signed [DATA_WIDTH-1:0] out_data_30,
	output reg signed [DATA_WIDTH-1:0] out_data_31
);

  // Perform mux operation
  always @ (select) begin
    case (select)
			5'b00000 : out_data_0 <= in_data;
			5'b00001 : out_data_1 <= in_data;
			5'b00010 : out_data_2 <= in_data;
			5'b00011 : out_data_3 <= in_data;
			5'b00100 : out_data_4 <= in_data;
			5'b00101 : out_data_5 <= in_data;
			5'b00110 : out_data_6 <= in_data;
			5'b00111 : out_data_7 <= in_data;
			5'b01000 : out_data_8 <= in_data;
			5'b01001 : out_data_9 <= in_data;
			5'b01010 : out_data_10 <= in_data;
			5'b01011 : out_data_11 <= in_data;
			5'b01100 : out_data_12 <= in_data;
			5'b01101 : out_data_13 <= in_data;
			5'b01110 : out_data_14 <= in_data;
			5'b01111 : out_data_15 <= in_data;
			5'b10000 : out_data_16 <= in_data;
			5'b10001 : out_data_17 <= in_data;
			5'b10010 : out_data_18 <= in_data;
			5'b10011 : out_data_19 <= in_data;
			5'b10100 : out_data_20 <= in_data;
			5'b10101 : out_data_21 <= in_data;
			5'b10110 : out_data_22 <= in_data;
			5'b10111 : out_data_23 <= in_data;
			5'b11000 : out_data_24 <= in_data;
			5'b11001 : out_data_25 <= in_data;
			5'b11010 : out_data_26 <= in_data;
			5'b11011 : out_data_27 <= in_data;
			5'b11100 : out_data_28 <= in_data;
			5'b11101 : out_data_29 <= in_data;
			5'b11110 : out_data_30 <= in_data;
			5'b11111 : out_data_31 <= in_data;
  endcase
end

endmodule
