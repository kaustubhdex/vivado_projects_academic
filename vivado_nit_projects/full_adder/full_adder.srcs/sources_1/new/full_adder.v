`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2025 04:47:35 PM
// Design Name: 
// Module Name: full_adder
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
// Name: Pawar Kaustubh Vijay
// roll no: 25204121
module full_adder(
    input a_in, b_in, c_in,
    output sum_out, cy_out
    );
    assign sum_out = a_in ^ b_in ^ c_in;
    assign cy_out = ((a_in & b_in) | (b_in & c_in) | (c_in & a_in));
endmodule
