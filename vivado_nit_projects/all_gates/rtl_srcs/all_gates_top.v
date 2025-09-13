`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2025 03:00:47 PM
// Design Name: 
// Module Name: all_gates_top
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


module all_gates_top(
    input a_in,
    input b_in,
    output ag_not_out,
    output ag_and_out,
    output ag_or_out,
    output ag_xor_out,
    output ag_nand_out,
    output ag_nor_out,
    output ag_xnor_out
    );
    
    not_gate dut1 (
        .not_in(a_in),
        .not_out(ag_not_out)
    );
    
    and_gate dut2 (
        .and_in_1(a_in),
        .and_in_2(b_in),
        .and_out(ag_and_out)
        );
    
    or_gate dut3 (
        .or_in_1(a_in),
        .or_in_2(b_in),
        .or_out(ag_or_out)
        );
        
     xor_gate dut4 (
        .xor_in_1(a_in),
        .xor_in_2(b_in),
        .xor_out(ag_xor_out)
        );
        
     nand_gate dut5 (
        .nand_in_1(a_in),
        .nand_in_2(b_in),
        .nand_out(ag_nand_out)
        );
        
     nor_gate dut6 (
        .nor_in_1(a_in),
        .nor_in_2(b_in),
        .nor_out(ag_nor_out)
        );
        
     xnor_gate dut7 (
        .xnor_in_1(a_in),
        .xnor_in_2(b_in),
        .xnor_out(ag_xnor_out)
        );
endmodule
