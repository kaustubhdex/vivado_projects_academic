`timescale 1ns / 1ps

// Name: Pawar Kaustubh Vijay 
// Roll no: 25204121

module nbit_dreg (clk, en, rst, d_in, d_out);
    parameter nbit = 12;
    input clk, en, rst;
    input [nbit-1:0] d_in;
    output [nbit-1:0] d_out;
    
    genvar j;
    
  
    generate
        for(j=0;j<nbit;j=j+1)
            begin: dreg_inst
                d_flipflop inst (
                .d_in(d_in[j]),
                .clk(clk),
                .en(en),
                .rst(rst),
                .d_out(d_out)
                );
            end
    endgenerate
    



endmodule
