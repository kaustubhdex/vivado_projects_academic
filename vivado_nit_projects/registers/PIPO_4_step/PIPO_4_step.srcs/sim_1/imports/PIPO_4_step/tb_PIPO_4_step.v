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


module tb_PIPO_4_step(

    );
    
    reg [15:0]tb_P_in;
    reg tb_clk, tb_rst;
    wire [15:0] tb_P_out;
    //reg [3:0] temp;
    PIPO_4_step dut1 (
        .P_in(tb_P_in),
        .clk(tb_clk),
        .rst(tb_rst),
        .P_out(tb_P_out)
    ); 
   
    initial
    begin
        tb_P_in = 15'b0;
        tb_clk = 1'b0;
        tb_rst = 1'b0;
        #19 tb_P_in = 15'h15;
        #5 tb_P_in = 15'h25;
        #5 tb_P_in = 15'h89;
        #5 tb_P_in = 15'hA8;
        #5 tb_P_in = 15'hB7;
        #5 tb_P_in = 15'hC6;
    end
    
    always #1 tb_clk = ~tb_clk;
endmodule
