// test_top
// 
// A test module w/ ILA and VIO for module-level debug.
//
module test_top
    (
    input  logic       sysclk,
    input  logic       i_rst,
    //        
    input  logic       i_chA,
    input  logic       i_chB,
    //
    output logic       o_right_motor_en,
    output logic       o_left_motor_en,
    output logic [1:0] o_pwm
    );

// LOCAL LOGIC
    logic clk_100MHz;

    // vio probes
    logic [15:0] v_kp;
    logic [15:0] v_ki;
    logic [31:0] v_setpoint;
    logic        v_dir;
    logic        v_motor_en;
    logic        v_pi_en;
    logic [7:0]  v_dutycycle;
    
    // ila probes
    logic        p_pi_overflow;
    logic [7:0]  p_duty;
    logic [31:0] p_rpm;
    logic        p_right_motor_en;
    logic        p_left_motor_en;
    logic [1:0]  p_pwm;
    logic        p_dir;
    logic [31:0] p_fixed_setpoint;

// PROBE ASSIGNMENTS
    assign p_right_motor_en = o_right_motor_en;
    assign p_left_motor_en  = o_left_motor_en;
    assign p_pwm            = o_pwm;

// VIO
    vio_0 vio_i (
    .clk        (clk_100MHz),
    .probe_out0 (v_kp),
    .probe_out1 (v_ki),
    .probe_out2 (v_setpoint),
    .probe_out3 (v_dir),
    .probe_out4 (v_motor_en),
    .probe_out5 (v_pi_en),
    .probe_out6 (v_dutycycle)
    );

// ILA
    ila_0 ila_i (
    .clk    (clk_100MHz),
    .probe0 (p_pi_overflow),
    .probe1 (p_duty),
    .probe2 (p_rpm),
    .probe3 (i_chA),
    .probe4 (i_chB),
    .probe5 (p_fixed_setpoint)
    );

// CLOCKING WIZARD
    clk_wiz_0 dcm_i (
    .clk_in1  (sysclk),
    .reset    (1'b0),
    .clk_out1 (clk_100MHz)
    );

// DUT
    motor_top 
    #(.PI_DELTA_T(1),
      .T_CLK     (10))
    DUT (
    .i_clk            (clk_100MHz),
    .i_rstn           (!i_rst),
    //
    .i_Kp             (v_kp), // vio 1 [15:0]
    .i_Ki             (v_ki), // vio 2 [15:0]
    .i_setPoint       ({!v_dir, v_setpoint[30:0]}), // vio 3 [31:0]
    .o_pi_overflow    (p_pi_overflow), // probe 1 [0]
    .fixed_setPoint   (p_fixed_setpoint),
    //
    .o_duty           (p_duty), // probe 2 [7:0]
    //
    .i_chA            (i_chA), 
    .i_chB            (i_chB), 
    .o_RPM            (p_rpm), // probe 3 [31:0]
    .o_dir            (p_dir),
    //
    .i_dir            (v_dir), // vio 4 [0]
    .i_motor_en       (v_motor_en), // vio 5 [0]
    .i_pi_en          (v_pi_en), // vio 6 [0]
    .i_dutycycle      (v_dutycycle), // vio 7 [7:0]
    //
    .o_right_motor_en (o_right_motor_en), // probe 4 [0]
    .o_left_motor_en  (o_left_motor_en), // probe 5 [0]
    .o_pwm            (o_pwm)  // probe 6 [1:0]
    );



endmodule
