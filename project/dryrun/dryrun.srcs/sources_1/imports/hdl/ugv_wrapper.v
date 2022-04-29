//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Fri Apr 29 14:28:05 2022
//Host        : LAPTOP-6D15CRP5 running 64-bit major release  (build 9200)
//Command     : generate_target ugv_wrapper.bd
//Design      : ugv_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ugv_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    //Pmod_out_0_pin10_io,
    Pmod_out_0_pin1_io,
    Pmod_out_0_pin2_io,
    Pmod_out_0_pin3_io,
    Pmod_out_0_pin4_io,
    //Pmod_out_0_pin7_io,
    //Pmod_out_0_pin8_io,
    //Pmod_out_0_pin9_io,
    UART_0_rxd,
    UART_0_txd,
    UART_1_rxd,
    UART_1_txd,
    UART_2_rxd,
    UART_2_txd,
    Vaux14_0_v_n,
    Vaux14_0_v_p,
    Vp_Vn_0_v_n,
    Vp_Vn_0_v_p,
    driveMotor_chA,
    driveMotor_chB,
    driveMotor_left_enable,
    driveMotor_pwm,
    driveMotor_right_enable,
    mgm0_chA,
    mgm0_chB,
    mgm0_left_enable,
    mgm0_pwm,
    mgm0_right_enable,
    mgm1_chA,
    mgm1_chB,
    mgm1_left_enable,
    mgm1_pwm,
    mgm1_right_enable,
    servo_0);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  //inout Pmod_out_0_pin10_io;
  inout Pmod_out_0_pin1_io;
  inout Pmod_out_0_pin2_io;
  inout Pmod_out_0_pin3_io;
  inout Pmod_out_0_pin4_io;
  //inout Pmod_out_0_pin7_io;
  //inout Pmod_out_0_pin8_io;
  //inout Pmod_out_0_pin9_io;
  input UART_0_rxd;
  output UART_0_txd;
  input UART_1_rxd;
  output UART_1_txd;
  input UART_2_rxd;
  output UART_2_txd;
  input Vaux14_0_v_n;
  input Vaux14_0_v_p;
  input Vp_Vn_0_v_n;
  input Vp_Vn_0_v_p;
  input driveMotor_chA;
  input driveMotor_chB;
  output driveMotor_left_enable;
  output [1:0]driveMotor_pwm;
  output driveMotor_right_enable;
  input mgm0_chA;
  input mgm0_chB;
  output mgm0_left_enable;
  output [0:0]mgm0_pwm;
  output mgm0_right_enable;
  input mgm1_chA;
  input mgm1_chB;
  output mgm1_left_enable;
  output [0:0]mgm1_pwm;
  output mgm1_right_enable;
  output servo_0;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire Pmod_out_0_pin10_i;
  wire Pmod_out_0_pin10_io;
  wire Pmod_out_0_pin10_o;
  wire Pmod_out_0_pin10_t;
  wire Pmod_out_0_pin1_i;
  wire Pmod_out_0_pin1_io;
  wire Pmod_out_0_pin1_o;
  wire Pmod_out_0_pin1_t;
  wire Pmod_out_0_pin2_i;
  wire Pmod_out_0_pin2_io;
  wire Pmod_out_0_pin2_o;
  wire Pmod_out_0_pin2_t;
  wire Pmod_out_0_pin3_i;
  wire Pmod_out_0_pin3_io;
  wire Pmod_out_0_pin3_o;
  wire Pmod_out_0_pin3_t;
  wire Pmod_out_0_pin4_i;
  wire Pmod_out_0_pin4_io;
  wire Pmod_out_0_pin4_o;
  wire Pmod_out_0_pin4_t;
  wire Pmod_out_0_pin7_i;
  wire Pmod_out_0_pin7_io;
  wire Pmod_out_0_pin7_o;
  wire Pmod_out_0_pin7_t;
  wire Pmod_out_0_pin8_i;
  wire Pmod_out_0_pin8_io;
  wire Pmod_out_0_pin8_o;
  wire Pmod_out_0_pin8_t;
  wire Pmod_out_0_pin9_i;
  wire Pmod_out_0_pin9_io;
  wire Pmod_out_0_pin9_o;
  wire Pmod_out_0_pin9_t;
  wire UART_0_rxd;
  wire UART_0_txd;
  wire UART_1_rxd;
  wire UART_1_txd;
  wire UART_2_rxd;
  wire UART_2_txd;
  wire Vaux14_0_v_n;
  wire Vaux14_0_v_p;
  wire Vp_Vn_0_v_n;
  wire Vp_Vn_0_v_p;
  wire driveMotor_chA;
  wire driveMotor_chB;
  wire driveMotor_left_enable;
  wire [1:0]driveMotor_pwm;
  wire driveMotor_right_enable;
  wire mgm0_chA;
  wire mgm0_chB;
  wire mgm0_left_enable;
  wire [0:0]mgm0_pwm;
  wire mgm0_right_enable;
  wire mgm1_chA;
  wire mgm1_chB;
  wire mgm1_left_enable;
  wire [0:0]mgm1_pwm;
  wire mgm1_right_enable;
  wire servo_0;

  IOBUF Pmod_out_0_pin10_iobuf
       (.I(Pmod_out_0_pin10_o),
        .IO(Pmod_out_0_pin10_io),
        .O(Pmod_out_0_pin10_i),
        .T(Pmod_out_0_pin10_t));
  IOBUF Pmod_out_0_pin1_iobuf
       (.I(Pmod_out_0_pin1_o),
        .IO(Pmod_out_0_pin1_io),
        .O(Pmod_out_0_pin1_i),
        .T(Pmod_out_0_pin1_t));
  IOBUF Pmod_out_0_pin2_iobuf
       (.I(Pmod_out_0_pin2_o),
        .IO(Pmod_out_0_pin2_io),
        .O(Pmod_out_0_pin2_i),
        .T(Pmod_out_0_pin2_t));
  IOBUF Pmod_out_0_pin3_iobuf
       (.I(Pmod_out_0_pin3_o),
        .IO(Pmod_out_0_pin3_io),
        .O(Pmod_out_0_pin3_i),
        .T(Pmod_out_0_pin3_t));
  IOBUF Pmod_out_0_pin4_iobuf
       (.I(Pmod_out_0_pin4_o),
        .IO(Pmod_out_0_pin4_io),
        .O(Pmod_out_0_pin4_i),
        .T(Pmod_out_0_pin4_t));
  IOBUF Pmod_out_0_pin7_iobuf
       (.I(Pmod_out_0_pin7_o),
        .IO(Pmod_out_0_pin7_io),
        .O(Pmod_out_0_pin7_i),
        .T(Pmod_out_0_pin7_t));
  IOBUF Pmod_out_0_pin8_iobuf
       (.I(Pmod_out_0_pin8_o),
        .IO(Pmod_out_0_pin8_io),
        .O(Pmod_out_0_pin8_i),
        .T(Pmod_out_0_pin8_t));
  IOBUF Pmod_out_0_pin9_iobuf
       (.I(Pmod_out_0_pin9_o),
        .IO(Pmod_out_0_pin9_io),
        .O(Pmod_out_0_pin9_i),
        .T(Pmod_out_0_pin9_t));
  ugv ugv_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .Pmod_out_0_pin10_i(Pmod_out_0_pin10_i),
        .Pmod_out_0_pin10_o(Pmod_out_0_pin10_o),
        .Pmod_out_0_pin10_t(Pmod_out_0_pin10_t),
        .Pmod_out_0_pin1_i(Pmod_out_0_pin1_i),
        .Pmod_out_0_pin1_o(Pmod_out_0_pin1_o),
        .Pmod_out_0_pin1_t(Pmod_out_0_pin1_t),
        .Pmod_out_0_pin2_i(Pmod_out_0_pin2_i),
        .Pmod_out_0_pin2_o(Pmod_out_0_pin2_o),
        .Pmod_out_0_pin2_t(Pmod_out_0_pin2_t),
        .Pmod_out_0_pin3_i(Pmod_out_0_pin3_i),
        .Pmod_out_0_pin3_o(Pmod_out_0_pin3_o),
        .Pmod_out_0_pin3_t(Pmod_out_0_pin3_t),
        .Pmod_out_0_pin4_i(Pmod_out_0_pin4_i),
        .Pmod_out_0_pin4_o(Pmod_out_0_pin4_o),
        .Pmod_out_0_pin4_t(Pmod_out_0_pin4_t),
        .Pmod_out_0_pin7_i(Pmod_out_0_pin7_i),
        .Pmod_out_0_pin7_o(Pmod_out_0_pin7_o),
        .Pmod_out_0_pin7_t(Pmod_out_0_pin7_t),
        .Pmod_out_0_pin8_i(Pmod_out_0_pin8_i),
        .Pmod_out_0_pin8_o(Pmod_out_0_pin8_o),
        .Pmod_out_0_pin8_t(Pmod_out_0_pin8_t),
        .Pmod_out_0_pin9_i(Pmod_out_0_pin9_i),
        .Pmod_out_0_pin9_o(Pmod_out_0_pin9_o),
        .Pmod_out_0_pin9_t(Pmod_out_0_pin9_t),
        .UART_0_rxd(UART_0_rxd),
        .UART_0_txd(UART_0_txd),
        .UART_1_rxd(UART_1_rxd),
        .UART_1_txd(UART_1_txd),
        .UART_2_rxd(UART_2_rxd),
        .UART_2_txd(UART_2_txd),
        .Vaux14_0_v_n(Vaux14_0_v_n),
        .Vaux14_0_v_p(Vaux14_0_v_p),
        .Vp_Vn_0_v_n(Vp_Vn_0_v_n),
        .Vp_Vn_0_v_p(Vp_Vn_0_v_p),
        .driveMotor_chA(driveMotor_chA),
        .driveMotor_chB(driveMotor_chB),
        .driveMotor_left_enable(driveMotor_left_enable),
        .driveMotor_pwm(driveMotor_pwm),
        .driveMotor_right_enable(driveMotor_right_enable),
        .mgm0_chA(mgm0_chA),
        .mgm0_chB(mgm0_chB),
        .mgm0_left_enable(mgm0_left_enable),
        .mgm0_pwm(mgm0_pwm),
        .mgm0_right_enable(mgm0_right_enable),
        .mgm1_chA(mgm1_chA),
        .mgm1_chB(mgm1_chB),
        .mgm1_left_enable(mgm1_left_enable),
        .mgm1_pwm(mgm1_pwm),
        .mgm1_right_enable(mgm1_right_enable),
        .servo_0(servo_0));
endmodule
