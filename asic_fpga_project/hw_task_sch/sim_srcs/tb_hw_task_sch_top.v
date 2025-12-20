`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 06:30:33 PM
// Design Name: 
// Module Name: tb_hw_task_sch_top
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


module tb_hw_task_sch_top(

    );
    reg tb_clk, tb_rst;
    reg [7:0] tb_in_instr;
    wire [7:0] tb_out_allot, tb_core_stat;
    wire [2:0] tb_core_cnt;
    
    hw_task_sch_top dut0(
        .clk(tb_clk), 
        .rst(tb_rst),
        .in_instr(tb_in_instr),
        .out_allot(tb_out_allot), 
        .core_stat(tb_core_stat),
        .core_cnt(tb_core_cnt)
    );
    
    initial begin
        tb_clk = 1'b0;
        tb_rst = 1'b0;
        tb_in_instr = 8'h00;
    end
    
    always #3 tb_clk = ~tb_clk;
    always #4 tb_in_instr = tb_in_instr + 1;
endmodule
