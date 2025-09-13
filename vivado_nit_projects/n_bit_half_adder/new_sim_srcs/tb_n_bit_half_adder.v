`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2025 07:42:00 PM
// Design Name: 
// Module Name: tb_n_bit_half_adder
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


module tb_n_bit_half_adder(

    );
    parameter n_bit = 12;
    
    reg [n_bit-1:0] test_a_in, test_b_in;
    
    wire [n_bit:0] test_sum_out;
    
    n_bit_half_adder_top tb_dut (
        .a_in(test_a_in),
        .b_in(test_b_in),
        .sum_out(test_sum_out)
        );
    
    initial
        begin
            test_a_in = 0;
            test_b_in = 0;
        end
    
    always #5 test_a_in = test_a_in + 1;
    always #20 test_b_in = test_b_in + 1;

endmodule
