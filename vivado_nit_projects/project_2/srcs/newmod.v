`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2025 08:42:31 PM
// Design Name: 
// Module Name: newmod
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


module newmod(
            input [11:0] x,c0,c1,c2,
			input clk,rst, ca0, ca1, cen, 
			output [24:0] y
			);
		reg [11:0] Xt0,Xt1,Xt2,cr0,cr1,cr2;
		reg [24:0] y_reg;
		
		wire [24:0] y_wire, mx0, mx1, mx2, adr0;
		
		wire cen0, cen1, cen2, chold0;
		
		assign w1=12'd0;
		assign w2=12'd0;
		
		multiplier dut1 (Xt0,cr0,mx0);
		multiplier dut2 (Xt1,cr1,mx1);
		multiplier dut3 (Xt2,cr2,mx2);
		
		full_adder dut4 (mx0, mx1, adr0);
		full_adder dut5 (adr0, mx2, y_wire);
		
		decoder_2x4 dut0 (ca0, ca1, cen0, cen1, cen2, chold0, cen);
		
		always @(posedge clk or posedge rst)
		if (rst) begin
		Xt0 <= 12'd0;
		Xt1 <= 12'd0;
		Xt2 <= 12'd0;
		end else if (cen) begin
		Xt0 <= x;
		Xt1 <= Xt0;
		Xt2 <= Xt1;
		end
		
		//
		always @(posedge clk or posedge rst)
		if (rst) begin
		cr0 <= 12'd0;
		cr1 <= 12'd0;
		cr2 <= 12'd0;
		end else if(cen0) begin
		cr0 <= c0;
		end else if (cen1) begin
		cr1 <= c1;
		end else if (cen2) begin
		cr2 <= c2;
		end
		//
		
		always @(posedge clk or posedge rst)
		if (rst) begin
		y_reg <= 12'd0;
		end else if(cen) begin
		y_reg <= y_wire;
		end
		
		assign y= y_reg;
		
endmodule

module full_adder (a_in, b_in, sum_out);

   parameter n=24;
	
	input [n-1:0] a_in, b_in;
	output [n-1:0] sum_out;
	
	assign sum_out = a_in + b_in;
	
endmodule

module multiplier (a_in, b_in, mul_out);

	parameter m=12;
	
	input [m-1:0] a_in, b_in;
	output [2*m-1:0] mul_out;
	
	assign mul_out = a_in * b_in;

endmodule

module decoder_2x4(in0, in1, out0, out1, out2, out3, en);
		input in0, in1, en;
		output reg out0, out1, out2, out3;
		
		always@(in0, in1, en)
		begin
		if(~en) begin
			out0 <= 1'd0;
			out1 <= 1'd0;
			out2 <= 1'd0;
			out3 <= 1'd0;
			end
		else begin
			case({in0,in1})
				2'b00:begin 
						out0 <= 1'd1;
						out1 <= 1'd0;
						out2 <= 1'd0;
						out3 <= 1'd0;
						end
				2'b01:begin
						out0 <= 1'd0;
						out1 <= 1'd1;
						out2 <= 1'd0;
						out3 <= 1'd0;
						end
				2'b10:begin
						out0 <= 1'd0;
						out1 <= 1'd0;
						out2 <= 1'd1;
						out3 <= 1'd0;
						end
				2'b11:begin
						out0 <= 1'd0;
						out1 <= 1'd0;
						out2 <= 1'd0;
						out3 <= 1'd1;
						end
				default:begin
						  out0 <= 1'd0;
						  out1 <= 1'd0;
						  out2 <= 1'd0;
						  out3 <= 1'd0;
						  end
			endcase
			end
		end
endmodule