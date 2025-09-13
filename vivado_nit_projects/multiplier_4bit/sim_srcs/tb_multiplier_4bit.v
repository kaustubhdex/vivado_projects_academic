`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 01:52:21 PM
// Design Name: 
// Module Name: tb_multiplier_4bit
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


module tb_multiplier_4bit(

    );
    
    reg [3:0] test_a_in_mult_4bit, test_b_in_mult_4bit;
    wire [7:0] test_out_mult_4bit;
    
    multiplier_4bit tb1 (
    
        .a_in_mult_4bit(test_a_in_mult_4bit),
        .b_in_mult_4bit(test_b_in_mult_4bit),
        .out_mult_4bit(test_out_mult_4bit)
    ); 
    
    initial
    begin
        test_a_in_mult_4bit = 4'b0000;
        test_b_in_mult_4bit = 4'b0000;
    
    
    end
    
    always #1 test_a_in_mult_4bit = test_a_in_mult_4bit + 4'b0001;
    always #16 test_b_in_mult_4bit = test_b_in_mult_4bit + 4'b0001;
endmodule
