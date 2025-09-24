`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 02:30:18 PM
// Design Name: 
// Module Name: tb_bit_4_adder
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
//Name: Pawar Kaustubh Vijay
//Roll no: 25204121
module tb_bit_4_adder(

    );
    reg [3:0] test_a_in, test_b_in;
    wire [3:0] test_sum_out;
    wire test_cy_out;
    
    bit_4_adder tb1 (
        .a_in(test_a_in),
        .b_in(test_b_in),
        .sum_out(test_sum_out),
        .cy_out(test_cy_out)
    );
    
    initial
    begin
        test_a_in = 4'b0000;
        test_b_in = 4'b0000;
    end
    
    always #1 test_a_in = test_a_in + 4'b0001;
    always #16 test_b_in = test_b_in + 4'b0001;
        
endmodule
