`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2025 04:19:40 PM
// Design Name: 
// Module Name: p_encoder_4to2
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


module p_encoder_4to2(
    input [3:0] p_encoder_4to2_in,
    output reg [1:0] p_encoder_4to2_out
    );
    
    always@(p_encoder_4to2_in)
    begin
        casex(p_encoder_4to2_in)
            4'b0001: p_encoder_4to2_out <= 2'b00;
            4'b001x: p_encoder_4to2_out <= 2'b01;
            4'b01xx: p_encoder_4to2_out <= 2'b10;
            4'b1xxx: p_encoder_4to2_out <= 2'b11;
        endcase
    
    
    end
    
endmodule
