`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2025 07:25:25 PM
// Design Name: 
// Module Name: tb_wt_mult_4bit
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


module tb_wt_mult_4bit(

    );

  reg  [3:0] a, b;
  wire [7:0] p_dut;
  reg  [7:0] p_ref;

  wallace4 dut(.a(a), .b(b), .p(p_dut));

  integer i, j;
  initial begin
    // Exhaustive check for all 4-bit pairs
    a = 4'b0000;
    b = 4'b0000;
    p_ref = 8'b00000000;
    for (i = 0; i < 16; i = i + 1) begin
      for (j = 0; j < 16; j = j + 1) begin
        a = i[3:0];
        b = j[3:0];
        #1; // small delta for combinational settle
        p_ref = a * b;
        if (p_dut !== p_ref) begin
          $display("MISMATCH a=%0d b=%0d p_dut=%0d p_ref=%0d @ %0t",
                    a, b, p_dut, p_ref, $time);
          $fatal;
        end
      end
    end
    $display("All tests passed ?");
    $finish;
  end

endmodule
