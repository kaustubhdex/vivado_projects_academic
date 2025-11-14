`timescale 1ns / 1ps

// Name: Pawar Kaustubh Vijay 
// Roll no: 25204121


module nbit_dreg(
    input [15:0] d_in,
    input clk, en, rst,
    output reg [15:0] d_out
    );
    
    always@(posedge clk)
    begin
        if (rst == 1'b1)
        begin
            d_out <= 16'd0;
        end
        else begin
            if (en == 1'b1)
            begin
                d_out <= d_in;
            end
        end
    end
    
endmodule
