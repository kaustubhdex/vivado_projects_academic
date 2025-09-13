`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 04:30:21 PM
// Design Name: 
// Module Name: demux_1to4
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


module demux_1to4(
    input demux_in,
    input [1:0] sel,
    output reg [3:0] demux_out
    );
    
    always@(demux_in, sel)
        begin
            case(sel)
                2'b00: begin
                    demux_out[0] = demux_in;
                    demux_out[1] = 1'b0;
                    demux_out[2] = 1'b0;
                    demux_out[3] = 1'b0;
                    end
                2'b01: begin
                    demux_out[0] = 1'b0;
                    demux_out[1] = demux_in;
                    demux_out[2] = 1'b0;
                    demux_out[3] = 1'b0;
                    end
                2'b10: begin
                    demux_out[0] = 1'b0;
                    demux_out[1] = 1'b0;
                    demux_out[2] = demux_in;
                    demux_out[3] = 1'b0;
                    end    
                2'b11: begin
                    demux_out[0] = 1'b0;
                    demux_out[1] = 1'b0;
                    demux_out[2] = 1'b0;
                    demux_out[3] = demux_in;
                    end
             endcase
        end
        
endmodule
