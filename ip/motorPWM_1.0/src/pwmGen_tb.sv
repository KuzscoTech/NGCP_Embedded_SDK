//
module pwmGen_tb();

// TEST PARAMETERS
    localparam T_CLK          = 10;
    localparam PERIOD_STOPPED = 16'd5500;
    localparam SPD_SCALING    = 8'd5;

// LOCAL LOGIC
    logic       clk;
    logic       en;
    logic       rst;
    logic       dir;
    logic [7:0] spd_sel;
    logic       right_motor_en;
    logic       left_motor_en;
    logic [1:0] pwm;
    logic [16:0] cntReg;

    //
    int expectedCnt;
    int actualDuty;

// DUT INSTANTIATION
    pwmGen DUT 
    (
    .clk            (clk),
    .rst            (rst),
    //
    .en             (en),
    .dir            (dir),
    .spd_sel        (spd_sel),
    //
    .period_stopped (PERIOD_STOPPED),
    .spd_scaling    (SPD_SCALING),
    .cntReg         (cntReg),
    //
    .right_motor_en (right_motor_en),
    .left_motor_en  (left_motor_en),
    .ma             (pwm)
    );

// CLOCK GEN
    initial clk = 0;
    always#(T_CLK/2) clk = !clk;

//
    task checkCnt;
        input logic [7:0] duty;
        begin
            @(posedge clk) spd_sel <= duty;
            expectedCnt = PERIOD_STOPPED+SPD_SCALING*duty;
            $display("----------------------");
            $display("Expected cnt_r: %d", expectedCnt);
            @(posedge clk) begin
                actualDuty = (DUT.cnt_r - PERIOD_STOPPED) / SPD_SCALING;
                $display("Actual cnt_r:  %d", DUT.cnt_r);
                $display("Expected duty: %d", duty);
                $display("Actual duty:   %d", actualDuty);
            end
        end
    endtask

//
    initial begin
        rst     = 1;
        en      = 0;
        dir     = 0;
        spd_sel = 0;
        #100;
        rst = 0;
        en  = 1;
        #100;
        for(int i=0; i<52; i++) begin
            checkCnt(i*5);
        end
    end


endmodule