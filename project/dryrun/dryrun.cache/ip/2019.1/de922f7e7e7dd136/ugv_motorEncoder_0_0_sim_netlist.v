// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Apr 20 12:06:08 2022
// Host        : LAPTOP-6D15CRP5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ugv_motorEncoder_0_0_sim_netlist.v
// Design      : ugv_motorEncoder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_QEI
   (SR,
    D,
    chA,
    s00_axi_aclk,
    s00_axi_aresetn,
    dir,
    Q,
    axi_araddr);
  output [0:0]SR;
  output [31:0]D;
  input chA;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input dir;
  input [31:0]Q;
  input [1:0]axi_araddr;

  wire [31:0]D;
  wire [31:0]Q;
  wire [31:0]RPM;
  wire RPM0_carry__0_i_1_n_0;
  wire RPM0_carry__0_i_2_n_0;
  wire RPM0_carry__0_i_3_n_0;
  wire RPM0_carry__0_i_4_n_0;
  wire RPM0_carry__0_n_0;
  wire RPM0_carry__0_n_1;
  wire RPM0_carry__0_n_2;
  wire RPM0_carry__0_n_3;
  wire RPM0_carry__1_i_1_n_0;
  wire RPM0_carry__1_i_2_n_0;
  wire RPM0_carry__1_i_3_n_0;
  wire RPM0_carry__1_i_4_n_0;
  wire RPM0_carry__1_n_0;
  wire RPM0_carry__1_n_1;
  wire RPM0_carry__1_n_2;
  wire RPM0_carry__1_n_3;
  wire RPM0_carry__2_i_1_n_0;
  wire RPM0_carry__2_i_2_n_0;
  wire RPM0_carry__2_i_3_n_0;
  wire RPM0_carry__2_i_4_n_0;
  wire RPM0_carry__2_n_0;
  wire RPM0_carry__2_n_1;
  wire RPM0_carry__2_n_2;
  wire RPM0_carry__2_n_3;
  wire RPM0_carry__3_i_1_n_0;
  wire RPM0_carry__3_i_2_n_0;
  wire RPM0_carry__3_i_3_n_0;
  wire RPM0_carry__3_i_4_n_0;
  wire RPM0_carry__3_n_0;
  wire RPM0_carry__3_n_1;
  wire RPM0_carry__3_n_2;
  wire RPM0_carry__3_n_3;
  wire RPM0_carry__4_i_1_n_0;
  wire RPM0_carry__4_i_2_n_0;
  wire RPM0_carry__4_i_3_n_0;
  wire RPM0_carry__4_i_4_n_0;
  wire RPM0_carry__4_n_0;
  wire RPM0_carry__4_n_1;
  wire RPM0_carry__4_n_2;
  wire RPM0_carry__4_n_3;
  wire RPM0_carry__5_i_1_n_0;
  wire RPM0_carry__5_i_2_n_0;
  wire RPM0_carry__5_i_3_n_0;
  wire RPM0_carry__5_i_4_n_0;
  wire RPM0_carry__5_n_0;
  wire RPM0_carry__5_n_1;
  wire RPM0_carry__5_n_2;
  wire RPM0_carry__5_n_3;
  wire RPM0_carry__6_i_1_n_0;
  wire RPM0_carry__6_i_2_n_0;
  wire RPM0_carry__6_i_3_n_0;
  wire RPM0_carry__6_n_2;
  wire RPM0_carry__6_n_3;
  wire RPM0_carry_i_1_n_0;
  wire RPM0_carry_i_2_n_0;
  wire RPM0_carry_i_3_n_0;
  wire RPM0_carry_n_0;
  wire RPM0_carry_n_1;
  wire RPM0_carry_n_2;
  wire RPM0_carry_n_3;
  wire [0:0]SR;
  wire [1:0]axi_araddr;
  wire chA;
  wire [31:0]data;
  wire [31:1]data0;
  wire dir;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire [31:3]nxt_position;
  wire [31:1]p_0_in;
  wire past_pulse_A;
  wire posedge_A;
  wire \position0_inferred__0/i__carry__0_n_0 ;
  wire \position0_inferred__0/i__carry__0_n_1 ;
  wire \position0_inferred__0/i__carry__0_n_2 ;
  wire \position0_inferred__0/i__carry__0_n_3 ;
  wire \position0_inferred__0/i__carry__1_n_0 ;
  wire \position0_inferred__0/i__carry__1_n_1 ;
  wire \position0_inferred__0/i__carry__1_n_2 ;
  wire \position0_inferred__0/i__carry__1_n_3 ;
  wire \position0_inferred__0/i__carry__2_n_0 ;
  wire \position0_inferred__0/i__carry__2_n_1 ;
  wire \position0_inferred__0/i__carry__2_n_2 ;
  wire \position0_inferred__0/i__carry__2_n_3 ;
  wire \position0_inferred__0/i__carry__3_n_0 ;
  wire \position0_inferred__0/i__carry__3_n_1 ;
  wire \position0_inferred__0/i__carry__3_n_2 ;
  wire \position0_inferred__0/i__carry__3_n_3 ;
  wire \position0_inferred__0/i__carry__4_n_0 ;
  wire \position0_inferred__0/i__carry__4_n_1 ;
  wire \position0_inferred__0/i__carry__4_n_2 ;
  wire \position0_inferred__0/i__carry__4_n_3 ;
  wire \position0_inferred__0/i__carry__5_n_0 ;
  wire \position0_inferred__0/i__carry__5_n_1 ;
  wire \position0_inferred__0/i__carry__5_n_2 ;
  wire \position0_inferred__0/i__carry__5_n_3 ;
  wire \position0_inferred__0/i__carry__6_n_1 ;
  wire \position0_inferred__0/i__carry__6_n_2 ;
  wire \position0_inferred__0/i__carry__6_n_3 ;
  wire \position0_inferred__0/i__carry_n_0 ;
  wire \position0_inferred__0/i__carry_n_1 ;
  wire \position0_inferred__0/i__carry_n_2 ;
  wire \position0_inferred__0/i__carry_n_3 ;
  wire position2_carry__0_i_1_n_0;
  wire position2_carry__0_n_0;
  wire position2_carry__0_n_1;
  wire position2_carry__0_n_2;
  wire position2_carry__0_n_3;
  wire position2_carry__1_n_0;
  wire position2_carry__1_n_1;
  wire position2_carry__1_n_2;
  wire position2_carry__1_n_3;
  wire position2_carry__2_n_0;
  wire position2_carry__2_n_1;
  wire position2_carry__2_n_2;
  wire position2_carry__2_n_3;
  wire position2_carry__3_n_0;
  wire position2_carry__3_n_1;
  wire position2_carry__3_n_2;
  wire position2_carry__3_n_3;
  wire position2_carry__4_n_0;
  wire position2_carry__4_n_1;
  wire position2_carry__4_n_2;
  wire position2_carry__4_n_3;
  wire position2_carry__5_n_0;
  wire position2_carry__5_n_1;
  wire position2_carry__5_n_2;
  wire position2_carry__5_n_3;
  wire position2_carry__6_n_1;
  wire position2_carry__6_n_2;
  wire position2_carry__6_n_3;
  wire position2_carry_i_1_n_0;
  wire position2_carry_i_2_n_0;
  wire position2_carry_i_3_n_0;
  wire position2_carry_n_0;
  wire position2_carry_n_1;
  wire position2_carry_n_2;
  wire position2_carry_n_3;
  wire \position[0]_i_10_n_0 ;
  wire \position[0]_i_11_n_0 ;
  wire \position[0]_i_12_n_0 ;
  wire \position[0]_i_13_n_0 ;
  wire \position[0]_i_14_n_0 ;
  wire \position[0]_i_15_n_0 ;
  wire \position[0]_i_3_n_0 ;
  wire \position[0]_i_4_n_0 ;
  wire \position[0]_i_5_n_0 ;
  wire \position[0]_i_6_n_0 ;
  wire \position[0]_i_7_n_0 ;
  wire \position[0]_i_8_n_0 ;
  wire \position[0]_i_9_n_0 ;
  wire \position[12]_i_2_n_0 ;
  wire \position[12]_i_3_n_0 ;
  wire \position[12]_i_4_n_0 ;
  wire \position[12]_i_5_n_0 ;
  wire \position[16]_i_2_n_0 ;
  wire \position[16]_i_3_n_0 ;
  wire \position[16]_i_4_n_0 ;
  wire \position[16]_i_5_n_0 ;
  wire \position[20]_i_2_n_0 ;
  wire \position[20]_i_3_n_0 ;
  wire \position[20]_i_4_n_0 ;
  wire \position[20]_i_5_n_0 ;
  wire \position[24]_i_2_n_0 ;
  wire \position[24]_i_3_n_0 ;
  wire \position[24]_i_4_n_0 ;
  wire \position[24]_i_5_n_0 ;
  wire \position[28]_i_2_n_0 ;
  wire \position[28]_i_3_n_0 ;
  wire \position[28]_i_4_n_0 ;
  wire \position[28]_i_5_n_0 ;
  wire \position[4]_i_2_n_0 ;
  wire \position[4]_i_3_n_0 ;
  wire \position[4]_i_4_n_0 ;
  wire \position[4]_i_5_n_0 ;
  wire \position[8]_i_2_n_0 ;
  wire \position[8]_i_3_n_0 ;
  wire \position[8]_i_4_n_0 ;
  wire \position[8]_i_5_n_0 ;
  wire [31:0]position_reg;
  wire \position_reg[0]_i_2_n_0 ;
  wire \position_reg[0]_i_2_n_1 ;
  wire \position_reg[0]_i_2_n_2 ;
  wire \position_reg[0]_i_2_n_3 ;
  wire \position_reg[0]_i_2_n_4 ;
  wire \position_reg[0]_i_2_n_5 ;
  wire \position_reg[0]_i_2_n_6 ;
  wire \position_reg[0]_i_2_n_7 ;
  wire \position_reg[12]_i_1_n_0 ;
  wire \position_reg[12]_i_1_n_1 ;
  wire \position_reg[12]_i_1_n_2 ;
  wire \position_reg[12]_i_1_n_3 ;
  wire \position_reg[12]_i_1_n_4 ;
  wire \position_reg[12]_i_1_n_5 ;
  wire \position_reg[12]_i_1_n_6 ;
  wire \position_reg[12]_i_1_n_7 ;
  wire \position_reg[16]_i_1_n_0 ;
  wire \position_reg[16]_i_1_n_1 ;
  wire \position_reg[16]_i_1_n_2 ;
  wire \position_reg[16]_i_1_n_3 ;
  wire \position_reg[16]_i_1_n_4 ;
  wire \position_reg[16]_i_1_n_5 ;
  wire \position_reg[16]_i_1_n_6 ;
  wire \position_reg[16]_i_1_n_7 ;
  wire \position_reg[20]_i_1_n_0 ;
  wire \position_reg[20]_i_1_n_1 ;
  wire \position_reg[20]_i_1_n_2 ;
  wire \position_reg[20]_i_1_n_3 ;
  wire \position_reg[20]_i_1_n_4 ;
  wire \position_reg[20]_i_1_n_5 ;
  wire \position_reg[20]_i_1_n_6 ;
  wire \position_reg[20]_i_1_n_7 ;
  wire \position_reg[24]_i_1_n_0 ;
  wire \position_reg[24]_i_1_n_1 ;
  wire \position_reg[24]_i_1_n_2 ;
  wire \position_reg[24]_i_1_n_3 ;
  wire \position_reg[24]_i_1_n_4 ;
  wire \position_reg[24]_i_1_n_5 ;
  wire \position_reg[24]_i_1_n_6 ;
  wire \position_reg[24]_i_1_n_7 ;
  wire \position_reg[28]_i_1_n_1 ;
  wire \position_reg[28]_i_1_n_2 ;
  wire \position_reg[28]_i_1_n_3 ;
  wire \position_reg[28]_i_1_n_4 ;
  wire \position_reg[28]_i_1_n_5 ;
  wire \position_reg[28]_i_1_n_6 ;
  wire \position_reg[28]_i_1_n_7 ;
  wire \position_reg[4]_i_1_n_0 ;
  wire \position_reg[4]_i_1_n_1 ;
  wire \position_reg[4]_i_1_n_2 ;
  wire \position_reg[4]_i_1_n_3 ;
  wire \position_reg[4]_i_1_n_4 ;
  wire \position_reg[4]_i_1_n_5 ;
  wire \position_reg[4]_i_1_n_6 ;
  wire \position_reg[4]_i_1_n_7 ;
  wire \position_reg[8]_i_1_n_0 ;
  wire \position_reg[8]_i_1_n_1 ;
  wire \position_reg[8]_i_1_n_2 ;
  wire \position_reg[8]_i_1_n_3 ;
  wire \position_reg[8]_i_1_n_4 ;
  wire \position_reg[8]_i_1_n_5 ;
  wire \position_reg[8]_i_1_n_6 ;
  wire \position_reg[8]_i_1_n_7 ;
  wire present_pulse_A;
  wire q1_chA;
  wire rev_cnt;
  wire \rev_cnt[0]_i_1_n_0 ;
  wire \rev_cnt[0]_i_3_n_0 ;
  wire [0:0]rev_cnt_reg;
  wire \rev_cnt_reg[0]_i_2_n_0 ;
  wire \rev_cnt_reg[0]_i_2_n_1 ;
  wire \rev_cnt_reg[0]_i_2_n_2 ;
  wire \rev_cnt_reg[0]_i_2_n_3 ;
  wire \rev_cnt_reg[0]_i_2_n_4 ;
  wire \rev_cnt_reg[0]_i_2_n_5 ;
  wire \rev_cnt_reg[0]_i_2_n_6 ;
  wire \rev_cnt_reg[0]_i_2_n_7 ;
  wire \rev_cnt_reg[12]_i_1_n_0 ;
  wire \rev_cnt_reg[12]_i_1_n_1 ;
  wire \rev_cnt_reg[12]_i_1_n_2 ;
  wire \rev_cnt_reg[12]_i_1_n_3 ;
  wire \rev_cnt_reg[12]_i_1_n_4 ;
  wire \rev_cnt_reg[12]_i_1_n_5 ;
  wire \rev_cnt_reg[12]_i_1_n_6 ;
  wire \rev_cnt_reg[12]_i_1_n_7 ;
  wire \rev_cnt_reg[16]_i_1_n_0 ;
  wire \rev_cnt_reg[16]_i_1_n_1 ;
  wire \rev_cnt_reg[16]_i_1_n_2 ;
  wire \rev_cnt_reg[16]_i_1_n_3 ;
  wire \rev_cnt_reg[16]_i_1_n_4 ;
  wire \rev_cnt_reg[16]_i_1_n_5 ;
  wire \rev_cnt_reg[16]_i_1_n_6 ;
  wire \rev_cnt_reg[16]_i_1_n_7 ;
  wire \rev_cnt_reg[20]_i_1_n_0 ;
  wire \rev_cnt_reg[20]_i_1_n_1 ;
  wire \rev_cnt_reg[20]_i_1_n_2 ;
  wire \rev_cnt_reg[20]_i_1_n_3 ;
  wire \rev_cnt_reg[20]_i_1_n_4 ;
  wire \rev_cnt_reg[20]_i_1_n_5 ;
  wire \rev_cnt_reg[20]_i_1_n_6 ;
  wire \rev_cnt_reg[20]_i_1_n_7 ;
  wire \rev_cnt_reg[24]_i_1_n_0 ;
  wire \rev_cnt_reg[24]_i_1_n_1 ;
  wire \rev_cnt_reg[24]_i_1_n_2 ;
  wire \rev_cnt_reg[24]_i_1_n_3 ;
  wire \rev_cnt_reg[24]_i_1_n_4 ;
  wire \rev_cnt_reg[24]_i_1_n_5 ;
  wire \rev_cnt_reg[24]_i_1_n_6 ;
  wire \rev_cnt_reg[24]_i_1_n_7 ;
  wire \rev_cnt_reg[28]_i_1_n_1 ;
  wire \rev_cnt_reg[28]_i_1_n_2 ;
  wire \rev_cnt_reg[28]_i_1_n_3 ;
  wire \rev_cnt_reg[28]_i_1_n_4 ;
  wire \rev_cnt_reg[28]_i_1_n_5 ;
  wire \rev_cnt_reg[28]_i_1_n_6 ;
  wire \rev_cnt_reg[28]_i_1_n_7 ;
  wire \rev_cnt_reg[4]_i_1_n_0 ;
  wire \rev_cnt_reg[4]_i_1_n_1 ;
  wire \rev_cnt_reg[4]_i_1_n_2 ;
  wire \rev_cnt_reg[4]_i_1_n_3 ;
  wire \rev_cnt_reg[4]_i_1_n_4 ;
  wire \rev_cnt_reg[4]_i_1_n_5 ;
  wire \rev_cnt_reg[4]_i_1_n_6 ;
  wire \rev_cnt_reg[4]_i_1_n_7 ;
  wire \rev_cnt_reg[8]_i_1_n_0 ;
  wire \rev_cnt_reg[8]_i_1_n_1 ;
  wire \rev_cnt_reg[8]_i_1_n_2 ;
  wire \rev_cnt_reg[8]_i_1_n_3 ;
  wire \rev_cnt_reg[8]_i_1_n_4 ;
  wire \rev_cnt_reg[8]_i_1_n_5 ;
  wire \rev_cnt_reg[8]_i_1_n_6 ;
  wire \rev_cnt_reg[8]_i_1_n_7 ;
  wire [31:1]rev_cnt_reg__0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire sync_chA;
  wire [31:0]timer;
  wire timer0_carry__0_n_0;
  wire timer0_carry__0_n_1;
  wire timer0_carry__0_n_2;
  wire timer0_carry__0_n_3;
  wire timer0_carry__1_n_0;
  wire timer0_carry__1_n_1;
  wire timer0_carry__1_n_2;
  wire timer0_carry__1_n_3;
  wire timer0_carry__2_n_0;
  wire timer0_carry__2_n_1;
  wire timer0_carry__2_n_2;
  wire timer0_carry__2_n_3;
  wire timer0_carry__3_n_0;
  wire timer0_carry__3_n_1;
  wire timer0_carry__3_n_2;
  wire timer0_carry__3_n_3;
  wire timer0_carry__4_n_0;
  wire timer0_carry__4_n_1;
  wire timer0_carry__4_n_2;
  wire timer0_carry__4_n_3;
  wire timer0_carry__5_n_0;
  wire timer0_carry__5_n_1;
  wire timer0_carry__5_n_2;
  wire timer0_carry__5_n_3;
  wire timer0_carry__6_n_2;
  wire timer0_carry__6_n_3;
  wire timer0_carry_n_0;
  wire timer0_carry_n_1;
  wire timer0_carry_n_2;
  wire timer0_carry_n_3;
  wire \timer[31]_i_2_n_0 ;
  wire \timer[31]_i_3_n_0 ;
  wire \timer[31]_i_4_n_0 ;
  wire \timer[31]_i_5_n_0 ;
  wire \timer[31]_i_6_n_0 ;
  wire \timer[31]_i_7_n_0 ;
  wire \timer[31]_i_8_n_0 ;
  wire \timer[31]_i_9_n_0 ;
  wire [31:0]timer_0;
  wire [3:2]NLW_RPM0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_RPM0_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_position0_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [2:0]NLW_position2_carry_O_UNCONNECTED;
  wire [3:3]NLW_position2_carry__6_CO_UNCONNECTED;
  wire [3:3]\NLW_position_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_rev_cnt_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]NLW_timer0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_timer0_carry__6_O_UNCONNECTED;

  CARRY4 RPM0_carry
       (.CI(1'b0),
        .CO({RPM0_carry_n_0,RPM0_carry_n_1,RPM0_carry_n_2,RPM0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rev_cnt_reg__0[4:2],1'b0}),
        .O(p_0_in[4:1]),
        .S({RPM0_carry_i_1_n_0,RPM0_carry_i_2_n_0,RPM0_carry_i_3_n_0,rev_cnt_reg__0[1]}));
  CARRY4 RPM0_carry__0
       (.CI(RPM0_carry_n_0),
        .CO({RPM0_carry__0_n_0,RPM0_carry__0_n_1,RPM0_carry__0_n_2,RPM0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rev_cnt_reg__0[8:5]),
        .O(p_0_in[8:5]),
        .S({RPM0_carry__0_i_1_n_0,RPM0_carry__0_i_2_n_0,RPM0_carry__0_i_3_n_0,RPM0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__0_i_1
       (.I0(rev_cnt_reg__0[8]),
        .I1(rev_cnt_reg__0[6]),
        .O(RPM0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__0_i_2
       (.I0(rev_cnt_reg__0[7]),
        .I1(rev_cnt_reg__0[5]),
        .O(RPM0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__0_i_3
       (.I0(rev_cnt_reg__0[6]),
        .I1(rev_cnt_reg__0[4]),
        .O(RPM0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__0_i_4
       (.I0(rev_cnt_reg__0[5]),
        .I1(rev_cnt_reg__0[3]),
        .O(RPM0_carry__0_i_4_n_0));
  CARRY4 RPM0_carry__1
       (.CI(RPM0_carry__0_n_0),
        .CO({RPM0_carry__1_n_0,RPM0_carry__1_n_1,RPM0_carry__1_n_2,RPM0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(rev_cnt_reg__0[12:9]),
        .O(p_0_in[12:9]),
        .S({RPM0_carry__1_i_1_n_0,RPM0_carry__1_i_2_n_0,RPM0_carry__1_i_3_n_0,RPM0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__1_i_1
       (.I0(rev_cnt_reg__0[12]),
        .I1(rev_cnt_reg__0[10]),
        .O(RPM0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__1_i_2
       (.I0(rev_cnt_reg__0[11]),
        .I1(rev_cnt_reg__0[9]),
        .O(RPM0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__1_i_3
       (.I0(rev_cnt_reg__0[10]),
        .I1(rev_cnt_reg__0[8]),
        .O(RPM0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__1_i_4
       (.I0(rev_cnt_reg__0[9]),
        .I1(rev_cnt_reg__0[7]),
        .O(RPM0_carry__1_i_4_n_0));
  CARRY4 RPM0_carry__2
       (.CI(RPM0_carry__1_n_0),
        .CO({RPM0_carry__2_n_0,RPM0_carry__2_n_1,RPM0_carry__2_n_2,RPM0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(rev_cnt_reg__0[16:13]),
        .O(p_0_in[16:13]),
        .S({RPM0_carry__2_i_1_n_0,RPM0_carry__2_i_2_n_0,RPM0_carry__2_i_3_n_0,RPM0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__2_i_1
       (.I0(rev_cnt_reg__0[16]),
        .I1(rev_cnt_reg__0[14]),
        .O(RPM0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__2_i_2
       (.I0(rev_cnt_reg__0[15]),
        .I1(rev_cnt_reg__0[13]),
        .O(RPM0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__2_i_3
       (.I0(rev_cnt_reg__0[14]),
        .I1(rev_cnt_reg__0[12]),
        .O(RPM0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__2_i_4
       (.I0(rev_cnt_reg__0[13]),
        .I1(rev_cnt_reg__0[11]),
        .O(RPM0_carry__2_i_4_n_0));
  CARRY4 RPM0_carry__3
       (.CI(RPM0_carry__2_n_0),
        .CO({RPM0_carry__3_n_0,RPM0_carry__3_n_1,RPM0_carry__3_n_2,RPM0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(rev_cnt_reg__0[20:17]),
        .O(p_0_in[20:17]),
        .S({RPM0_carry__3_i_1_n_0,RPM0_carry__3_i_2_n_0,RPM0_carry__3_i_3_n_0,RPM0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__3_i_1
       (.I0(rev_cnt_reg__0[20]),
        .I1(rev_cnt_reg__0[18]),
        .O(RPM0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__3_i_2
       (.I0(rev_cnt_reg__0[19]),
        .I1(rev_cnt_reg__0[17]),
        .O(RPM0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__3_i_3
       (.I0(rev_cnt_reg__0[18]),
        .I1(rev_cnt_reg__0[16]),
        .O(RPM0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__3_i_4
       (.I0(rev_cnt_reg__0[17]),
        .I1(rev_cnt_reg__0[15]),
        .O(RPM0_carry__3_i_4_n_0));
  CARRY4 RPM0_carry__4
       (.CI(RPM0_carry__3_n_0),
        .CO({RPM0_carry__4_n_0,RPM0_carry__4_n_1,RPM0_carry__4_n_2,RPM0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(rev_cnt_reg__0[24:21]),
        .O(p_0_in[24:21]),
        .S({RPM0_carry__4_i_1_n_0,RPM0_carry__4_i_2_n_0,RPM0_carry__4_i_3_n_0,RPM0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__4_i_1
       (.I0(rev_cnt_reg__0[24]),
        .I1(rev_cnt_reg__0[22]),
        .O(RPM0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__4_i_2
       (.I0(rev_cnt_reg__0[23]),
        .I1(rev_cnt_reg__0[21]),
        .O(RPM0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__4_i_3
       (.I0(rev_cnt_reg__0[22]),
        .I1(rev_cnt_reg__0[20]),
        .O(RPM0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__4_i_4
       (.I0(rev_cnt_reg__0[21]),
        .I1(rev_cnt_reg__0[19]),
        .O(RPM0_carry__4_i_4_n_0));
  CARRY4 RPM0_carry__5
       (.CI(RPM0_carry__4_n_0),
        .CO({RPM0_carry__5_n_0,RPM0_carry__5_n_1,RPM0_carry__5_n_2,RPM0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(rev_cnt_reg__0[28:25]),
        .O(p_0_in[28:25]),
        .S({RPM0_carry__5_i_1_n_0,RPM0_carry__5_i_2_n_0,RPM0_carry__5_i_3_n_0,RPM0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__5_i_1
       (.I0(rev_cnt_reg__0[28]),
        .I1(rev_cnt_reg__0[26]),
        .O(RPM0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__5_i_2
       (.I0(rev_cnt_reg__0[27]),
        .I1(rev_cnt_reg__0[25]),
        .O(RPM0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__5_i_3
       (.I0(rev_cnt_reg__0[26]),
        .I1(rev_cnt_reg__0[24]),
        .O(RPM0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__5_i_4
       (.I0(rev_cnt_reg__0[25]),
        .I1(rev_cnt_reg__0[23]),
        .O(RPM0_carry__5_i_4_n_0));
  CARRY4 RPM0_carry__6
       (.CI(RPM0_carry__5_n_0),
        .CO({NLW_RPM0_carry__6_CO_UNCONNECTED[3:2],RPM0_carry__6_n_2,RPM0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rev_cnt_reg__0[30:29]}),
        .O({NLW_RPM0_carry__6_O_UNCONNECTED[3],p_0_in[31:29]}),
        .S({1'b0,RPM0_carry__6_i_1_n_0,RPM0_carry__6_i_2_n_0,RPM0_carry__6_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__6_i_1
       (.I0(rev_cnt_reg__0[31]),
        .I1(rev_cnt_reg__0[29]),
        .O(RPM0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__6_i_2
       (.I0(rev_cnt_reg__0[30]),
        .I1(rev_cnt_reg__0[28]),
        .O(RPM0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry__6_i_3
       (.I0(rev_cnt_reg__0[29]),
        .I1(rev_cnt_reg__0[27]),
        .O(RPM0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry_i_1
       (.I0(rev_cnt_reg__0[4]),
        .I1(rev_cnt_reg__0[2]),
        .O(RPM0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry_i_2
       (.I0(rev_cnt_reg__0[3]),
        .I1(rev_cnt_reg__0[1]),
        .O(RPM0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    RPM0_carry_i_3
       (.I0(rev_cnt_reg__0[2]),
        .I1(rev_cnt_reg),
        .O(RPM0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \RPM[31]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .O(rev_cnt));
  FDRE \RPM_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(rev_cnt_reg),
        .Q(RPM[0]),
        .R(SR));
  FDRE \RPM_reg[10] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[10]),
        .Q(RPM[10]),
        .R(SR));
  FDRE \RPM_reg[11] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[11]),
        .Q(RPM[11]),
        .R(SR));
  FDRE \RPM_reg[12] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[12]),
        .Q(RPM[12]),
        .R(SR));
  FDRE \RPM_reg[13] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[13]),
        .Q(RPM[13]),
        .R(SR));
  FDRE \RPM_reg[14] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[14]),
        .Q(RPM[14]),
        .R(SR));
  FDRE \RPM_reg[15] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[15]),
        .Q(RPM[15]),
        .R(SR));
  FDRE \RPM_reg[16] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[16]),
        .Q(RPM[16]),
        .R(SR));
  FDRE \RPM_reg[17] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[17]),
        .Q(RPM[17]),
        .R(SR));
  FDRE \RPM_reg[18] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[18]),
        .Q(RPM[18]),
        .R(SR));
  FDRE \RPM_reg[19] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[19]),
        .Q(RPM[19]),
        .R(SR));
  FDRE \RPM_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[1]),
        .Q(RPM[1]),
        .R(SR));
  FDRE \RPM_reg[20] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[20]),
        .Q(RPM[20]),
        .R(SR));
  FDRE \RPM_reg[21] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[21]),
        .Q(RPM[21]),
        .R(SR));
  FDRE \RPM_reg[22] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[22]),
        .Q(RPM[22]),
        .R(SR));
  FDRE \RPM_reg[23] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[23]),
        .Q(RPM[23]),
        .R(SR));
  FDRE \RPM_reg[24] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[24]),
        .Q(RPM[24]),
        .R(SR));
  FDRE \RPM_reg[25] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[25]),
        .Q(RPM[25]),
        .R(SR));
  FDRE \RPM_reg[26] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[26]),
        .Q(RPM[26]),
        .R(SR));
  FDRE \RPM_reg[27] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[27]),
        .Q(RPM[27]),
        .R(SR));
  FDRE \RPM_reg[28] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[28]),
        .Q(RPM[28]),
        .R(SR));
  FDRE \RPM_reg[29] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[29]),
        .Q(RPM[29]),
        .R(SR));
  FDRE \RPM_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[2]),
        .Q(RPM[2]),
        .R(SR));
  FDRE \RPM_reg[30] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[30]),
        .Q(RPM[30]),
        .R(SR));
  FDRE \RPM_reg[31] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[31]),
        .Q(RPM[31]),
        .R(SR));
  FDRE \RPM_reg[3] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[3]),
        .Q(RPM[3]),
        .R(SR));
  FDRE \RPM_reg[4] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[4]),
        .Q(RPM[4]),
        .R(SR));
  FDRE \RPM_reg[5] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[5]),
        .Q(RPM[5]),
        .R(SR));
  FDRE \RPM_reg[6] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[6]),
        .Q(RPM[6]),
        .R(SR));
  FDRE \RPM_reg[7] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[7]),
        .Q(RPM[7]),
        .R(SR));
  FDRE \RPM_reg[8] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[8]),
        .Q(RPM[8]),
        .R(SR));
  FDRE \RPM_reg[9] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(p_0_in[9]),
        .Q(RPM[9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hFF00AAAAF0F0CCCC)) 
    \axi_rdata[0]_i_1 
       (.I0(position_reg[0]),
        .I1(dir),
        .I2(RPM[0]),
        .I3(Q[0]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[10]_i_1 
       (.I0(position_reg[10]),
        .I1(RPM[10]),
        .I2(Q[10]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[11]_i_1 
       (.I0(position_reg[11]),
        .I1(RPM[11]),
        .I2(Q[11]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[12]_i_1 
       (.I0(position_reg[12]),
        .I1(RPM[12]),
        .I2(Q[12]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[13]_i_1 
       (.I0(position_reg[13]),
        .I1(RPM[13]),
        .I2(Q[13]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[14]_i_1 
       (.I0(position_reg[14]),
        .I1(RPM[14]),
        .I2(Q[14]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[15]_i_1 
       (.I0(position_reg[15]),
        .I1(RPM[15]),
        .I2(Q[15]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[16]_i_1 
       (.I0(position_reg[16]),
        .I1(RPM[16]),
        .I2(Q[16]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[17]_i_1 
       (.I0(position_reg[17]),
        .I1(RPM[17]),
        .I2(Q[17]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[18]_i_1 
       (.I0(position_reg[18]),
        .I1(RPM[18]),
        .I2(Q[18]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[19]_i_1 
       (.I0(position_reg[19]),
        .I1(RPM[19]),
        .I2(Q[19]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[1]_i_1 
       (.I0(position_reg[1]),
        .I1(RPM[1]),
        .I2(Q[1]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[20]_i_1 
       (.I0(position_reg[20]),
        .I1(RPM[20]),
        .I2(Q[20]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[21]_i_1 
       (.I0(position_reg[21]),
        .I1(RPM[21]),
        .I2(Q[21]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[22]_i_1 
       (.I0(position_reg[22]),
        .I1(RPM[22]),
        .I2(Q[22]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[23]_i_1 
       (.I0(position_reg[23]),
        .I1(RPM[23]),
        .I2(Q[23]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[24]_i_1 
       (.I0(position_reg[24]),
        .I1(RPM[24]),
        .I2(Q[24]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[25]_i_1 
       (.I0(position_reg[25]),
        .I1(RPM[25]),
        .I2(Q[25]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[26]_i_1 
       (.I0(position_reg[26]),
        .I1(RPM[26]),
        .I2(Q[26]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[27]_i_1 
       (.I0(position_reg[27]),
        .I1(RPM[27]),
        .I2(Q[27]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[28]_i_1 
       (.I0(position_reg[28]),
        .I1(RPM[28]),
        .I2(Q[28]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[29]_i_1 
       (.I0(position_reg[29]),
        .I1(RPM[29]),
        .I2(Q[29]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[2]_i_1 
       (.I0(position_reg[2]),
        .I1(RPM[2]),
        .I2(Q[2]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[30]_i_1 
       (.I0(position_reg[30]),
        .I1(RPM[30]),
        .I2(Q[30]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[31]_i_1 
       (.I0(position_reg[31]),
        .I1(RPM[31]),
        .I2(Q[31]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[3]_i_1 
       (.I0(position_reg[3]),
        .I1(RPM[3]),
        .I2(Q[3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[4]_i_1 
       (.I0(position_reg[4]),
        .I1(RPM[4]),
        .I2(Q[4]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[5]_i_1 
       (.I0(position_reg[5]),
        .I1(RPM[5]),
        .I2(Q[5]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[6]_i_1 
       (.I0(position_reg[6]),
        .I1(RPM[6]),
        .I2(Q[6]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[7]_i_1 
       (.I0(position_reg[7]),
        .I1(RPM[7]),
        .I2(Q[7]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[8]_i_1 
       (.I0(position_reg[8]),
        .I1(RPM[8]),
        .I2(Q[8]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[9]_i_1 
       (.I0(position_reg[9]),
        .I1(RPM[9]),
        .I2(Q[9]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[9]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(position_reg[7]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(position_reg[5]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(position_reg[4]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(position_reg[11]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(position_reg[10]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(position_reg[9]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(position_reg[15]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(position_reg[14]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(position_reg[13]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(position_reg[12]),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1
       (.I0(position_reg[19]),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2
       (.I0(position_reg[18]),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3
       (.I0(position_reg[17]),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4
       (.I0(position_reg[16]),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1
       (.I0(position_reg[23]),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2
       (.I0(position_reg[22]),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_3
       (.I0(position_reg[21]),
        .O(i__carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_4
       (.I0(position_reg[20]),
        .O(i__carry__4_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_1
       (.I0(position_reg[27]),
        .O(i__carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_2
       (.I0(position_reg[26]),
        .O(i__carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_3
       (.I0(position_reg[25]),
        .O(i__carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_4
       (.I0(position_reg[24]),
        .O(i__carry__5_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_1
       (.I0(position_reg[31]),
        .O(i__carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_2
       (.I0(position_reg[30]),
        .O(i__carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_3
       (.I0(position_reg[29]),
        .O(i__carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_4
       (.I0(position_reg[28]),
        .O(i__carry__6_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(position_reg[2]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(position_reg[1]),
        .O(i__carry_i_2_n_0));
  FDRE past_pulse_A_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(present_pulse_A),
        .Q(past_pulse_A),
        .R(SR));
  CARRY4 \position0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\position0_inferred__0/i__carry_n_0 ,\position0_inferred__0/i__carry_n_1 ,\position0_inferred__0/i__carry_n_2 ,\position0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,position_reg[2:1],1'b0}),
        .O(data[3:0]),
        .S({position_reg[3],i__carry_i_1_n_0,i__carry_i_2_n_0,position_reg[0]}));
  CARRY4 \position0_inferred__0/i__carry__0 
       (.CI(\position0_inferred__0/i__carry_n_0 ),
        .CO({\position0_inferred__0/i__carry__0_n_0 ,\position0_inferred__0/i__carry__0_n_1 ,\position0_inferred__0/i__carry__0_n_2 ,\position0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({position_reg[7],1'b0,position_reg[5:4]}),
        .O(data[7:4]),
        .S({i__carry__0_i_1_n_0,position_reg[6],i__carry__0_i_2_n_0,i__carry__0_i_3_n_0}));
  CARRY4 \position0_inferred__0/i__carry__1 
       (.CI(\position0_inferred__0/i__carry__0_n_0 ),
        .CO({\position0_inferred__0/i__carry__1_n_0 ,\position0_inferred__0/i__carry__1_n_1 ,\position0_inferred__0/i__carry__1_n_2 ,\position0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({position_reg[11:9],1'b0}),
        .O(data[11:8]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,position_reg[8]}));
  CARRY4 \position0_inferred__0/i__carry__2 
       (.CI(\position0_inferred__0/i__carry__1_n_0 ),
        .CO({\position0_inferred__0/i__carry__2_n_0 ,\position0_inferred__0/i__carry__2_n_1 ,\position0_inferred__0/i__carry__2_n_2 ,\position0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(position_reg[15:12]),
        .O(data[15:12]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  CARRY4 \position0_inferred__0/i__carry__3 
       (.CI(\position0_inferred__0/i__carry__2_n_0 ),
        .CO({\position0_inferred__0/i__carry__3_n_0 ,\position0_inferred__0/i__carry__3_n_1 ,\position0_inferred__0/i__carry__3_n_2 ,\position0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(position_reg[19:16]),
        .O(data[19:16]),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  CARRY4 \position0_inferred__0/i__carry__4 
       (.CI(\position0_inferred__0/i__carry__3_n_0 ),
        .CO({\position0_inferred__0/i__carry__4_n_0 ,\position0_inferred__0/i__carry__4_n_1 ,\position0_inferred__0/i__carry__4_n_2 ,\position0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(position_reg[23:20]),
        .O(data[23:20]),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  CARRY4 \position0_inferred__0/i__carry__5 
       (.CI(\position0_inferred__0/i__carry__4_n_0 ),
        .CO({\position0_inferred__0/i__carry__5_n_0 ,\position0_inferred__0/i__carry__5_n_1 ,\position0_inferred__0/i__carry__5_n_2 ,\position0_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(position_reg[27:24]),
        .O(data[27:24]),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  CARRY4 \position0_inferred__0/i__carry__6 
       (.CI(\position0_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_position0_inferred__0/i__carry__6_CO_UNCONNECTED [3],\position0_inferred__0/i__carry__6_n_1 ,\position0_inferred__0/i__carry__6_n_2 ,\position0_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,position_reg[30:28]}),
        .O(data[31:28]),
        .S({i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0}));
  CARRY4 position2_carry
       (.CI(1'b0),
        .CO({position2_carry_n_0,position2_carry_n_1,position2_carry_n_2,position2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({position_reg[3:1],1'b0}),
        .O({nxt_position[3],NLW_position2_carry_O_UNCONNECTED[2:0]}),
        .S({position2_carry_i_1_n_0,position2_carry_i_2_n_0,position2_carry_i_3_n_0,position_reg[0]}));
  CARRY4 position2_carry__0
       (.CI(position2_carry_n_0),
        .CO({position2_carry__0_n_0,position2_carry__0_n_1,position2_carry__0_n_2,position2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,position_reg[4]}),
        .O(nxt_position[7:4]),
        .S({position_reg[7:5],position2_carry__0_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    position2_carry__0_i_1
       (.I0(position_reg[4]),
        .O(position2_carry__0_i_1_n_0));
  CARRY4 position2_carry__1
       (.CI(position2_carry__0_n_0),
        .CO({position2_carry__1_n_0,position2_carry__1_n_1,position2_carry__1_n_2,position2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nxt_position[11:8]),
        .S(position_reg[11:8]));
  CARRY4 position2_carry__2
       (.CI(position2_carry__1_n_0),
        .CO({position2_carry__2_n_0,position2_carry__2_n_1,position2_carry__2_n_2,position2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nxt_position[15:12]),
        .S(position_reg[15:12]));
  CARRY4 position2_carry__3
       (.CI(position2_carry__2_n_0),
        .CO({position2_carry__3_n_0,position2_carry__3_n_1,position2_carry__3_n_2,position2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nxt_position[19:16]),
        .S(position_reg[19:16]));
  CARRY4 position2_carry__4
       (.CI(position2_carry__3_n_0),
        .CO({position2_carry__4_n_0,position2_carry__4_n_1,position2_carry__4_n_2,position2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nxt_position[23:20]),
        .S(position_reg[23:20]));
  CARRY4 position2_carry__5
       (.CI(position2_carry__4_n_0),
        .CO({position2_carry__5_n_0,position2_carry__5_n_1,position2_carry__5_n_2,position2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nxt_position[27:24]),
        .S(position_reg[27:24]));
  CARRY4 position2_carry__6
       (.CI(position2_carry__5_n_0),
        .CO({NLW_position2_carry__6_CO_UNCONNECTED[3],position2_carry__6_n_1,position2_carry__6_n_2,position2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nxt_position[31:28]),
        .S(position_reg[31:28]));
  LUT1 #(
    .INIT(2'h1)) 
    position2_carry_i_1
       (.I0(position_reg[3]),
        .O(position2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    position2_carry_i_2
       (.I0(position_reg[2]),
        .O(position2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    position2_carry_i_3
       (.I0(position_reg[1]),
        .O(position2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \position[0]_i_1 
       (.I0(present_pulse_A),
        .I1(past_pulse_A),
        .O(posedge_A));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \position[0]_i_10 
       (.I0(nxt_position[27]),
        .I1(nxt_position[26]),
        .I2(nxt_position[29]),
        .I3(nxt_position[28]),
        .O(\position[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \position[0]_i_11 
       (.I0(nxt_position[31]),
        .I1(nxt_position[30]),
        .I2(nxt_position[9]),
        .O(\position[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \position[0]_i_12 
       (.I0(nxt_position[19]),
        .I1(nxt_position[18]),
        .I2(nxt_position[21]),
        .I3(nxt_position[20]),
        .O(\position[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \position[0]_i_13 
       (.I0(nxt_position[23]),
        .I1(nxt_position[22]),
        .I2(nxt_position[25]),
        .I3(nxt_position[24]),
        .O(\position[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \position[0]_i_14 
       (.I0(nxt_position[15]),
        .I1(nxt_position[14]),
        .I2(nxt_position[17]),
        .I3(nxt_position[16]),
        .O(\position[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \position[0]_i_15 
       (.I0(nxt_position[11]),
        .I1(nxt_position[10]),
        .I2(nxt_position[13]),
        .I3(nxt_position[12]),
        .O(\position[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h005D)) 
    \position[0]_i_3 
       (.I0(nxt_position[8]),
        .I1(\position[0]_i_8_n_0 ),
        .I2(nxt_position[7]),
        .I3(\position[0]_i_9_n_0 ),
        .O(\position[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCC5CCCCC5C5C5C5)) 
    \position[0]_i_4 
       (.I0(position_reg[3]),
        .I1(data[3]),
        .I2(\position[0]_i_9_n_0 ),
        .I3(nxt_position[7]),
        .I4(\position[0]_i_8_n_0 ),
        .I5(nxt_position[8]),
        .O(\position[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCC5CCCCC5C5C5C5)) 
    \position[0]_i_5 
       (.I0(position_reg[2]),
        .I1(data[2]),
        .I2(\position[0]_i_9_n_0 ),
        .I3(nxt_position[7]),
        .I4(\position[0]_i_8_n_0 ),
        .I5(nxt_position[8]),
        .O(\position[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCCC5CCCCC5C5C5C5)) 
    \position[0]_i_6 
       (.I0(position_reg[1]),
        .I1(data[1]),
        .I2(\position[0]_i_9_n_0 ),
        .I3(nxt_position[7]),
        .I4(\position[0]_i_8_n_0 ),
        .I5(nxt_position[8]),
        .O(\position[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[0]_i_7 
       (.I0(data[0]),
        .I1(position_reg[0]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1FFF)) 
    \position[0]_i_8 
       (.I0(nxt_position[4]),
        .I1(nxt_position[3]),
        .I2(nxt_position[6]),
        .I3(nxt_position[5]),
        .O(\position[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \position[0]_i_9 
       (.I0(\position[0]_i_10_n_0 ),
        .I1(\position[0]_i_11_n_0 ),
        .I2(\position[0]_i_12_n_0 ),
        .I3(\position[0]_i_13_n_0 ),
        .I4(\position[0]_i_14_n_0 ),
        .I5(\position[0]_i_15_n_0 ),
        .O(\position[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[12]_i_2 
       (.I0(data[15]),
        .I1(position_reg[15]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[12]_i_3 
       (.I0(data[14]),
        .I1(position_reg[14]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[12]_i_4 
       (.I0(data[13]),
        .I1(position_reg[13]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[12]_i_5 
       (.I0(data[12]),
        .I1(position_reg[12]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[16]_i_2 
       (.I0(data[19]),
        .I1(position_reg[19]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[16]_i_3 
       (.I0(data[18]),
        .I1(position_reg[18]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[16]_i_4 
       (.I0(data[17]),
        .I1(position_reg[17]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[16]_i_5 
       (.I0(data[16]),
        .I1(position_reg[16]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[20]_i_2 
       (.I0(data[23]),
        .I1(position_reg[23]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[20]_i_3 
       (.I0(data[22]),
        .I1(position_reg[22]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[20]_i_4 
       (.I0(data[21]),
        .I1(position_reg[21]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[20]_i_5 
       (.I0(data[20]),
        .I1(position_reg[20]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[24]_i_2 
       (.I0(data[27]),
        .I1(position_reg[27]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[24]_i_3 
       (.I0(data[26]),
        .I1(position_reg[26]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[24]_i_4 
       (.I0(data[25]),
        .I1(position_reg[25]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[24]_i_5 
       (.I0(data[24]),
        .I1(position_reg[24]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[28]_i_2 
       (.I0(data[31]),
        .I1(position_reg[31]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[28]_i_3 
       (.I0(data[30]),
        .I1(position_reg[30]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[28]_i_4 
       (.I0(data[29]),
        .I1(position_reg[29]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[28]_i_5 
       (.I0(data[28]),
        .I1(position_reg[28]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[4]_i_2 
       (.I0(data[7]),
        .I1(position_reg[7]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[4]_i_3 
       (.I0(data[6]),
        .I1(position_reg[6]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[4]_i_4 
       (.I0(data[5]),
        .I1(position_reg[5]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCC5CCCCC5C5C5C5)) 
    \position[4]_i_5 
       (.I0(position_reg[4]),
        .I1(data[4]),
        .I2(\position[0]_i_9_n_0 ),
        .I3(nxt_position[7]),
        .I4(\position[0]_i_8_n_0 ),
        .I5(nxt_position[8]),
        .O(\position[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[8]_i_2 
       (.I0(data[11]),
        .I1(position_reg[11]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[8]_i_3 
       (.I0(data[10]),
        .I1(position_reg[10]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[8]_i_4 
       (.I0(data[9]),
        .I1(position_reg[9]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAACACCCAC)) 
    \position[8]_i_5 
       (.I0(data[8]),
        .I1(position_reg[8]),
        .I2(nxt_position[8]),
        .I3(\position[0]_i_8_n_0 ),
        .I4(nxt_position[7]),
        .I5(\position[0]_i_9_n_0 ),
        .O(\position[8]_i_5_n_0 ));
  FDRE \position_reg[0] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[0]_i_2_n_7 ),
        .Q(position_reg[0]),
        .R(SR));
  CARRY4 \position_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\position_reg[0]_i_2_n_0 ,\position_reg[0]_i_2_n_1 ,\position_reg[0]_i_2_n_2 ,\position_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\position[0]_i_3_n_0 ,\position[0]_i_3_n_0 ,\position[0]_i_3_n_0 ,1'b0}),
        .O({\position_reg[0]_i_2_n_4 ,\position_reg[0]_i_2_n_5 ,\position_reg[0]_i_2_n_6 ,\position_reg[0]_i_2_n_7 }),
        .S({\position[0]_i_4_n_0 ,\position[0]_i_5_n_0 ,\position[0]_i_6_n_0 ,\position[0]_i_7_n_0 }));
  FDRE \position_reg[10] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[8]_i_1_n_5 ),
        .Q(position_reg[10]),
        .R(SR));
  FDRE \position_reg[11] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[8]_i_1_n_4 ),
        .Q(position_reg[11]),
        .R(SR));
  FDRE \position_reg[12] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[12]_i_1_n_7 ),
        .Q(position_reg[12]),
        .R(SR));
  CARRY4 \position_reg[12]_i_1 
       (.CI(\position_reg[8]_i_1_n_0 ),
        .CO({\position_reg[12]_i_1_n_0 ,\position_reg[12]_i_1_n_1 ,\position_reg[12]_i_1_n_2 ,\position_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\position_reg[12]_i_1_n_4 ,\position_reg[12]_i_1_n_5 ,\position_reg[12]_i_1_n_6 ,\position_reg[12]_i_1_n_7 }),
        .S({\position[12]_i_2_n_0 ,\position[12]_i_3_n_0 ,\position[12]_i_4_n_0 ,\position[12]_i_5_n_0 }));
  FDRE \position_reg[13] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[12]_i_1_n_6 ),
        .Q(position_reg[13]),
        .R(SR));
  FDRE \position_reg[14] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[12]_i_1_n_5 ),
        .Q(position_reg[14]),
        .R(SR));
  FDRE \position_reg[15] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[12]_i_1_n_4 ),
        .Q(position_reg[15]),
        .R(SR));
  FDRE \position_reg[16] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[16]_i_1_n_7 ),
        .Q(position_reg[16]),
        .R(SR));
  CARRY4 \position_reg[16]_i_1 
       (.CI(\position_reg[12]_i_1_n_0 ),
        .CO({\position_reg[16]_i_1_n_0 ,\position_reg[16]_i_1_n_1 ,\position_reg[16]_i_1_n_2 ,\position_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\position_reg[16]_i_1_n_4 ,\position_reg[16]_i_1_n_5 ,\position_reg[16]_i_1_n_6 ,\position_reg[16]_i_1_n_7 }),
        .S({\position[16]_i_2_n_0 ,\position[16]_i_3_n_0 ,\position[16]_i_4_n_0 ,\position[16]_i_5_n_0 }));
  FDRE \position_reg[17] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[16]_i_1_n_6 ),
        .Q(position_reg[17]),
        .R(SR));
  FDRE \position_reg[18] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[16]_i_1_n_5 ),
        .Q(position_reg[18]),
        .R(SR));
  FDRE \position_reg[19] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[16]_i_1_n_4 ),
        .Q(position_reg[19]),
        .R(SR));
  FDRE \position_reg[1] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[0]_i_2_n_6 ),
        .Q(position_reg[1]),
        .R(SR));
  FDRE \position_reg[20] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[20]_i_1_n_7 ),
        .Q(position_reg[20]),
        .R(SR));
  CARRY4 \position_reg[20]_i_1 
       (.CI(\position_reg[16]_i_1_n_0 ),
        .CO({\position_reg[20]_i_1_n_0 ,\position_reg[20]_i_1_n_1 ,\position_reg[20]_i_1_n_2 ,\position_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\position_reg[20]_i_1_n_4 ,\position_reg[20]_i_1_n_5 ,\position_reg[20]_i_1_n_6 ,\position_reg[20]_i_1_n_7 }),
        .S({\position[20]_i_2_n_0 ,\position[20]_i_3_n_0 ,\position[20]_i_4_n_0 ,\position[20]_i_5_n_0 }));
  FDRE \position_reg[21] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[20]_i_1_n_6 ),
        .Q(position_reg[21]),
        .R(SR));
  FDRE \position_reg[22] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[20]_i_1_n_5 ),
        .Q(position_reg[22]),
        .R(SR));
  FDRE \position_reg[23] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[20]_i_1_n_4 ),
        .Q(position_reg[23]),
        .R(SR));
  FDRE \position_reg[24] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[24]_i_1_n_7 ),
        .Q(position_reg[24]),
        .R(SR));
  CARRY4 \position_reg[24]_i_1 
       (.CI(\position_reg[20]_i_1_n_0 ),
        .CO({\position_reg[24]_i_1_n_0 ,\position_reg[24]_i_1_n_1 ,\position_reg[24]_i_1_n_2 ,\position_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\position_reg[24]_i_1_n_4 ,\position_reg[24]_i_1_n_5 ,\position_reg[24]_i_1_n_6 ,\position_reg[24]_i_1_n_7 }),
        .S({\position[24]_i_2_n_0 ,\position[24]_i_3_n_0 ,\position[24]_i_4_n_0 ,\position[24]_i_5_n_0 }));
  FDRE \position_reg[25] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[24]_i_1_n_6 ),
        .Q(position_reg[25]),
        .R(SR));
  FDRE \position_reg[26] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[24]_i_1_n_5 ),
        .Q(position_reg[26]),
        .R(SR));
  FDRE \position_reg[27] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[24]_i_1_n_4 ),
        .Q(position_reg[27]),
        .R(SR));
  FDRE \position_reg[28] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[28]_i_1_n_7 ),
        .Q(position_reg[28]),
        .R(SR));
  CARRY4 \position_reg[28]_i_1 
       (.CI(\position_reg[24]_i_1_n_0 ),
        .CO({\NLW_position_reg[28]_i_1_CO_UNCONNECTED [3],\position_reg[28]_i_1_n_1 ,\position_reg[28]_i_1_n_2 ,\position_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\position_reg[28]_i_1_n_4 ,\position_reg[28]_i_1_n_5 ,\position_reg[28]_i_1_n_6 ,\position_reg[28]_i_1_n_7 }),
        .S({\position[28]_i_2_n_0 ,\position[28]_i_3_n_0 ,\position[28]_i_4_n_0 ,\position[28]_i_5_n_0 }));
  FDRE \position_reg[29] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[28]_i_1_n_6 ),
        .Q(position_reg[29]),
        .R(SR));
  FDRE \position_reg[2] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[0]_i_2_n_5 ),
        .Q(position_reg[2]),
        .R(SR));
  FDRE \position_reg[30] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[28]_i_1_n_5 ),
        .Q(position_reg[30]),
        .R(SR));
  FDRE \position_reg[31] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[28]_i_1_n_4 ),
        .Q(position_reg[31]),
        .R(SR));
  FDRE \position_reg[3] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[0]_i_2_n_4 ),
        .Q(position_reg[3]),
        .R(SR));
  FDRE \position_reg[4] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[4]_i_1_n_7 ),
        .Q(position_reg[4]),
        .R(SR));
  CARRY4 \position_reg[4]_i_1 
       (.CI(\position_reg[0]_i_2_n_0 ),
        .CO({\position_reg[4]_i_1_n_0 ,\position_reg[4]_i_1_n_1 ,\position_reg[4]_i_1_n_2 ,\position_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\position[0]_i_3_n_0 }),
        .O({\position_reg[4]_i_1_n_4 ,\position_reg[4]_i_1_n_5 ,\position_reg[4]_i_1_n_6 ,\position_reg[4]_i_1_n_7 }),
        .S({\position[4]_i_2_n_0 ,\position[4]_i_3_n_0 ,\position[4]_i_4_n_0 ,\position[4]_i_5_n_0 }));
  FDRE \position_reg[5] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[4]_i_1_n_6 ),
        .Q(position_reg[5]),
        .R(SR));
  FDRE \position_reg[6] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[4]_i_1_n_5 ),
        .Q(position_reg[6]),
        .R(SR));
  FDRE \position_reg[7] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[4]_i_1_n_4 ),
        .Q(position_reg[7]),
        .R(SR));
  FDRE \position_reg[8] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[8]_i_1_n_7 ),
        .Q(position_reg[8]),
        .R(SR));
  CARRY4 \position_reg[8]_i_1 
       (.CI(\position_reg[4]_i_1_n_0 ),
        .CO({\position_reg[8]_i_1_n_0 ,\position_reg[8]_i_1_n_1 ,\position_reg[8]_i_1_n_2 ,\position_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\position_reg[8]_i_1_n_4 ,\position_reg[8]_i_1_n_5 ,\position_reg[8]_i_1_n_6 ,\position_reg[8]_i_1_n_7 }),
        .S({\position[8]_i_2_n_0 ,\position[8]_i_3_n_0 ,\position[8]_i_4_n_0 ,\position[8]_i_5_n_0 }));
  FDRE \position_reg[9] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\position_reg[8]_i_1_n_6 ),
        .Q(position_reg[9]),
        .R(SR));
  FDRE present_pulse_A_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sync_chA),
        .Q(present_pulse_A),
        .R(SR));
  FDRE q1_chA_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(chA),
        .Q(q1_chA),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \rev_cnt[0]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(s00_axi_aresetn),
        .O(\rev_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rev_cnt[0]_i_3 
       (.I0(rev_cnt_reg),
        .O(\rev_cnt[0]_i_3_n_0 ));
  FDRE \rev_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[0]_i_2_n_7 ),
        .Q(rev_cnt_reg),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\rev_cnt_reg[0]_i_2_n_0 ,\rev_cnt_reg[0]_i_2_n_1 ,\rev_cnt_reg[0]_i_2_n_2 ,\rev_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rev_cnt_reg[0]_i_2_n_4 ,\rev_cnt_reg[0]_i_2_n_5 ,\rev_cnt_reg[0]_i_2_n_6 ,\rev_cnt_reg[0]_i_2_n_7 }),
        .S({rev_cnt_reg__0[3:1],\rev_cnt[0]_i_3_n_0 }));
  FDRE \rev_cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[8]_i_1_n_5 ),
        .Q(rev_cnt_reg__0[10]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[8]_i_1_n_4 ),
        .Q(rev_cnt_reg__0[11]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[12]_i_1_n_7 ),
        .Q(rev_cnt_reg__0[12]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[12]_i_1 
       (.CI(\rev_cnt_reg[8]_i_1_n_0 ),
        .CO({\rev_cnt_reg[12]_i_1_n_0 ,\rev_cnt_reg[12]_i_1_n_1 ,\rev_cnt_reg[12]_i_1_n_2 ,\rev_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rev_cnt_reg[12]_i_1_n_4 ,\rev_cnt_reg[12]_i_1_n_5 ,\rev_cnt_reg[12]_i_1_n_6 ,\rev_cnt_reg[12]_i_1_n_7 }),
        .S(rev_cnt_reg__0[15:12]));
  FDRE \rev_cnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[12]_i_1_n_6 ),
        .Q(rev_cnt_reg__0[13]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[12]_i_1_n_5 ),
        .Q(rev_cnt_reg__0[14]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[12]_i_1_n_4 ),
        .Q(rev_cnt_reg__0[15]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[16] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[16]_i_1_n_7 ),
        .Q(rev_cnt_reg__0[16]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[16]_i_1 
       (.CI(\rev_cnt_reg[12]_i_1_n_0 ),
        .CO({\rev_cnt_reg[16]_i_1_n_0 ,\rev_cnt_reg[16]_i_1_n_1 ,\rev_cnt_reg[16]_i_1_n_2 ,\rev_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rev_cnt_reg[16]_i_1_n_4 ,\rev_cnt_reg[16]_i_1_n_5 ,\rev_cnt_reg[16]_i_1_n_6 ,\rev_cnt_reg[16]_i_1_n_7 }),
        .S(rev_cnt_reg__0[19:16]));
  FDRE \rev_cnt_reg[17] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[16]_i_1_n_6 ),
        .Q(rev_cnt_reg__0[17]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[18] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[16]_i_1_n_5 ),
        .Q(rev_cnt_reg__0[18]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[19] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[16]_i_1_n_4 ),
        .Q(rev_cnt_reg__0[19]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[0]_i_2_n_6 ),
        .Q(rev_cnt_reg__0[1]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[20] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[20]_i_1_n_7 ),
        .Q(rev_cnt_reg__0[20]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[20]_i_1 
       (.CI(\rev_cnt_reg[16]_i_1_n_0 ),
        .CO({\rev_cnt_reg[20]_i_1_n_0 ,\rev_cnt_reg[20]_i_1_n_1 ,\rev_cnt_reg[20]_i_1_n_2 ,\rev_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rev_cnt_reg[20]_i_1_n_4 ,\rev_cnt_reg[20]_i_1_n_5 ,\rev_cnt_reg[20]_i_1_n_6 ,\rev_cnt_reg[20]_i_1_n_7 }),
        .S(rev_cnt_reg__0[23:20]));
  FDRE \rev_cnt_reg[21] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[20]_i_1_n_6 ),
        .Q(rev_cnt_reg__0[21]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[22] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[20]_i_1_n_5 ),
        .Q(rev_cnt_reg__0[22]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[23] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[20]_i_1_n_4 ),
        .Q(rev_cnt_reg__0[23]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[24] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[24]_i_1_n_7 ),
        .Q(rev_cnt_reg__0[24]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[24]_i_1 
       (.CI(\rev_cnt_reg[20]_i_1_n_0 ),
        .CO({\rev_cnt_reg[24]_i_1_n_0 ,\rev_cnt_reg[24]_i_1_n_1 ,\rev_cnt_reg[24]_i_1_n_2 ,\rev_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rev_cnt_reg[24]_i_1_n_4 ,\rev_cnt_reg[24]_i_1_n_5 ,\rev_cnt_reg[24]_i_1_n_6 ,\rev_cnt_reg[24]_i_1_n_7 }),
        .S(rev_cnt_reg__0[27:24]));
  FDRE \rev_cnt_reg[25] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[24]_i_1_n_6 ),
        .Q(rev_cnt_reg__0[25]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[26] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[24]_i_1_n_5 ),
        .Q(rev_cnt_reg__0[26]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[27] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[24]_i_1_n_4 ),
        .Q(rev_cnt_reg__0[27]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[28] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[28]_i_1_n_7 ),
        .Q(rev_cnt_reg__0[28]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[28]_i_1 
       (.CI(\rev_cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_rev_cnt_reg[28]_i_1_CO_UNCONNECTED [3],\rev_cnt_reg[28]_i_1_n_1 ,\rev_cnt_reg[28]_i_1_n_2 ,\rev_cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rev_cnt_reg[28]_i_1_n_4 ,\rev_cnt_reg[28]_i_1_n_5 ,\rev_cnt_reg[28]_i_1_n_6 ,\rev_cnt_reg[28]_i_1_n_7 }),
        .S(rev_cnt_reg__0[31:28]));
  FDRE \rev_cnt_reg[29] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[28]_i_1_n_6 ),
        .Q(rev_cnt_reg__0[29]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[0]_i_2_n_5 ),
        .Q(rev_cnt_reg__0[2]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[30] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[28]_i_1_n_5 ),
        .Q(rev_cnt_reg__0[30]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[31] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[28]_i_1_n_4 ),
        .Q(rev_cnt_reg__0[31]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[0]_i_2_n_4 ),
        .Q(rev_cnt_reg__0[3]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[4]_i_1_n_7 ),
        .Q(rev_cnt_reg__0[4]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[4]_i_1 
       (.CI(\rev_cnt_reg[0]_i_2_n_0 ),
        .CO({\rev_cnt_reg[4]_i_1_n_0 ,\rev_cnt_reg[4]_i_1_n_1 ,\rev_cnt_reg[4]_i_1_n_2 ,\rev_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rev_cnt_reg[4]_i_1_n_4 ,\rev_cnt_reg[4]_i_1_n_5 ,\rev_cnt_reg[4]_i_1_n_6 ,\rev_cnt_reg[4]_i_1_n_7 }),
        .S(rev_cnt_reg__0[7:4]));
  FDRE \rev_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[4]_i_1_n_6 ),
        .Q(rev_cnt_reg__0[5]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[4]_i_1_n_5 ),
        .Q(rev_cnt_reg__0[6]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[4]_i_1_n_4 ),
        .Q(rev_cnt_reg__0[7]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[8]_i_1_n_7 ),
        .Q(rev_cnt_reg__0[8]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[8]_i_1 
       (.CI(\rev_cnt_reg[4]_i_1_n_0 ),
        .CO({\rev_cnt_reg[8]_i_1_n_0 ,\rev_cnt_reg[8]_i_1_n_1 ,\rev_cnt_reg[8]_i_1_n_2 ,\rev_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rev_cnt_reg[8]_i_1_n_4 ,\rev_cnt_reg[8]_i_1_n_5 ,\rev_cnt_reg[8]_i_1_n_6 ,\rev_cnt_reg[8]_i_1_n_7 }),
        .S(rev_cnt_reg__0[11:8]));
  FDRE \rev_cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[8]_i_1_n_6 ),
        .Q(rev_cnt_reg__0[9]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE sync_chA_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(q1_chA),
        .Q(sync_chA),
        .R(1'b0));
  CARRY4 timer0_carry
       (.CI(1'b0),
        .CO({timer0_carry_n_0,timer0_carry_n_1,timer0_carry_n_2,timer0_carry_n_3}),
        .CYINIT(timer[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(timer[4:1]));
  CARRY4 timer0_carry__0
       (.CI(timer0_carry_n_0),
        .CO({timer0_carry__0_n_0,timer0_carry__0_n_1,timer0_carry__0_n_2,timer0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(timer[8:5]));
  CARRY4 timer0_carry__1
       (.CI(timer0_carry__0_n_0),
        .CO({timer0_carry__1_n_0,timer0_carry__1_n_1,timer0_carry__1_n_2,timer0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(timer[12:9]));
  CARRY4 timer0_carry__2
       (.CI(timer0_carry__1_n_0),
        .CO({timer0_carry__2_n_0,timer0_carry__2_n_1,timer0_carry__2_n_2,timer0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(timer[16:13]));
  CARRY4 timer0_carry__3
       (.CI(timer0_carry__2_n_0),
        .CO({timer0_carry__3_n_0,timer0_carry__3_n_1,timer0_carry__3_n_2,timer0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(timer[20:17]));
  CARRY4 timer0_carry__4
       (.CI(timer0_carry__3_n_0),
        .CO({timer0_carry__4_n_0,timer0_carry__4_n_1,timer0_carry__4_n_2,timer0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(timer[24:21]));
  CARRY4 timer0_carry__5
       (.CI(timer0_carry__4_n_0),
        .CO({timer0_carry__5_n_0,timer0_carry__5_n_1,timer0_carry__5_n_2,timer0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(timer[28:25]));
  CARRY4 timer0_carry__6
       (.CI(timer0_carry__5_n_0),
        .CO({NLW_timer0_carry__6_CO_UNCONNECTED[3:2],timer0_carry__6_n_2,timer0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_timer0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,timer[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]_i_1 
       (.I0(timer[0]),
        .O(timer_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[10]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[10]),
        .O(timer_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[11]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[11]),
        .O(timer_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[12]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[12]),
        .O(timer_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[13]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[13]),
        .O(timer_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[14]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[14]),
        .O(timer_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[15]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[15]),
        .O(timer_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[16]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[16]),
        .O(timer_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[17]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[17]),
        .O(timer_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[18]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[18]),
        .O(timer_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[19]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[19]),
        .O(timer_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[1]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[1]),
        .O(timer_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[20]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[20]),
        .O(timer_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[21]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[21]),
        .O(timer_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[22]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[22]),
        .O(timer_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[23]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[23]),
        .O(timer_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[24]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[24]),
        .O(timer_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[25]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[25]),
        .O(timer_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[26]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[26]),
        .O(timer_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[27]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[27]),
        .O(timer_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[28]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[28]),
        .O(timer_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[29]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[29]),
        .O(timer_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[2]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[2]),
        .O(timer_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[30]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[30]),
        .O(timer_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[31]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[31]),
        .O(timer_0[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer[31]_i_2 
       (.I0(timer[10]),
        .I1(timer[11]),
        .I2(timer[8]),
        .I3(timer[9]),
        .I4(\timer[31]_i_6_n_0 ),
        .O(\timer[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \timer[31]_i_3 
       (.I0(timer[2]),
        .I1(timer[3]),
        .I2(timer[0]),
        .I3(timer[1]),
        .I4(\timer[31]_i_7_n_0 ),
        .O(\timer[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \timer[31]_i_4 
       (.I0(timer[27]),
        .I1(timer[26]),
        .I2(timer[25]),
        .I3(timer[24]),
        .I4(\timer[31]_i_8_n_0 ),
        .O(\timer[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \timer[31]_i_5 
       (.I0(timer[19]),
        .I1(timer[18]),
        .I2(timer[17]),
        .I3(timer[16]),
        .I4(\timer[31]_i_9_n_0 ),
        .O(\timer[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \timer[31]_i_6 
       (.I0(timer[13]),
        .I1(timer[12]),
        .I2(timer[15]),
        .I3(timer[14]),
        .O(\timer[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \timer[31]_i_7 
       (.I0(timer[5]),
        .I1(timer[4]),
        .I2(timer[7]),
        .I3(timer[6]),
        .O(\timer[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[31]_i_8 
       (.I0(timer[29]),
        .I1(timer[28]),
        .I2(timer[31]),
        .I3(timer[30]),
        .O(\timer[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \timer[31]_i_9 
       (.I0(timer[21]),
        .I1(timer[20]),
        .I2(timer[23]),
        .I3(timer[22]),
        .O(\timer[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[3]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[3]),
        .O(timer_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[4]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[4]),
        .O(timer_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[5]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[5]),
        .O(timer_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[6]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[6]),
        .O(timer_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[7]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[7]),
        .O(timer_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[8]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[8]),
        .O(timer_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[9]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(data0[9]),
        .O(timer_0[9]));
  FDRE \timer_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[0]),
        .Q(timer[0]),
        .R(SR));
  FDRE \timer_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[10]),
        .Q(timer[10]),
        .R(SR));
  FDRE \timer_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[11]),
        .Q(timer[11]),
        .R(SR));
  FDRE \timer_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[12]),
        .Q(timer[12]),
        .R(SR));
  FDRE \timer_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[13]),
        .Q(timer[13]),
        .R(SR));
  FDRE \timer_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[14]),
        .Q(timer[14]),
        .R(SR));
  FDRE \timer_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[15]),
        .Q(timer[15]),
        .R(SR));
  FDRE \timer_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[16]),
        .Q(timer[16]),
        .R(SR));
  FDRE \timer_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[17]),
        .Q(timer[17]),
        .R(SR));
  FDRE \timer_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[18]),
        .Q(timer[18]),
        .R(SR));
  FDRE \timer_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[19]),
        .Q(timer[19]),
        .R(SR));
  FDRE \timer_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[1]),
        .Q(timer[1]),
        .R(SR));
  FDRE \timer_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[20]),
        .Q(timer[20]),
        .R(SR));
  FDRE \timer_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[21]),
        .Q(timer[21]),
        .R(SR));
  FDRE \timer_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[22]),
        .Q(timer[22]),
        .R(SR));
  FDRE \timer_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[23]),
        .Q(timer[23]),
        .R(SR));
  FDRE \timer_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[24]),
        .Q(timer[24]),
        .R(SR));
  FDRE \timer_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[25]),
        .Q(timer[25]),
        .R(SR));
  FDRE \timer_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[26]),
        .Q(timer[26]),
        .R(SR));
  FDRE \timer_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[27]),
        .Q(timer[27]),
        .R(SR));
  FDRE \timer_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[28]),
        .Q(timer[28]),
        .R(SR));
  FDRE \timer_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[29]),
        .Q(timer[29]),
        .R(SR));
  FDRE \timer_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[2]),
        .Q(timer[2]),
        .R(SR));
  FDRE \timer_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[30]),
        .Q(timer[30]),
        .R(SR));
  FDRE \timer_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[31]),
        .Q(timer[31]),
        .R(SR));
  FDRE \timer_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[3]),
        .Q(timer[3]),
        .R(SR));
  FDRE \timer_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[4]),
        .Q(timer[4]),
        .R(SR));
  FDRE \timer_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[5]),
        .Q(timer[5]),
        .R(SR));
  FDRE \timer_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[6]),
        .Q(timer[6]),
        .R(SR));
  FDRE \timer_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[7]),
        .Q(timer[7]),
        .R(SR));
  FDRE \timer_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[8]),
        .Q(timer[8]),
        .R(SR));
  FDRE \timer_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[9]),
        .Q(timer[9]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_direction
   (dir,
    s00_axi_aclk,
    chB,
    chA);
  output dir;
  input s00_axi_aclk;
  input chB;
  input chA;

  wire chA;
  wire \chA_delayed_reg_n_0_[0] ;
  wire chB;
  wire \chB_delayed_reg_n_0_[0] ;
  wire dir;
  wire dir_i_1_n_0;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire s00_axi_aclk;

  FDRE #(
    .INIT(1'b0)) 
    \chA_delayed_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(chA),
        .Q(\chA_delayed_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chA_delayed_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\chA_delayed_reg_n_0_[0] ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chA_delayed_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chB_delayed_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(chB),
        .Q(\chB_delayed_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chB_delayed_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\chB_delayed_reg_n_0_[0] ),
        .Q(p_2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chB_delayed_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(p_3_in),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBE7D2814)) 
    dir_i_1
       (.I0(p_2_in),
        .I1(p_1_in),
        .I2(p_3_in),
        .I3(p_0_in),
        .I4(dir),
        .O(dir_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dir_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(dir_i_1_n_0),
        .Q(dir),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorEncoder_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aresetn,
    s00_axi_aclk,
    chB,
    chA,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input chB;
  input chA;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire chA;
  wire chB;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorEncoder_v1_0_S00_AXI motorEncoder_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .chA(chA),
        .chB(chB),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorEncoder_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aresetn,
    s00_axi_aclk,
    chB,
    chA,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input chB;
  input chA;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire chA;
  wire chB;
  wire dir;
  wire [31:7]p_1_in;
  wire qei_i_n_0;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(qei_i_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(qei_i_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(qei_i_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(qei_i_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(qei_i_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(qei_i_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(qei_i_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(qei_i_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(qei_i_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(qei_i_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(qei_i_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_direction dir_i
       (.chA(chA),
        .chB(chB),
        .dir(dir),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_QEI qei_i
       (.D(reg_data_out),
        .Q(slv_reg3),
        .SR(qei_i_n_0),
        .axi_araddr(axi_araddr),
        .chA(chA),
        .dir(dir),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(qei_i_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(qei_i_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* CHECK_LICENSE_TYPE = "ugv_motorEncoder_0_0,motorEncoder_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "motorEncoder_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (chA,
    chB,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  input chA;
  input chB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN ugv_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ugv_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire chA;
  wire chB;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorEncoder_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .chA(chA),
        .chB(chB),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
