`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2025 02:09:08 PM
// Design Name: 
// Module Name: encoder_8to3
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


module encoder_8to3(
    input [7:0] in_enc_8to3,
    output reg [2:0] out_enc_8to3
    );
    
    always@(in_enc_8to3)
    begin
        case(in_enc_8to3)
            8'h01: out_enc_8to3 <= 3'b000;
            8'h02: out_enc_8to3 <= 3'b001;
            8'h04: out_enc_8to3 <= 3'b010;
            8'h08: out_enc_8to3 <= 3'b011;
            8'h10: out_enc_8to3 <= 3'b100;
            8'h20: out_enc_8to3 <= 3'b101;
            8'h40: out_enc_8to3 <= 3'b110;
            8'h80: out_enc_8to3 <= 3'b111;
            default: out_enc_8to3 <= 3'b000;
        endcase
    end
endmodule
