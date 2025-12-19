`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 01:53:06 PM
// Design Name: 
// Module Name: tb_mod5_counter
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


module tb_mod5_counter(

    );
    
    reg tb_up_mod5, rst_up_mod5, tb_clk;
    wire [2:0] tb_out_mod5;
    
    mod5_counter counter_0(
        .up_mod5(tb_up_mod5),.rst_mod5(rst_up_mod5),.clk(tb_clk),
        .out_mod5(tb_out_mod5)
    );
    
    initial begin
        tb_up_mod5  = 1'b0;
        rst_up_mod5 = 1'b0;
        tb_clk      = 1'b0;
        $monitor("time=%g\t, clk=%b, rst=%b, up=%b, count=%d",$time,tb_clk,rst_up_mod5,tb_up_mod5,tb_out_mod5);
        #10
        tb_up_mod5  = 1'b1; #10
        tb_up_mod5  = 1'b0; #10
        tb_up_mod5  = 1'b1; #20
        tb_up_mod5  = 1'b0; #10
        tb_up_mod5  = 1'b1; #10
        tb_up_mod5  = 1'b0; #50
        tb_up_mod5  = 1'b1; #20
        tb_up_mod5  = 1'b0; #10
        tb_up_mod5  = 1'b1; #30
        tb_up_mod5  = 1'b0; #70
        tb_up_mod5  = 1'b1; #37
        rst_up_mod5 = 1'b1; #20
        tb_up_mod5  = 1'b0; #10
        rst_up_mod5 = 1'b0; #10
        tb_up_mod5  = 1'b1; #70
        tb_up_mod5  = 1'b0; #10;
        $finish;
    end
    
    initial begin
        $dumpfile("mod5_counter.vcd");
        $dumpvars(0,tb_mod5_counter);
    end
    
    always #10 tb_clk = ~tb_clk;
endmodule
