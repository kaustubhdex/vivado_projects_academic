`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2025 02:34:39 PM
// Design Name: 
// Module Name: encoder_8to3_df
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


module encoder_8to3_df(
    input [7:0] in_enc_8to3,
    input [2:0] out_enc_8to3
    );
    
    assign out_enc_8to3[0] = in_enc_8to3[1] | in_enc_8to3[3] | in_enc_8to3[5] | in_enc_8to3[7];
    assign out_enc_8to3[1] = in_enc_8to3[2] | in_enc_8to3[3] | in_enc_8to3[6] | in_enc_8to3[7];
    assign out_enc_8to3[2] = in_enc_8to3[4] | in_enc_8to3[5] | in_enc_8to3[6] | in_enc_8to3[7];
    
endmodule
