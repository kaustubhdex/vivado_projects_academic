module comparator (s, tot, tot_lts);
	parameter n=8;
	input [n-1:0] s, tot;
	output tot_lts;
	assign tot_lts = tot<s;
//	always@(s,tot)
//	if (tot<=s) begin
//		tot_lts = 1'b1;
//		end
//	else begin
//		tot_lts = 1'b0;
//		end
		
endmodule