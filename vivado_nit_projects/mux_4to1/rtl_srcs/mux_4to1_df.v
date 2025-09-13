`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2025 07:10:15 PM
// Design Name: 
// Module Name: mux_4to1_df
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


module mux_4to1_df(
    input [3:0] a_in,
    input [1:0] sel,
    output mux_out
    );
    wire prod0, prod1, prod2, prod3;
    
    assign prod0 = (~sel[0] && ~sel[1] && a_in[0]);
    assign prod1 = (sel[0] && ~sel[1] && a_in[1]);
    assign prod2 = (~sel[0] && sel[1] && a_in[2]);
    assign prod3 = (sel[0] && sel[1] && a_in[3]);
    
    assign mux_out = (prod0 || prod1 || prod2 || prod3);
endmodule
