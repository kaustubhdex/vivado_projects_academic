`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2025 19:30:54
// Design Name: 
// Module Name: FA
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


module FA(    
    output Sum,
    output Cout,
    input a,
    input b,
    input Cin
    );
    wire s,c1,c2;
    HA H1(s,c1,a,b);
    HA H2(Sum,c2,s,Cin);
    or r1(Cout,c1,c2);
endmodule
