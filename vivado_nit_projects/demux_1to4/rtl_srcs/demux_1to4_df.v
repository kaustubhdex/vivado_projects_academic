`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 04:45:27 PM
// Design Name: 
// Module Name: demux_1to4_df
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


module demux_1to4_df(
    input demux_in,
    input [1:0] sel,
    output [3:0] demux_out
    );
    
    assign demux_out[0] = (demux_in && (~sel[1] && ~sel[0]));
    assign demux_out[1] = (demux_in && (~sel[1] && sel[0]));
    assign demux_out[2] = (demux_in && (sel[1] && ~sel[0]));
    assign demux_out[3] = (demux_in && (sel[1] && sel[0]));
endmodule
