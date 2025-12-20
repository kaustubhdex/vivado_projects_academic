`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2025 07:07:01 PM
// Design Name: 
// Module Name: m_core
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
// Name: Pawar Kaustubh
// Mock CPU core, used to simulate a 4-cycle instruction RISC processor

module m_core(
    input [7:0] instr,
    input allot, 
    input clk,
    output status
    );
    
    reg fl_execute = 1'b0;
    reg [7:0] int_cnt = 8'b00000000;
    
    assign status = fl_execute;
//    always@(posedge allot or posedge clk)
//    begin
//        fl_execute <= 1'b1;
//    end
    
    always@(posedge clk)
    begin
    
        if(allot == 1'b1)
        begin
            fl_execute <= 1'b1;
        end
        
        if(fl_execute == 1'b1)
        begin
            int_cnt <= int_cnt + 8'b0001;
            if(int_cnt == 8'b00000011)
            begin
                int_cnt <= 8'b00000000;
                fl_execute <= 1'b0;
            end
        end
    end
endmodule
