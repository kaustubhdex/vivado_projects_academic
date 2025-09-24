`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 03:25:54 PM
// Design Name: 
// Module Name: gl_half_adder
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
// Roll no: 25204121
module gl_half_adder(
    input a_in, b_in,
    output sum_out, cy_out
    );
    
    xor (sum_out, a_in, b_in);
    and (cy_out, a_in, b_in);
    
endmodule
