`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2025 02:41:46 PM
// Design Name: 
// Module Name: washing_mach_fsm_top
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


module washing_mach_fsm_top (
    input  wire clk,
    input  wire rst_n,
            
    input  wire start_btn,    
    input  wire lid_closed,   
    input  wire water_full,   
    input  wire wash_done,    
    input  wire rinse_done,   
    input  wire spin_done,    
    
    output reg  inlet_valve,  
    output reg  motor_wash,   
    output reg  motor_spin,   
    output reg  drain_pump,   
    output reg  done_led      
);

    
    localparam S_IDLE  = 3'b000;
    localparam S_FILL  = 3'b001;
    localparam S_WASH  = 3'b010;
    localparam S_RINSE = 3'b011;
    localparam S_SPIN  = 3'b100;
    localparam S_DONE  = 3'b101;

    reg [2:0] state, next_state;

    
    initial begin
        state = 3'b000; 
        next_state = 3'b000;
        
        inlet_valve = 1'b0;
        motor_wash = 1'b0;
        motor_spin = 1'b0;
        drain_pump = 1'b0;
        done_led = 1'b0;
    end
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            state <= S_IDLE;
        else
            state <= next_state;
    end

    
    always @(*) begin

        case (state)
            S_IDLE: begin
                if (start_btn && lid_closed) begin
                    next_state = S_FILL;
                end
                else begin
                    next_state = S_IDLE;   
                end
                inlet_valve = 1'b0;
                motor_wash  = 1'b0;
                motor_spin  = 1'b0;
                drain_pump  = 1'b0;
                done_led    = 1'b0;
            end

            S_FILL: begin
                if (water_full) begin
                    next_state = S_WASH;
                end
                else begin
                    next_state = S_FILL;   
                end
                inlet_valve = 1'b1;
                motor_wash  = 1'b0;
                motor_spin  = 1'b0;
                drain_pump  = 1'b0;
                done_led    = 1'b0;
            end

            S_WASH: begin
                if (wash_done) begin
                    next_state = S_RINSE;
                end
                else begin
                    next_state = S_WASH;  
                end
                inlet_valve = 1'b0;
                motor_wash  = 1'b1;
                motor_spin  = 1'b0;
                drain_pump  = 1'b0;
                done_led    = 1'b0;
            end

            S_RINSE: begin
                if (rinse_done) begin
                    next_state = S_SPIN;
                end
                else begin
                    next_state = S_RINSE;   
                end
                inlet_valve = 1'b0;
                motor_wash  = 1'b1;
                motor_spin  = 1'b0;
                drain_pump  = 1'b1;
                done_led    = 1'b0;
            end

            S_SPIN: begin
                if (spin_done) begin
                    next_state = S_DONE;
                end
                else begin
                    next_state = S_SPIN;  
                end
                inlet_valve = 1'b0;
                motor_wash  = 1'b0;
                motor_spin  = 1'b1;
                drain_pump  = 1'b1;
                done_led    = 1'b0;
            end

            S_DONE: begin
               
                if (!start_btn) begin
                    next_state = S_IDLE;
                end
                else begin
                    next_state = S_DONE;  
                end
                inlet_valve = 1'b0;
                motor_wash  = 1'b0;
                motor_spin  = 1'b0;
                drain_pump  = 1'b0;
                done_led    = 1'b1;
            end

            default: next_state = S_IDLE;
        endcase
    end
endmodule

