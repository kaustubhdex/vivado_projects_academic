`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NITJ
// Engineer: Pawar Kaustubh Vijay
// 
// Create Date: 09/09/2025 03:06:48 PM
// Design Name: 
// Module Name: tb_gl_all_gates
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

module tb_gl_all_gates(

    );
    
    reg test_in1, test_in2;
    wire test_not, test_and, test_nand, test_or, test_nor, test_xor, test_xnor;
    
    gl_all_gates inst1 (
        .in1(test_in1),
        .in2(test_in2),
        .out_not(test_not),
        .out_and(test_and),
        .out_nand(test_nand),
        .out_or(test_or),
        .out_nor(test_nor),
        .out_xor(test_xor),
        .out_xnor(test_xnor)
        );
        
    initial
    begin
        test_in1 = 1'b0;
        test_in2 = 1'b0;
    
    end 
    
    
    always #5 test_in1 = ~test_in1;
    always #10 test_in2 = ~test_in2;
    
endmodule
