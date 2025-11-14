`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2025 06:30:21 PM
// Design Name: 
// Module Name: demux_1to8
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


module demux_1to8(
    input en_demux_1to8,
    input in_demux_1to8,
    input sel_demux_1to8,
    output reg [7:0] out_demux_1to8
    );
    
    always@(in_demux_1to8,sel_demux_1to8)
    begin
        if(en_demux_1to8) 
        begin
            case(sel_demux_1to8)
                3'b000: out_demux_1to8[0] <= in_demux_1to8;
                3'b001: out_demux_1to8[1] <= in_demux_1to8;
                3'b010: out_demux_1to8[2] <= in_demux_1to8;
                3'b011: out_demux_1to8[3] <= in_demux_1to8;
                3'b100: out_demux_1to8[4] <= in_demux_1to8;
                3'b101: out_demux_1to8[5] <= in_demux_1to8;
                3'b110: out_demux_1to8[6] <= in_demux_1to8;
                3'b111: out_demux_1to8[7] <= in_demux_1to8;
                default: out_demux_1to8 <= 8'b00000000;
             endcase
         end
         else
         begin
            out_demux_1to8 <= 8'b00000000;
         end
     end
endmodule
