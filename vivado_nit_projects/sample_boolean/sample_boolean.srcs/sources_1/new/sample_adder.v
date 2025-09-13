`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2025 10:05:00 PM
// Design Name: 
// Module Name: sample_adder
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


module sample_adder(
    input a_in, b_in,
    output sum_out, c_out
    );
    assign sum_out = a_in ^ b_in;
    assign c_out = a_in && b_in;
endmodule
