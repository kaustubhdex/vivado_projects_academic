`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2025 20:23:38
// Design Name: 
// Module Name: w1tb
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


module w1tb();
reg [3:0]a;
reg [3:0]b;
wire [7:0]p;
w1 dut(a,b,p);
initial 
begin
a=4'b0011;b=4'b0101;#10
a=4'b1111;b=4'b1111;#10
$finish;
end
endmodule
