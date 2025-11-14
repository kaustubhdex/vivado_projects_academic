`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 04:53:05 PM
// Design Name: 
// Module Name: mux_8to1
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


module mux_8to1(
    input [2:0] sel_mux_8to1,
    input [7:0] in_mux_8to1,
    output reg out_mux_8to1
    );
    
    always @(sel_mux_8to1, in_mux_8to1)
      case (sel_mux_8to1)
         3'b000: out_mux_8to1 <= in_mux_8to1[0];
         3'b001: out_mux_8to1 <= in_mux_8to1[1];
         3'b010: out_mux_8to1 <= in_mux_8to1[2];
         3'b011: out_mux_8to1 <= in_mux_8to1[3];
         3'b100: out_mux_8to1 <= in_mux_8to1[4];
         3'b101: out_mux_8to1 <= in_mux_8to1[5];
         3'b110: out_mux_8to1 <= in_mux_8to1[6];
         3'b111: out_mux_8to1 <= in_mux_8to1[7];
      endcase
endmodule
