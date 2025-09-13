`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 03:26:03 PM
// Design Name: 
// Module Name: tb_gl_4to2_decoder
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


module tb_gl_4to2_decoder();
    
    reg [1:0] test_in_gl_4to2_decoder;
    wire test_out_gl_4to2_decoder_0, test_out_gl_4to2_decoder_1, test_out_gl_4to2_decoder_2, test_out_gl_4to2_decoder_3;
    
    gl_4to2_decoder tb1 (
    .in_gl_4to2_decoder(test_in_gl_4to2_decoder),
    .out_gl_4to2_decoder_0(test_out_gl_4to2_decoder_0),
    .out_gl_4to2_decoder_1(test_out_gl_4to2_decoder_1),
    .out_gl_4to2_decoder_2(test_out_gl_4to2_decoder_2),
    .out_gl_4to2_decoder_3(test_out_gl_4to2_decoder_3)
    );
    
    initial
    begin
        test_in_gl_4to2_decoder = 2'b00;
    end
    
    always #5 test_in_gl_4to2_decoder = test_in_gl_4to2_decoder + 2'b01;
    
endmodule
