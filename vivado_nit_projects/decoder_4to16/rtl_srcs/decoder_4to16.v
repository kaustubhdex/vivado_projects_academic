`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 02:27:56 PM
// Design Name: 
// Module Name: decoder_4to16
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


module decoder_4to16(
    input [3:0] in_decoder_4to16,
    output reg [15:0] out_decoder_4to16
    );
    
    always@(in_decoder_4to16)
    begin
        case(in_decoder_4to16)
        4'h0: out_decoder_4to16 = 16'h0001;
        4'h1: out_decoder_4to16 = 16'h0002;
        4'h2: out_decoder_4to16 = 16'h0004;
        4'h3: out_decoder_4to16 = 16'h0008;
        4'h4: out_decoder_4to16 = 16'h0010;
        4'h5: out_decoder_4to16 = 16'h0020;
        4'h6: out_decoder_4to16 = 16'h0040;
        4'h7: out_decoder_4to16 = 16'h0080;
        4'h8: out_decoder_4to16 = 16'h0100;
        4'h9: out_decoder_4to16 = 16'h0200;
        4'hA: out_decoder_4to16 = 16'h0400;
        4'hB: out_decoder_4to16 = 16'h0800;
        4'hC: out_decoder_4to16 = 16'h1000;
        4'hD: out_decoder_4to16 = 16'h2000;
        4'hE: out_decoder_4to16 = 16'h4000;
        4'hF: out_decoder_4to16 = 16'h8000;
        endcase
    end
endmodule
