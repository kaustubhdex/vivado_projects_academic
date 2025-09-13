`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 04:21:52 PM
// Design Name: 
// Module Name: product_module
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


module product_module(
    input [3:0] a_in,
    input [3:0] b_in,
    output out_prod_00, out_prod_01, out_prod_02, out_prod_03,
    output out_prod_10, out_prod_11, out_prod_12, out_prod_13,
    output out_prod_20, out_prod_21, out_prod_22, out_prod_23,
    output out_prod_30, out_prod_31, out_prod_32, out_prod_33
    );
    
    assign out_prod_00 = b_in[0] & a_in[0];
    assign out_prod_01 = b_in[0] & a_in[1];
    assign out_prod_02 = b_in[0] & a_in[2];
    assign out_prod_03 = b_in[0] & a_in[3];
    
    assign out_prod_10 = b_in[1] & a_in[0];
    assign out_prod_11 = b_in[1] & a_in[1];
    assign out_prod_12 = b_in[1] & a_in[2];
    assign out_prod_13 = b_in[1] & a_in[3];
    
    assign out_prod_20 = b_in[2] & a_in[0];
    assign out_prod_21 = b_in[2] & a_in[1];
    assign out_prod_22 = b_in[2] & a_in[2];
    assign out_prod_23 = b_in[2] & a_in[3];
    
    assign out_prod_30 = b_in[3] & a_in[0];
    assign out_prod_31 = b_in[3] & a_in[1];
    assign out_prod_32 = b_in[3] & a_in[2];
    assign out_prod_33 = b_in[3] & a_in[3];
    
endmodule
