`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 04:39:38 PM
// Design Name: 
// Module Name: tb_demux_1to4
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


module tb_demux_1to4(

    );
    // testing inputs
    reg test_demux_in;  
    reg [1:0] test_sel;
    // testing inputs
    
    // testing outputs
    wire [3:0] test_demux_out1, test_demux_out2;
    // testing outputs
    
    // instantiation of behavioral model
    demux_1to4 tb1 (
        .demux_in(test_demux_in),
        .sel(test_sel),
        .demux_out(test_demux_out1)
        );
    // instantiation of behavioral model
        
    // instantiation of dataflow model
    demux_1to4_df tb2 (
        .demux_in(test_demux_in),
        .sel(test_sel),
        .demux_out(test_demux_out2)
        );
    // instantiation of dataflow model
    
    // initialisation of the test input registers
    initial 
    begin
        test_demux_in = 1'b0;
        test_sel = 2'b00;
    end
    
    
    // registers toggling inputs
    always #5 test_demux_in = ~test_demux_in;
    always #50 test_sel = test_sel + 2'b01;
     
endmodule
