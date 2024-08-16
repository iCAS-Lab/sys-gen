`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: TODO
// Engineer: TODO
//
// Create Date: 2024-08-16 13:10:13.267298
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

endmodule
