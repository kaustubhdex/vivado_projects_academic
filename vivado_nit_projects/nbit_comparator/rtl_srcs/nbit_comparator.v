`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2025 02:01:57 PM
// Design Name: 
// Module Name: nbit_comparator
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


module nbit_comparator(a_in, b_in, lt_res, gt_res, eq_res);

    parameter nbit = 4;
    input [nbit-1:0] a_in, b_in;
    output lt_res, gt_res, eq_res;
    
    assign lt_res = (a_in < b_in);
    assign gt_res = (a_in > b_in);
    assign eq_res = (a_in == b_in);
    
endmodule
