`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2025 04:13:48 PM
// Design Name: 
// Module Name: mac_unit
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


module mac_unit(
    input [12:0] a_in_mac, b_in_mac,
    input clk,rst,ld_mac,
    output [24:0] out_mac
    );
    wire [23:0] w_multoadd, w_addtoacc, w_ret_add;
    
    nbit_hw_multiplier mult1 (
        .in1_multiplier(a_in_mac),
        .in2_multiplier(b_in_mac),
        .out_multiplier(w_multoadd)
        ); 
    nbit_hw_adder add1 (
        .in1_adder(w_multoadd),
        .in2_adder(w_ret_add),
        .out_adder(w_addtoacc)
        );
    nbit_dreg acc (
        .clk(clk),
        .en(1'b1),
        .rst(rst),
        .d_in(w_addtoacc),
        .d_out(w_ret_add)
        );
    nbit_dreg out_reg (
        .clk(clk),
        .en(ld_mac),
        .rst(rst),
        .d_in(w_ret_add),
        .d_out(out_mac)
        );
    
    
    
        
endmodule
