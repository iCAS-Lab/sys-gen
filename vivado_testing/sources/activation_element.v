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
module activation_element #(parameter DATA_WIDTH=16)
(
    input clk, rstn,
    input signed [DATA_WIDTH-1:0] membrane_potential,
    input signed [DATA_WIDTH-1:0] in_threshold,
    output spike,
    output signed [DATA_WIDTH-1:0] accumulated_spikes
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
