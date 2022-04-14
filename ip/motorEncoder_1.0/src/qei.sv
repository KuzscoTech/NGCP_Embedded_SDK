`timescale 1ns / 1ps
//
module QEI
    #(parameter RESOLUTION = 9'd12,
      parameter COUNT_BOTH = 1'b0,
      parameter MGM_GEAR_RATIO = 32'd1000)
    (
    input logic         clk, // system clock
    input logic         rst,

    // Encoder Channels
    input logic         chA, 
    input logic         chB,
    
    input  logic        position_rst,
    output logic [31:0] position,     // position pulse count
    output logic [31:0] RPM
    ); 
    
    logic        past_pulse_A, present_pulse_A;
    logic        past_pulse_B, present_pulse_B;
    logic [31:0] timer;
    logic [31:0] rev_cnt;
    logic        posedge_A, negedge_A;
    logic        posedge_B, negedge_B;
    
    logic q1_chA, sync_chA;
    logic q1_chB, sync_chB;

    logic [31:0] nxt_position;

    localparam T_1S      = 'd1_000_000_000; // ns
    localparam T_CLK     = 'd10;            // ns
    localparam TIMER_MAX = T_1S / T_CLK;    // clock counts
    localparam TIMER_INC = 'd1;

    localparam RES_FACTOR    = 60 / RESOLUTION;
    localparam DEG_PER_PULSE = 360 / RESOLUTION;
    localparam MGM_COUNT_CAP = RESOLUTION * MGM_GEAR_RATIO;
    
    // Synchronizers
    always_ff@(posedge clk) begin
        {sync_chA, q1_chA} <= {q1_chA, chA};
        {sync_chB, q1_chB} <= {q1_chB, chB};
    end

    // Detect deges edge of encoder channels
    always_ff@(posedge clk) begin
        if(rst) begin
            {past_pulse_A, present_pulse_A} <= 2'b0;
            {past_pulse_B, present_pulse_B} <= 2'b0;
        end
        else begin
            {past_pulse_A, present_pulse_A} <= {present_pulse_A, sync_chA};
            {past_pulse_B, present_pulse_B} <= {present_pulse_B, sync_chB};
            //present_pulse <= sync_chA;
            //past_pulse    <= present_pulse;
        end 
    end
    assign posedge_A = (present_pulse_A == 1) && (past_pulse_A == 0);
    assign negedge_A = (present_pulse_A == 0) && (past_pulse_A == 1);
    assign posedge_B = (present_pulse_B == 1) && (past_pulse_B == 0);
    assign negedge_B = (present_pulse_B == 0) && (past_pulse_B == 1);

    /* Position counter:
    */
    always_comb begin
        if(COUNT_BOTH) begin
            nxt_position = position + 1; 
        end 
        else begin
            nxt_position = position + DEG_PER_PULSE;
        end
    end    
    //
    always_ff@(posedge clk) begin
        if(rst || position_rst) begin
            position <= 0;
        end
        else begin
            if(COUNT_BOTH) begin
                if(posedge_A || negedge_A || posedge_B || negedge_B) begin
                    if(nxt_position == MGM_COUNT_CAP-1) begin
                        position <= 0;
                    end
                    else begin
                        position <= nxt_position;
                    end
                end
            end
            else begin
                if(posedge_A) begin
                    if(nxt_position > 359) begin
                        position <= 0 + (nxt_position - 360);
                    end
                    else begin
                        position <= nxt_position;
                    end
                end
            end
        end
    end


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
                if(COUNT_BOTH) 
                    rev_cnt <= (posedge_A || negedge_A || posedge_B || negedge_B) ? rev_cnt+1 : rev_cnt;
                else
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
            if (timer == TIMER_MAX-1) begin 
                //RPM   <= (rev_cnt * 6) >> 4;
                RPM   <= rev_cnt * RES_FACTOR;
                timer <= 0; 
            end
            else begin
                timer <= timer + TIMER_INC;
            end
        end 
    end

endmodule