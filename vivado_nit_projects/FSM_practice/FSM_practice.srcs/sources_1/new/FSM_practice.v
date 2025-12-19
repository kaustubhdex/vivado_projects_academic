`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2025 10:51:43 AM
// Design Name: 
// Module Name: FSM_practice
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


module FSM_practice(
    input clk, x,
    output reg y
    );
    
   parameter s00 = 2'b00; // state1
   parameter s01 = 2'b01; // state2
   parameter s10 = 2'b10;
   parameter s11 = 2'b11;

   reg [1:0] state = s00;

   always @(posedge clk)
//      if (<reset>) begin
//         <state> <= <state1>;
//         <outputs> <= <initial_values>;
//      end
//      else
         case (state)
            s00 : begin
               if (x == 1'b0)
               begin
                  state <= s00;
                  y <= 1'b0;
               end
                  
               else if (x ==1'b1)
               begin
                  state <= s10;
                  y <= 1'b0;
               end
               
            end
            s01 : begin
               if (x==1'b0)
                  begin
                state<= s01;
                y <= 1'b0;
                end
               else if (x==1'b1)
               begin
                  state <= s11;
                  y<=1'b0;
               end
              
            end
           s10 : begin
               if (x == 1'b0)
               begin
                  state <= s10;
                  y <= 1'b0;
               end
                  
               else if (x ==1'b1)
               begin
                  state <= s01;
                  y <= 1'b0;
               end
               
            end
            s11 : begin
               if (x == 1'b0)
               begin
                  state <= s11;
                  y <= 1'b1;
               end
                  
               else if (x ==1'b1)
               begin
                  state <= s00;
                  y <= 1'b0;
               end
               
            end
         endcase
							
							
endmodule
