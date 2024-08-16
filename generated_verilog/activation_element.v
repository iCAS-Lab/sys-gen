`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: TODO
// Engineer: TODO
//
// Create Date: 2024-08-16 13:04:58.031819
// Target Devices: TODO
// Tool Versions: TODO
// Description: TODO
//
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////
module activation_element#(parameter DATA_WIDTH=16)
(
    input clk, rstn,
    input reset_accumulated_spikes,
    input signed [DATA_WIDTH-1:0] membrane_potential,
    input signed [DATA_WIDTH-1:0] threshold,
    output signed [DATA_WIDTH-1:0] accumulated_spikes
);
	threshold_element threshold_0 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_0),
		.threshold (threshold_0),
		.spike (spike_0)
	);
	accumulator_element accumulator_0 (
		.clk (clk),
		.rstn (rstn),
		.reset_accumulation (reset_accumulated_spikes),
		.spike (spike_0),
		.accumulated_spikes (accumulated_spikes_0)
	);
	threshold_element threshold_1 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_1),
		.threshold (threshold_1),
		.spike (spike_1)
	);
	accumulator_element accumulator_1 (
		.clk (clk),
		.rstn (rstn),
		.reset_accumulation (reset_accumulated_spikes),
		.spike (spike_1),
		.accumulated_spikes (accumulated_spikes_1)
	);
	threshold_element threshold_2 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_2),
		.threshold (threshold_2),
		.spike (spike_2)
	);
	accumulator_element accumulator_2 (
		.clk (clk),
		.rstn (rstn),
		.reset_accumulation (reset_accumulated_spikes),
		.spike (spike_2),
		.accumulated_spikes (accumulated_spikes_2)
	);

endmodule
