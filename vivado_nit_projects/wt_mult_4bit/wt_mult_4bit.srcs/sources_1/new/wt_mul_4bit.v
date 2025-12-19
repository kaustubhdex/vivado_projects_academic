`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2025 07:24:17 PM
// Design Name: 
// Module Name: wt_mul_4bit
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


module wt_mul_4bit(
// 4-bit Wallace Tree Multiplier
// Produces p[7:0] = a * b without using the '*' operator

  input  wire [3:0] a,
  input  wire [3:0] b,
  output wire [7:0] p
);
  // Partial products
  wire p00 = a[0] & b[0];
  wire p01 = a[0] & b[1];
  wire p02 = a[0] & b[2];
  wire p03 = a[0] & b[3];

  wire p10 = a[1] & b[0];
  wire p11 = a[1] & b[1];
  wire p12 = a[1] & b[2];
  wire p13 = a[1] & b[3];

  wire p20 = a[2] & b[0];
  wire p21 = a[2] & b[1];
  wire p22 = a[2] & b[2];
  wire p23 = a[2] & b[3];

  wire p30 = a[3] & b[0];
  wire p31 = a[3] & b[1];
  wire p32 = a[3] & b[2];
  wire p33 = a[3] & b[3];

  // --- Wallace reduction ---

  // w2: reduce 3 -> 2
  wire s2, c3a;
  fa FA_w2 (.x(p20), .y(p11), .z(p02), .s(s2), .c(c3a));

  // w3: first reduce 4 -> 3
  wire s3a, c4a;
  fa FA_w3a (.x(p30), .y(p21), .z(p12), .s(s3a), .c(c4a));
  // w3: reduce remaining 3 -> 2 (s3a, p03, c3a)
  wire s3b, c4b;
  fa FA_w3b (.x(s3a), .y(p03), .z(c3a), .s(s3b), .c(c4b));

  // w4: had 3 + two carries from w3
  wire s4a, c5a;
  fa FA_w4a (.x(p31), .y(p22), .z(p13), .s(s4a), .c(c5a));
  wire s4b, c5b;
  fa FA_w4b (.x(s4a), .y(c4a), .z(c4b), .s(s4b), .c(c5b));

  // w5: had 2 + c5a; then pair remaining with c5b
  wire s5a, c6a;
  fa FA_w5a (.x(p32), .y(p23), .z(c5a), .s(s5a), .c(c6a));
  // (s5a, c5b) left as two bits in w5

  // --- Build the final two rows (X + Y) ---
  // Row X bits by weight: [w6..w0] = {p33, s4b, s3b, s2, p10, p00}
  // Row Y bits by weight: [w6..w0] = {c6a, c5b, 1'b0, 1'b0, p01, 1'b0}
  wire [7:0] X = {1'b0, p33, s4b, s3b, s2, p10, p00, 1'b0}; // note shift alignment
  wire [7:0] Y = {1'b0, c6a, c5b, 1'b0, 1'b0, p01, 1'b0, 1'b0};

  // Explanation of alignment:
  // p[0] is w0 = p00, handled by X[1] being p00 and overall LSB passage; clearer way below:
  // Instead, construct explicitly by weights into 8-bit buses:

  // Explicit, less error-prone mapping:
  wire [7:0] rowA = {
    1'b0,        // w7
    p33,         // w6
    s5a,         // w5 bit 0 -> we'll fold s5a into final adder via X/Y below
    s4b,         // w4
    s3b,         // w3
    s2,          // w2
    p10,         // w1 bit 0
    p00          // w0
  };

  wire [7:0] rowB = {
    1'b0,        // w7
    c6a,         // w6
    c5b,         // w5 bit 1
    1'b0,        // w4
    1'b0,        // w3
    1'b0,        // w2
    p01,         // w1 bit 1
    1'b0         // w0
  };

  // Final carry-propagate add (Vivado will map this to fast carry-chain)
  assign p = rowA + rowB;

endmodule