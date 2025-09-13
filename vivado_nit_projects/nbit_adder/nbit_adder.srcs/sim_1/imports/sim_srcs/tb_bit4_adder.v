`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2025 04:58:41 PM
// Design Name: 
// Module Name: tb_bit4_adder
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


module tb_bit4_adder(

    );
    //parameter nbit = 11;
    reg [11:0] test_a_in, test_b_in;
    reg test_c_in;
    wire [11:0] test_sum_out;
    wire test_c_out;
    
    
    initial
    begin
    test_a_in = 11'd0;
    test_b_in = 11'd0;
    test_c_in = 1'd0;
    end
    
    nbit_adder tb1 (
    .a_in(test_a_in),
    .b_in(test_b_in),
    .c_in(test_c_in),
    .sum_out(test_sum_out),
    .c_out(test_c_out)
    );
    
    always #5 test_a_in = test_a_in + 11'd1;
    always #80 test_b_in = test_b_in + 11'd1;
    always #500 test_c_in = ~test_c_in;
    
endmodule
