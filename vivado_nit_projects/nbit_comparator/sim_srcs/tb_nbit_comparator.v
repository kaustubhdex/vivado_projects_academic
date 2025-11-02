`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2025 02:18:34 PM
// Design Name: 
// Module Name: tb_nbit_comparator
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


module tb_nbit_comparator(

    );
    reg [3:0] tb_a_in, tb_b_in;
    wire tb_lt, tb_gt, tb_eq;
    
    nbit_comparator dut1 (
        .a_in(tb_a_in),
        .b_in(tb_b_in),
        .lt_res(tb_lt),
        .gt_res(tb_gt),
        .eq_res(tb_eq)
        );
        
    initial
    begin
        tb_a_in = 4'b0000;
        tb_b_in = 4'b0000;
    end
    
    always #1 tb_a_in = tb_a_in + 4'b0001;
    always #16 tb_b_in = tb_b_in + 4'b0001;
    
endmodule







