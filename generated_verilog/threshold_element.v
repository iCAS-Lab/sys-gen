`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: TODO
// Engineer: TODO
//
// Create Date: 2024-08-16 13:55:25.267538
// Target Devices: TODO
// Tool Versions: TODO
// Description: TODO
//
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////
module threshold_element #(parameter DATA_WIDTH=16)
(
    input signed [DATA_WIDTH-1:0] membrane_potential,
    input signed [DATA_WIDTH-1:0] threshold,
    output spike
);

    assign spike = (membrane_potential >= threshold) ? 1 : 0;

endmodule
