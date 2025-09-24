`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 03:31:15 PM
// Design Name: 
// Module Name: gl_full_adder
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
module gl_full_adder(
    input a_in, b_in, c_in,
    output sum_out, cy_out
    );
    wire and1_out, and2_out, and3_out;
    
    xor g1 (sum_out, a_in, b_in, c_in);
    
    and g2 (and1_out, a_in, b_in);
    
    and g3 (and2_out, b_in, c_in);
    
    and g4 (and3_out, c_in, a_in);
    
    or g5 (cy_out, and1_out, and2_out, and3_out);
    
endmodule
