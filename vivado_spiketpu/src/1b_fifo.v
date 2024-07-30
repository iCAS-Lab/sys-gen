`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2024 02:14:02 PM
// Design Name: 
// Module Name: adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module 16b_fifo #(parameter DEPTH=8, DATA_WIDTH=1) (
    input clk, rstn,
    input w_en, r_en,
    input [DATA_WIDTH-1:0] in_weight,
    output reg [DATA_WIDTH-1:0] out_weight,
    output full, empty
);

reg [$clog2(DEPTH)] w_ptr, r_ptr;
reg [DATA_WIDTH-1:0] fifo[DEPTH];

    // Reset
    always @ (posedge clk) begin
        if (! rstn) begin
            w_ptr <= 0;
            r_ptr <= 0;
            weight_out <= 0;
        end
    end

    // Write enabled and not full
    always @ (posedge clk) begin
        if (w_en & ! full) begin
            fifo[w_ptr] <= data_in;
            w_ptr <= w_ptr + 1;
        end
    end

    // Read enabled and not empty
    always @ (posedge clk) begin
        if (r_en & ! empty) begin
            data_out <= fifo[r_ptr];
            r_ptr <= r_ptr + 1;
        end
    end
    
    // Evalutate if full and empty should be set
    assign full = ((w_ptr + 1'b1) == r_ptr);
    assign empty = (w_ptr == r_ptr);

endmodule