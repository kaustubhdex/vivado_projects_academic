`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 08:04:15 PM
// Design Name: 
// Module Name: hw_task_sch
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


module hw_task_sch(
    input clk,rst,
    input [7:0] in_instr,
    input [7:0] in_core_stat,
    output [7:0] out_instr,
    output [2:0] out_core_cnt,
    output reg out_allot
    );
    
    reg [2:0] core_cnt = 3'b000;
    reg [7:0] temp_instr = 8'h00;
    //reg [7:0] core_stat;
    parameter INIT = 3'b000;
    parameter INC_NO_P = 3'b011;
    parameter CHECK_STAT = 3'b101;
    parameter ALLOT = 3'b110;
    parameter INC_IF_P = 3'b111;
    
    parameter REDUNDANT_1 = 3'b001;
    parameter REDUNDANT_2 = 3'b010;
    parameter REDUNDANT_3 = 3'b100;
    
    
    reg [2:0] state = INIT;
    
    initial begin
        out_allot = 1'b0;
    end
    
    always @(posedge clk)
    begin
      if (rst) begin
         state <= INIT;
         out_allot <= 1'b0;
      end
      else
        case (state)
        INIT : begin
            if (in_core_stat[core_cnt])
            begin
                state <= CHECK_STAT;
            end
            else
            begin
                state <= CHECK_STAT;
            end
                out_allot <= 1'b0;
                temp_instr <= in_instr;
        end
            
        INC_NO_P : begin
        if (in_core_stat[core_cnt])
            begin
                state <= INIT;
            end
            else
            begin
                state <= INIT;
            end
            
            out_allot <= 1'b0;
            core_cnt <= core_cnt + 3'b001;
        end
        
        CHECK_STAT : begin
            if (in_core_stat[core_cnt])
            begin
                state <= INC_IF_P;
            end
            else
            begin
                state <= ALLOT;
            end
            
            out_allot <= 1'b0;
        end
        
        ALLOT : begin
        if (in_core_stat[core_cnt])
            begin
                state <= INC_NO_P;
            end
            else
            begin
                state <= INC_NO_P;
            end
            
            out_allot <= 1'b1;
        end
        
        INC_IF_P : begin
            if (in_core_stat[core_cnt])
            begin
                state <= CHECK_STAT;
            end
            else
            begin
                state <= CHECK_STAT;
            end  
            
            out_allot <= 1'b0;
            core_cnt <= core_cnt + 3'b001;
        end
        
        endcase
    end
    
    assign out_core_cnt = core_cnt;
    assign out_instr = temp_instr;
endmodule
