`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 03:51:03 PM
// Design Name: 
// Module Name: tb_gl_adders
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


module tb_gl_adders(

    );
    
    reg test_a_in, test_b_in, test_c_in;
    wire test_half_adder_sum, test_half_adder_cy, test_full_adder_sum, test_full_adder_cy;
    
    
    gl_half_adder inst1 (
        .a_in(test_a_in),
        .b_in(test_b_in),
        .sum_out(test_half_adder_sum),
        .cy_out(test_half_adder_cy)
        );
        
    gl_full_adder inst2 (
        .a_in(test_a_in),
        .b_in(test_b_in),
        .c_in(test_c_in),
        .sum_out(test_full_adder_sum),
        .cy_out(test_full_adder_cy)
        );
        
    initial
    begin
        test_a_in = 1'b0;
        test_b_in = 1'b0;
        test_c_in = 1'b0;
    
    end
    
    always #5 test_a_in = ~test_a_in;
    always #10 test_b_in = ~test_b_in;
    always #20 test_c_in = ~test_c_in;
    
    
endmodule
