`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2025 08:05:28 PM
// Design Name: 
// Module Name: tb_d_flipflop
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


module tb_d_flipflop(

    );
    reg tb_clk, tb_en, tb_rst, tb_d_in;
    wire tb_d_out;
    
    d_flipflop tb1 (
        .clk(tb_clk),
        .d_in(tb_d_in),
        .en(tb_en),
        .rst(tb_rst),
        .d_out(tb_d_out)
        );
        
    initial
    begin
        tb_clk  = 1'b0;
        tb_d_in = 1'b0;
        tb_rst  = 1'b0;
        tb_en   = 1'b1;
    
    end
    
    always #5 tb_clk = ~tb_clk;
    always #200 tb_en = ~tb_en;
    always #400 tb_rst = ~tb_rst;
    always #37 tb_d_in = ~tb_d_in;
endmodule
