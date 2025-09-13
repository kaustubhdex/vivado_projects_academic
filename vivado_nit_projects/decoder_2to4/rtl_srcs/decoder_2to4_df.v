`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2025 03:36:49 PM
// Design Name: 
// Module Name: decoder_2to4_df
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


module decoder_2to4_df(
    input [1:0] decoder_2to4_in,
    output [3:0] decoder_2to4_out
    );
    assign decoder_2to4_out[0] = ((~decoder_2to4_in[1]) && (~decoder_2to4_in[0]));
    assign decoder_2to4_out[1] = ((~decoder_2to4_in[1]) && (decoder_2to4_in[0]));
    assign decoder_2to4_out[2] = ((decoder_2to4_in[1]) && (~decoder_2to4_in[0]));
    assign decoder_2to4_out[3] = ((decoder_2to4_in[1]) && (decoder_2to4_in[0]));
    
endmodule
