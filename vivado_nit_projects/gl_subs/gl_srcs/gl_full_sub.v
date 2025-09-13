`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 04:26:26 PM
// Design Name: 
// Module Name: gl_full_sub
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


module gl_full_sub(
    input a_in, b_in, brw_in,
    output diff_out, brw_out
    );
    
    wire not_a_in,c1,c2,c3,c4,c5,c6;
    
    not not1 (not_a_in, a_in);
    not not2 (c2, c1);
    
    xor xor1 (c1, b_in, brw_in);
    xor xor2 (diff_out, a_in, c1);
    
    and and1 (c4, not_a_in, b_in);
    and and2 (c3, a_in, c2);
    
    or or1 (brw_out, c3, c4);
    
endmodule
