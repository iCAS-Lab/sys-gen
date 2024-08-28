`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: TODO
// Engineer: TODO
//
// Create Date: 2024-08-27 18:00:11.101809
// Target Devices: TODO
// Tool Versions: TODO
// Description: TODO
//
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////
module tb_activation_unit;
  reg clk;
  reg rstn;
  reg signed [15:0] threshold_0 = 32;
  reg signed [15:0] threshold_1 = 16;
  reg signed [15:0] membrane_potential_0;
  reg signed [15:0] membrane_potential_1;
  wire spike_0;
  wire spike_1;
  wire [4:0] accumulated_spikes_0;
  wire [4:0] accumulated_spikes_1;

  activation_unit_2 au2 (
    .clk (clk),
    .rstn (rstn),
    .threshold_0 (threshold_0),
    .membrane_potential_0 (membrane_potential_0),
    .threshold_1 (threshold_1),
    .membrane_potential_1 (membrane_potential_1),
    .accumulated_spikes_0 (accumulated_spikes_0),
    .out_spike_0 (spike_0),
    .accumulated_spikes_1 (accumulated_spikes_1),
    .out_spike_1 (spike_1)
  );

  integer seed = 123;
  
  always #1 clk = ~clk;

  always @ (posedge clk) begin
    membrane_potential_0 <= $random % 64;
    membrane_potential_1 <= $random % 32;
  end

  initial begin
    clk <= 0;
    rstn <= 0;
    #2 rstn <= 1;
  end
endmodule