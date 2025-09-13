`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2025 01:39:37 PM
// Design Name: 
// Module Name: tb_sample_boolean
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


module tb_sample_boolean(

    );
    
    reg test_a_in, test_b_in;
    wire test_sum_out, test_c_out;
    
    initial
        begin
            test_a_in = 1'b0;
            test_b_in = 1'b0;
        end
    
    sample_adder tb1 (
        .a_in(test_a_in),
        .b_in(test_b_in),
        .sum_out(test_sum_out),
        .c_out(test_c_out)
        );
        
    always #5 test_a_in = ~test_a_in;
    always #10 test_b_in = ~test_b_in;
endmodule
