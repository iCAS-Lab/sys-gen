`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: TODO
// Engineer: TODO
//
// Create Date: 2024-08-16 12:55:05.323268
// Target Devices: TODO
// Tool Versions: TODO
// Description: TODO
//
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////
module activation_unit #(parameter DATA_WIDTH=16, TIMER_WIDTH=5)
(
    input clk, rstn,
    input [TIMER_WIDTH-1:0] accumulate_interval,
	input signed [DATA_WIDTH-1:0] threshold_0,
	input [DATA_WIDTH-1:0] membrane_potential_0,
	input signed [DATA_WIDTH-1:0] threshold_1,
	input [DATA_WIDTH-1:0] membrane_potential_1,
	input signed [DATA_WIDTH-1:0] threshold_2,
	input [DATA_WIDTH-1:0] membrane_potential_2,
	output [TIMER_WIDTH-1:0] out_wires_0,
	output [TIMER_WIDTH-1:0] out_wires_1,
	output [TIMER_WIDTH-1:0] out_wires_2
);

    reg [TIMER_WIDTH-1:0] timer;
    wire reset_accumulated_spikes;
    
    always @ (posedge clk or negedge rstn) begin
        if (! rstn) begin
            timer <= 0;
        end
    end

    // Reset the number of accumulated spikes if the interval has been reached
    assign reset_accumulated_spikes = (timer >= accumulate_interval) ? 1 : 0;

	wire threshold_to_accumulator_0;
	activation_element activation_element_0 (
		.clk (clk),
		.rstn (rstn),
		.reset_accumulated_spikes (reset_accumulated_spikes),
		.membrane_potential (membrane_potential_0),
		.threshold (threshold_0),
		.accumulated_spikes (accumulated_spikes_0)
	);
	wire threshold_to_accumulator_1;
	activation_element activation_element_1 (
		.clk (clk),
		.rstn (rstn),
		.reset_accumulated_spikes (reset_accumulated_spikes),
		.membrane_potential (membrane_potential_1),
		.threshold (threshold_1),
		.accumulated_spikes (accumulated_spikes_1)
	);
	wire threshold_to_accumulator_2;
	activation_element activation_element_2 (
		.clk (clk),
		.rstn (rstn),
		.reset_accumulated_spikes (reset_accumulated_spikes),
		.membrane_potential (membrane_potential_2),
		.threshold (threshold_2),
		.accumulated_spikes (accumulated_spikes_2)
	);

endmodule
