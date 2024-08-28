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
module tb_accumulator_element;
  reg clk;
  reg rstn;
  reg spike;
  wire [15:0] accumulated_spikes;

  integer seed = 123;

  accumulator_element ae (
    .clk (clk),
    .rstn (rstn),
    .spike (spike),
    .accumulated_spikes (accumulated_spikes)
  );

  always #1 clk = ~clk;

  always @ (posedge clk) begin
    spike <= $random(seed)%2;
  end

  initial begin
    clk <= 0;
    rstn <= 0;
    #2 rstn <= 1;
  end
endmodule