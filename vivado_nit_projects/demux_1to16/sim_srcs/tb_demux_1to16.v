`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2025 02:14:32 PM
// Design Name: 
// Module Name: tb_demux_1to16
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


module tb_demux_1to16(

    );
    
    reg test_in_demux_1to16;
    reg [3:0] test_sel_demux_1to16;
    wire [15:0] test_out_demux_16to1;
    
    demux_1to16 tb1 (
        .in_demux_1to16(test_in_demux_1to16),
        .sel_demux_1to16(test_sel_demux_1to16),
        .out_demux_1to16(test_out_demux_16to1)
    );
    
    initial
    begin
        test_in_demux_1to16 = 1'b0;
        test_sel_demux_1to16 = 4'b0000;
    end
    
    always #1  test_in_demux_1to16 = ~test_in_demux_1to16;
    always #20 test_sel_demux_1to16 = test_sel_demux_1to16 + 4'b0001;
    
endmodule
