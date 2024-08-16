`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: TODO
// Engineer: TODO
//
// Create Date: 2024-08-16 13:04:58.031819
// Target Devices: TODO
// Tool Versions: TODO
// Description: TODO
//
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////
module fifo #(parameter DEPTH=8, DATA_WIDTH=16) 
(
    input clk, rstn,
    input w_en, r_en,
    input [DATA_WIDTH-1:0] in_data,
    output reg [DATA_WIDTH-1:0] out_data = 0,
    output full, empty
);

    reg [$clog2(DEPTH)-1:0] w_ptr, r_ptr;
    reg [DATA_WIDTH-1:0] fifo[DEPTH-1:0];

    // Write enabled and not full
    always @ (posedge clk) begin
        if (! rstn) begin
            w_ptr <= 0;
        end
        else if (w_en & ! full) begin
            fifo[w_ptr] <= in_data;
            w_ptr <= w_ptr + 1;
        end
    end

    // Read enabled and not empty
    always @ (posedge clk) begin
        if (! rstn) begin
            out_data <= 0;
            r_ptr <= 0;
        end
        else if (r_en & ! empty) begin
            out_data <= fifo[r_ptr];
            r_ptr <= r_ptr + 1;
        end
    end
    
    // Evaluate if full and empty should be set
    assign full = ((w_ptr + 1'b1) == r_ptr);
    assign empty = (w_ptr == r_ptr);

endmodule
