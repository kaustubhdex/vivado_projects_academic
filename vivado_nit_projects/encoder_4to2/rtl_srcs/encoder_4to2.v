`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2025 03:43:27 PM
// Design Name: 
// Module Name: encoder_4to2
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


module encoder_4to2(
    input [3:0] encoder_4to2_in,
    output reg [1:0] encoder_4to2_out
    );
    
    always@(encoder_4to2_in)
    begin
        casex(encoder_4to2_in)
            4'bxxx1: encoder_4to2_out <= 2'b00;
            4'bxx1x: encoder_4to2_out <= 2'b01;
            4'bx1xx: encoder_4to2_out <= 2'b10;
            4'b1xxx: encoder_4to2_out <= 2'b11;
            default: encoder_4to2_out <= 2'b00;
        endcase
    end
    
endmodule
