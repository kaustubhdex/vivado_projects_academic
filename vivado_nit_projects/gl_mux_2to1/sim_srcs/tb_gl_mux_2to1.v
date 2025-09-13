`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 10:30:36 PM
// Design Name: 
// Module Name: tb_gl_mux_2to1
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


module tb_gl_mux_2to1(

    );
    reg [1:0] test_mux_in;
    reg test_sel;
    wire test_mux_out;
    gl_mux_2to1 inst1 (
        .mux_in(test_mux_in),
        .sel(test_sel),
        .mux_out(test_mux_out)
        );
    
    initial
    begin
        test_mux_in = 2'b00;
        test_sel = 1'b0;
    end
    
    always #5 test_mux_in = test_mux_in + 2'b01;
    always #50 test_sel = ~test_sel;
    
endmodule
