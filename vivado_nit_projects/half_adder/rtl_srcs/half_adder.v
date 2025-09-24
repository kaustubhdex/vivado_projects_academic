`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2025 07:04:29 PM
// Design Name: 
// Module Name: half_adder
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
module half_adder(
    input a_in,
    input b_in,
    output sum_out,
    output c_out
    );
    
    assign sum_out = a_in ^ b_in;
    assign c_out = a_in && b_in;
endmodule
