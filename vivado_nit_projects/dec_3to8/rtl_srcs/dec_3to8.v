`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2025 03:39:25 PM
// Design Name: 
// Module Name: dec_3to8
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


module dec_3to8(
    input [2:0] in_dec_3to8,
    output reg [7:0] out_dec_3to8
    );
    
    always@(in_dec_3to8)
    begin
        case(in_dec_3to8)
            3'b000: out_dec_3to8 <= 8'h01;
            3'b001: out_dec_3to8 <= 8'h02;
            3'b010: out_dec_3to8 <= 8'h04;
            3'b011: out_dec_3to8 <= 8'h08;
            3'b100: out_dec_3to8 <= 8'h10;
            3'b101: out_dec_3to8 <= 8'h20;
            3'b110: out_dec_3to8 <= 8'h40;
            3'b111: out_dec_3to8 <= 8'h80;
            default: out_dec_3to8 <= 8'h00;
        endcase
     end
endmodule
