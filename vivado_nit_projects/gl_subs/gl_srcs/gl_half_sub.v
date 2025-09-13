`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 04:16:41 PM
// Design Name: 
// Module Name: gl_half_sub
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


module gl_half_sub(
    input a_in, b_in,
    output diff_out, brw_out
    );
    
    wire not_and;
    
    xor g1 (diff_out, a_in, b_in);
    not g2 (not_and, a_in);
    and g3 (brw_out, not_and, b_in);
endmodule
