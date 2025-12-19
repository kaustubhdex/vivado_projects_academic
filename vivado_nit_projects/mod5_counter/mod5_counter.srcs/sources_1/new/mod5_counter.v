`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 01:46:34 PM
// Design Name: 
// Module Name: mod5_counter
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


module mod5_counter(
    input up_mod5,rst_mod5,clk,
    output reg [2:0] out_mod5
    );
    
    initial begin
        out_mod5 = 3'b000;
        
    end
    
    always@(posedge clk or posedge rst_mod5)
    begin
        if (rst_mod5) begin
            out_mod5 <= 3'b000;
        end
        else begin
            if (up_mod5)
            begin
                if(out_mod5 >= 3'b101)
                begin
                    out_mod5 <= 3'b000;
                end
                else
                begin
                    out_mod5 <= out_mod5 + 3'b001;
                end
            end
        
        end
             
    end
    
endmodule
