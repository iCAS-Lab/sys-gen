`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: TODO
// Engineer: TODO
//
// Create Date: 2024-08-16 14:40:45.837331
// Target Devices: TODO
// Tool Versions: TODO
// Description: TODO
//
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////
module activation_unit_32 #(parameter DATA_WIDTH=16, TIMER_WIDTH=5)
(
    input clk, rstn,
	input signed [DATA_WIDTH-1:0] threshold_0,
	input [DATA_WIDTH-1:0] membrane_potential_0,
	input signed [DATA_WIDTH-1:0] threshold_1,
	input [DATA_WIDTH-1:0] membrane_potential_1,
	input signed [DATA_WIDTH-1:0] threshold_2,
	input [DATA_WIDTH-1:0] membrane_potential_2,
	input signed [DATA_WIDTH-1:0] threshold_3,
	input [DATA_WIDTH-1:0] membrane_potential_3,
	input signed [DATA_WIDTH-1:0] threshold_4,
	input [DATA_WIDTH-1:0] membrane_potential_4,
	input signed [DATA_WIDTH-1:0] threshold_5,
	input [DATA_WIDTH-1:0] membrane_potential_5,
	input signed [DATA_WIDTH-1:0] threshold_6,
	input [DATA_WIDTH-1:0] membrane_potential_6,
	input signed [DATA_WIDTH-1:0] threshold_7,
	input [DATA_WIDTH-1:0] membrane_potential_7,
	input signed [DATA_WIDTH-1:0] threshold_8,
	input [DATA_WIDTH-1:0] membrane_potential_8,
	input signed [DATA_WIDTH-1:0] threshold_9,
	input [DATA_WIDTH-1:0] membrane_potential_9,
	input signed [DATA_WIDTH-1:0] threshold_10,
	input [DATA_WIDTH-1:0] membrane_potential_10,
	input signed [DATA_WIDTH-1:0] threshold_11,
	input [DATA_WIDTH-1:0] membrane_potential_11,
	input signed [DATA_WIDTH-1:0] threshold_12,
	input [DATA_WIDTH-1:0] membrane_potential_12,
	input signed [DATA_WIDTH-1:0] threshold_13,
	input [DATA_WIDTH-1:0] membrane_potential_13,
	input signed [DATA_WIDTH-1:0] threshold_14,
	input [DATA_WIDTH-1:0] membrane_potential_14,
	input signed [DATA_WIDTH-1:0] threshold_15,
	input [DATA_WIDTH-1:0] membrane_potential_15,
	input signed [DATA_WIDTH-1:0] threshold_16,
	input [DATA_WIDTH-1:0] membrane_potential_16,
	input signed [DATA_WIDTH-1:0] threshold_17,
	input [DATA_WIDTH-1:0] membrane_potential_17,
	input signed [DATA_WIDTH-1:0] threshold_18,
	input [DATA_WIDTH-1:0] membrane_potential_18,
	input signed [DATA_WIDTH-1:0] threshold_19,
	input [DATA_WIDTH-1:0] membrane_potential_19,
	input signed [DATA_WIDTH-1:0] threshold_20,
	input [DATA_WIDTH-1:0] membrane_potential_20,
	input signed [DATA_WIDTH-1:0] threshold_21,
	input [DATA_WIDTH-1:0] membrane_potential_21,
	input signed [DATA_WIDTH-1:0] threshold_22,
	input [DATA_WIDTH-1:0] membrane_potential_22,
	input signed [DATA_WIDTH-1:0] threshold_23,
	input [DATA_WIDTH-1:0] membrane_potential_23,
	input signed [DATA_WIDTH-1:0] threshold_24,
	input [DATA_WIDTH-1:0] membrane_potential_24,
	input signed [DATA_WIDTH-1:0] threshold_25,
	input [DATA_WIDTH-1:0] membrane_potential_25,
	input signed [DATA_WIDTH-1:0] threshold_26,
	input [DATA_WIDTH-1:0] membrane_potential_26,
	input signed [DATA_WIDTH-1:0] threshold_27,
	input [DATA_WIDTH-1:0] membrane_potential_27,
	input signed [DATA_WIDTH-1:0] threshold_28,
	input [DATA_WIDTH-1:0] membrane_potential_28,
	input signed [DATA_WIDTH-1:0] threshold_29,
	input [DATA_WIDTH-1:0] membrane_potential_29,
	input signed [DATA_WIDTH-1:0] threshold_30,
	input [DATA_WIDTH-1:0] membrane_potential_30,
	input signed [DATA_WIDTH-1:0] threshold_31,
	input [DATA_WIDTH-1:0] membrane_potential_31,
	output [TIMER_WIDTH-1:0] accumulated_spikes_0,
	output out_spike_0,
	output [TIMER_WIDTH-1:0] accumulated_spikes_1,
	output out_spike_1,
	output [TIMER_WIDTH-1:0] accumulated_spikes_2,
	output out_spike_2,
	output [TIMER_WIDTH-1:0] accumulated_spikes_3,
	output out_spike_3,
	output [TIMER_WIDTH-1:0] accumulated_spikes_4,
	output out_spike_4,
	output [TIMER_WIDTH-1:0] accumulated_spikes_5,
	output out_spike_5,
	output [TIMER_WIDTH-1:0] accumulated_spikes_6,
	output out_spike_6,
	output [TIMER_WIDTH-1:0] accumulated_spikes_7,
	output out_spike_7,
	output [TIMER_WIDTH-1:0] accumulated_spikes_8,
	output out_spike_8,
	output [TIMER_WIDTH-1:0] accumulated_spikes_9,
	output out_spike_9,
	output [TIMER_WIDTH-1:0] accumulated_spikes_10,
	output out_spike_10,
	output [TIMER_WIDTH-1:0] accumulated_spikes_11,
	output out_spike_11,
	output [TIMER_WIDTH-1:0] accumulated_spikes_12,
	output out_spike_12,
	output [TIMER_WIDTH-1:0] accumulated_spikes_13,
	output out_spike_13,
	output [TIMER_WIDTH-1:0] accumulated_spikes_14,
	output out_spike_14,
	output [TIMER_WIDTH-1:0] accumulated_spikes_15,
	output out_spike_15,
	output [TIMER_WIDTH-1:0] accumulated_spikes_16,
	output out_spike_16,
	output [TIMER_WIDTH-1:0] accumulated_spikes_17,
	output out_spike_17,
	output [TIMER_WIDTH-1:0] accumulated_spikes_18,
	output out_spike_18,
	output [TIMER_WIDTH-1:0] accumulated_spikes_19,
	output out_spike_19,
	output [TIMER_WIDTH-1:0] accumulated_spikes_20,
	output out_spike_20,
	output [TIMER_WIDTH-1:0] accumulated_spikes_21,
	output out_spike_21,
	output [TIMER_WIDTH-1:0] accumulated_spikes_22,
	output out_spike_22,
	output [TIMER_WIDTH-1:0] accumulated_spikes_23,
	output out_spike_23,
	output [TIMER_WIDTH-1:0] accumulated_spikes_24,
	output out_spike_24,
	output [TIMER_WIDTH-1:0] accumulated_spikes_25,
	output out_spike_25,
	output [TIMER_WIDTH-1:0] accumulated_spikes_26,
	output out_spike_26,
	output [TIMER_WIDTH-1:0] accumulated_spikes_27,
	output out_spike_27,
	output [TIMER_WIDTH-1:0] accumulated_spikes_28,
	output out_spike_28,
	output [TIMER_WIDTH-1:0] accumulated_spikes_29,
	output out_spike_29,
	output [TIMER_WIDTH-1:0] accumulated_spikes_30,
	output out_spike_30,
	output [TIMER_WIDTH-1:0] accumulated_spikes_31,
	output out_spike_31
);
	wire threshold_to_accumulator_0;
	activation_element activation_element_0 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_0),
		.threshold (threshold_0),
		.spike (out_spike_0),
		.accumulated_spikes (accumulated_spikes_0)
	);
	wire threshold_to_accumulator_1;
	activation_element activation_element_1 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_1),
		.threshold (threshold_1),
		.spike (out_spike_1),
		.accumulated_spikes (accumulated_spikes_1)
	);
	wire threshold_to_accumulator_2;
	activation_element activation_element_2 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_2),
		.threshold (threshold_2),
		.spike (out_spike_2),
		.accumulated_spikes (accumulated_spikes_2)
	);
	wire threshold_to_accumulator_3;
	activation_element activation_element_3 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_3),
		.threshold (threshold_3),
		.spike (out_spike_3),
		.accumulated_spikes (accumulated_spikes_3)
	);
	wire threshold_to_accumulator_4;
	activation_element activation_element_4 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_4),
		.threshold (threshold_4),
		.spike (out_spike_4),
		.accumulated_spikes (accumulated_spikes_4)
	);
	wire threshold_to_accumulator_5;
	activation_element activation_element_5 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_5),
		.threshold (threshold_5),
		.spike (out_spike_5),
		.accumulated_spikes (accumulated_spikes_5)
	);
	wire threshold_to_accumulator_6;
	activation_element activation_element_6 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_6),
		.threshold (threshold_6),
		.spike (out_spike_6),
		.accumulated_spikes (accumulated_spikes_6)
	);
	wire threshold_to_accumulator_7;
	activation_element activation_element_7 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_7),
		.threshold (threshold_7),
		.spike (out_spike_7),
		.accumulated_spikes (accumulated_spikes_7)
	);
	wire threshold_to_accumulator_8;
	activation_element activation_element_8 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_8),
		.threshold (threshold_8),
		.spike (out_spike_8),
		.accumulated_spikes (accumulated_spikes_8)
	);
	wire threshold_to_accumulator_9;
	activation_element activation_element_9 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_9),
		.threshold (threshold_9),
		.spike (out_spike_9),
		.accumulated_spikes (accumulated_spikes_9)
	);
	wire threshold_to_accumulator_10;
	activation_element activation_element_10 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_10),
		.threshold (threshold_10),
		.spike (out_spike_10),
		.accumulated_spikes (accumulated_spikes_10)
	);
	wire threshold_to_accumulator_11;
	activation_element activation_element_11 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_11),
		.threshold (threshold_11),
		.spike (out_spike_11),
		.accumulated_spikes (accumulated_spikes_11)
	);
	wire threshold_to_accumulator_12;
	activation_element activation_element_12 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_12),
		.threshold (threshold_12),
		.spike (out_spike_12),
		.accumulated_spikes (accumulated_spikes_12)
	);
	wire threshold_to_accumulator_13;
	activation_element activation_element_13 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_13),
		.threshold (threshold_13),
		.spike (out_spike_13),
		.accumulated_spikes (accumulated_spikes_13)
	);
	wire threshold_to_accumulator_14;
	activation_element activation_element_14 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_14),
		.threshold (threshold_14),
		.spike (out_spike_14),
		.accumulated_spikes (accumulated_spikes_14)
	);
	wire threshold_to_accumulator_15;
	activation_element activation_element_15 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_15),
		.threshold (threshold_15),
		.spike (out_spike_15),
		.accumulated_spikes (accumulated_spikes_15)
	);
	wire threshold_to_accumulator_16;
	activation_element activation_element_16 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_16),
		.threshold (threshold_16),
		.spike (out_spike_16),
		.accumulated_spikes (accumulated_spikes_16)
	);
	wire threshold_to_accumulator_17;
	activation_element activation_element_17 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_17),
		.threshold (threshold_17),
		.spike (out_spike_17),
		.accumulated_spikes (accumulated_spikes_17)
	);
	wire threshold_to_accumulator_18;
	activation_element activation_element_18 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_18),
		.threshold (threshold_18),
		.spike (out_spike_18),
		.accumulated_spikes (accumulated_spikes_18)
	);
	wire threshold_to_accumulator_19;
	activation_element activation_element_19 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_19),
		.threshold (threshold_19),
		.spike (out_spike_19),
		.accumulated_spikes (accumulated_spikes_19)
	);
	wire threshold_to_accumulator_20;
	activation_element activation_element_20 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_20),
		.threshold (threshold_20),
		.spike (out_spike_20),
		.accumulated_spikes (accumulated_spikes_20)
	);
	wire threshold_to_accumulator_21;
	activation_element activation_element_21 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_21),
		.threshold (threshold_21),
		.spike (out_spike_21),
		.accumulated_spikes (accumulated_spikes_21)
	);
	wire threshold_to_accumulator_22;
	activation_element activation_element_22 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_22),
		.threshold (threshold_22),
		.spike (out_spike_22),
		.accumulated_spikes (accumulated_spikes_22)
	);
	wire threshold_to_accumulator_23;
	activation_element activation_element_23 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_23),
		.threshold (threshold_23),
		.spike (out_spike_23),
		.accumulated_spikes (accumulated_spikes_23)
	);
	wire threshold_to_accumulator_24;
	activation_element activation_element_24 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_24),
		.threshold (threshold_24),
		.spike (out_spike_24),
		.accumulated_spikes (accumulated_spikes_24)
	);
	wire threshold_to_accumulator_25;
	activation_element activation_element_25 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_25),
		.threshold (threshold_25),
		.spike (out_spike_25),
		.accumulated_spikes (accumulated_spikes_25)
	);
	wire threshold_to_accumulator_26;
	activation_element activation_element_26 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_26),
		.threshold (threshold_26),
		.spike (out_spike_26),
		.accumulated_spikes (accumulated_spikes_26)
	);
	wire threshold_to_accumulator_27;
	activation_element activation_element_27 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_27),
		.threshold (threshold_27),
		.spike (out_spike_27),
		.accumulated_spikes (accumulated_spikes_27)
	);
	wire threshold_to_accumulator_28;
	activation_element activation_element_28 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_28),
		.threshold (threshold_28),
		.spike (out_spike_28),
		.accumulated_spikes (accumulated_spikes_28)
	);
	wire threshold_to_accumulator_29;
	activation_element activation_element_29 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_29),
		.threshold (threshold_29),
		.spike (out_spike_29),
		.accumulated_spikes (accumulated_spikes_29)
	);
	wire threshold_to_accumulator_30;
	activation_element activation_element_30 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_30),
		.threshold (threshold_30),
		.spike (out_spike_30),
		.accumulated_spikes (accumulated_spikes_30)
	);
	wire threshold_to_accumulator_31;
	activation_element activation_element_31 (
		.clk (clk),
		.rstn (rstn),
		.membrane_potential (membrane_potential_31),
		.threshold (threshold_31),
		.spike (out_spike_31),
		.accumulated_spikes (accumulated_spikes_31)
	);

endmodule
