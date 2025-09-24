`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 05:46:24 PM
// Design Name: 
// Module Name: mux_16to1
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
//Name: Pawar Kaustubh Vijay
//Roll no: 25204121
module mux_16to1(
    input [15:0] mux_16to1_in,
    input [3:0] sel,
    output mux_16to1_out
    );
    
    wire [1:0] wire_sel03, wire_sel4;
    wire inst4_out, inst3_out, inst2_out, inst1_out, inst0_out;
    
    assign wire_sel03 = sel[1:0]; 
    assign mux_16to1_out = inst4_out;
    
    mux_4to1 inst4 (
        .a_in({inst3_out, inst2_out, inst1_out, inst0_out}),
        .sel({sel[3], sel[2]}),
        .mux_out(inst4_out)
        );
        
    mux_4to1 inst3 (
        .a_in(mux_16to1_in[15:12]),
        .sel(wire_sel03),
        .mux_out(inst3_out)
        );
    mux_4to1 inst2 (
        .a_in(mux_16to1_in[11:8]),
        .sel(wire_sel03),
        .mux_out(inst2_out)
        );
    
   mux_4to1 inst1 (
        .a_in(mux_16to1_in[7:4]),
        .sel(wire_sel03),
        .mux_out(inst1_out)
        );
        
   mux_4to1 inst0 (
        .a_in(mux_16to1_in[3:0]),
        .sel(wire_sel03),
        .mux_out(inst0_out)
        );        
    
    
endmodule
