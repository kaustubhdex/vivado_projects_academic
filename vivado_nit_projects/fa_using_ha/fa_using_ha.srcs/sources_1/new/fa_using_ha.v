`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2025 03:12:26 PM
// Design Name: 
// Module Name: fa_using_ha
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


module fa_using_ha(
    input a,b,c_in,
    output sum,c_out
    );
    wire ha1_c, ha1_s, ha2_c;
    half_adder ha1 (a,b,ha1_s,ha1_c);
    half_adder ha2 (ha1_s,c_in,sum,ha2_c);
    or or1 (c_out, ha1_c, ha2_c);
endmodule
