`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 06:19:24 PM
// Design Name: 
// Module Name: PISO_dreg
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


module PISO_dreg(clk, rst, in_PISO_dreg, out_PISO_dreg);

    parameter in_width = 8;
    parameter count_width = 3;
    input clk, rst;
    input [in_width-1:0] in_PISO_dreg;
    output out_PISO_dreg;
    
    reg clk_by_8;
    reg [in_width-1:0] in_reg;
    reg [count_width-1:0] shift_count;
    wire out_PISO_temp;
    
    initial
    begin
        //out_PISO_dreg = 1'b0;
        clk_by_8 = 1'b0;
        in_reg = 8'd0;
        shift_count =3'b000;
    end
    
    mux_8to1 mux1 (
        .in_mux_8to1(in_reg),
        .sel_mux_8to1(shift_count),
        .out_mux_8to1(out_PISO_dreg)
        );
        
    //assign out_PISO_dreg = out_PISO_temp;
    
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
         //   out_PISO_dreg = 1'b0;
        end
        
        else
        begin
            shift_count = shift_count + 3'b001;
            if((shift_count == 3'b100)|(shift_count == 3'b000))
            begin
                clk_by_8 = ~clk_by_8;
            end
            //out_PISO_dreg = out_PISO_temp;
        end
    end
    
    always@(posedge clk_by_8)
    begin
        in_reg = in_PISO_dreg;
    end
    
    
endmodule
