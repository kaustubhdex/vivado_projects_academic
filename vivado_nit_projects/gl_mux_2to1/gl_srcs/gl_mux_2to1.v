`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 10:24:41 PM
// Design Name: 
// Module Name: gl_mux_2to1
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


module gl_mux_2to1(
    input sel,
    input [1:0] mux_in,
    output mux_out
    );
    wire not_sel, and1_out, and2_out;
    
    not not1 (not_sel, sel);
    
    and and1 (and1_out, mux_in[0], not_sel);
    and and2 (and2_out, mux_in[1], sel);
    
    or or1 (mux_out, and1_out, and2_out);
    
endmodule
