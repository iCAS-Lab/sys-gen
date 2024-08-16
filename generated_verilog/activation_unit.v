`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: TODO
// Engineer: TODO
//
// Create Date: 2024-08-16 14:00:33.295960
// Target Devices: TODO
// Tool Versions: TODO
// Description: TODO
//
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////
module activation_unit #(parameter DATA_WIDTH=16, TIMER_WIDTH=5)
(
    input clk, rstn,
	input signed [DATA_WIDTH-1:0] threshold_0,
	input [DATA_WIDTH-1:0] membrane_potential_0,
	input signed [DATA_WIDTH-1:0] threshold_1,
	input [DATA_WIDTH-1:0] membrane_potential_1,
	input signed [DATA_WIDTH-1:0] threshold_2,
	input [DATA_WIDTH-1:0] membrane_potential_2,
	output [TIMER_WIDTH-1:0] accumulated_spikes_0,
	output [TIMER_WIDTH-1:0] accumulated_spikes_1,
	output [TIMER_WIDTH-1:0] accumulated_spikes_2
);
	wire threshold_to_accumulator_0;
	activation_element activation_element_0 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_0),
		.threshold (threshold_0),
		.spike (spike),
		.accumulated_spikes (accumulated_spikes_0)
	);
	wire threshold_to_accumulator_1;
	activation_element activation_element_1 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_1),
		.threshold (threshold_1),
		.spike (spike),
		.accumulated_spikes (accumulated_spikes_1)
	);
	wire threshold_to_accumulator_2;
	activation_element activation_element_2 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_2),
		.threshold (threshold_2),
		.spike (spike),
		.accumulated_spikes (accumulated_spikes_2)
	);

endmodule
