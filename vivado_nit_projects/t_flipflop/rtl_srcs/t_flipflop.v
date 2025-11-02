`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2025 02:45:47 PM
// Design Name: 
// Module Name: t_flipflop
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


module t_flipflop(clk, t_in, rst, t_out);
    input t_in, clk, rst;
    output reg t_out;
    
    always@(posedge clk)
    begin
        if(rst)
        begin
            t_out <= 1'b0;
        end
        
        else 
        begin
            if(t_in)
            begin
                t_out <= ~t_out;
            end
        end
    end
endmodule
