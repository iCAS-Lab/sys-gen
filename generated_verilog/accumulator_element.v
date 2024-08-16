`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: TODO
// Engineer: TODO
//
// Create Date: 2024-08-16 13:37:01.400327
// Target Devices: TODO
// Tool Versions: TODO
// Description: TODO
//
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////
module accumulator_element #(parameter DATA_WIDTH=16)
(
    input clk, rstn,
    input spike,
    output reg [DATA_WIDTH-1:0] accumulated_spikes
);

    always @ (posedge clk or negedge rstn) begin
        if (! rstn) begin
            accumulated_spikes <= 0;
        end
        else if (spike) begin
            accumulated_spikes <= accumulated_spikes + 1;
        end
    end

endmodule
