`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2025 04:45:08 PM
// Design Name: 
// Module Name: bit4_adder
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


module bit4_adder(
    input [3:0] a_in,
    input [3:0] b_in,
    input c_in,
    output [3:0] sum_out,
    output c_out
    );
    
    wire cw_32, cw_21, cw_10;       // fixed 
    
    adder dut0 (
    .a_in(a_in[3]),
    .b_in(b_in[3]),
    .c_in(c_in),
    .sum_out(sum_out[3]),
    .carry_out(cw_32)
    );
    // fixed
    
    adder dut1 (
    .a_in(a_in[2]),
    .b_in(b_in[2]),
    .c_in(cw_32),
    .sum_out(sum_out[2]),
    .carry_out(cw_21)
    );
    
    adder dut2 (
    .a_in(a_in[1]),
    .b_in(b_in[1]),
    .c_in(cw_21),
    .sum_out(sum_out[1]),
    .carry_out(cw_10)
    );
    
    adder dut3 (
    .a_in(a_in[0]),
    .b_in(b_in[0]),
    .c_in(cw_10),
    .sum_out(sum_out[0]),
    .carry_out(c_out)
    );
    
endmodule
