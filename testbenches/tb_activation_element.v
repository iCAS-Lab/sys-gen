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
module tb_activation_element;
  reg clk;
  reg rstn;
  reg signed [15:0] membrane_potential;
  reg signed [15:0] in_threshold = 32;
  wire spike;
  wire signed [15:0] accumulated_spikes;

  integer seed = 123;

  activation_element ae (
    .clk (clk),
    .rstn (rstn),
    .membrane_potential (membrane_potential),
    .in_threshold (in_threshold),
    .spike (spike),
    .accumulated_spikes (accumulated_spikes)
  );

  always #1 clk = ~clk;
  
  always @ (posedge clk) begin
    membrane_potential <= $random(seed) % 64;
  end

  initial begin
    clk <= 0;
    rstn <= 0;
    #2 rstn <= 1;
  end
endmodule