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
module accumulator_element #(parameter TIMER_WIDTH=5)
(
    input clk, rstn,
    input spike,
    output reg [TIMER_WIDTH-1:0] accumulated_spikes
);

    always @ (posedge clk) begin
        if (! rstn) begin
            accumulated_spikes <= 0;
        end
        else if (spike) begin
            accumulated_spikes <= accumulated_spikes + 1;
        end
    end

endmodule
