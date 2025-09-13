`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 04:36:00 PM
// Design Name: 
// Module Name: tb_gl_subs
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


module tb_gl_subs(

    );
    
    reg test_a_in, test_b_in, test_brw_in;
    wire test_hs_diff_out, test_hs_brw_out, test_fs_diff_out, test_fs_brw_out;
    
    gl_half_sub tb1 (
        .a_in(test_a_in),
        .b_in(test_b_in),
        .diff_out(test_hs_diff_out),
        .brw_out(test_hs_brw_out)
        );
        
    gl_full_sub tb2 (
        .a_in(test_a_in),
        .b_in(test_b_in),
        .brw_in(test_brw_in),
        .diff_out(test_fs_diff_out),
        .brw_out(test_fs_brw_out)
        );
        
    initial
    begin
        test_a_in = 1'b0;
        test_b_in = 1'b0;
        test_brw_in = 1'b0;
    end
    
    always #5 test_a_in = ~test_a_in;
    always #10 test_b_in = ~test_b_in;
    always #20 test_brw_in = ~test_brw_in;
    
endmodule
