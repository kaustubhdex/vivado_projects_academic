`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2025 03:09:14 PM
// Design Name: 
// Module Name: p_enc_8to3
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


module p_enc_8to3(
    input [7:0] in_p_enc_8to3,
    output reg [2:0] out_p_enc_8to3
    );
    
    always@(in_p_enc_8to3)
    begin
        casex(in_p_enc_8to3)
            8'b00000001: out_p_enc_8to3 <= 3'b000;
            8'b0000001x: out_p_enc_8to3 <= 3'b001;
            8'b000001xx: out_p_enc_8to3 <= 3'b010;
            8'b00001xxx: out_p_enc_8to3 <= 3'b011;
            8'b0001xxxx: out_p_enc_8to3 <= 3'b100;
            8'b001xxxxx: out_p_enc_8to3 <= 3'b101;
            8'b01xxxxxx: out_p_enc_8to3 <= 3'b110;
            8'b1xxxxxxx: out_p_enc_8to3 <= 3'b111; 
            default: out_p_enc_8to3 <= 3'bxxx; 
        endcase
    end
endmodule
