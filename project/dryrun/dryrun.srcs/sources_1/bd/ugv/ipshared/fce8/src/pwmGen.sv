module pwmGen

 (
    input  logic        clk,  // system clock
    input  logic        rst,  // active-high reset
    // 
    input  logic        en,   // module enable
    input  logic        dir,  // direction enable; '1' for forwards, '0' for back
    input  logic [7:0]  spd_sel, // 0-255 speed select
    // 
    input  logic [15:0] period,
    input  logic [15:0] period_stopped, // pulse period for motor stop
    input  logic [7:0]  spd_scaling,    // scaling factor for speed select 
    output logic [16:0] cntReg,
    
    output logic        right_motor_en,
    output logic        left_motor_en,
    output logic [1:0]  ma    
 );
 
 //logic      [15:0] cntReg;
 logic      [16:0] cnt;
 logic      [16:0] cnt_r;
 logic             pulse_out;
 logic      [1:0]  ma_r;
 logic             pwm_en;


// CONTROL PARAMETERS
 //localparam period = 16'd10_000; // pwm pulse period
 
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
        ma_r <= 2'b00; 
    end
    
    else
    begin
        if (en == 1'b0 || pwm_en == 1'b0) begin
            ma_r <= 2'b00;
            pulse_out <= 0;
            cntReg <= period_stopped;
        end
        else
        begin
            ma_r[0] <= pulse_out; // in_1 for motor driver
            ma_r[1] <= ~pulse_out; // in_2 for motor driver
            
            // LOAD COUNT LIMIT
            // dictates direction of motor
            if (dir == 1'b1)      
                cntReg <= cnt_r;
            else if (dir == 1'b0)
                cntReg <= period - cnt_r;

            // PERIOD COUNTER            
            cnt <= cnt + 1;
            
            // SET PULSE HIGH
            if (cnt == cntReg - 1)
                pulse_out <=  1'b1;
                
            // SET PULSE LOW
            else if (cnt >= period - 1)
            begin
                pulse_out <= 1'b0;
                cnt <= 0;
            end
        end
    end
 end
 
 always_comb
 begin
     if(spd_sel == 0) begin 
         pwm_en = 0;
         cnt_r  = {1'b0, period_stopped};
     end
     else begin
         pwm_en = 1;
         cnt_r  = (spd_sel == 0) ? {1'b0, period_stopped} : period_stopped + (spd_scaling * spd_sel);
     end
 end      
 

endmodule 