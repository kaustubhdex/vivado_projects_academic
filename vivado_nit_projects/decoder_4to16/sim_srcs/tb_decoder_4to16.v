`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 02:37:29 PM
// Design Name: 
// Module Name: tb_decoder_4to16
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


module tb_decoder_4to16(

    );
    reg [3:0] test_in_decoder_4to16;
    wire [15:0] test_out_decoder_4to16;
    
    decoder_4to16 tb1 (
        .in_decoder_4to16(test_in_decoder_4to16),
        .out_decoder_4to16(test_out_decoder_4to16)
    );
    
    initial
    begin
        test_in_decoder_4to16 = 4'h0;
    end
    
    always #5 test_in_decoder_4to16 = test_in_decoder_4to16 + 4'h1;
endmodule
