`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2025 02:17:03 PM
// Design Name: 
// Module Name: tb_encoder_8to3
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


module tb_encoder_8to3(

    );
    
    reg     [7:0] tb_in_enc_8to3;
    wire    [2:0] tb_out_enc_8to3, tb_out_enc_8to3_df;
    
    encoder_8to3 dut1 (
        .in_enc_8to3(tb_in_enc_8to3),
        .out_enc_8to3(tb_out_enc_8to3)
        );
    encoder_8to3_df dut2 (
        .in_enc_8to3(tb_in_enc_8to3),
        .out_enc_8to3(tb_out_enc_8to3_df)
        );
    initial
    begin
        #10 tb_in_enc_8to3 = 8'h00;
        #10 tb_in_enc_8to3 = 8'h01;
        #10 tb_in_enc_8to3 = 8'h02;
        #10 tb_in_enc_8to3 = 8'h04;
        #10 tb_in_enc_8to3 = 8'h08;
        #10 tb_in_enc_8to3 = 8'h10;
        #10 tb_in_enc_8to3 = 8'h20;
        #10 tb_in_enc_8to3 = 8'h40;
        #10 tb_in_enc_8to3 = 8'h85; 
        #10 tb_in_enc_8to3 = 8'h87; 
        #10 tb_in_enc_8to3 = 8'h89; 
    end
    
    
endmodule
