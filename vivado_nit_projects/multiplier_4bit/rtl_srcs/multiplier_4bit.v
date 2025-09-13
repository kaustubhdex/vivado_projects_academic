`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 04:24:28 PM
// Design Name: 
// Module Name: multiplier_4bit
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


module multiplier_4bit(
    input [3:0] a_in_mult_4bit,
    input [3:0] b_in_mult_4bit,
    output [7:0] out_mult_4bit
    );
    wire [15:0] cw;
    
    product_module prod_inst1 (
        .a_in(a_in_mult_4bit),
        .b_in(b_in_mult_4bit),
        .out_prod_00(cw[0]), .out_prod_01(cw[1]), .out_prod_02(cw[2]), .out_prod_03(cw[3]),
        .out_prod_10(cw[4]), .out_prod_11(cw[5]), .out_prod_12(cw[6]), .out_prod_13(cw[7]),
        .out_prod_20(cw[8]), .out_prod_21(cw[9]), .out_prod_22(cw[10]), .out_prod_23(cw[11]),
        .out_prod_30(cw[12]), .out_prod_31(cw[13]), .out_prod_32(cw[14]), .out_prod_33(cw[15])
        );
        
    adder_module add_inst1 (
        .in_prod_00(cw[0]), .in_prod_01(cw[1]), .in_prod_02(cw[2]), .in_prod_03(cw[3]),
        .in_prod_10(cw[4]), .in_prod_11(cw[5]), .in_prod_12(cw[6]), .in_prod_13(cw[7]),
        .in_prod_20(cw[8]), .in_prod_21(cw[9]), .in_prod_22(cw[10]), .in_prod_23(cw[11]),
        .in_prod_30(cw[12]), .in_prod_31(cw[13]), .in_prod_32(cw[14]), .in_prod_33(cw[15]),
        .out_add(out_mult_4bit)
        );
endmodule
