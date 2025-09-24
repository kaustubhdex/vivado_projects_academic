`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 02:06:50 PM
// Design Name: 
// Module Name: bit_4_adder
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
//Name: Pawar Kaustubh Vijay
//Roll no: 25204121
module bit_4_adder(
    input [3:0] a_in,
    input [3:0] b_in,
    output [3:0] sum_out,
    output cy_out
    );
    
    wire cy01, cy12, cy23;
    
    half_adder inst0 (
        .a_in(a_in[0]),
        .b_in(b_in[0]),
        .sum_out(sum_out[0]),
        .c_out(cy01)
        );
    
    full_adder inst1 (
        .a_in(a_in[1]),
        .b_in(b_in[1]),
        .c_in(cy01),
        .sum_out(sum_out[1]),
        .carry_out(cy12)
        );
        
    full_adder inst2 (
        .a_in(a_in[2]),
        .b_in(b_in[2]),
        .c_in(cy12),
        .sum_out(sum_out[2]),
        .carry_out(cy23)
        );
        
    full_adder inst3 (
        .a_in(a_in[3]),
        .b_in(b_in[3]),
        .c_in(cy23),
        .sum_out(sum_out[3]),
        .carry_out(cy_out)
        );
    
endmodule
