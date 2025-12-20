// Quartus Prime Verilog Template
// 4-State Mealy state machine

// A Mealy machine has outputs that depend on both the state and 
// the inputs.  When the inputs change, the outputs are updated
// immediately, without waiting for a clock edge.  The outputs
// can be written more than once per state or per clock cycle.

module controller_fsm
(input	c, tot_lts,
	output reg tot_clr, tot_ld, d);

	// Declare state register
	reg		[1:0] state;

	// Declare states
	parameter init = 2'b00, waits = 2'b01, add = 2'b10, disp = 2'b11;

	// Determine the next state synchronously, based on the
	// current state and the input
	initial begin
	   state = init;
       tot_clr    = 1'b0;
       tot_ld     = 1'b0;
       d          = 1'b0;
	end
	
	always @ (~c or c or tot_lts or ~tot_lts) begin
		case (state)
			init:
				begin
					state      <= waits;
					d          <= 1'b0;
                    tot_clr    <= 1'b1;
                    tot_ld     <= 1'b0;

				end
			waits:
			begin
			    d          <= 1'b0;
                tot_clr    <= 1'b0;
                tot_ld     <= 1'b0;
				if (c)
				begin
					state <= add;
				end
				else if (~tot_lts) begin
					state <= disp;
				end
				else
				begin
					state <= waits;
				end
		    end
			add:
				
				begin
				    d          <= 1'b0;
                    tot_clr    <= 1'b0;
                    tot_ld     <= 1'b1;
					state <= waits;
				end
				
			disp:
				begin
				    d          <= 1'b1;
                    tot_clr    <= 1'b0;
                    tot_ld     <= 1'b0;
					state <= init;
				end
		endcase
	end

//	assign d = state[0] & state[1];
//	assign tot_clr = ~state[1] & ~state[0];
//	assign tot_ld =state[1] & ~state[0];

endmodule