`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2025 03:44:46 PM
// Design Name: 
// Module Name: tb_dec_3to8
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


module tb_dec_3to8(

    );
    reg [2:0] tb_in_dec_3to8;
    wire [7:0] tb_out_dec_3to8;
    
    dec_3to8 dut1 (
        .in_dec_3to8(tb_in_dec_3to8),
        .out_dec_3to8(tb_out_dec_3to8)
        );
    
    initial
    begin
        tb_in_dec_3to8 = 3'b000;
    end
    
    always #10 tb_in_dec_3to8 = tb_in_dec_3to8 + 3'b001;
endmodule
