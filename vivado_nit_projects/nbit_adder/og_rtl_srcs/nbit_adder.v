`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2025 03:20:05 PM
// Design Name: 
// Module Name: nbit_adder
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

// reference 


//genvar <var>;
//   generate
//      for (<var>=0; <var> < <limit>; <var>=<var>+1)
//      begin: <label>
//         <instantiation>
//      end
//   endgenerate
   
   
//   
module nbit_adder(a_in, b_in, c_in, sum_out, c_out);

    parameter nbit = 12;
    input [nbit-1:0] a_in;
    input [nbit-1:0] b_in;
    input c_in;
    output [nbit-1:0] sum_out;
    output c_out;

    wire [nbit:0] cw;
    
    genvar j;
    
    assign cw[0] = c_in;
    assign cw[nbit] = c_out;
    
    generate
        for (j=0; j < nbit; j=j+1)
            begin: nbit_gen
                adder dut (
                .a_in(a_in[j]),
                .b_in(b_in[j]),
                .c_in(cw[j]),
                .sum_out(sum_out[j]),
                .carry_out(cw[j+1])
                );
            end
    endgenerate

endmodule
