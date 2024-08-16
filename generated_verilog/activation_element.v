`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: TODO
// Engineer: TODO
//
// Create Date: 2024-08-16 13:37:01.400327
// Target Devices: TODO
// Tool Versions: TODO
// Description: TODO
//
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////
module activation_element #(parameter DATA_WIDTH=16)
(
    input clk, rstn,
    input signed [DATA_WIDTH-1:0] membrane_potential,
    input signed [DATA_WIDTH-1:0] threshold,
    output signed [DATA_WIDTH-1:0] accumulated_spikes
);
	threshold_element threshold_0 (
		.membrane_potential (membrane_potential),
		.threshold (threshold),
		.spike (spike)
	);
	accumulator_element accumulator (
		.clk (clk),
		.rstn (rstn),
		.spike (spike),
		.accumulated_spikes (accumulated_spikes_0)
	);

endmodule
