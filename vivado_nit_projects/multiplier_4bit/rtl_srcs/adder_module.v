`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 04:21:52 PM
// Design Name: 
// Module Name: adder_module
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


module adder_module(
    input in_prod_00, in_prod_01, in_prod_02, in_prod_03,
    input in_prod_10, in_prod_11, in_prod_12, in_prod_13,
    input in_prod_20, in_prod_21, in_prod_22, in_prod_23,
    input in_prod_30, in_prod_31, in_prod_32, in_prod_33,
    output [7:0] out_add
    );
    
   wire [3:0] interm_b0, interm_b1, interm_b2, interm_b3, interm_b4, interm_b5;
   wire [3:0] sum_adder_0, sum_adder_1, sum_adder_2;
   wire c_out_01, c_out_12, c_out_2;
   
  assign out_add[0] = in_prod_00;
  assign out_add[1] = sum_adder_0[0];
  assign out_add[2] = sum_adder_1[0];
  assign out_add[7:3] = {c_out_2, sum_adder_2[3], sum_adder_2[2], sum_adder_2[1], sum_adder_2[0]};
  
  assign interm_b0 = {1'b0, in_prod_03, in_prod_02, in_prod_01};
  assign interm_b1 = {in_prod_13, in_prod_12, in_prod_11, in_prod_10};
  assign interm_b2 = {c_out_01, sum_adder_0[3], sum_adder_0[2], sum_adder_0[1]};
  assign interm_b3 = {in_prod_23, in_prod_22, in_prod_21, in_prod_20};
  assign interm_b4 = {c_out_12, sum_adder_1[3], sum_adder_1[2], sum_adder_1[1]};
  assign interm_b5 = {in_prod_33, in_prod_32, in_prod_31, in_prod_30};
  
   bit_4_adder bit4_adder_inst0 (
        .a_in(interm_b0),
        .b_in(interm_b1),
        .c_in(1'b0),
        .sum_out(sum_adder_0),
        .cy_out(c_out_01)
   );
   
   bit_4_adder bit4_adder_inst1 (
        .a_in(interm_b2),
        .b_in(interm_b3),
        .c_in(1'b0),
        .sum_out(sum_adder_1),
        .cy_out(c_out_12)
   );
   
   bit_4_adder bit4_adder_inst2 (
        .a_in(interm_b4),
        .b_in(interm_b5),
        .c_in(1'b0),
        .sum_out(sum_adder_2),
        .cy_out(c_out_2)
   );
   
endmodule
