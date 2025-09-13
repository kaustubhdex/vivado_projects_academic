`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2025 07:22:10 PM
// Design Name: 
// Module Name: n_bit_half_adder_top
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


module n_bit_half_adder_top (a_in, b_in, sum_out);

    parameter n_bit = 12;
    
    input [n_bit-1:0] a_in, b_in;
    
    output [n_bit:0] sum_out;
    
    genvar j;
    
    wire [n_bit-1:0]cw;
    
    half_adder dut1 (
    .a_in(a_in[0]),
    .b_in(b_in[0]),
    .sum_out(sum_out[0]),
    .c_out(cw[0])
    );
    generate
      for (j=1; j < n_bit; j=j+1)
      begin: gen_ha
         adder inst (
             .a_in(a_in[j]),
             .b_in(b_in[j]),
             .c_in(cw[j-1]),
             .sum_out(sum_out[j]),
             .carry_out(cw[j])
         );
      end
    endgenerate

assign sum_out[n_bit] = cw[n_bit-1];
endmodule
