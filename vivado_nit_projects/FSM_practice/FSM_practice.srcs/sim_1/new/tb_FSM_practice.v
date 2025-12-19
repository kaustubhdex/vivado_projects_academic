`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2025 11:17:29 AM
// Design Name: 
// Module Name: tb_FSM_practice
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


module tb_FSM_practice(

    );
    reg tb_clk, tb_x;
    wire tb_y;
    
    FSM_practice dut0 (
        .clk(tb_clk),
        .x(tb_x),
        .y(tb_y)
    );
    
    initial begin
        tb_clk = 1'b0;
        tb_x = 1'b0;
        #10;
    end
    
    always #5 tb_clk = ~tb_clk;
    always #17 tb_x = ~tb_x;
endmodule
