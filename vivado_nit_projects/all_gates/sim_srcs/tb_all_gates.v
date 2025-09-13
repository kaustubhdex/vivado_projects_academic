`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2025 03:11:38 PM
// Design Name: 
// Module Name: tb_all_gates
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


module tb_all_gates(

    );
    
    reg test_a_in, test_b_in;
    wire test_ag_not_out, test_ag_and_out, test_ag_or_out, test_ag_xor_out, test_ag_nand_out, test_ag_nor_out, test_ag_xnor_out;
    
    initial
    begin
        test_a_in = 1'b0;
        test_b_in = 1'b0;
    end 
    
    all_gates_top tb1 (
    .a_in(test_a_in),
    .b_in(test_b_in),
    .ag_not_out(test_ag_not_out),
    .ag_and_out(test_ag_and_out),
    .ag_or_out(test_ag_or_out),
    .ag_xor_out(test_ag_xor_out),
    .ag_nand_out(test_ag_nand_out),
    .ag_nor_out(test_ag_nor_out),
    .ag_xnor_out(test_ag_xnor_out)
    );
    
    always #5 test_a_in = ~test_a_in;
    always #10 test_b_in = ~test_b_in;
    
    
endmodule
