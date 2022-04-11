
module motor_top
    #(parameter PI_DELTA_T = 4'd10, // PI delta T (ms)
      parameter T_CLK      = 10     // input clock period
    )
    (
    input  logic        i_clk,  // system clock
    input  logic        i_rstn, // sync active-low reset

    // PI Control
    input  logic [15:0] i_Kp,          // proportional gain (signed, 4'5 fixed point)
    input  logic [15:0] i_Ki,          // integral gain (signed, 4'5 fixed point)
    input  logic [31:0] i_setPoint,    // desired RPM (signed)
    output logic        o_pi_overflow, // indicates PI controller error overflow
    output logic [31:0] fixed_setPoint,

    // Status
    output logic [7:0]  o_duty,

    // Quadrature
    input  logic        i_chA, // channel A
    input  logic        i_chB, // channel B
    output logic [31:0] o_RPM,
    output logic        o_dir,

    // Motor Control
    input  logic        i_dir,       // desired direction ('0' forwards, '1' backwards)
    input  logic        i_motor_en,  // motor driver enable
    input  logic        i_pi_en,     // PI controller enable
    input  logic [7:0]  i_dutycycle, // manual duty cycle control; i_pi_en must be '0'

    // Motor Driver Interface
    output logic        o_right_motor_en, // output to motor driver left channel en
    output logic        o_left_motor_en,  // output to motor driver right channel en
    output logic [1:0]  o_pwm             // output to motor driver PWM
    );

// INTERNAL LOGIC
    logic [31:0] detected_rpm;
    logic [31:0] RPM;
    logic        detected_dir;
    logic [7:0]  pi_output;
    logic        pi_valid;
    logic [7:0]  duty;
    logic        pi_rstn;

    assign RPM   = (detected_dir) ? detected_rpm : -detected_rpm;
    assign o_RPM = RPM;
    assign o_dir = detected_dir;

    always_ff@(posedge i_clk) begin
        if(!i_rstn) begin
            duty <= 0;
        end
        else begin
            if(i_pi_en) begin
                if(pi_valid) duty <= pi_output;
            end
            else begin
                duty <= i_dutycycle;
            end
        end
    end
    assign o_duty = duty;

    always_comb begin
        if(!i_rstn)       pi_rstn = 0;
        else if(!i_pi_en) pi_rstn = 0;
        else              pi_rstn = 1;
    end

// PI CONTROLLER
    pid 
    #(.DELTA_T(PI_DELTA_T),
      .T_CLK  (T_CLK))
    pid_i (
    .i_clk        (i_clk),        // input clock
    .i_rstn       (pi_rstn),      // active-low reset
    //  
    .i_Kp         (i_Kp),         // proportional gain
    .i_Ki         (i_Ki),         // integral gain
    //  
    .i_setPoint   (i_setPoint),   // desired rpm [31:0], unsigned
    .i_rpm        (RPM),          // input rpm [31:0], unsigned
    //  
    .o_dout_valid (pi_valid),     // dout valid
    .o_dout       (pi_output),              
    .o_error      (o_pi_overflow), // indicates PI error overflow
    .fixed_setPoint (fixed_setPoint)
    );

// MOTOR CONTROL
    motor_controller 
    pwm_i (
    .en              (i_motor_en),       // motor enable
    .rst             (~i_rstn),          // active-low reset
    .clk             (i_clk),            // input clock
    //
    .spd_sel         (duty),
    .dir             (i_dir),            // '1' for backwards, '0' for forwards
    .right_motor_en  (o_right_motor_en), // motor driver enable left
    .left_motor_en   (o_left_motor_en),  // motor driver enable right
    .ma              (o_pwm)             // PWM output; [0] for left, [1] for right
    );

// QUADRATURE DECODER
    QEI 
    qei_i (
    .clk       (i_clk),    // input clock
    .rst       (~i_rstn),  // active-low reset
    //   
    .chA       (i_chA),  // quadrature encoder input A

    //  
    .RPM       (detected_rpm)  // output RPM [31:0]
    //.chA_high  (),  // unused
    //.count_led ()   // unused      
    );

// DIRECTION
    direction 
    dir_i (
    .clk   (i_clk), // input clock
    .chA   (i_chA), // quad encoder input A
    .chB   (i_chB), // quad encoder input B
    .dir   (detected_dir)    // '1' for forwards, '0' for backwards
    );

    

endmodule
