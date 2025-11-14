`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 07:02:07 PM
// Design Name: 
// Module Name: tb_PISO_dreg
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


module tb_PISO_dreg(

    );
    
    reg tb_clk, tb_rst;
    reg [7:0] tb_in_PISO_dreg;
    wire tb_out_PISO_dreg;
    PISO_dreg dut1 (
        .clk(tb_clk),
        .rst(tb_rst),
        .in_PISO_dreg(tb_in_PISO_dreg),
        .out_PISO_dreg(tb_out_PISO_dreg)
    );
    initial
    begin
        tb_clk = 1'b0;
        tb_in_PISO_dreg = 8'd0;
        tb_rst = 1'b0;
    end
    
    always #2 tb_clk = ~tb_clk;
    always #30 tb_in_PISO_dreg = tb_in_PISO_dreg + 8'b00000001;
    always #800 tb_rst = ~tb_rst;
endmodule
