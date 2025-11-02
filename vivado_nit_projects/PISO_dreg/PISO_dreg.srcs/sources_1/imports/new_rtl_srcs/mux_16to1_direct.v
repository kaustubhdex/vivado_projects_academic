`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2025 03:59:51 PM
// Design Name: 
// Module Name: mux_16to1_direct
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


module mux_16to1_direct(
    input [15:0] mux_16to1_in,
    input [3:0] sel,
    output reg mux_16to1_out
    );
    
    always@(sel,mux_16to1_in)
    begin
        case(sel)
            4'b0000: mux_16to1_out = mux_16to1_in[0];
            4'b0001: mux_16to1_out = mux_16to1_in[1];
            4'b0010: mux_16to1_out = mux_16to1_in[2];
            4'b0011: mux_16to1_out = mux_16to1_in[3];
            4'b0100: mux_16to1_out = mux_16to1_in[4];
            4'b0101: mux_16to1_out = mux_16to1_in[5];
            4'b0110: mux_16to1_out = mux_16to1_in[6];
            4'b0111: mux_16to1_out = mux_16to1_in[7];
            4'b1000: mux_16to1_out = mux_16to1_in[8];
            4'b1001: mux_16to1_out = mux_16to1_in[9];
            4'b1010: mux_16to1_out = mux_16to1_in[10];
            4'b1011: mux_16to1_out = mux_16to1_in[11];
            4'b1100: mux_16to1_out = mux_16to1_in[12];
            4'b1101: mux_16to1_out = mux_16to1_in[13];
            4'b1110: mux_16to1_out = mux_16to1_in[14];
            4'b1111: mux_16to1_out = mux_16to1_in[15];
        endcase  
    end
endmodule
