`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2025 09:05:16 AM
// Design Name: 
// Module Name: flip_flop
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


module flip_flop(
input clk , d_in ,
output  reg d_out 
   );
 always@ ( posedge clk )
begin
if (d_in == 1'b1)
begin
d_out <= ~d_out;
end
end

endmodule
