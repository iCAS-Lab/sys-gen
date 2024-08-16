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
module integer_mac_pe #(parameter DATA_WIDTH=16)
(
    input clk, rstn,
    input signed [DATA_WIDTH-1:0] in_row,
    input signed [DATA_WIDTH-1:0] in_col,
    output reg signed [DATA_WIDTH-1:0] out_row = 0,
    output reg signed [DATA_WIDTH-1:0] out_col = 0,
    output reg signed [DATA_WIDTH-1:0] out_data = 0
);

    always @ (posedge clk or negedge rstn) begin
        if (! rstn) begin
            out_data <= 0;
            out_row <= 0;
            out_col <= 0;
        end
        else
            out_data <= out_data + (in_row * in_col);
            out_row <= in_row;
            out_col <= in_col;
    end

endmodule
