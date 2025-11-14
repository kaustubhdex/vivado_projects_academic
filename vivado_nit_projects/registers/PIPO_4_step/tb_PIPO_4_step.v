`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 02:30:08 PM
// Design Name: 
// Module Name: tb_SISO_4_step
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


module tb_SISO_4_step(

    );
    
    reg tb_S_in, tb_clk, tb_rst;
    wire tb_S_out;
    reg [3:0] temp;
    SISO_4_step dut1 (
        .S_in(tb_S_in),
        .clk(tb_clk),
        .rst(tb_rst),
        .S_out(tb_S_out)
    ); 
   
    initial
    begin
        tb_S_in = 1'b0;
        tb_clk = 1'b0;
        tb_rst = 1'b0;
        #19 tb_S_in = 1'b1;
        #5 tb_S_in = 1'b0;
        #5 tb_S_in = 1'b0;
        #5 tb_S_in = 1'b1;
        #5 tb_S_in = 1'b0;
        #5 tb_S_in = 1'b1;
    end
    
    always #1 tb_clk = ~tb_clk;
endmodule
