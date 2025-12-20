`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2025 07:17:24 PM
// Design Name: 
// Module Name: tb_m_core
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


module tb_m_core(

    );
    reg [15:0] tb_instr;
    reg tb_allot, tb_clk;
    wire tb_status;
    
    reg [3:0] temp;
    m_core dut1 (
        .instr(tb_instr),
        .allot(temp[2]),
        .clk(tb_clk),
        .status(tb_status)
    );
    
    initial
    begin
        tb_instr = 16'd0;
        tb_allot = 1'b0;
        tb_clk = 1'b0;
        temp = 4'b0000;
    end
    
    always #2 tb_clk = ~tb_clk;
    always #2 temp = temp + 4'b0001;
endmodule
