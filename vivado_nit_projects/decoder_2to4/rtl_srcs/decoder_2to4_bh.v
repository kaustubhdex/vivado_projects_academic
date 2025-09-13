`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2025 03:46:49 PM
// Design Name: 
// Module Name: decoder_2to4_bh
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


module decoder_2to4_bh(
    input [1:0] decoder_2to4_in,
    output reg [3:0] decoder_2to4_out
    );
    
    
    always@(decoder_2to4_in)
    begin
        case(decoder_2to4_in)
            2'b00: decoder_2to4_out <= 4'b0001;
            2'b01: decoder_2to4_out <= 4'b0010;
            2'b10: decoder_2to4_out <= 4'b0100;
            2'b11: decoder_2to4_out <= 4'b1000;
        endcase
    end
    
endmodule
