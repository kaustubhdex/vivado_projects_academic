`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2025 03:17:27 PM
// Design Name: 
// Module Name: tb_washing_mach_fsm
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


module tb_washing_mach_fsm(

    );
    reg clk;
    reg rst_n;
    reg start_btn;
    reg lid_closed;
    reg water_full;
    reg wash_done;
    reg rinse_done;
    reg spin_done;

    wire inlet_valve;
    wire motor_wash;
    wire motor_spin;
    wire drain_pump;
    wire done_led;
    
    washing_mach_fsm_top dut (
        .clk(clk),
        .rst_n(rst_n),
        .start_btn(start_btn),
        .lid_closed(lid_closed),
        .water_full(water_full),
        .wash_done(wash_done),
        .rinse_done(rinse_done),
        .spin_done(spin_done),
        .inlet_valve(inlet_valve),
        .motor_wash(motor_wash),
        .motor_spin(motor_spin),
        .drain_pump(drain_pump),
        .done_led(done_led)
    );

    initial begin
        clk        = 1'b0;
    end
    
    
    initial begin
        
        rst_n      = 1'b0;
        start_btn  = 1'b0;
        lid_closed = 1'b0;
        water_full = 1'b0;
        wash_done  = 1'b0;
        rinse_done = 1'b0;
        spin_done  = 1'b0;
        #20;
        #100;
        rst_n = 1'b1;
        
        #50;
        start_btn = 1'b1;
        #50 lid_closed = 1'b1;
        
        #50 water_full = 1'b1;    
    end
    
    
    always #60 clk = ~clk;
endmodule
