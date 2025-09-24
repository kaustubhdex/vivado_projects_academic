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


module nbit_hw_multiplier(in1_multiplier, in2_multiplier, out_multiplier);

    parameter nbit = 12;
    input [nbit-1:0] in1_multiplier, in2_multiplier;
    output [2*nbit-1:0] out_multiplier;
    
    assign out_multiplier = in1_multiplier * in2_multiplier;
endmodule
