`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 03:19:48 PM
// Design Name: 
// Module Name: gl_4to2_decoder
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


module gl_4to2_decoder(
    input [1:0] in_gl_4to2_decoder,
    output out_gl_4to2_decoder_0,
    output out_gl_4to2_decoder_1,
    output out_gl_4to2_decoder_2,
    output out_gl_4to2_decoder_3
    );
    
    wire [1:0] not_in_gl_4to2_decoder;
    
    not not_inst0 (not_in_gl_4to2_decoder[0],in_gl_4to2_decoder[0]);
    not not_inst1 (not_in_gl_4to2_decoder[1],in_gl_4to2_decoder[1]);
    
    and and_inst0 (out_gl_4to2_decoder_0, not_in_gl_4to2_decoder[0], not_in_gl_4to2_decoder[1]);
    and and_inst1 (out_gl_4to2_decoder_1, in_gl_4to2_decoder[0], not_in_gl_4to2_decoder[1]);
    and and_inst2 (out_gl_4to2_decoder_2, not_in_gl_4to2_decoder[0], in_gl_4to2_decoder[1]);
    and and_inst3 (out_gl_4to2_decoder_3, in_gl_4to2_decoder[0], in_gl_4to2_decoder[1]);
    
endmodule
