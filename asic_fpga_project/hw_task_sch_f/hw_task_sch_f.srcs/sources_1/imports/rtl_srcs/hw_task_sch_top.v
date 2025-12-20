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
    input [7:0] core_stat,
    output [7:0] out_allot, 
    output [2:0] core_cnt
    );
    
    wire [7:0] w_allot, w_core_stat;
    wire gl_clk;
    reg slow_clk;
    reg [15:0] count_clk;
    assign gl_clk = clk;
    wire [2:0] w_core_cnt;
    
    reg [7:0] core_alloted_reg = 8'h00;
    wire [7:0] w_instr_htd;
    wire w_allot_htd;
    wire [7:0] w_instr_0, w_instr_1, w_instr_2, w_instr_3, w_instr_4, w_instr_5, w_instr_6, w_instr_7;
    
    hw_task_sch hts_0(
        .clk(slow_clk),
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
    
    always@(posedge gl_clk) begin
        if (count_clk >= 15'h00ff) begin
            count_clk <= 15'h0000;
            slow_clk <= ~slow_clk;
        end
        else begin
            count_clk = count_clk + 15'h0001;
        end 
    end
    
    assign out_allot = w_allot;
    assign core_cnt = w_core_cnt;
    assign w_core_stat = core_stat;
endmodule
