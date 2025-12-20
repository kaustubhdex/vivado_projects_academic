`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 07:45:13 PM
// Design Name: 
// Module Name: demux_1to8_16b
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


module demux_1to8_16b(
    input [2:0] sel_1to8_16b,
    input [7:0] in_1to8_16b,
    input in_allot,
    output reg allot_0, allot_1, allot_2, allot_3, allot_4, allot_5, allot_6, allot_7,
    output reg [7:0] out0_1to8_16b, out1_1to8_16b, out2_1to8_16b, out3_1to8_16b, out4_1to8_16b, out5_1to8_16b, out6_1to8_16b, out7_1to8_16b
    );
    
    always @(sel_1to8_16b, in_1to8_16b, in_allot)
    begin
        case (sel_1to8_16b)
            3'b000: begin
                out0_1to8_16b <= in_1to8_16b; 
                allot_0 <= in_allot;
                out1_1to8_16b <= 8'd0; 
                allot_1 <= 1'b0;
                out2_1to8_16b <= 8'd0; 
                allot_2 <= 1'b0;
                out3_1to8_16b <= 8'd0; 
                allot_3 <= 1'b0;
                out4_1to8_16b <= 8'd0; 
                allot_4 <= 1'b0;
                out5_1to8_16b <= 8'd0; 
                allot_5 <= 1'b0;
                out6_1to8_16b <= 8'd0; 
                allot_6 <= 1'b0;
                out7_1to8_16b <= 8'd0; 
                allot_7 <= 1'b0;
            end
            3'b001: begin
                out0_1to8_16b <= 8'd0; 
                allot_0 <= 1'b0;
                out1_1to8_16b <= in_1to8_16b; 
                allot_1 <= in_allot;
                out2_1to8_16b <= 8'd0; 
                allot_2 <= 1'b0;
                out3_1to8_16b <= 8'd0; 
                allot_3 <= 1'b0;
                out4_1to8_16b <= 8'd0; 
                allot_4 <= 1'b0;
                out5_1to8_16b <= 8'd0; 
                allot_5 <= 1'b0;
                out6_1to8_16b <= 8'd0; 
                allot_6 <= 1'b0;
                out7_1to8_16b <= 8'd0; 
                allot_7 <= 1'b0;
            end    
            3'b010: begin
                out0_1to8_16b <= 8'd0; 
                allot_0 <= 1'b0;
                out1_1to8_16b <= 8'd0; 
                allot_1 <= 1'b0;
                out2_1to8_16b <= in_1to8_16b; 
                allot_2 <= in_allot;
                out3_1to8_16b <= 8'd0; 
                allot_3 <= 1'b0;
                out4_1to8_16b <= 8'd0; 
                allot_4 <= 1'b0;
                out5_1to8_16b <= 8'd0; 
                allot_5 <= 1'b0;
                out6_1to8_16b <= 8'd0; 
                allot_6 <= 1'b0;
                out7_1to8_16b <= 8'd0; 
                allot_7 <= 1'b0;
            end
            3'b011: begin
                out0_1to8_16b <= 8'd0; 
                allot_0 <= 1'b0;
                out1_1to8_16b <= 8'd0; 
                allot_1 <= 1'b0;
                out2_1to8_16b <= 8'd0; 
                allot_2 <= 1'b0;
                out3_1to8_16b <= in_1to8_16b; 
                allot_3 <= in_allot;
                out4_1to8_16b <= 8'd0; 
                allot_4 <= 1'b0;
                out5_1to8_16b <= 8'd0; 
                allot_5 <= 1'b0;
                out6_1to8_16b <= 8'd0; 
                allot_6 <= 1'b0;
                out7_1to8_16b <= 8'd0; 
                allot_7 <= 1'b0;
            end
            3'b100: begin
                out0_1to8_16b <= 8'd0; 
                allot_0 <= 1'b0;
                out1_1to8_16b <= 8'd0; 
                allot_1 <= 1'b0;
                out2_1to8_16b <= 8'd0; 
                allot_2 <= 1'b0;
                out3_1to8_16b <= 8'd0; 
                allot_3 <= 1'b0;
                out4_1to8_16b <= in_1to8_16b; 
                allot_4 <= in_allot;
                out5_1to8_16b <= 8'd0; 
                allot_5 <= 1'b0;
                out6_1to8_16b <= 8'd0; 
                allot_6 <= 1'b0;
                out7_1to8_16b <= 8'd0; 
                allot_7 <= 1'b0;
            end
            3'b101: begin
                out0_1to8_16b <= 8'd0; 
                allot_0 <= 1'b0;
                out1_1to8_16b <= 8'd0; 
                allot_1 <= 1'b0;
                out2_1to8_16b <= 8'd0; 
                allot_2 <= 1'b0;
                out3_1to8_16b <= 8'd0; 
                allot_3 <= 1'b0;
                out4_1to8_16b <= 8'd0; 
                allot_4 <= 1'b0;
                out5_1to8_16b <= in_1to8_16b; 
                allot_5 <= in_allot;
                out6_1to8_16b <= 8'd0; 
                allot_6 <= 1'b0;
                out7_1to8_16b <= 8'd0; 
                allot_7 <= 1'b0;
            end
            3'b110: begin
                out0_1to8_16b <= 8'd0; 
                allot_0 <= 1'b0;
                out1_1to8_16b <= 8'd0; 
                allot_1 <= 1'b0;
                out2_1to8_16b <= 8'd0; 
                allot_2 <= 1'b0;
                out3_1to8_16b <= 8'd0; 
                allot_3 <= 1'b0;
                out4_1to8_16b <= 8'd0; 
                allot_4 <= 1'b0;
                out5_1to8_16b <= 8'd0; 
                allot_5 <= 1'b0;
                out6_1to8_16b <= in_1to8_16b; 
                allot_6 <= in_allot;
                out7_1to8_16b <= 8'd0; 
                allot_7 <= 1'b0;
            end
            3'b111: begin
                out0_1to8_16b <= 8'd0; 
                allot_0 <= 1'b0;
                out1_1to8_16b <= 8'd0; 
                allot_1 <= 1'b0;
                out2_1to8_16b <= 8'd0; 
                allot_2 <= 1'b0;
                out3_1to8_16b <= 8'd0; 
                allot_3 <= 1'b0;
                out4_1to8_16b <= 8'd0; 
                allot_4 <= 1'b0;
                out5_1to8_16b <= 8'd0; 
                allot_5 <= 1'b0;
                out6_1to8_16b <= 8'd0; 
                allot_6 <= 1'b0;
                out7_1to8_16b <= in_1to8_16b; 
                allot_7 <= in_allot;
            end
            
            default: begin
                out0_1to8_16b <= 8'd0; 
                allot_0 <= 1'b0;
                out1_1to8_16b <= 8'd0; 
                allot_1 <= 1'b0;
                out2_1to8_16b <= 8'd0; 
                allot_2 <= 1'b0;
                out3_1to8_16b <= 8'd0; 
                allot_3 <= 1'b0;
                out4_1to8_16b <= 8'd0; 
                allot_4 <= 1'b0;
                out5_1to8_16b <= 8'd0; 
                allot_5 <= 1'b0;
                out6_1to8_16b <= 8'd0; 
                allot_6 <= 1'b0;
                out7_1to8_16b <= 8'd0; 
                allot_7 <= 1'b0;
            end
        endcase
    end	
endmodule
