`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2025 06:55:33 PM
// Design Name: 
// Module Name: mux_4to1
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
// Name: Pawar Kaustubh Vijay
// Roll no: 25204121
module mux_4to1(
    input [3:0] a_in,
    input [1:0] sel,
    output reg mux_out
    );
   always @(sel, a_in)
      case (sel)
         2'b00: mux_out = a_in[0];
         2'b01: mux_out = a_in[1];
         2'b10: mux_out = a_in[2];
         2'b11: mux_out = a_in[3];
      endcase		
endmodule
