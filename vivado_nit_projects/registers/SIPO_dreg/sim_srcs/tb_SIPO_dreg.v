`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2025 06:05:44 PM
// Design Name: 
// Module Name: tb_SIPO_dreg
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


module tb_SIPO_dreg(

    );
    reg tb_in_SIPO_dreg, tb_clk, tb_rst;
    wire[7:0] tb_out_SIPO_dreg;
    
    SIPO_dreg uut (
        .in_SIPO_dreg(tb_in_SIPO_dreg),
        .clk(tb_clk), 
        .rst(tb_rst),
        .out_SIPO_dreg(tb_out_SIPO_dreg)
    );
    
    initial begin
        tb_in_SIPO_dreg = 1'b0;
        tb_clk          = 1'b0;
        tb_rst          = 1'b0;
    end
    initial begin
        $monitor("time=%g\t, input=%b, clk =%b, rst=%b, output=%b ",$time, tb_in_SIPO_dreg, tb_clk, tb_rst, tb_out_SIPO_dreg);
        //#10 tb_rst = 1'b1;
        #22 tb_rst = 1'b0;
        #10 tb_in_SIPO_dreg = 1'b1;
        #15 tb_in_SIPO_dreg = 1'b0;
        #10 tb_in_SIPO_dreg = 1'b1;
        #25 tb_in_SIPO_dreg = 1'b0;
        #10 tb_in_SIPO_dreg = 1'b1;
        #20 tb_in_SIPO_dreg = 1'b0;
        #10 tb_in_SIPO_dreg = 1'b1;
        #10 tb_in_SIPO_dreg = 1'b0;
        #10 tb_in_SIPO_dreg = 1'b1;
        #10 tb_in_SIPO_dreg = 1'b0;
        #10 tb_in_SIPO_dreg = 1'b1;
        #10 tb_in_SIPO_dreg = 1'b0;
        #10 tb_in_SIPO_dreg = 1'b1;
        #10 tb_in_SIPO_dreg = 1'b0;
        #10 tb_in_SIPO_dreg = 1'b1;
        #10 tb_in_SIPO_dreg = 1'b0;
        #10 tb_in_SIPO_dreg = 1'b1;
        #10 tb_in_SIPO_dreg = 1'b0;
        $finish;
    end
    always #5 tb_clk = ~tb_clk;
endmodule
