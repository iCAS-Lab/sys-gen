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
module tb_threshold_element;
  reg clk;
  reg rstn;
  reg signed [15:0] membrane_potential = 0;
  reg signed [15:0] threshold = 10;
  wire spike;

  threshold_element te (
    .membrane_potential (membrane_potential),
    .threshold (threshold),
    .spike (spike)
  );

  always #1 clk = ~clk;

  always @ (posedge clk) begin
    membrane_potential <= membrane_potential + 1;
  end

  initial begin
    clk <= 0;
    rstn <= 0;
    #2 rstn <= 1;
  end

endmodule