`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: MSIS Lab, CBNU
// Engineer: Mohammed E. Elbtity
// 
// Create Date: 04/23/2020 06:11:57 PM
// Design Name: 
// Module Name: mat_mult_unit
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


module mat_mult_unit #(
    
    parameter DW = 8,                   // Datawidth = Pixels data width 
    parameter WW = 8,                   // Wights width = parameters or factors width
    parameter M  = 3,                   // Number of Units in each column
    parameter OUTWIDTH= (DW+WW)+(M-1)           // Output width 

    )                 (
    input      signed   [DW-1:0]       pixel_data,               //Data 
    input      signed   [WW-1:0]       weight,                   // Weight
    input                              clk,rst_n,
    input                              refresh,                  // Refresh signal to start accumulating from the begining                
    output reg          [DW-1:0]       pypas_data,               // Data pypassing register
    output reg          [WW-1:0]       pypas_weight,             // Weight Pypassing register
    output reg signed   [OUTWIDTH-1:0] acc_result                // Result register

    );
    
    /* Multipling the coming image's data by filter's weight */
    wire signed [DW+WW-1:0] mult;
    assign mult = weight * pixel_data;
    
    /* Pypassing logic */ 
   always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin 
        pypas_data <= 'sd0; 
        pypas_weight <= 'sd0; 
    end else begin  
        pypas_data <= pixel_data; 
        pypas_weight <= weight; 
    end
   end      // always
    
    /* Acculmulating the result */ 
   always @(posedge clk or negedge rst_n) begin 
    if (!rst_n) begin 
        acc_result <= 'sd0;
    end else if (refresh) begin
        acc_result <= mult;
    end else begin 
        acc_result <= acc_result + mult;
    end  
   end                  //always 
    
endmodule
