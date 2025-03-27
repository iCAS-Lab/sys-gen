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
module activation_element #(parameter DATA_WIDTH=16, TIMER_WIDTH=5)
(
    input clk, rstn,
    input signed [DATA_WIDTH-1:0] membrane_potential,
    input signed [DATA_WIDTH-1:0] in_threshold,
    output spike,
    output signed [TIMER_WIDTH-1:0] accumulated_spikes
);
	threshold_element threshold (
		.membrane_potential (membrane_potential),
		.threshold (in_threshold),
		.spike (spike)
	);
	accumulator_element accumulator (
		.clk (clk),
		.rstn (rstn),
		.spike (spike),
		.accumulated_spikes (accumulated_spikes)
	);

endmodule
