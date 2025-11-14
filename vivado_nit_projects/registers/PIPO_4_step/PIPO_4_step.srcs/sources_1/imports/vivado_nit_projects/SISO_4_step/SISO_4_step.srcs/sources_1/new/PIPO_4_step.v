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


module PIPO_4_step(
    input [15:0] P_in, 
    input clk, rst,
    output [15:0] P_out
    );
    
    wire [15:0] d_01, d_12, d_23;
    
    nbit_dreg inst0 (
        .d_in(P_in),
        .clk(clk),
        .rst(rst),
        .en(1'b1),
        .d_out(d_01)
   ); 
   
   nbit_dreg inst1 (
        .d_in(d_01),
        .clk(clk),
        .rst(rst),
        .en(1'b1),
        .d_out(d_12)
   ); 
   
   nbit_dreg inst2 (
        .d_in(d_12),
        .clk(clk),
        .rst(rst),
        .en(1'b1),
        .d_out(d_23)
   ); 
   
   nbit_dreg inst3 (
        .d_in(d_23),
        .clk(clk),
        .rst(rst),
        .en(1'b1),
        .d_out(P_out)
   ); 
endmodule
