`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NITJ
// Engineer: Pawar Kaustubh Vijay
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

// Name: Pawar Kaustubh Vijay
// Roll no: 25204121
module gl_all_gates(in1, in2, out_not, out_and, out_nand, out_or, out_nor, out_xor, out_xnor);
    input in1, in2;
    output out_not, out_and, out_nand, out_or, out_nor, out_xor, out_xnor;
    not_gate    inst0 (in1, out_not);
    and_gate    inst1 (in1, in2, out_and);
    or_gate     inst2 (in1, in2, out_or);
    nand_gate   inst3 (in1, in2, out_nand);
    nor_gate    inst4 (in1, in2, out_nor);
    xor_gate    inst5 (in1, in2, out_xor);
    xnor_gate   inst6 (in1, in2, out_xnor);
endmodule
