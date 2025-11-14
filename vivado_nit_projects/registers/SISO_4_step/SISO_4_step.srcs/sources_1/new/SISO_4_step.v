`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 02:16:46 PM
// Design Name: 
// Module Name: SISO_4_step
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


module SISO_4_step(
    input S_in, clk, rst,
    output S_out
    );
    
    wire d_01, d_12, d_23;
    
    d_flipflop inst0 (
        .d_in(S_in),
        .clk(clk),
        .rst(rst),
        .en(1'b1),
        .d_out(d_01)
   ); 
   
   d_flipflop inst1 (
        .d_in(d_01),
        .clk(clk),
        .rst(rst),
        .en(1'b1),
        .d_out(d_12)
   ); 
   
   d_flipflop inst2 (
        .d_in(d_12),
        .clk(clk),
        .rst(rst),
        .en(1'b1),
        .d_out(d_23)
   ); 
   
   d_flipflop inst3 (
        .d_in(d_23),
        .clk(clk),
        .rst(rst),
        .en(1'b1),
        .d_out(S_out)
   ); 
endmodule
