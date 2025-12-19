`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2025 16:06:25
// Design Name: 
// Module Name: w1
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


module w1(input [3:0]a, input [3:0]b, output [7:0]p);
wire [3:0]w [0:3];
wire [1:12] c;
wire [1:6] s;
genvar i,j;
generate
for(i=0;i<4;i=i+1) begin
for(j=3;j>=0;j=j-1) begin
assign w[i][j] = a[i]*b[j];
end
end
endgenerate
HA HA1(s[1],c[1],w[2][1],w[3][0]);
HA HA2(s[2],c[2],w[2][2],w[3][1]);
HA HA3(s[3],c[3],w[1][1],w[2][0]);
FA f1(s[4],c[4],s[1],w[0][3],w[1][2]);
FA f2(s[5],c[5],s[2],c[1],w[1][3]);
FA f3(s[6],c[6],c[2],w[2][3],w[3][2]);
HA HA4(p[1],c[7],w[0][1],w[1][0]);
FA f4(p[2],c[8],s[3],w[0][2],c[7]);
FA f5(p[3],c[9],s[4],c[3],c[8]);
FA f6(p[4],c[10],s[5],c[4],c[9]);
FA f7(p[5],c[11],s[6],c[5],c[10]);
FA f8(p[6],c[12],w[3][3],c[6],c[11]);
assign p[0]=w[0][0];
assign p[7]= c[12];
endmodule
