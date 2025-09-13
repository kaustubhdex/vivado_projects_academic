`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2025 08:45:05 PM
// Design Name: 
// Module Name: newmod_tb
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



module newmod_tb;

    // Declare inputs as reg and outputs as wire
    reg [11:0] x, c0, c1, c2;
    reg clk, rst, ca0, ca1, cen;
    wire [24:0] y;

    // Instantiate the DUT (Device Under Test)
    fir_filter uut (
        .x(x),
        .c0(c0),
        .c1(c1),
        .c2(c2),
        .clk(clk),
        .rst(rst),
        .ca0(ca0),
        .ca1(ca1),
        .cen(cen),
        .y(y)
    );

    // Clock generation
    always #5 clk = ~clk; // 10 ns clock period
    

    // Test sequence
    initial begin
        // Initialize all inputs
        x = 12'b0;
        c0 = 12'b0;
        c1 = 12'b0;
        c2 = 12'b0;
        rst = 1;
        ca0 = 0;
        ca1 = 0;
        cen = 0;

        // Apply reset
        #10 rst = 0;

        // Test case 1: Apply basic coefficients and input
        #10 rst = 1;
        x = 12'd100;
        c0 = 12'd10;
        c1 = 12'd20;
        c2 = 12'd30;
        ca0 = 1;
        ca1 = 0;
        cen = 1;

        // Wait for outputs to stabilize
        #50;

        // Test case 2: Change coefficients
        x = 12'd200;
        c0 = 12'd15;
        c1 = 12'd25;
        c2 = 12'd35;
        ca0 = 0;
        ca1 = 1;

        #50;

        // Test case 3: Enable/Disable using cen
        cen = 0;
        #50;
        cen = 1;
        #50;

        // Test case 4: Reset during operation
        rst = 0;
        #20;
        rst = 1;
        #50;

        // Test case 5: Random inputs and coefficients
        x = $random % 4096;
        c0 = $random % 4096;
        c1 = $random % 4096;
        c2 = $random % 4096;
        ca0 = $random % 2;
        ca1 = $random % 2;
        cen = 1;
        #50;

        // End simulation
        $stop;
    end

endmodule

