`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2025 04:04:36 PM
// Design Name: 
// Module Name: nbit_hw_adder
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


module nbit_hw_adder(in1_adder, in2_adder, out_adder);
    parameter nbit = 24;
    input [nbit-1:0] in1_adder, in2_adder;
    output [nbit-1:0] out_adder;
    
    assign out_adder = in1_adder + in2_adder;
endmodule
