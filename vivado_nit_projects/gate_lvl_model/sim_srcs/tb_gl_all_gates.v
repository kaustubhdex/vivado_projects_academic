`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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


module tb_gl_all_gates(

    );
    
    reg test_in1, test_in2;
    wire test_and, test_nand, test_or, test_nor, test_xor, test_xnor;
    
    gl_all_gates inst1 (
        .in1(test_in1),
        .in2(test_in2),
        .and_out(test_and),
        .nand_out(test_nand),
        .or_out(test_or),
        .nor_out(test_nor),
        .xor_out(test_xor),
        .xnor_out(test_xnor)
        );
        
    initial
    begin
        test_in1 = 1'b0;
        test_in2 = 1'b0;
    
    end 
    
    
    always #5 test_in1 = ~test_in1;
    always #10 test_in2 = ~test_in2;
    
endmodule
