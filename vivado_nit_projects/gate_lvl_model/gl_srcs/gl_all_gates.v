`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 02:58:54 PM
// Design Name: 
// Module Name: gl_all_gates
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


module gl_all_gates(in1, in2, and_out, nand_out, or_out, nor_out, xor_out, xnor_out);

    input in1, in2;
    output and_out, nand_out, or_out, nor_out, xor_out, xnor_out;
    
    and     g1 (and_out, in1, in2);
    nand    g2 (nand_out, in1, in2);
    or      g3 (or_out, in1, in2);
    nor     g4 (nor_out, in1, in2);
    xor     g5 (xor_out, in1, in2);
    xnor    g6 (xnor_out, in1, in2);
    
endmodule
