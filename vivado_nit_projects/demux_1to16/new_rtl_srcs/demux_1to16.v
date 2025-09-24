`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 02:00:51 PM
// Design Name: 
// Module Name: demux_1to16
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


module demux_1to16(
    input in_demux_1to16,
    input [3:0] sel_demux_1to16,
    input [15:0] out_demux_1to16
    );
    
    wire cw_01, cw_02, cw_03, cw_04;
    
    demux_1to4_df inst0 (
        .demux_in(in_demux_1to16),
        .sel({sel_demux_1to16[3],sel_demux_1to16[2]}),
        .demux_out({cw_04, cw_03, cw_02, cw_01})
    );
    
    demux_1to4_df inst1 (
        .demux_in(cw_01),
        .sel({sel_demux_1to16[1],sel_demux_1to16[0]}),
        .demux_out(out_demux_1to16[3:0])
    );
    
    demux_1to4_df inst2 (
        .demux_in(cw_02),
        .sel({sel_demux_1to16[1],sel_demux_1to16[0]}),
        .demux_out(out_demux_1to16[7:4])
    );
    
    demux_1to4_df inst3 (
        .demux_in(cw_03),
        .sel({sel_demux_1to16[1],sel_demux_1to16[0]}),
        .demux_out(out_demux_1to16[11:8])
    );
    
    demux_1to4_df inst4 (
        .demux_in(cw_04),
        .sel({sel_demux_1to16[1],sel_demux_1to16[0]}),
        .demux_out(out_demux_1to16[15:12])
    );
endmodule
