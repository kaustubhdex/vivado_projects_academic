`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2025 06:59:29 PM
// Design Name: 
// Module Name: tb_mux_4to1
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


module tb_mux_4to1(

    );
    
    reg [3:0] test_a_in;
    reg [1:0] test_sel;
    wire test_mux_out;
    
    
    mux_4to1_df tb1 (
    .a_in(test_a_in),
    .sel(test_sel),
    .mux_out(test_mux_out)
    );
    
    initial
        begin
            test_a_in   = 4'b0000;
            test_sel    = 2'b00;
        end
    
    always #5   test_a_in   = test_a_in + 4'b0001;
    always #200 test_sel    = test_sel + 2'b01;
    
endmodule
