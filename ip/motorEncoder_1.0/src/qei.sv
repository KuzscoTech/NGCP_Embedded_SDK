`timescale 1ns / 1ps
//
module QEI
    (
    input logic         clk, // system clock
    input logic         rst,

    // Encoder Channels
    input logic         chA, 
    
    // 
    output logic [31:0] RPM
    ); 
    
    logic        past_pulse;
    logic        present_pulse;
    logic [31:0] timer;
    logic [31:0] rev_cnt;
    logic        posedge_A;
    
    logic q1_chA, q2_chA, sync_chA;

    localparam T_1S      = 'd1_000_000_000;
    localparam T_CLK     = 'd10;
    localparam TIMER_MAX = T_1S / T_CLK;
    localparam TIMER_INC = 'd1;

    
    
    always_ff@(posedge clk) begin
    q1_chA   <= chA;
    q2_chA   <= q1_chA;
    sync_chA <= q2_chA;
    end

    // Detect positive edge of ChA
    always_ff@(posedge clk) begin
        if(rst) begin
            past_pulse    <= 0;
            present_pulse <= 0;
        end
        else begin
            present_pulse <= sync_chA;
            past_pulse    <= present_pulse;
        end 
    end
    assign posedge_A = (present_pulse == 1) && (past_pulse == 0);

    
    /* Rev counter:
    *    - Increments on posedge chA
    *    - Resets to 0 after each second
    */
    always_ff@(posedge clk) begin
        if(rst) begin
            rev_cnt <= 0;
        end
        else begin
            if(timer == TIMER_MAX) begin
                rev_cnt <= 0;
            end
            else begin
                rev_cnt <= (posedge_A) ? rev_cnt+1 : rev_cnt;
            end
        end 
    end
    

    /* RPS, RPM calculation:
    *   - Free running timer that counts to 1 second
    *   - Calculates only when timer maxes out
    *   - RPS = Pulses
    */
    always_ff @ (posedge clk) begin
        if(rst) begin
            RPM   <= 0;
            timer <= 0;
        end
        else begin
            if (timer == TIMER_MAX) begin 
                RPM   <= (rev_cnt * 6) >> 4;
                timer <= 0; 
            end
            else begin
                timer <= timer + TIMER_INC;
            end
        end 
    end

endmodule