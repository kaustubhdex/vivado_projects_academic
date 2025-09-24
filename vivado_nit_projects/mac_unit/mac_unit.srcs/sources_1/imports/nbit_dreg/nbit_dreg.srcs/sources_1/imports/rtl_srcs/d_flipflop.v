`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2025 07:31:27 PM
// Design Name: 
// Module Name: d_flipflop
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


module d_flipflop(
    input d_in,
    input clk, en, rst,
    output reg d_out
    );
    
    always@(posedge clk)
    begin
        if (rst == 1'b1)
        begin
            d_out <= 1'b0;
        end
        else begin
            if (en == 1'b1)
            begin
                d_out <= d_in;
            end
        end
    end
    
endmodule
