`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2025 06:22:16 PM
// Design Name: 
// Module Name: tb_adder
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


module tb_adder(

    );
    reg test_a_in,test_b_in,test_c_in;
    wire test_sum_out, test_carry_out;
    
    adder tb1 (
    .a_in(test_a_in),
    .b_in(test_b_in),
    .c_in(test_c_in),
    .sum_out(test_sum_out),
    .carry_out(test_carry_out)
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
