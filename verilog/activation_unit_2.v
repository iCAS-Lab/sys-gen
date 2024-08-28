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
module activation_unit_2 #(parameter DATA_WIDTH=16, TIMER_WIDTH=5)
(
  input clk, rstn,
	input signed [DATA_WIDTH-1:0] threshold_0,
	input signed [DATA_WIDTH-1:0] membrane_potential_0,
	input signed [DATA_WIDTH-1:0] threshold_1,
	input signed [DATA_WIDTH-1:0] membrane_potential_1,
	output [TIMER_WIDTH-1:0] accumulated_spikes_0,
	output out_spike_0,
	output [TIMER_WIDTH-1:0] accumulated_spikes_1,
	output out_spike_1
);
	activation_element activation_element_0 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_0),
		.in_threshold (threshold_0),
		.spike (out_spike_0),
		.accumulated_spikes (accumulated_spikes_0)
	);
	activation_element activation_element_1 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_1),
		.in_threshold (threshold_1),
		.spike (out_spike_1),
		.accumulated_spikes (accumulated_spikes_1)
	);

endmodule
