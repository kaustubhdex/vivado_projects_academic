`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2025 05:48:11 PM
// Design Name: 
// Module Name: tb_soda_dispenser_machine
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


module tb_soda_dispenser_machine(

    );

    // Testbench signals
    reg  [7:0] s, a;
    reg        c;
    wire       d;

    // DUT instantiation
    soda_dispense_machine dut (
        .s(s),
        .a(a),
        .c(c),
        .d(d)
    );

    // Test procedure
    initial begin

        // Initialize
        c = 1'b0;
        s = 8'd0; 
        a = 8'd0; 
        s = 8'd20;
        #10;
        c = 1;
        #10;
        c = 0;
        // Test Case 1: Simple input set 1
        
        
        #10;
        
        a = 8'd5;#5
        c = 1;#5
        #10;
        c = 0;
        // Test Case 2: Change inputs
        //s = 8'd26;
        
        #10;
        
        a = 8'd7;#5
        c = 1;#5
        #10;
        c = 0;
        // Test Case 3: More random values
        //s = 8'd26;
        
        #10;
        
        a = 8'd12;#5
        c = 1;#5
        #10;
        c = 0;
        // Test Case 4: Boundary values
        //s = 8'h26;
        
        #10;
        
        a = 8'h3;#5
        c = 1;#5
        #10;
        c = 0;
        #10;
        // End simulation
        $finish;
    end

endmodule

