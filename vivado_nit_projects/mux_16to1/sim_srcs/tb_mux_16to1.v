`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 06:02:51 PM
// Design Name: 
// Module Name: tb_mux_16to1
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
// Name: Pawar Kaustubh Vijay
// Roll no: 25204121
module tb_mux_16to1(

    );
    
    reg [15:0] test_mux_16to1_in;
    reg [3:0] test_sel;
    wire test_mux_16to1_out;
    
    mux_16to1_direct tb1 (
        .mux_16to1_in(test_mux_16to1_in),
        .sel(test_sel),
        .mux_16to1_out(test_mux_16to1_out)
    );
    
    initial 
    begin
        test_mux_16to1_in = 16'd0;
        test_sel = 4'b0000;
    end
    
    always #1 test_mux_16to1_in[0] = ~test_mux_16to1_in[0];
    always #2 test_mux_16to1_in[1] = ~test_mux_16to1_in[1];
    always #3 test_mux_16to1_in[2] = ~test_mux_16to1_in[2];
    always #4 test_mux_16to1_in[3] = ~test_mux_16to1_in[3];
    always #5 test_mux_16to1_in[4] = ~test_mux_16to1_in[4];
    always #6 test_mux_16to1_in[5] = ~test_mux_16to1_in[5];
    always #7 test_mux_16to1_in[6] = ~test_mux_16to1_in[6];
    always #8 test_mux_16to1_in[7] = ~test_mux_16to1_in[7];
    always #9 test_mux_16to1_in[8] = ~test_mux_16to1_in[8];
    always #10 test_mux_16to1_in[9] = ~test_mux_16to1_in[9];
    always #11 test_mux_16to1_in[10] = ~test_mux_16to1_in[10];
    always #12 test_mux_16to1_in[11] = ~test_mux_16to1_in[11];
    always #13 test_mux_16to1_in[12] = ~test_mux_16to1_in[12];
    always #14 test_mux_16to1_in[13] = ~test_mux_16to1_in[13];
    always #15 test_mux_16to1_in[14] = ~test_mux_16to1_in[14];
    always #16 test_mux_16to1_in[15] = ~test_mux_16to1_in[15];
    
    always #50 test_sel = test_sel + 4'b0001;
    
endmodule
