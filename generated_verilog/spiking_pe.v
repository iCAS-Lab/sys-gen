`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: TODO
// Engineer: TODO
//
// Create Date: 2024-08-16 13:21:50.327580
// Target Devices: TODO
// Tool Versions: TODO
// Description: TODO
//
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////
module spiking_pe #(parameter DATA_WIDTH=16)
(
    input clk,
    input rstn,
    input in_row,
    input signed [DATA_WIDTH-1:0] in_col,
    output reg signed [DATA_WIDTH-1:0] out_data
    output reg out_row,
    output reg signed [DATA_WIDTH-1:0] out_col
);

    // Integrate spikes into membrane potential
    always @ (posedge clk) begin
        // Reset logic
        if (! rstn) begin
            membrane_potential <= 0;
        end
        else if (in_row) begin
            membrane_potential <= membrane_potential + in_col;
        end
        else
            membrane_potential <= membrane_potential;
    end

endmodule
