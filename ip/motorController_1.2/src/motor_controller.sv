`timescale 1ns / 1ps

module motor_controller

 (
    input logic         en,
    input logic         rst,
    input logic         clk,
    input logic         dir,
    input logic         [7:0] spd_sel,
    
    
    output logic         right_motor_en,
    output logic         left_motor_en,
    output logic        [1:0] ma    
 );
 

 
 
 logic      [15:0] cntReg;
 logic      [15:0] cnt;
 logic      [15:0] cnt_r;
 logic             pulse_out;
 logic      [1:0] ma_r;
 logic      [15:0] pwm_threshold;
 logic             pwm_en;

// CONTROL PARAMETERS
 localparam period = 'd10000;
 localparam period_stopped = 'd5650;
 localparam period_max = 'd9995;
 localparam spd_scaling = 'd17;
 
// 
 assign ma = ma_r;
 assign right_motor_en = 1'b1;
 assign left_motor_en = 1'b1;
 
 always_ff @ (posedge clk, posedge rst)
 begin
    if (rst) // reset toggled on
    begin
        cntReg <= 16'b0;
        cnt <= 16'b0;
        pulse_out <= 1'b0;
    end
    
    else
    begin
        if (en == 1'b0 || pwm_en == 1'b0)
            ma_r <= 2'b00;
        else
        begin
            ma_r[0] <= pulse_out; // in_1 for motor driver
            ma_r[1] <= ~pulse_out; // in_2 for motor driver
            
            if (dir == 1'b1)        // dictates direction of motor
                cntReg <= cnt_r;
            else if (dir == 1'b0)
                cntReg <= period - cnt_r;
                
            cnt <= cnt + 1;
            
            if (cnt == cntReg - 1)
                pulse_out <=  1'b1;
            else if (cnt == period - 1)
            begin
                 pulse_out <= 1'b0;
                 cnt <= 1'b0;
            end
        end
    end
 end
 
 
 assign pwm_threshold = period_stopped + spd_scaling*spd_sel;
 
 always_comb
 begin
     if(spd_sel == 0) begin 
         cnt_r  = period_stopped;
         pwm_en = 0;
     end
     else begin
         pwm_en = 1;
         cnt_r = (pwm_threshold >= period_max) ? period_max : period_stopped + spd_scaling*spd_sel;
     end
     //cnt_r = (spd_sel*39 >= period) ? period : 5000 + 15*spd_sel;
     /*
     5000 - 9000
     5000 + 4000/255*speedselect
     case (spd_sel)
        3'b000 : cnt_r <= period - 'd5000; // off , 5000
        3'b001 : cnt_r <= period - 'd3500;
        3'b010 : cnt_r <= period - 'd2750;
        3'b011 : cnt_r <= period - 'd2000;
        3'b100 : cnt_r <= period - 'd1250;
        3'b101 : cnt_r <= period - 'd1000;
        3'b110 : cnt_r <= period - 'd500;
        3'b111 : cnt_r <= period - 'd250;
        default : cnt_r <= period - 'd1000;
    endcase
    */
    
 end      
 

endmodule 