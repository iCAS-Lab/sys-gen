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
    always @ (posedge clk or negedge rstn) begin
        // Reset logic
        if (! rstn) begin
            out_data <= 0;
        end
        else if (in_row) begin
            out_data <= out_data + in_col;
        end
        else
            out_data <= out_data;
    end

endmodule
