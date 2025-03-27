`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: TODO
// Engineer: TODO
//
// Create Date: 2025-03-27 13:29:30.129470
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
    output reg signed [DATA_WIDTH-1:0] out_data,
    output reg out_row,
    output reg signed [DATA_WIDTH-1:0] out_col
);

    // Integrate spikes into membrane potential
    always @ (posedge clk) begin
        // Reset logic
        if (! rstn) begin
            out_data <= 0;
            out_row <= 0;
            out_col <= 0;
        end
        else if (in_row) begin
            out_data <= out_data + in_col;
        end
        out_row <= in_row;
        out_col <= in_col;
    end

endmodule
