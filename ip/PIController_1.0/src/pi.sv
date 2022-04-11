// pid.sv
//
// A PI controller for use with a brushed DC motor. 
//
module pid  
    #(parameter DELTA_T = 8'd10,      // delta T (ms)
      parameter T_CLK   = 10          // input clock period
    )             
    ( 
    input  logic        i_clk,        // input clock
    input  logic        i_rstn,       // active-low reset

    // PI Control
    input  logic [15:0]  i_Kp,         // PID proportional gain (signed, 5'10 fixed point)
    input  logic [15:0]  i_Ki,         // PID integral gain (signed, 5'10 fixed point)

    // PI Inputs 
    input  logic [31:0] i_setPoint,   // desired RPM (signed 32-bit)
    input  logic [31:0] i_rpm,        // RPM from quadrature encoder (signed 32-bit)

    // Outputs
    output logic        o_dout_valid, // PI output valid
    output logic [7:0]  o_dout,       // output to PWM (0-255)
    output logic        o_error,
    output logic [31:0] fixed_setPoint
    );

// CONSTANTS
    localparam C_M = DELTA_T * 1_000_000 / T_CLK;
    
// LOCAL LOGIC
    /* PID vars */
    //logic [31:0]        fixed_setPoint;
    logic [31:0]        fixed_rpm;
    logic [31:0]        ms_counter; // counts delta T
    logic               PID_go;     // asserted after delta T has elapsed, starts the pipeline

    /* STAGE 1 */
    logic [31:0]        nxt_s0_error, s0_error;
    logic [31:0]        s0_ei_part1;
    logic [31:0]        nxt_s0_ei, s0_ei;
    logic               s0_valid;
    
    /* STAGE 2 */
    logic [31:0]        nxt_s1_ep, s1_ep;
    logic [31:0]        nxt_s1_ei, s1_ei;
    logic               s1_valid;

    /* OUTPUT */
    logic [31:0]        nxt_dout;

    /* */
    logic              overflow;  // asserted when s0_ei_prev + s0_ei_next causes an overflow
    logic              STATE;
    localparam STATE_NOMINAL = 0,
               STATE_ERROR   = 1;

// ILA
    ila_1 ila_i (
    .clk     (i_clk),
    .probe0  (o_dout_valid),
    .probe1  (o_dout),
    .probe2  (i_setPoint),
    .probe3  (fixed_setPoint),
    .probe4  (s1_ei),
    .probe5  (s1_ep),
    .probe6  (fixed_rpm),
    .probe7  (nxt_dout),
    .probe8  (s0_error),
    .probe9  (s0_ei)
    );


// STATUS
    // once o_error is asserted, the PID must be reset to clear the flag.

    // convert rpm and setpoint to 29'3 fixed point:
    assign fixed_rpm      = {i_rpm[31],      i_rpm[25:0],      5'b0};
    assign fixed_setPoint = {i_setPoint[31], i_setPoint[25:0], 5'b0};

    always_comb begin
        overflow = 0;
        if(PID_go) begin
            if(s0_ei_part1[31] == s0_ei[31]) begin
                overflow = (nxt_s0_ei[31] != s0_ei[31]);
            end
        end
    end

    always_ff@(posedge i_clk) begin
        if(!i_rstn) begin
            STATE   <= STATE_NOMINAL;
            o_error <= 0;
        end
        else begin
            case(STATE)
                STATE_NOMINAL: begin
                    o_error <= 0;
                    if(overflow) STATE <= STATE_ERROR;
                end
                STATE_ERROR: begin
                    o_error <= 1;
                end
            endcase
        end
    end

// PID_GO
    // generates a tick of PID_go once every M clock cycles
    always_ff @ (posedge i_clk)
    begin 
        if(!i_rstn) begin        
            ms_counter <= 0;
        end
        else begin
            if(ms_counter >= C_M) 
                ms_counter <= 0;
            else 
                ms_counter <= ms_counter + 1'b1;
        end
    end 
    assign PID_go = (ms_counter == C_M) ? 1'b1 : 1'b0; 

// STAGE 0
    assign s0_ei_part1 = $signed(s0_error);
    always_comb begin
        nxt_s0_error = s0_error;
        nxt_s0_ei    = s0_ei;
        if(PID_go) begin
           nxt_s0_error = $signed(fixed_setPoint) - $signed(fixed_rpm); // 27'5 fixed point
           nxt_s0_ei    = $signed(s0_ei_part1) + $signed(s0_ei); // 27'5 fixed point
        end
    end
    //
    always_ff@(posedge i_clk)
    begin
        if(!i_rstn) begin
            s0_error <= 0;
            s0_ei    <= 0;
            s0_valid <= 0;
        end
        else begin
            s0_error <= nxt_s0_error;
            s0_ei    <= nxt_s0_ei;
            s0_valid <= PID_go;
        end
    end


// STAGE 1
    always_comb begin
        nxt_s1_ep = s1_ep;
        nxt_s1_ei = s1_ei;
        if(s0_valid) begin
            nxt_s1_ep = $signed(s0_error) * $signed(i_Kp); // 11'5 fixed point
            nxt_s1_ei = $signed(s0_ei) * $signed(i_Ki);    // 11'5 fixed point
        end
    end
    //
    always_ff@(posedge i_clk)
    begin
        if(!i_rstn) begin
            s1_ep    <= 0;
            s1_ei    <= 0;
            s1_valid <= 0;
        end
        else begin
            s1_ep    <= nxt_s1_ep;
            s1_ei    <= nxt_s1_ei;
            s1_valid <= s0_valid;
        end
    end

// STAGE 2
    always_comb begin
        if($signed(s1_ep[31:5] > 255) && $signed(s1_ei[31:5] > 255))
            nxt_dout = {27'd255, 5'b0};
        else 
            nxt_dout = ($signed(s1_ep) + $signed(s1_ei));
    end
    always_ff @ (posedge i_clk)
    begin
        if(!i_rstn)
        begin
            o_dout       <= 0;
            o_dout_valid <= 0;
        end
        else 
        begin
            o_dout_valid <= s1_valid;

            // set dout based on integer component of nxt_dout
            if($signed(nxt_dout[31:5]) > 255)    
                o_dout <= 255;
            else if($signed(nxt_dout[31:5]) < 0) 
                o_dout <= 0;
            else                                 
                o_dout <= nxt_dout[12:5];
        end
    end
endmodule
