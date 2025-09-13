`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2025 03:39:22 PM
// Design Name: 
// Module Name: tb_decoder_2to4
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


module tb_decoder_2to4(

    );
    
    reg [1:0] test_decoder_2to4_df_in, test_decoder_2to4_bh_in;
    wire [3:0] test_decoder_2to4_df_out, test_decoder_2to4_bh_out;
    
    
    decoder_2to4_df tb1(
        .decoder_2to4_in(test_decoder_2to4_df_in),
        .decoder_2to4_out(test_decoder_2to4_df_out)
        );
        
    decoder_2to4_bh tb2(
        .decoder_2to4_in(test_decoder_2to4_bh_in),
        .decoder_2to4_out(test_decoder_2to4_bh_out)
        );
        
    initial
    begin
        test_decoder_2to4_df_in = 2'b00;
        test_decoder_2to4_bh_in = 2'b00;
    end
    
    always #5 test_decoder_2to4_df_in = test_decoder_2to4_df_in + 2'b01;
    always #5 test_decoder_2to4_bh_in = test_decoder_2to4_bh_in + 2'b01;
endmodule
