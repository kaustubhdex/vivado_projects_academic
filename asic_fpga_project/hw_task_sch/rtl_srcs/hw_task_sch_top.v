`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2025 11:20:38 PM
// Design Name: 
// Module Name: hw_task_sch_top
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


module hw_task_sch_top(
    input clk, rst,
    input [7:0] in_instr,
    //output [7:0] core_alloted,
    output [7:0] out_allot, 
    output [7:0] core_stat,
    output [2:0] core_cnt
    );
    
    wire [7:0] w_allot, w_core_stat;
    wire gl_clk;
    assign gl_clk = clk;
    wire [2:0] w_core_cnt;
    
    reg [7:0] core_alloted_reg = 8'h00;
    wire [7:0] w_instr_htd;
    wire w_allot_htd;
    wire [7:0] w_instr_0, w_instr_1, w_instr_2, w_instr_3, w_instr_4, w_instr_5, w_instr_6, w_instr_7;
   
    hw_task_sch hts_0(
        .clk(gl_clk),
        .rst(rst),
        .in_instr(in_instr),
        .in_core_stat(w_core_stat),
        .out_instr(w_instr_htd),
        .out_core_cnt(w_core_cnt),
        .out_allot(w_allot_htd)
    );  
    
    demux_1to8_16b allot_mech(
        .sel_1to8_16b(w_core_cnt),
        .in_1to8_16b(w_instr_htd),
        .in_allot(w_allot_htd),
        .allot_0(w_allot[0]), .allot_1(w_allot[1]), .allot_2(w_allot[2]), .allot_3(w_allot[3]), .allot_4(w_allot[4]), .allot_5(w_allot[5]), .allot_6(w_allot[6]), .allot_7(w_allot[7]),
        .out0_1to8_16b(w_instr_0), .out1_1to8_16b(w_instr_1), .out2_1to8_16b(w_instr_2), .out3_1to8_16b(w_instr_3), .out4_1to8_16b(w_instr_4), .out5_1to8_16b(w_instr_5), .out6_1to8_16b(w_instr_6), .out7_1to8_16b(w_instr_7)
    );
    m_core core_0(
        .instr(w_instr_0),
        .allot(w_allot[0]), 
        .clk(gl_clk),
        .status(w_core_stat[0])
    );
    
    m_core core_1(
        .instr(w_instr_1),
        .allot(w_allot[1]), 
        .clk(gl_clk),
        .status(w_core_stat[1])
    );
    
    m_core core_2(
        .instr(w_instr_2),
        .allot(w_allot[2]), 
        .clk(gl_clk),
        .status(w_core_stat[2])
    );
    
    m_core core_3(
        .instr(w_instr_3),
        .allot(w_allot[3]), 
        .clk(gl_clk),
        .status(w_core_stat[3])
    );
    
    m_core core_4(
        .instr(w_instr_4),
        .allot(w_allot[4]), 
        .clk(gl_clk),
        .status(w_core_stat[4])
    );
    
    m_core core_5(
        .instr(w_instr_5),
        .allot(w_allot[5]), 
        .clk(gl_clk),
        .status(w_core_stat[5])
    );
    
    m_core core_6(
        .instr(w_instr_6),
        .allot(w_allot[6]), 
        .clk(gl_clk),
        .status(w_core_stat[6])
    );
    
    m_core core_7(
        .instr(w_instr_7),
        .allot(w_allot[7]), 
        .clk(gl_clk),
        .status(w_core_stat[7])
    );
    
      
    assign out_allot = w_allot;
    assign core_cnt = w_core_cnt;
    assign core_stat = w_core_stat;
endmodule
