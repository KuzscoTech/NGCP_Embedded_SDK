// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Apr 28 16:50:12 2022
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
    Q,
    D,
    chA,
    s00_axi_aclk,
    chB,
    dir,
    \axi_rdata_reg[31] ,
    axi_araddr,
    s00_axi_aresetn);
  output [0:0]SR;
  output [0:0]Q;
  output [30:0]D;
  input chA;
  input s00_axi_aclk;
  input chB;
  input dir;
  input [30:0]\axi_rdata_reg[31] ;
  input [1:0]axi_araddr;
  input s00_axi_aresetn;

  wire [30:0]D;
  wire [0:0]Q;
  wire [31:1]RPM;
  wire [4:4]RPM2;
  wire [31:5]RPM2__0;
  wire RPM2_carry__0_i_1_n_0;
  wire RPM2_carry__0_i_2_n_0;
  wire RPM2_carry__0_i_3_n_0;
  wire RPM2_carry__0_i_4_n_0;
  wire RPM2_carry__0_n_0;
  wire RPM2_carry__0_n_1;
  wire RPM2_carry__0_n_2;
  wire RPM2_carry__0_n_3;
  wire RPM2_carry__1_i_1_n_0;
  wire RPM2_carry__1_i_2_n_0;
  wire RPM2_carry__1_i_3_n_0;
  wire RPM2_carry__1_i_4_n_0;
  wire RPM2_carry__1_n_0;
  wire RPM2_carry__1_n_1;
  wire RPM2_carry__1_n_2;
  wire RPM2_carry__1_n_3;
  wire RPM2_carry__2_i_1_n_0;
  wire RPM2_carry__2_i_2_n_0;
  wire RPM2_carry__2_i_3_n_0;
  wire RPM2_carry__2_i_4_n_0;
  wire RPM2_carry__2_n_0;
  wire RPM2_carry__2_n_1;
  wire RPM2_carry__2_n_2;
  wire RPM2_carry__2_n_3;
  wire RPM2_carry__3_i_1_n_0;
  wire RPM2_carry__3_i_2_n_0;
  wire RPM2_carry__3_i_3_n_0;
  wire RPM2_carry__3_i_4_n_0;
  wire RPM2_carry__3_n_0;
  wire RPM2_carry__3_n_1;
  wire RPM2_carry__3_n_2;
  wire RPM2_carry__3_n_3;
  wire RPM2_carry__4_i_1_n_0;
  wire RPM2_carry__4_i_2_n_0;
  wire RPM2_carry__4_i_3_n_0;
  wire RPM2_carry__4_i_4_n_0;
  wire RPM2_carry__4_n_0;
  wire RPM2_carry__4_n_1;
  wire RPM2_carry__4_n_2;
  wire RPM2_carry__4_n_3;
  wire RPM2_carry__5_i_1_n_0;
  wire RPM2_carry__5_i_2_n_0;
  wire RPM2_carry__5_i_3_n_0;
  wire RPM2_carry__5_i_4_n_0;
  wire RPM2_carry__5_n_0;
  wire RPM2_carry__5_n_1;
  wire RPM2_carry__5_n_2;
  wire RPM2_carry__5_n_3;
  wire RPM2_carry__6_i_1_n_0;
  wire RPM2_carry__6_i_2_n_0;
  wire RPM2_carry__6_i_3_n_0;
  wire RPM2_carry__6_n_2;
  wire RPM2_carry__6_n_3;
  wire RPM2_carry_i_1_n_0;
  wire RPM2_carry_i_2_n_0;
  wire RPM2_carry_i_3_n_0;
  wire RPM2_carry_n_0;
  wire RPM2_carry_n_1;
  wire RPM2_carry_n_2;
  wire RPM2_carry_n_3;
  wire \RPM[13]_i_2_n_0 ;
  wire \RPM[13]_i_3_n_0 ;
  wire \RPM[13]_i_4_n_0 ;
  wire \RPM[13]_i_5_n_0 ;
  wire \RPM[17]_i_2_n_0 ;
  wire \RPM[17]_i_3_n_0 ;
  wire \RPM[17]_i_4_n_0 ;
  wire \RPM[17]_i_5_n_0 ;
  wire \RPM[21]_i_2_n_0 ;
  wire \RPM[21]_i_3_n_0 ;
  wire \RPM[21]_i_4_n_0 ;
  wire \RPM[21]_i_5_n_0 ;
  wire \RPM[25]_i_2_n_0 ;
  wire \RPM[25]_i_3_n_0 ;
  wire \RPM[25]_i_4_n_0 ;
  wire \RPM[25]_i_5_n_0 ;
  wire \RPM[29]_i_2_n_0 ;
  wire \RPM[29]_i_3_n_0 ;
  wire \RPM[29]_i_4_n_0 ;
  wire \RPM[5]_i_2_n_0 ;
  wire \RPM[5]_i_3_n_0 ;
  wire \RPM[5]_i_4_n_0 ;
  wire \RPM[9]_i_2_n_0 ;
  wire \RPM[9]_i_3_n_0 ;
  wire \RPM[9]_i_4_n_0 ;
  wire \RPM[9]_i_5_n_0 ;
  wire \RPM_reg[13]_i_1_n_0 ;
  wire \RPM_reg[13]_i_1_n_1 ;
  wire \RPM_reg[13]_i_1_n_2 ;
  wire \RPM_reg[13]_i_1_n_3 ;
  wire \RPM_reg[13]_i_1_n_4 ;
  wire \RPM_reg[13]_i_1_n_5 ;
  wire \RPM_reg[13]_i_1_n_6 ;
  wire \RPM_reg[13]_i_1_n_7 ;
  wire \RPM_reg[17]_i_1_n_0 ;
  wire \RPM_reg[17]_i_1_n_1 ;
  wire \RPM_reg[17]_i_1_n_2 ;
  wire \RPM_reg[17]_i_1_n_3 ;
  wire \RPM_reg[17]_i_1_n_4 ;
  wire \RPM_reg[17]_i_1_n_5 ;
  wire \RPM_reg[17]_i_1_n_6 ;
  wire \RPM_reg[17]_i_1_n_7 ;
  wire \RPM_reg[21]_i_1_n_0 ;
  wire \RPM_reg[21]_i_1_n_1 ;
  wire \RPM_reg[21]_i_1_n_2 ;
  wire \RPM_reg[21]_i_1_n_3 ;
  wire \RPM_reg[21]_i_1_n_4 ;
  wire \RPM_reg[21]_i_1_n_5 ;
  wire \RPM_reg[21]_i_1_n_6 ;
  wire \RPM_reg[21]_i_1_n_7 ;
  wire \RPM_reg[25]_i_1_n_0 ;
  wire \RPM_reg[25]_i_1_n_1 ;
  wire \RPM_reg[25]_i_1_n_2 ;
  wire \RPM_reg[25]_i_1_n_3 ;
  wire \RPM_reg[25]_i_1_n_4 ;
  wire \RPM_reg[25]_i_1_n_5 ;
  wire \RPM_reg[25]_i_1_n_6 ;
  wire \RPM_reg[25]_i_1_n_7 ;
  wire \RPM_reg[29]_i_1_n_0 ;
  wire \RPM_reg[29]_i_1_n_1 ;
  wire \RPM_reg[29]_i_1_n_2 ;
  wire \RPM_reg[29]_i_1_n_3 ;
  wire \RPM_reg[29]_i_1_n_4 ;
  wire \RPM_reg[29]_i_1_n_5 ;
  wire \RPM_reg[29]_i_1_n_6 ;
  wire \RPM_reg[29]_i_1_n_7 ;
  wire \RPM_reg[31]_i_2_n_2 ;
  wire \RPM_reg[31]_i_2_n_7 ;
  wire \RPM_reg[5]_i_1_n_0 ;
  wire \RPM_reg[5]_i_1_n_1 ;
  wire \RPM_reg[5]_i_1_n_2 ;
  wire \RPM_reg[5]_i_1_n_3 ;
  wire \RPM_reg[5]_i_1_n_4 ;
  wire \RPM_reg[5]_i_1_n_5 ;
  wire \RPM_reg[5]_i_1_n_6 ;
  wire \RPM_reg[5]_i_1_n_7 ;
  wire \RPM_reg[9]_i_1_n_0 ;
  wire \RPM_reg[9]_i_1_n_1 ;
  wire \RPM_reg[9]_i_1_n_2 ;
  wire \RPM_reg[9]_i_1_n_3 ;
  wire \RPM_reg[9]_i_1_n_4 ;
  wire \RPM_reg[9]_i_1_n_5 ;
  wire \RPM_reg[9]_i_1_n_6 ;
  wire \RPM_reg[9]_i_1_n_7 ;
  wire [0:0]SR;
  wire [1:0]axi_araddr;
  wire [30:0]\axi_rdata_reg[31] ;
  wire chA;
  wire chB;
  wire [31:1]data0;
  wire [31:1]data1;
  wire dir;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
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
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [31:0]nxt_position;
  wire nxt_position0_carry__0_i_1_n_0;
  wire nxt_position0_carry__0_i_2_n_0;
  wire nxt_position0_carry__0_i_3_n_0;
  wire nxt_position0_carry__0_i_4_n_0;
  wire nxt_position0_carry__0_n_0;
  wire nxt_position0_carry__0_n_1;
  wire nxt_position0_carry__0_n_2;
  wire nxt_position0_carry__0_n_3;
  wire nxt_position0_carry__0_n_4;
  wire nxt_position0_carry__0_n_5;
  wire nxt_position0_carry__0_n_6;
  wire nxt_position0_carry__0_n_7;
  wire nxt_position0_carry__1_i_1_n_0;
  wire nxt_position0_carry__1_i_2_n_0;
  wire nxt_position0_carry__1_i_3_n_0;
  wire nxt_position0_carry__1_i_4_n_0;
  wire nxt_position0_carry__1_n_0;
  wire nxt_position0_carry__1_n_1;
  wire nxt_position0_carry__1_n_2;
  wire nxt_position0_carry__1_n_3;
  wire nxt_position0_carry__1_n_4;
  wire nxt_position0_carry__1_n_5;
  wire nxt_position0_carry__1_n_6;
  wire nxt_position0_carry__1_n_7;
  wire nxt_position0_carry__2_i_1_n_0;
  wire nxt_position0_carry__2_i_2_n_0;
  wire nxt_position0_carry__2_i_3_n_0;
  wire nxt_position0_carry__2_i_4_n_0;
  wire nxt_position0_carry__2_n_0;
  wire nxt_position0_carry__2_n_1;
  wire nxt_position0_carry__2_n_2;
  wire nxt_position0_carry__2_n_3;
  wire nxt_position0_carry__2_n_4;
  wire nxt_position0_carry__2_n_5;
  wire nxt_position0_carry__2_n_6;
  wire nxt_position0_carry__2_n_7;
  wire nxt_position0_carry__3_i_1_n_0;
  wire nxt_position0_carry__3_i_2_n_0;
  wire nxt_position0_carry__3_i_3_n_0;
  wire nxt_position0_carry__3_i_4_n_0;
  wire nxt_position0_carry__3_n_0;
  wire nxt_position0_carry__3_n_1;
  wire nxt_position0_carry__3_n_2;
  wire nxt_position0_carry__3_n_3;
  wire nxt_position0_carry__3_n_4;
  wire nxt_position0_carry__3_n_5;
  wire nxt_position0_carry__3_n_6;
  wire nxt_position0_carry__3_n_7;
  wire nxt_position0_carry__4_i_1_n_0;
  wire nxt_position0_carry__4_i_2_n_0;
  wire nxt_position0_carry__4_i_3_n_0;
  wire nxt_position0_carry__4_i_4_n_0;
  wire nxt_position0_carry__4_n_0;
  wire nxt_position0_carry__4_n_1;
  wire nxt_position0_carry__4_n_2;
  wire nxt_position0_carry__4_n_3;
  wire nxt_position0_carry__4_n_4;
  wire nxt_position0_carry__4_n_5;
  wire nxt_position0_carry__4_n_6;
  wire nxt_position0_carry__4_n_7;
  wire nxt_position0_carry__5_i_1_n_0;
  wire nxt_position0_carry__5_i_2_n_0;
  wire nxt_position0_carry__5_i_3_n_0;
  wire nxt_position0_carry__5_i_4_n_0;
  wire nxt_position0_carry__5_n_0;
  wire nxt_position0_carry__5_n_1;
  wire nxt_position0_carry__5_n_2;
  wire nxt_position0_carry__5_n_3;
  wire nxt_position0_carry__5_n_4;
  wire nxt_position0_carry__5_n_5;
  wire nxt_position0_carry__5_n_6;
  wire nxt_position0_carry__5_n_7;
  wire nxt_position0_carry__6_i_1_n_0;
  wire nxt_position0_carry__6_i_2_n_0;
  wire nxt_position0_carry__6_i_3_n_0;
  wire nxt_position0_carry__6_n_2;
  wire nxt_position0_carry__6_n_3;
  wire nxt_position0_carry__6_n_5;
  wire nxt_position0_carry__6_n_6;
  wire nxt_position0_carry__6_n_7;
  wire nxt_position0_carry_i_1_n_0;
  wire nxt_position0_carry_i_2_n_0;
  wire nxt_position0_carry_i_3_n_0;
  wire nxt_position0_carry_i_4_n_0;
  wire nxt_position0_carry_n_0;
  wire nxt_position0_carry_n_1;
  wire nxt_position0_carry_n_2;
  wire nxt_position0_carry_n_3;
  wire nxt_position0_carry_n_4;
  wire nxt_position0_carry_n_5;
  wire nxt_position0_carry_n_6;
  wire nxt_position0_carry_n_7;
  wire p_0_in;
  wire past_pulse_A;
  wire past_pulse_B;
  wire posPulseAdjCount;
  wire \posPulseAdjCount[0]_i_1_n_0 ;
  wire \posPulseAdjCount[1]_i_1_n_0 ;
  wire \posPulseAdjCount[2]_i_1_n_0 ;
  wire \posPulseAdjCount[3]_i_2_n_0 ;
  wire \posPulseAdjCount_reg_n_0_[0] ;
  wire \posPulseAdjCount_reg_n_0_[1] ;
  wire \posPulseAdjCount_reg_n_0_[2] ;
  wire \posPulseAdjCount_reg_n_0_[3] ;
  wire [31:0]posPulseCount;
  wire \posPulseCount0_inferred__2/i__carry__0_n_0 ;
  wire \posPulseCount0_inferred__2/i__carry__0_n_1 ;
  wire \posPulseCount0_inferred__2/i__carry__0_n_2 ;
  wire \posPulseCount0_inferred__2/i__carry__0_n_3 ;
  wire \posPulseCount0_inferred__2/i__carry__1_n_0 ;
  wire \posPulseCount0_inferred__2/i__carry__1_n_1 ;
  wire \posPulseCount0_inferred__2/i__carry__1_n_2 ;
  wire \posPulseCount0_inferred__2/i__carry__1_n_3 ;
  wire \posPulseCount0_inferred__2/i__carry__2_n_0 ;
  wire \posPulseCount0_inferred__2/i__carry__2_n_1 ;
  wire \posPulseCount0_inferred__2/i__carry__2_n_2 ;
  wire \posPulseCount0_inferred__2/i__carry__2_n_3 ;
  wire \posPulseCount0_inferred__2/i__carry__3_n_0 ;
  wire \posPulseCount0_inferred__2/i__carry__3_n_1 ;
  wire \posPulseCount0_inferred__2/i__carry__3_n_2 ;
  wire \posPulseCount0_inferred__2/i__carry__3_n_3 ;
  wire \posPulseCount0_inferred__2/i__carry__4_n_0 ;
  wire \posPulseCount0_inferred__2/i__carry__4_n_1 ;
  wire \posPulseCount0_inferred__2/i__carry__4_n_2 ;
  wire \posPulseCount0_inferred__2/i__carry__4_n_3 ;
  wire \posPulseCount0_inferred__2/i__carry__5_n_0 ;
  wire \posPulseCount0_inferred__2/i__carry__5_n_1 ;
  wire \posPulseCount0_inferred__2/i__carry__5_n_2 ;
  wire \posPulseCount0_inferred__2/i__carry__5_n_3 ;
  wire \posPulseCount0_inferred__2/i__carry__6_n_2 ;
  wire \posPulseCount0_inferred__2/i__carry__6_n_3 ;
  wire \posPulseCount0_inferred__2/i__carry_n_0 ;
  wire \posPulseCount0_inferred__2/i__carry_n_1 ;
  wire \posPulseCount0_inferred__2/i__carry_n_2 ;
  wire \posPulseCount0_inferred__2/i__carry_n_3 ;
  wire posPulseCountAdj__0;
  wire \posPulseCount[0]_i_1_n_0 ;
  wire \posPulseCount[10]_i_1_n_0 ;
  wire \posPulseCount[11]_i_1_n_0 ;
  wire \posPulseCount[12]_i_1_n_0 ;
  wire \posPulseCount[13]_i_1_n_0 ;
  wire \posPulseCount[14]_i_1_n_0 ;
  wire \posPulseCount[15]_i_1_n_0 ;
  wire \posPulseCount[16]_i_1_n_0 ;
  wire \posPulseCount[17]_i_1_n_0 ;
  wire \posPulseCount[18]_i_1_n_0 ;
  wire \posPulseCount[19]_i_1_n_0 ;
  wire \posPulseCount[1]_i_1_n_0 ;
  wire \posPulseCount[20]_i_1_n_0 ;
  wire \posPulseCount[21]_i_1_n_0 ;
  wire \posPulseCount[22]_i_1_n_0 ;
  wire \posPulseCount[23]_i_1_n_0 ;
  wire \posPulseCount[24]_i_1_n_0 ;
  wire \posPulseCount[25]_i_1_n_0 ;
  wire \posPulseCount[26]_i_1_n_0 ;
  wire \posPulseCount[27]_i_1_n_0 ;
  wire \posPulseCount[28]_i_1_n_0 ;
  wire \posPulseCount[29]_i_1_n_0 ;
  wire \posPulseCount[2]_i_1_n_0 ;
  wire \posPulseCount[30]_i_1_n_0 ;
  wire \posPulseCount[31]_i_10_n_0 ;
  wire \posPulseCount[31]_i_11_n_0 ;
  wire \posPulseCount[31]_i_12_n_0 ;
  wire \posPulseCount[31]_i_13_n_0 ;
  wire \posPulseCount[31]_i_14_n_0 ;
  wire \posPulseCount[31]_i_2_n_0 ;
  wire \posPulseCount[31]_i_3_n_0 ;
  wire \posPulseCount[31]_i_4_n_0 ;
  wire \posPulseCount[31]_i_5_n_0 ;
  wire \posPulseCount[31]_i_6_n_0 ;
  wire \posPulseCount[31]_i_7_n_0 ;
  wire \posPulseCount[31]_i_8_n_0 ;
  wire \posPulseCount[31]_i_9_n_0 ;
  wire \posPulseCount[3]_i_1_n_0 ;
  wire \posPulseCount[4]_i_1_n_0 ;
  wire \posPulseCount[5]_i_1_n_0 ;
  wire \posPulseCount[6]_i_1_n_0 ;
  wire \posPulseCount[7]_i_1_n_0 ;
  wire \posPulseCount[8]_i_1_n_0 ;
  wire \posPulseCount[9]_i_1_n_0 ;
  wire posPulseCount_1;
  wire posedge_A;
  wire [31:1]position;
  wire \position[31]_i_10_n_0 ;
  wire \position[31]_i_11_n_0 ;
  wire \position[31]_i_3_n_0 ;
  wire \position[31]_i_4_n_0 ;
  wire \position[31]_i_5_n_0 ;
  wire \position[31]_i_6_n_0 ;
  wire \position[31]_i_7_n_0 ;
  wire \position[31]_i_8_n_0 ;
  wire \position[31]_i_9_n_0 ;
  wire \position_reg[12]_i_2_n_0 ;
  wire \position_reg[12]_i_2_n_1 ;
  wire \position_reg[12]_i_2_n_2 ;
  wire \position_reg[12]_i_2_n_3 ;
  wire \position_reg[16]_i_2_n_0 ;
  wire \position_reg[16]_i_2_n_1 ;
  wire \position_reg[16]_i_2_n_2 ;
  wire \position_reg[16]_i_2_n_3 ;
  wire \position_reg[20]_i_2_n_0 ;
  wire \position_reg[20]_i_2_n_1 ;
  wire \position_reg[20]_i_2_n_2 ;
  wire \position_reg[20]_i_2_n_3 ;
  wire \position_reg[24]_i_2_n_0 ;
  wire \position_reg[24]_i_2_n_1 ;
  wire \position_reg[24]_i_2_n_2 ;
  wire \position_reg[24]_i_2_n_3 ;
  wire \position_reg[28]_i_2_n_0 ;
  wire \position_reg[28]_i_2_n_1 ;
  wire \position_reg[28]_i_2_n_2 ;
  wire \position_reg[28]_i_2_n_3 ;
  wire \position_reg[31]_i_2_n_2 ;
  wire \position_reg[31]_i_2_n_3 ;
  wire \position_reg[4]_i_2_n_0 ;
  wire \position_reg[4]_i_2_n_1 ;
  wire \position_reg[4]_i_2_n_2 ;
  wire \position_reg[4]_i_2_n_3 ;
  wire \position_reg[8]_i_2_n_0 ;
  wire \position_reg[8]_i_2_n_1 ;
  wire \position_reg[8]_i_2_n_2 ;
  wire \position_reg[8]_i_2_n_3 ;
  wire present_pulse_A;
  wire present_pulse_B;
  wire q1_chA;
  wire q1_chB;
  wire rev_cnt;
  wire \rev_cnt[0]_i_1_n_0 ;
  wire \rev_cnt[0]_i_4_n_0 ;
  wire [30:0]rev_cnt_reg;
  wire \rev_cnt_reg[0]_i_3_n_0 ;
  wire \rev_cnt_reg[0]_i_3_n_1 ;
  wire \rev_cnt_reg[0]_i_3_n_2 ;
  wire \rev_cnt_reg[0]_i_3_n_3 ;
  wire \rev_cnt_reg[0]_i_3_n_4 ;
  wire \rev_cnt_reg[0]_i_3_n_5 ;
  wire \rev_cnt_reg[0]_i_3_n_6 ;
  wire \rev_cnt_reg[0]_i_3_n_7 ;
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
  wire \rev_cnt_reg[28]_i_1_n_2 ;
  wire \rev_cnt_reg[28]_i_1_n_3 ;
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
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire sync_chA;
  wire sync_chB;
  wire [31:0]timer;
  wire \timer[31]_i_10_n_0 ;
  wire \timer[31]_i_2_n_0 ;
  wire \timer[31]_i_3_n_0 ;
  wire \timer[31]_i_4_n_0 ;
  wire \timer[31]_i_5_n_0 ;
  wire \timer[31]_i_7_n_0 ;
  wire \timer[31]_i_8_n_0 ;
  wire \timer[31]_i_9_n_0 ;
  wire [31:0]timer_0;
  wire \timer_reg[12]_i_2_n_0 ;
  wire \timer_reg[12]_i_2_n_1 ;
  wire \timer_reg[12]_i_2_n_2 ;
  wire \timer_reg[12]_i_2_n_3 ;
  wire \timer_reg[12]_i_2_n_4 ;
  wire \timer_reg[12]_i_2_n_5 ;
  wire \timer_reg[12]_i_2_n_6 ;
  wire \timer_reg[12]_i_2_n_7 ;
  wire \timer_reg[16]_i_2_n_0 ;
  wire \timer_reg[16]_i_2_n_1 ;
  wire \timer_reg[16]_i_2_n_2 ;
  wire \timer_reg[16]_i_2_n_3 ;
  wire \timer_reg[16]_i_2_n_4 ;
  wire \timer_reg[16]_i_2_n_5 ;
  wire \timer_reg[16]_i_2_n_6 ;
  wire \timer_reg[16]_i_2_n_7 ;
  wire \timer_reg[20]_i_2_n_0 ;
  wire \timer_reg[20]_i_2_n_1 ;
  wire \timer_reg[20]_i_2_n_2 ;
  wire \timer_reg[20]_i_2_n_3 ;
  wire \timer_reg[20]_i_2_n_4 ;
  wire \timer_reg[20]_i_2_n_5 ;
  wire \timer_reg[20]_i_2_n_6 ;
  wire \timer_reg[20]_i_2_n_7 ;
  wire \timer_reg[24]_i_2_n_0 ;
  wire \timer_reg[24]_i_2_n_1 ;
  wire \timer_reg[24]_i_2_n_2 ;
  wire \timer_reg[24]_i_2_n_3 ;
  wire \timer_reg[24]_i_2_n_4 ;
  wire \timer_reg[24]_i_2_n_5 ;
  wire \timer_reg[24]_i_2_n_6 ;
  wire \timer_reg[24]_i_2_n_7 ;
  wire \timer_reg[28]_i_2_n_0 ;
  wire \timer_reg[28]_i_2_n_1 ;
  wire \timer_reg[28]_i_2_n_2 ;
  wire \timer_reg[28]_i_2_n_3 ;
  wire \timer_reg[28]_i_2_n_4 ;
  wire \timer_reg[28]_i_2_n_5 ;
  wire \timer_reg[28]_i_2_n_6 ;
  wire \timer_reg[28]_i_2_n_7 ;
  wire \timer_reg[31]_i_6_n_2 ;
  wire \timer_reg[31]_i_6_n_3 ;
  wire \timer_reg[31]_i_6_n_5 ;
  wire \timer_reg[31]_i_6_n_6 ;
  wire \timer_reg[31]_i_6_n_7 ;
  wire \timer_reg[4]_i_2_n_0 ;
  wire \timer_reg[4]_i_2_n_1 ;
  wire \timer_reg[4]_i_2_n_2 ;
  wire \timer_reg[4]_i_2_n_3 ;
  wire \timer_reg[4]_i_2_n_4 ;
  wire \timer_reg[4]_i_2_n_5 ;
  wire \timer_reg[4]_i_2_n_6 ;
  wire \timer_reg[4]_i_2_n_7 ;
  wire \timer_reg[8]_i_2_n_0 ;
  wire \timer_reg[8]_i_2_n_1 ;
  wire \timer_reg[8]_i_2_n_2 ;
  wire \timer_reg[8]_i_2_n_3 ;
  wire \timer_reg[8]_i_2_n_4 ;
  wire \timer_reg[8]_i_2_n_5 ;
  wire \timer_reg[8]_i_2_n_6 ;
  wire \timer_reg[8]_i_2_n_7 ;
  wire [2:0]NLW_RPM2_carry_O_UNCONNECTED;
  wire [3:2]NLW_RPM2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_RPM2_carry__6_O_UNCONNECTED;
  wire [3:0]\NLW_RPM_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_RPM_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:2]NLW_nxt_position0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_nxt_position0_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_posPulseCount0_inferred__2/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_posPulseCount0_inferred__2/i__carry__6_O_UNCONNECTED ;
  wire [3:2]\NLW_position_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_position_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_rev_cnt_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_rev_cnt_reg[28]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_timer_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_timer_reg[31]_i_6_O_UNCONNECTED ;

  CARRY4 RPM2_carry
       (.CI(1'b0),
        .CO({RPM2_carry_n_0,RPM2_carry_n_1,RPM2_carry_n_2,RPM2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rev_cnt_reg[1:0],1'b0,1'b1}),
        .O({RPM2,NLW_RPM2_carry_O_UNCONNECTED[2:0]}),
        .S({RPM2_carry_i_1_n_0,RPM2_carry_i_2_n_0,RPM2_carry_i_3_n_0,rev_cnt_reg[0]}));
  CARRY4 RPM2_carry__0
       (.CI(RPM2_carry_n_0),
        .CO({RPM2_carry__0_n_0,RPM2_carry__0_n_1,RPM2_carry__0_n_2,RPM2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rev_cnt_reg[5:2]),
        .O(RPM2__0[8:5]),
        .S({RPM2_carry__0_i_1_n_0,RPM2_carry__0_i_2_n_0,RPM2_carry__0_i_3_n_0,RPM2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__0_i_1
       (.I0(rev_cnt_reg[5]),
        .I1(rev_cnt_reg[7]),
        .O(RPM2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__0_i_2
       (.I0(rev_cnt_reg[4]),
        .I1(rev_cnt_reg[6]),
        .O(RPM2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__0_i_3
       (.I0(rev_cnt_reg[3]),
        .I1(rev_cnt_reg[5]),
        .O(RPM2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__0_i_4
       (.I0(rev_cnt_reg[2]),
        .I1(rev_cnt_reg[4]),
        .O(RPM2_carry__0_i_4_n_0));
  CARRY4 RPM2_carry__1
       (.CI(RPM2_carry__0_n_0),
        .CO({RPM2_carry__1_n_0,RPM2_carry__1_n_1,RPM2_carry__1_n_2,RPM2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(rev_cnt_reg[9:6]),
        .O(RPM2__0[12:9]),
        .S({RPM2_carry__1_i_1_n_0,RPM2_carry__1_i_2_n_0,RPM2_carry__1_i_3_n_0,RPM2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__1_i_1
       (.I0(rev_cnt_reg[9]),
        .I1(rev_cnt_reg[11]),
        .O(RPM2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__1_i_2
       (.I0(rev_cnt_reg[8]),
        .I1(rev_cnt_reg[10]),
        .O(RPM2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__1_i_3
       (.I0(rev_cnt_reg[7]),
        .I1(rev_cnt_reg[9]),
        .O(RPM2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__1_i_4
       (.I0(rev_cnt_reg[6]),
        .I1(rev_cnt_reg[8]),
        .O(RPM2_carry__1_i_4_n_0));
  CARRY4 RPM2_carry__2
       (.CI(RPM2_carry__1_n_0),
        .CO({RPM2_carry__2_n_0,RPM2_carry__2_n_1,RPM2_carry__2_n_2,RPM2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(rev_cnt_reg[13:10]),
        .O(RPM2__0[16:13]),
        .S({RPM2_carry__2_i_1_n_0,RPM2_carry__2_i_2_n_0,RPM2_carry__2_i_3_n_0,RPM2_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__2_i_1
       (.I0(rev_cnt_reg[13]),
        .I1(rev_cnt_reg[15]),
        .O(RPM2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__2_i_2
       (.I0(rev_cnt_reg[12]),
        .I1(rev_cnt_reg[14]),
        .O(RPM2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__2_i_3
       (.I0(rev_cnt_reg[11]),
        .I1(rev_cnt_reg[13]),
        .O(RPM2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__2_i_4
       (.I0(rev_cnt_reg[10]),
        .I1(rev_cnt_reg[12]),
        .O(RPM2_carry__2_i_4_n_0));
  CARRY4 RPM2_carry__3
       (.CI(RPM2_carry__2_n_0),
        .CO({RPM2_carry__3_n_0,RPM2_carry__3_n_1,RPM2_carry__3_n_2,RPM2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(rev_cnt_reg[17:14]),
        .O(RPM2__0[20:17]),
        .S({RPM2_carry__3_i_1_n_0,RPM2_carry__3_i_2_n_0,RPM2_carry__3_i_3_n_0,RPM2_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__3_i_1
       (.I0(rev_cnt_reg[17]),
        .I1(rev_cnt_reg[19]),
        .O(RPM2_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__3_i_2
       (.I0(rev_cnt_reg[16]),
        .I1(rev_cnt_reg[18]),
        .O(RPM2_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__3_i_3
       (.I0(rev_cnt_reg[15]),
        .I1(rev_cnt_reg[17]),
        .O(RPM2_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__3_i_4
       (.I0(rev_cnt_reg[14]),
        .I1(rev_cnt_reg[16]),
        .O(RPM2_carry__3_i_4_n_0));
  CARRY4 RPM2_carry__4
       (.CI(RPM2_carry__3_n_0),
        .CO({RPM2_carry__4_n_0,RPM2_carry__4_n_1,RPM2_carry__4_n_2,RPM2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(rev_cnt_reg[21:18]),
        .O(RPM2__0[24:21]),
        .S({RPM2_carry__4_i_1_n_0,RPM2_carry__4_i_2_n_0,RPM2_carry__4_i_3_n_0,RPM2_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__4_i_1
       (.I0(rev_cnt_reg[21]),
        .I1(rev_cnt_reg[23]),
        .O(RPM2_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__4_i_2
       (.I0(rev_cnt_reg[20]),
        .I1(rev_cnt_reg[22]),
        .O(RPM2_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__4_i_3
       (.I0(rev_cnt_reg[19]),
        .I1(rev_cnt_reg[21]),
        .O(RPM2_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__4_i_4
       (.I0(rev_cnt_reg[18]),
        .I1(rev_cnt_reg[20]),
        .O(RPM2_carry__4_i_4_n_0));
  CARRY4 RPM2_carry__5
       (.CI(RPM2_carry__4_n_0),
        .CO({RPM2_carry__5_n_0,RPM2_carry__5_n_1,RPM2_carry__5_n_2,RPM2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(rev_cnt_reg[25:22]),
        .O(RPM2__0[28:25]),
        .S({RPM2_carry__5_i_1_n_0,RPM2_carry__5_i_2_n_0,RPM2_carry__5_i_3_n_0,RPM2_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__5_i_1
       (.I0(rev_cnt_reg[25]),
        .I1(rev_cnt_reg[27]),
        .O(RPM2_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__5_i_2
       (.I0(rev_cnt_reg[24]),
        .I1(rev_cnt_reg[26]),
        .O(RPM2_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__5_i_3
       (.I0(rev_cnt_reg[23]),
        .I1(rev_cnt_reg[25]),
        .O(RPM2_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__5_i_4
       (.I0(rev_cnt_reg[22]),
        .I1(rev_cnt_reg[24]),
        .O(RPM2_carry__5_i_4_n_0));
  CARRY4 RPM2_carry__6
       (.CI(RPM2_carry__5_n_0),
        .CO({NLW_RPM2_carry__6_CO_UNCONNECTED[3:2],RPM2_carry__6_n_2,RPM2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,rev_cnt_reg[27:26]}),
        .O({NLW_RPM2_carry__6_O_UNCONNECTED[3],RPM2__0[31:29]}),
        .S({1'b0,RPM2_carry__6_i_1_n_0,RPM2_carry__6_i_2_n_0,RPM2_carry__6_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__6_i_1
       (.I0(rev_cnt_reg[28]),
        .I1(rev_cnt_reg[30]),
        .O(RPM2_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__6_i_2
       (.I0(rev_cnt_reg[27]),
        .I1(rev_cnt_reg[29]),
        .O(RPM2_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry__6_i_3
       (.I0(rev_cnt_reg[26]),
        .I1(rev_cnt_reg[28]),
        .O(RPM2_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry_i_1
       (.I0(rev_cnt_reg[1]),
        .I1(rev_cnt_reg[3]),
        .O(RPM2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    RPM2_carry_i_2
       (.I0(rev_cnt_reg[0]),
        .I1(rev_cnt_reg[2]),
        .O(RPM2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    RPM2_carry_i_3
       (.I0(rev_cnt_reg[1]),
        .O(RPM2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[13]_i_2 
       (.I0(RPM2__0[16]),
        .I1(RPM2__0[14]),
        .O(\RPM[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[13]_i_3 
       (.I0(RPM2__0[15]),
        .I1(RPM2__0[13]),
        .O(\RPM[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[13]_i_4 
       (.I0(RPM2__0[14]),
        .I1(RPM2__0[12]),
        .O(\RPM[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[13]_i_5 
       (.I0(RPM2__0[13]),
        .I1(RPM2__0[11]),
        .O(\RPM[13]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[17]_i_2 
       (.I0(RPM2__0[20]),
        .I1(RPM2__0[18]),
        .O(\RPM[17]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[17]_i_3 
       (.I0(RPM2__0[19]),
        .I1(RPM2__0[17]),
        .O(\RPM[17]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[17]_i_4 
       (.I0(RPM2__0[18]),
        .I1(RPM2__0[16]),
        .O(\RPM[17]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[17]_i_5 
       (.I0(RPM2__0[17]),
        .I1(RPM2__0[15]),
        .O(\RPM[17]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[21]_i_2 
       (.I0(RPM2__0[24]),
        .I1(RPM2__0[22]),
        .O(\RPM[21]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[21]_i_3 
       (.I0(RPM2__0[23]),
        .I1(RPM2__0[21]),
        .O(\RPM[21]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[21]_i_4 
       (.I0(RPM2__0[22]),
        .I1(RPM2__0[20]),
        .O(\RPM[21]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[21]_i_5 
       (.I0(RPM2__0[21]),
        .I1(RPM2__0[19]),
        .O(\RPM[21]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[25]_i_2 
       (.I0(RPM2__0[28]),
        .I1(RPM2__0[26]),
        .O(\RPM[25]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[25]_i_3 
       (.I0(RPM2__0[27]),
        .I1(RPM2__0[25]),
        .O(\RPM[25]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[25]_i_4 
       (.I0(RPM2__0[26]),
        .I1(RPM2__0[24]),
        .O(\RPM[25]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[25]_i_5 
       (.I0(RPM2__0[25]),
        .I1(RPM2__0[23]),
        .O(\RPM[25]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[29]_i_2 
       (.I0(RPM2__0[31]),
        .I1(RPM2__0[29]),
        .O(\RPM[29]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[29]_i_3 
       (.I0(RPM2__0[30]),
        .I1(RPM2__0[28]),
        .O(\RPM[29]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[29]_i_4 
       (.I0(RPM2__0[29]),
        .I1(RPM2__0[27]),
        .O(\RPM[29]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \RPM[31]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .O(rev_cnt));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[5]_i_2 
       (.I0(RPM2__0[8]),
        .I1(RPM2__0[6]),
        .O(\RPM[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[5]_i_3 
       (.I0(RPM2__0[7]),
        .I1(RPM2__0[5]),
        .O(\RPM[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[5]_i_4 
       (.I0(RPM2__0[6]),
        .I1(RPM2),
        .O(\RPM[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[9]_i_2 
       (.I0(RPM2__0[12]),
        .I1(RPM2__0[10]),
        .O(\RPM[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[9]_i_3 
       (.I0(RPM2__0[11]),
        .I1(RPM2__0[9]),
        .O(\RPM[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[9]_i_4 
       (.I0(RPM2__0[10]),
        .I1(RPM2__0[8]),
        .O(\RPM[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \RPM[9]_i_5 
       (.I0(RPM2__0[9]),
        .I1(RPM2__0[7]),
        .O(\RPM[9]_i_5_n_0 ));
  FDRE \RPM_reg[10] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[13]_i_1_n_7 ),
        .Q(RPM[10]),
        .R(SR));
  FDRE \RPM_reg[11] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[13]_i_1_n_6 ),
        .Q(RPM[11]),
        .R(SR));
  FDRE \RPM_reg[12] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[13]_i_1_n_5 ),
        .Q(RPM[12]),
        .R(SR));
  FDRE \RPM_reg[13] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[13]_i_1_n_4 ),
        .Q(RPM[13]),
        .R(SR));
  CARRY4 \RPM_reg[13]_i_1 
       (.CI(\RPM_reg[9]_i_1_n_0 ),
        .CO({\RPM_reg[13]_i_1_n_0 ,\RPM_reg[13]_i_1_n_1 ,\RPM_reg[13]_i_1_n_2 ,\RPM_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(RPM2__0[16:13]),
        .O({\RPM_reg[13]_i_1_n_4 ,\RPM_reg[13]_i_1_n_5 ,\RPM_reg[13]_i_1_n_6 ,\RPM_reg[13]_i_1_n_7 }),
        .S({\RPM[13]_i_2_n_0 ,\RPM[13]_i_3_n_0 ,\RPM[13]_i_4_n_0 ,\RPM[13]_i_5_n_0 }));
  FDRE \RPM_reg[14] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[17]_i_1_n_7 ),
        .Q(RPM[14]),
        .R(SR));
  FDRE \RPM_reg[15] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[17]_i_1_n_6 ),
        .Q(RPM[15]),
        .R(SR));
  FDRE \RPM_reg[16] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[17]_i_1_n_5 ),
        .Q(RPM[16]),
        .R(SR));
  FDRE \RPM_reg[17] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[17]_i_1_n_4 ),
        .Q(RPM[17]),
        .R(SR));
  CARRY4 \RPM_reg[17]_i_1 
       (.CI(\RPM_reg[13]_i_1_n_0 ),
        .CO({\RPM_reg[17]_i_1_n_0 ,\RPM_reg[17]_i_1_n_1 ,\RPM_reg[17]_i_1_n_2 ,\RPM_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(RPM2__0[20:17]),
        .O({\RPM_reg[17]_i_1_n_4 ,\RPM_reg[17]_i_1_n_5 ,\RPM_reg[17]_i_1_n_6 ,\RPM_reg[17]_i_1_n_7 }),
        .S({\RPM[17]_i_2_n_0 ,\RPM[17]_i_3_n_0 ,\RPM[17]_i_4_n_0 ,\RPM[17]_i_5_n_0 }));
  FDRE \RPM_reg[18] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[21]_i_1_n_7 ),
        .Q(RPM[18]),
        .R(SR));
  FDRE \RPM_reg[19] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[21]_i_1_n_6 ),
        .Q(RPM[19]),
        .R(SR));
  FDRE \RPM_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(RPM2),
        .Q(RPM[1]),
        .R(SR));
  FDRE \RPM_reg[20] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[21]_i_1_n_5 ),
        .Q(RPM[20]),
        .R(SR));
  FDRE \RPM_reg[21] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[21]_i_1_n_4 ),
        .Q(RPM[21]),
        .R(SR));
  CARRY4 \RPM_reg[21]_i_1 
       (.CI(\RPM_reg[17]_i_1_n_0 ),
        .CO({\RPM_reg[21]_i_1_n_0 ,\RPM_reg[21]_i_1_n_1 ,\RPM_reg[21]_i_1_n_2 ,\RPM_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(RPM2__0[24:21]),
        .O({\RPM_reg[21]_i_1_n_4 ,\RPM_reg[21]_i_1_n_5 ,\RPM_reg[21]_i_1_n_6 ,\RPM_reg[21]_i_1_n_7 }),
        .S({\RPM[21]_i_2_n_0 ,\RPM[21]_i_3_n_0 ,\RPM[21]_i_4_n_0 ,\RPM[21]_i_5_n_0 }));
  FDRE \RPM_reg[22] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[25]_i_1_n_7 ),
        .Q(RPM[22]),
        .R(SR));
  FDRE \RPM_reg[23] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[25]_i_1_n_6 ),
        .Q(RPM[23]),
        .R(SR));
  FDRE \RPM_reg[24] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[25]_i_1_n_5 ),
        .Q(RPM[24]),
        .R(SR));
  FDRE \RPM_reg[25] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[25]_i_1_n_4 ),
        .Q(RPM[25]),
        .R(SR));
  CARRY4 \RPM_reg[25]_i_1 
       (.CI(\RPM_reg[21]_i_1_n_0 ),
        .CO({\RPM_reg[25]_i_1_n_0 ,\RPM_reg[25]_i_1_n_1 ,\RPM_reg[25]_i_1_n_2 ,\RPM_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(RPM2__0[28:25]),
        .O({\RPM_reg[25]_i_1_n_4 ,\RPM_reg[25]_i_1_n_5 ,\RPM_reg[25]_i_1_n_6 ,\RPM_reg[25]_i_1_n_7 }),
        .S({\RPM[25]_i_2_n_0 ,\RPM[25]_i_3_n_0 ,\RPM[25]_i_4_n_0 ,\RPM[25]_i_5_n_0 }));
  FDRE \RPM_reg[26] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[29]_i_1_n_7 ),
        .Q(RPM[26]),
        .R(SR));
  FDRE \RPM_reg[27] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[29]_i_1_n_6 ),
        .Q(RPM[27]),
        .R(SR));
  FDRE \RPM_reg[28] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[29]_i_1_n_5 ),
        .Q(RPM[28]),
        .R(SR));
  FDRE \RPM_reg[29] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[29]_i_1_n_4 ),
        .Q(RPM[29]),
        .R(SR));
  CARRY4 \RPM_reg[29]_i_1 
       (.CI(\RPM_reg[25]_i_1_n_0 ),
        .CO({\RPM_reg[29]_i_1_n_0 ,\RPM_reg[29]_i_1_n_1 ,\RPM_reg[29]_i_1_n_2 ,\RPM_reg[29]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,RPM2__0[31:29]}),
        .O({\RPM_reg[29]_i_1_n_4 ,\RPM_reg[29]_i_1_n_5 ,\RPM_reg[29]_i_1_n_6 ,\RPM_reg[29]_i_1_n_7 }),
        .S({RPM2__0[30],\RPM[29]_i_2_n_0 ,\RPM[29]_i_3_n_0 ,\RPM[29]_i_4_n_0 }));
  FDRE \RPM_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[5]_i_1_n_7 ),
        .Q(RPM[2]),
        .R(SR));
  FDRE \RPM_reg[30] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[31]_i_2_n_7 ),
        .Q(RPM[30]),
        .R(SR));
  FDRE \RPM_reg[31] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[31]_i_2_n_2 ),
        .Q(RPM[31]),
        .R(SR));
  CARRY4 \RPM_reg[31]_i_2 
       (.CI(\RPM_reg[29]_i_1_n_0 ),
        .CO({\NLW_RPM_reg[31]_i_2_CO_UNCONNECTED [3:2],\RPM_reg[31]_i_2_n_2 ,\NLW_RPM_reg[31]_i_2_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_RPM_reg[31]_i_2_O_UNCONNECTED [3:1],\RPM_reg[31]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b1,RPM2__0[31]}));
  FDRE \RPM_reg[3] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[5]_i_1_n_6 ),
        .Q(RPM[3]),
        .R(SR));
  FDRE \RPM_reg[4] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[5]_i_1_n_5 ),
        .Q(RPM[4]),
        .R(SR));
  FDRE \RPM_reg[5] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[5]_i_1_n_4 ),
        .Q(RPM[5]),
        .R(SR));
  CARRY4 \RPM_reg[5]_i_1 
       (.CI(1'b0),
        .CO({\RPM_reg[5]_i_1_n_0 ,\RPM_reg[5]_i_1_n_1 ,\RPM_reg[5]_i_1_n_2 ,\RPM_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({RPM2__0[8:6],1'b0}),
        .O({\RPM_reg[5]_i_1_n_4 ,\RPM_reg[5]_i_1_n_5 ,\RPM_reg[5]_i_1_n_6 ,\RPM_reg[5]_i_1_n_7 }),
        .S({\RPM[5]_i_2_n_0 ,\RPM[5]_i_3_n_0 ,\RPM[5]_i_4_n_0 ,RPM2__0[5]}));
  FDRE \RPM_reg[6] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[9]_i_1_n_7 ),
        .Q(RPM[6]),
        .R(SR));
  FDRE \RPM_reg[7] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[9]_i_1_n_6 ),
        .Q(RPM[7]),
        .R(SR));
  FDRE \RPM_reg[8] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[9]_i_1_n_5 ),
        .Q(RPM[8]),
        .R(SR));
  FDRE \RPM_reg[9] 
       (.C(s00_axi_aclk),
        .CE(rev_cnt),
        .D(\RPM_reg[9]_i_1_n_4 ),
        .Q(RPM[9]),
        .R(SR));
  CARRY4 \RPM_reg[9]_i_1 
       (.CI(\RPM_reg[5]_i_1_n_0 ),
        .CO({\RPM_reg[9]_i_1_n_0 ,\RPM_reg[9]_i_1_n_1 ,\RPM_reg[9]_i_1_n_2 ,\RPM_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(RPM2__0[12:9]),
        .O({\RPM_reg[9]_i_1_n_4 ,\RPM_reg[9]_i_1_n_5 ,\RPM_reg[9]_i_1_n_6 ,\RPM_reg[9]_i_1_n_7 }),
        .S({\RPM[9]_i_2_n_0 ,\RPM[9]_i_3_n_0 ,\RPM[9]_i_4_n_0 ,\RPM[9]_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[10]_i_1 
       (.I0(position[10]),
        .I1(RPM[10]),
        .I2(\axi_rdata_reg[31] [9]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[11]_i_1 
       (.I0(position[11]),
        .I1(RPM[11]),
        .I2(\axi_rdata_reg[31] [10]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[12]_i_1 
       (.I0(position[12]),
        .I1(RPM[12]),
        .I2(\axi_rdata_reg[31] [11]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[13]_i_1 
       (.I0(position[13]),
        .I1(RPM[13]),
        .I2(\axi_rdata_reg[31] [12]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[14]_i_1 
       (.I0(position[14]),
        .I1(RPM[14]),
        .I2(\axi_rdata_reg[31] [13]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[15]_i_1 
       (.I0(position[15]),
        .I1(RPM[15]),
        .I2(\axi_rdata_reg[31] [14]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[16]_i_1 
       (.I0(position[16]),
        .I1(RPM[16]),
        .I2(\axi_rdata_reg[31] [15]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[17]_i_1 
       (.I0(position[17]),
        .I1(RPM[17]),
        .I2(\axi_rdata_reg[31] [16]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[18]_i_1 
       (.I0(position[18]),
        .I1(RPM[18]),
        .I2(\axi_rdata_reg[31] [17]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[19]_i_1 
       (.I0(position[19]),
        .I1(RPM[19]),
        .I2(\axi_rdata_reg[31] [18]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[1]_i_1 
       (.I0(position[1]),
        .I1(RPM[1]),
        .I2(\axi_rdata_reg[31] [0]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[20]_i_1 
       (.I0(position[20]),
        .I1(RPM[20]),
        .I2(\axi_rdata_reg[31] [19]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[21]_i_1 
       (.I0(position[21]),
        .I1(RPM[21]),
        .I2(\axi_rdata_reg[31] [20]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[22]_i_1 
       (.I0(position[22]),
        .I1(RPM[22]),
        .I2(\axi_rdata_reg[31] [21]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[23]_i_1 
       (.I0(position[23]),
        .I1(RPM[23]),
        .I2(\axi_rdata_reg[31] [22]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[24]_i_1 
       (.I0(position[24]),
        .I1(RPM[24]),
        .I2(\axi_rdata_reg[31] [23]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[25]_i_1 
       (.I0(position[25]),
        .I1(RPM[25]),
        .I2(\axi_rdata_reg[31] [24]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[26]_i_1 
       (.I0(position[26]),
        .I1(RPM[26]),
        .I2(\axi_rdata_reg[31] [25]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[27]_i_1 
       (.I0(position[27]),
        .I1(RPM[27]),
        .I2(\axi_rdata_reg[31] [26]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[28]_i_1 
       (.I0(position[28]),
        .I1(RPM[28]),
        .I2(\axi_rdata_reg[31] [27]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[29]_i_1 
       (.I0(position[29]),
        .I1(RPM[29]),
        .I2(\axi_rdata_reg[31] [28]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[2]_i_1 
       (.I0(position[2]),
        .I1(RPM[2]),
        .I2(\axi_rdata_reg[31] [1]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[30]_i_1 
       (.I0(position[30]),
        .I1(RPM[30]),
        .I2(\axi_rdata_reg[31] [29]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[31]_i_1 
       (.I0(position[31]),
        .I1(RPM[31]),
        .I2(\axi_rdata_reg[31] [30]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[3]_i_1 
       (.I0(position[3]),
        .I1(RPM[3]),
        .I2(\axi_rdata_reg[31] [2]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[4]_i_1 
       (.I0(position[4]),
        .I1(RPM[4]),
        .I2(\axi_rdata_reg[31] [3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[5]_i_1 
       (.I0(position[5]),
        .I1(RPM[5]),
        .I2(\axi_rdata_reg[31] [4]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[6]_i_1 
       (.I0(position[6]),
        .I1(RPM[6]),
        .I2(\axi_rdata_reg[31] [5]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[7]_i_1 
       (.I0(position[7]),
        .I1(RPM[7]),
        .I2(\axi_rdata_reg[31] [6]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[8]_i_1 
       (.I0(position[8]),
        .I1(RPM[8]),
        .I2(\axi_rdata_reg[31] [7]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hF0AACC00)) 
    \axi_rdata[9]_i_1 
       (.I0(position[9]),
        .I1(RPM[9]),
        .I2(\axi_rdata_reg[31] [8]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(D[8]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(posPulseCount[8]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(posPulseCount[7]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(posPulseCount[6]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(posPulseCount[5]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(posPulseCount[12]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(posPulseCount[11]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(posPulseCount[10]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(posPulseCount[9]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(posPulseCount[16]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(posPulseCount[15]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(posPulseCount[14]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(posPulseCount[13]),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1
       (.I0(posPulseCount[20]),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_2
       (.I0(posPulseCount[19]),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_3
       (.I0(posPulseCount[18]),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_4
       (.I0(posPulseCount[17]),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_1
       (.I0(posPulseCount[24]),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_2
       (.I0(posPulseCount[23]),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_3
       (.I0(posPulseCount[22]),
        .O(i__carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__4_i_4
       (.I0(posPulseCount[21]),
        .O(i__carry__4_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_1
       (.I0(posPulseCount[28]),
        .O(i__carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_2
       (.I0(posPulseCount[27]),
        .O(i__carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_3
       (.I0(posPulseCount[26]),
        .O(i__carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__5_i_4
       (.I0(posPulseCount[25]),
        .O(i__carry__5_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_1
       (.I0(posPulseCount[31]),
        .O(i__carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_2
       (.I0(posPulseCount[30]),
        .O(i__carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__6_i_3
       (.I0(posPulseCount[29]),
        .O(i__carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(posPulseCount[4]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(posPulseCount[3]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(posPulseCount[2]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(posPulseCount[1]),
        .O(i__carry_i_4_n_0));
  CARRY4 nxt_position0_carry
       (.CI(1'b0),
        .CO({nxt_position0_carry_n_0,nxt_position0_carry_n_1,nxt_position0_carry_n_2,nxt_position0_carry_n_3}),
        .CYINIT(Q),
        .DI(position[4:1]),
        .O({nxt_position0_carry_n_4,nxt_position0_carry_n_5,nxt_position0_carry_n_6,nxt_position0_carry_n_7}),
        .S({nxt_position0_carry_i_1_n_0,nxt_position0_carry_i_2_n_0,nxt_position0_carry_i_3_n_0,nxt_position0_carry_i_4_n_0}));
  CARRY4 nxt_position0_carry__0
       (.CI(nxt_position0_carry_n_0),
        .CO({nxt_position0_carry__0_n_0,nxt_position0_carry__0_n_1,nxt_position0_carry__0_n_2,nxt_position0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(position[8:5]),
        .O({nxt_position0_carry__0_n_4,nxt_position0_carry__0_n_5,nxt_position0_carry__0_n_6,nxt_position0_carry__0_n_7}),
        .S({nxt_position0_carry__0_i_1_n_0,nxt_position0_carry__0_i_2_n_0,nxt_position0_carry__0_i_3_n_0,nxt_position0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__0_i_1
       (.I0(position[8]),
        .O(nxt_position0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__0_i_2
       (.I0(position[7]),
        .O(nxt_position0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__0_i_3
       (.I0(position[6]),
        .O(nxt_position0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__0_i_4
       (.I0(position[5]),
        .O(nxt_position0_carry__0_i_4_n_0));
  CARRY4 nxt_position0_carry__1
       (.CI(nxt_position0_carry__0_n_0),
        .CO({nxt_position0_carry__1_n_0,nxt_position0_carry__1_n_1,nxt_position0_carry__1_n_2,nxt_position0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(position[12:9]),
        .O({nxt_position0_carry__1_n_4,nxt_position0_carry__1_n_5,nxt_position0_carry__1_n_6,nxt_position0_carry__1_n_7}),
        .S({nxt_position0_carry__1_i_1_n_0,nxt_position0_carry__1_i_2_n_0,nxt_position0_carry__1_i_3_n_0,nxt_position0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__1_i_1
       (.I0(position[12]),
        .O(nxt_position0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__1_i_2
       (.I0(position[11]),
        .O(nxt_position0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__1_i_3
       (.I0(position[10]),
        .O(nxt_position0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__1_i_4
       (.I0(position[9]),
        .O(nxt_position0_carry__1_i_4_n_0));
  CARRY4 nxt_position0_carry__2
       (.CI(nxt_position0_carry__1_n_0),
        .CO({nxt_position0_carry__2_n_0,nxt_position0_carry__2_n_1,nxt_position0_carry__2_n_2,nxt_position0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(position[16:13]),
        .O({nxt_position0_carry__2_n_4,nxt_position0_carry__2_n_5,nxt_position0_carry__2_n_6,nxt_position0_carry__2_n_7}),
        .S({nxt_position0_carry__2_i_1_n_0,nxt_position0_carry__2_i_2_n_0,nxt_position0_carry__2_i_3_n_0,nxt_position0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__2_i_1
       (.I0(position[16]),
        .O(nxt_position0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__2_i_2
       (.I0(position[15]),
        .O(nxt_position0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__2_i_3
       (.I0(position[14]),
        .O(nxt_position0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__2_i_4
       (.I0(position[13]),
        .O(nxt_position0_carry__2_i_4_n_0));
  CARRY4 nxt_position0_carry__3
       (.CI(nxt_position0_carry__2_n_0),
        .CO({nxt_position0_carry__3_n_0,nxt_position0_carry__3_n_1,nxt_position0_carry__3_n_2,nxt_position0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(position[20:17]),
        .O({nxt_position0_carry__3_n_4,nxt_position0_carry__3_n_5,nxt_position0_carry__3_n_6,nxt_position0_carry__3_n_7}),
        .S({nxt_position0_carry__3_i_1_n_0,nxt_position0_carry__3_i_2_n_0,nxt_position0_carry__3_i_3_n_0,nxt_position0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__3_i_1
       (.I0(position[20]),
        .O(nxt_position0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__3_i_2
       (.I0(position[19]),
        .O(nxt_position0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__3_i_3
       (.I0(position[18]),
        .O(nxt_position0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__3_i_4
       (.I0(position[17]),
        .O(nxt_position0_carry__3_i_4_n_0));
  CARRY4 nxt_position0_carry__4
       (.CI(nxt_position0_carry__3_n_0),
        .CO({nxt_position0_carry__4_n_0,nxt_position0_carry__4_n_1,nxt_position0_carry__4_n_2,nxt_position0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(position[24:21]),
        .O({nxt_position0_carry__4_n_4,nxt_position0_carry__4_n_5,nxt_position0_carry__4_n_6,nxt_position0_carry__4_n_7}),
        .S({nxt_position0_carry__4_i_1_n_0,nxt_position0_carry__4_i_2_n_0,nxt_position0_carry__4_i_3_n_0,nxt_position0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__4_i_1
       (.I0(position[24]),
        .O(nxt_position0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__4_i_2
       (.I0(position[23]),
        .O(nxt_position0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__4_i_3
       (.I0(position[22]),
        .O(nxt_position0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__4_i_4
       (.I0(position[21]),
        .O(nxt_position0_carry__4_i_4_n_0));
  CARRY4 nxt_position0_carry__5
       (.CI(nxt_position0_carry__4_n_0),
        .CO({nxt_position0_carry__5_n_0,nxt_position0_carry__5_n_1,nxt_position0_carry__5_n_2,nxt_position0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(position[28:25]),
        .O({nxt_position0_carry__5_n_4,nxt_position0_carry__5_n_5,nxt_position0_carry__5_n_6,nxt_position0_carry__5_n_7}),
        .S({nxt_position0_carry__5_i_1_n_0,nxt_position0_carry__5_i_2_n_0,nxt_position0_carry__5_i_3_n_0,nxt_position0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__5_i_1
       (.I0(position[28]),
        .O(nxt_position0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__5_i_2
       (.I0(position[27]),
        .O(nxt_position0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__5_i_3
       (.I0(position[26]),
        .O(nxt_position0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__5_i_4
       (.I0(position[25]),
        .O(nxt_position0_carry__5_i_4_n_0));
  CARRY4 nxt_position0_carry__6
       (.CI(nxt_position0_carry__5_n_0),
        .CO({NLW_nxt_position0_carry__6_CO_UNCONNECTED[3:2],nxt_position0_carry__6_n_2,nxt_position0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,position[30:29]}),
        .O({NLW_nxt_position0_carry__6_O_UNCONNECTED[3],nxt_position0_carry__6_n_5,nxt_position0_carry__6_n_6,nxt_position0_carry__6_n_7}),
        .S({1'b0,nxt_position0_carry__6_i_1_n_0,nxt_position0_carry__6_i_2_n_0,nxt_position0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__6_i_1
       (.I0(position[31]),
        .O(nxt_position0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__6_i_2
       (.I0(position[30]),
        .O(nxt_position0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry__6_i_3
       (.I0(position[29]),
        .O(nxt_position0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry_i_1
       (.I0(position[4]),
        .O(nxt_position0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry_i_2
       (.I0(position[3]),
        .O(nxt_position0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry_i_3
       (.I0(position[2]),
        .O(nxt_position0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    nxt_position0_carry_i_4
       (.I0(position[1]),
        .O(nxt_position0_carry_i_4_n_0));
  FDRE past_pulse_A_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(present_pulse_A),
        .Q(past_pulse_A),
        .R(SR));
  FDRE past_pulse_B_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(present_pulse_B),
        .Q(past_pulse_B),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    \posPulseAdjCount[0]_i_1 
       (.I0(\posPulseAdjCount_reg_n_0_[3] ),
        .I1(\posPulseAdjCount_reg_n_0_[2] ),
        .I2(\posPulseAdjCount_reg_n_0_[1] ),
        .I3(\posPulseAdjCount_reg_n_0_[0] ),
        .O(\posPulseAdjCount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h32CC)) 
    \posPulseAdjCount[1]_i_1 
       (.I0(\posPulseAdjCount_reg_n_0_[3] ),
        .I1(\posPulseAdjCount_reg_n_0_[0] ),
        .I2(\posPulseAdjCount_reg_n_0_[2] ),
        .I3(\posPulseAdjCount_reg_n_0_[1] ),
        .O(\posPulseAdjCount[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6C)) 
    \posPulseAdjCount[2]_i_1 
       (.I0(\posPulseAdjCount_reg_n_0_[0] ),
        .I1(\posPulseAdjCount_reg_n_0_[2] ),
        .I2(\posPulseAdjCount_reg_n_0_[1] ),
        .O(\posPulseAdjCount[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \posPulseAdjCount[3]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .O(posPulseAdjCount));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \posPulseAdjCount[3]_i_2 
       (.I0(\posPulseAdjCount_reg_n_0_[3] ),
        .I1(\posPulseAdjCount_reg_n_0_[0] ),
        .I2(\posPulseAdjCount_reg_n_0_[2] ),
        .I3(\posPulseAdjCount_reg_n_0_[1] ),
        .O(\posPulseAdjCount[3]_i_2_n_0 ));
  FDRE \posPulseAdjCount_reg[0] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(\posPulseAdjCount[0]_i_1_n_0 ),
        .Q(\posPulseAdjCount_reg_n_0_[0] ),
        .R(SR));
  FDRE \posPulseAdjCount_reg[1] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(\posPulseAdjCount[1]_i_1_n_0 ),
        .Q(\posPulseAdjCount_reg_n_0_[1] ),
        .R(SR));
  FDRE \posPulseAdjCount_reg[2] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(\posPulseAdjCount[2]_i_1_n_0 ),
        .Q(\posPulseAdjCount_reg_n_0_[2] ),
        .R(SR));
  FDRE \posPulseAdjCount_reg[3] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(\posPulseAdjCount[3]_i_2_n_0 ),
        .Q(\posPulseAdjCount_reg_n_0_[3] ),
        .R(SR));
  CARRY4 \posPulseCount0_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\posPulseCount0_inferred__2/i__carry_n_0 ,\posPulseCount0_inferred__2/i__carry_n_1 ,\posPulseCount0_inferred__2/i__carry_n_2 ,\posPulseCount0_inferred__2/i__carry_n_3 }),
        .CYINIT(posPulseCount[0]),
        .DI(posPulseCount[4:1]),
        .O(data1[4:1]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \posPulseCount0_inferred__2/i__carry__0 
       (.CI(\posPulseCount0_inferred__2/i__carry_n_0 ),
        .CO({\posPulseCount0_inferred__2/i__carry__0_n_0 ,\posPulseCount0_inferred__2/i__carry__0_n_1 ,\posPulseCount0_inferred__2/i__carry__0_n_2 ,\posPulseCount0_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(posPulseCount[8:5]),
        .O(data1[8:5]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \posPulseCount0_inferred__2/i__carry__1 
       (.CI(\posPulseCount0_inferred__2/i__carry__0_n_0 ),
        .CO({\posPulseCount0_inferred__2/i__carry__1_n_0 ,\posPulseCount0_inferred__2/i__carry__1_n_1 ,\posPulseCount0_inferred__2/i__carry__1_n_2 ,\posPulseCount0_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(posPulseCount[12:9]),
        .O(data1[12:9]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \posPulseCount0_inferred__2/i__carry__2 
       (.CI(\posPulseCount0_inferred__2/i__carry__1_n_0 ),
        .CO({\posPulseCount0_inferred__2/i__carry__2_n_0 ,\posPulseCount0_inferred__2/i__carry__2_n_1 ,\posPulseCount0_inferred__2/i__carry__2_n_2 ,\posPulseCount0_inferred__2/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(posPulseCount[16:13]),
        .O(data1[16:13]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  CARRY4 \posPulseCount0_inferred__2/i__carry__3 
       (.CI(\posPulseCount0_inferred__2/i__carry__2_n_0 ),
        .CO({\posPulseCount0_inferred__2/i__carry__3_n_0 ,\posPulseCount0_inferred__2/i__carry__3_n_1 ,\posPulseCount0_inferred__2/i__carry__3_n_2 ,\posPulseCount0_inferred__2/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(posPulseCount[20:17]),
        .O(data1[20:17]),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  CARRY4 \posPulseCount0_inferred__2/i__carry__4 
       (.CI(\posPulseCount0_inferred__2/i__carry__3_n_0 ),
        .CO({\posPulseCount0_inferred__2/i__carry__4_n_0 ,\posPulseCount0_inferred__2/i__carry__4_n_1 ,\posPulseCount0_inferred__2/i__carry__4_n_2 ,\posPulseCount0_inferred__2/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(posPulseCount[24:21]),
        .O(data1[24:21]),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  CARRY4 \posPulseCount0_inferred__2/i__carry__5 
       (.CI(\posPulseCount0_inferred__2/i__carry__4_n_0 ),
        .CO({\posPulseCount0_inferred__2/i__carry__5_n_0 ,\posPulseCount0_inferred__2/i__carry__5_n_1 ,\posPulseCount0_inferred__2/i__carry__5_n_2 ,\posPulseCount0_inferred__2/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(posPulseCount[28:25]),
        .O(data1[28:25]),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  CARRY4 \posPulseCount0_inferred__2/i__carry__6 
       (.CI(\posPulseCount0_inferred__2/i__carry__5_n_0 ),
        .CO({\NLW_posPulseCount0_inferred__2/i__carry__6_CO_UNCONNECTED [3:2],\posPulseCount0_inferred__2/i__carry__6_n_2 ,\posPulseCount0_inferred__2/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,posPulseCount[30:29]}),
        .O({\NLW_posPulseCount0_inferred__2/i__carry__6_O_UNCONNECTED [3],data1[31:29]}),
        .S({1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    posPulseCountAdj
       (.I0(\posPulseAdjCount_reg_n_0_[2] ),
        .I1(\posPulseAdjCount_reg_n_0_[3] ),
        .I2(\posPulseAdjCount_reg_n_0_[1] ),
        .I3(\posPulseAdjCount_reg_n_0_[0] ),
        .O(p_0_in));
  FDRE posPulseCountAdj_reg
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(p_0_in),
        .Q(posPulseCountAdj__0),
        .R(SR));
  LUT5 #(
    .INIT(32'h0000FEFF)) 
    \posPulseCount[0]_i_1 
       (.I0(\posPulseCount[31]_i_6_n_0 ),
        .I1(\posPulseCount[31]_i_7_n_0 ),
        .I2(\posPulseCount[31]_i_3_n_0 ),
        .I3(posPulseCountAdj__0),
        .I4(posPulseCount[0]),
        .O(\posPulseCount[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[10]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[10]),
        .O(\posPulseCount[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[11]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[11]),
        .O(\posPulseCount[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[12]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[12]),
        .O(\posPulseCount[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[13]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[13]),
        .O(\posPulseCount[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[14]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[14]),
        .O(\posPulseCount[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[15]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[15]),
        .O(\posPulseCount[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[16]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[16]),
        .O(\posPulseCount[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[17]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[17]),
        .O(\posPulseCount[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[18]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[18]),
        .O(\posPulseCount[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[19]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[19]),
        .O(\posPulseCount[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \posPulseCount[1]_i_1 
       (.I0(data1[1]),
        .I1(\posPulseCount[31]_i_3_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_6_n_0 ),
        .I4(posPulseCount[0]),
        .I5(posPulseCountAdj__0),
        .O(\posPulseCount[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[20]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[20]),
        .O(\posPulseCount[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[21]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[21]),
        .O(\posPulseCount[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[22]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[22]),
        .O(\posPulseCount[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[23]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[23]),
        .O(\posPulseCount[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[24]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[24]),
        .O(\posPulseCount[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[25]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[25]),
        .O(\posPulseCount[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[26]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[26]),
        .O(\posPulseCount[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[27]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[27]),
        .O(\posPulseCount[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[28]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[28]),
        .O(\posPulseCount[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[29]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[29]),
        .O(\posPulseCount[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[2]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[2]),
        .O(\posPulseCount[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[30]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[30]),
        .O(\posPulseCount[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01FFFF01)) 
    \posPulseCount[31]_i_1 
       (.I0(\posPulseCount[31]_i_3_n_0 ),
        .I1(\posPulseCount[31]_i_4_n_0 ),
        .I2(posPulseCount[0]),
        .I3(present_pulse_A),
        .I4(past_pulse_A),
        .I5(\posPulseCount[31]_i_5_n_0 ),
        .O(posPulseCount_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \posPulseCount[31]_i_10 
       (.I0(posPulseCount[27]),
        .I1(posPulseCount[26]),
        .I2(posPulseCount[29]),
        .I3(posPulseCount[28]),
        .O(\posPulseCount[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \posPulseCount[31]_i_11 
       (.I0(posPulseCount[7]),
        .I1(posPulseCount[6]),
        .I2(posPulseCount[9]),
        .I3(posPulseCount[8]),
        .O(\posPulseCount[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \posPulseCount[31]_i_12 
       (.I0(posPulseCount[3]),
        .I1(posPulseCount[2]),
        .I2(posPulseCount[5]),
        .I3(posPulseCount[4]),
        .O(\posPulseCount[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \posPulseCount[31]_i_13 
       (.I0(posPulseCount[15]),
        .I1(posPulseCount[14]),
        .I2(posPulseCount[17]),
        .I3(posPulseCount[16]),
        .O(\posPulseCount[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \posPulseCount[31]_i_14 
       (.I0(posPulseCount[11]),
        .I1(posPulseCount[10]),
        .I2(posPulseCount[13]),
        .I3(posPulseCount[12]),
        .O(\posPulseCount[31]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[31]_i_2 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[31]),
        .O(\posPulseCount[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \posPulseCount[31]_i_3 
       (.I0(\posPulseCount[31]_i_8_n_0 ),
        .I1(\posPulseCount[31]_i_9_n_0 ),
        .I2(posPulseCount[31]),
        .I3(posPulseCount[30]),
        .I4(posPulseCount[1]),
        .I5(\posPulseCount[31]_i_10_n_0 ),
        .O(\posPulseCount[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \posPulseCount[31]_i_4 
       (.I0(\posPulseCount[31]_i_11_n_0 ),
        .I1(\posPulseCount[31]_i_12_n_0 ),
        .I2(\posPulseCount[31]_i_13_n_0 ),
        .I3(\posPulseCount[31]_i_14_n_0 ),
        .O(\posPulseCount[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \posPulseCount[31]_i_5 
       (.I0(present_pulse_B),
        .I1(past_pulse_B),
        .O(\posPulseCount[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \posPulseCount[31]_i_6 
       (.I0(posPulseCount[12]),
        .I1(posPulseCount[13]),
        .I2(posPulseCount[10]),
        .I3(posPulseCount[11]),
        .I4(\posPulseCount[31]_i_13_n_0 ),
        .O(\posPulseCount[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \posPulseCount[31]_i_7 
       (.I0(posPulseCount[4]),
        .I1(posPulseCount[5]),
        .I2(posPulseCount[2]),
        .I3(posPulseCount[3]),
        .I4(\posPulseCount[31]_i_11_n_0 ),
        .O(\posPulseCount[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \posPulseCount[31]_i_8 
       (.I0(posPulseCount[23]),
        .I1(posPulseCount[22]),
        .I2(posPulseCount[25]),
        .I3(posPulseCount[24]),
        .O(\posPulseCount[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \posPulseCount[31]_i_9 
       (.I0(posPulseCount[19]),
        .I1(posPulseCount[18]),
        .I2(posPulseCount[21]),
        .I3(posPulseCount[20]),
        .O(\posPulseCount[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[3]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[3]),
        .O(\posPulseCount[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[4]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[4]),
        .O(\posPulseCount[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \posPulseCount[5]_i_1 
       (.I0(data1[5]),
        .I1(posPulseCount[0]),
        .I2(\posPulseCount[31]_i_6_n_0 ),
        .I3(\posPulseCount[31]_i_7_n_0 ),
        .I4(\posPulseCount[31]_i_3_n_0 ),
        .O(\posPulseCount[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[6]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[6]),
        .O(\posPulseCount[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[7]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[7]),
        .O(\posPulseCount[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[8]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[8]),
        .O(\posPulseCount[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \posPulseCount[9]_i_1 
       (.I0(posPulseCount[0]),
        .I1(\posPulseCount[31]_i_6_n_0 ),
        .I2(\posPulseCount[31]_i_7_n_0 ),
        .I3(\posPulseCount[31]_i_3_n_0 ),
        .I4(data1[9]),
        .O(\posPulseCount[9]_i_1_n_0 ));
  FDRE \posPulseCount_reg[0] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[0]_i_1_n_0 ),
        .Q(posPulseCount[0]),
        .R(SR));
  FDRE \posPulseCount_reg[10] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[10]_i_1_n_0 ),
        .Q(posPulseCount[10]),
        .R(SR));
  FDRE \posPulseCount_reg[11] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[11]_i_1_n_0 ),
        .Q(posPulseCount[11]),
        .R(SR));
  FDRE \posPulseCount_reg[12] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[12]_i_1_n_0 ),
        .Q(posPulseCount[12]),
        .R(SR));
  FDRE \posPulseCount_reg[13] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[13]_i_1_n_0 ),
        .Q(posPulseCount[13]),
        .R(SR));
  FDRE \posPulseCount_reg[14] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[14]_i_1_n_0 ),
        .Q(posPulseCount[14]),
        .R(SR));
  FDRE \posPulseCount_reg[15] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[15]_i_1_n_0 ),
        .Q(posPulseCount[15]),
        .R(SR));
  FDRE \posPulseCount_reg[16] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[16]_i_1_n_0 ),
        .Q(posPulseCount[16]),
        .R(SR));
  FDRE \posPulseCount_reg[17] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[17]_i_1_n_0 ),
        .Q(posPulseCount[17]),
        .R(SR));
  FDRE \posPulseCount_reg[18] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[18]_i_1_n_0 ),
        .Q(posPulseCount[18]),
        .R(SR));
  FDRE \posPulseCount_reg[19] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[19]_i_1_n_0 ),
        .Q(posPulseCount[19]),
        .R(SR));
  FDRE \posPulseCount_reg[1] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[1]_i_1_n_0 ),
        .Q(posPulseCount[1]),
        .R(SR));
  FDRE \posPulseCount_reg[20] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[20]_i_1_n_0 ),
        .Q(posPulseCount[20]),
        .R(SR));
  FDRE \posPulseCount_reg[21] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[21]_i_1_n_0 ),
        .Q(posPulseCount[21]),
        .R(SR));
  FDRE \posPulseCount_reg[22] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[22]_i_1_n_0 ),
        .Q(posPulseCount[22]),
        .R(SR));
  FDRE \posPulseCount_reg[23] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[23]_i_1_n_0 ),
        .Q(posPulseCount[23]),
        .R(SR));
  FDRE \posPulseCount_reg[24] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[24]_i_1_n_0 ),
        .Q(posPulseCount[24]),
        .R(SR));
  FDRE \posPulseCount_reg[25] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[25]_i_1_n_0 ),
        .Q(posPulseCount[25]),
        .R(SR));
  FDRE \posPulseCount_reg[26] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[26]_i_1_n_0 ),
        .Q(posPulseCount[26]),
        .R(SR));
  FDRE \posPulseCount_reg[27] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[27]_i_1_n_0 ),
        .Q(posPulseCount[27]),
        .R(SR));
  FDRE \posPulseCount_reg[28] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[28]_i_1_n_0 ),
        .Q(posPulseCount[28]),
        .R(SR));
  FDRE \posPulseCount_reg[29] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[29]_i_1_n_0 ),
        .Q(posPulseCount[29]),
        .R(SR));
  FDRE \posPulseCount_reg[2] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[2]_i_1_n_0 ),
        .Q(posPulseCount[2]),
        .R(SR));
  FDRE \posPulseCount_reg[30] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[30]_i_1_n_0 ),
        .Q(posPulseCount[30]),
        .R(SR));
  FDRE \posPulseCount_reg[31] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[31]_i_2_n_0 ),
        .Q(posPulseCount[31]),
        .R(SR));
  FDRE \posPulseCount_reg[3] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[3]_i_1_n_0 ),
        .Q(posPulseCount[3]),
        .R(SR));
  FDRE \posPulseCount_reg[4] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[4]_i_1_n_0 ),
        .Q(posPulseCount[4]),
        .R(SR));
  FDRE \posPulseCount_reg[5] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[5]_i_1_n_0 ),
        .Q(posPulseCount[5]),
        .R(SR));
  FDRE \posPulseCount_reg[6] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[6]_i_1_n_0 ),
        .Q(posPulseCount[6]),
        .R(SR));
  FDRE \posPulseCount_reg[7] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[7]_i_1_n_0 ),
        .Q(posPulseCount[7]),
        .R(SR));
  FDRE \posPulseCount_reg[8] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[8]_i_1_n_0 ),
        .Q(posPulseCount[8]),
        .R(SR));
  FDRE \posPulseCount_reg[9] 
       (.C(s00_axi_aclk),
        .CE(posPulseCount_1),
        .D(\posPulseCount[9]_i_1_n_0 ),
        .Q(posPulseCount[9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \position[0]_i_1 
       (.I0(Q),
        .O(nxt_position[0]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[10]_i_1 
       (.I0(data0[10]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__1_n_6),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[10]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[11]_i_1 
       (.I0(data0[11]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__1_n_5),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[11]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[12]_i_1 
       (.I0(data0[12]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__1_n_4),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[12]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[13]_i_1 
       (.I0(data0[13]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__2_n_7),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[13]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[14]_i_1 
       (.I0(data0[14]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__2_n_6),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[14]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[15]_i_1 
       (.I0(data0[15]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__2_n_5),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[15]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[16]_i_1 
       (.I0(data0[16]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__2_n_4),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[16]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[17]_i_1 
       (.I0(data0[17]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__3_n_7),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[17]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[18]_i_1 
       (.I0(data0[18]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__3_n_6),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[18]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[19]_i_1 
       (.I0(data0[19]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__3_n_5),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[19]));
  LUT6 #(
    .INIT(64'hF0F0F000CCDDCCDD)) 
    \position[1]_i_1 
       (.I0(\position[31]_i_5_n_0 ),
        .I1(nxt_position0_carry_n_7),
        .I2(data0[1]),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_3_n_0 ),
        .I5(dir),
        .O(nxt_position[1]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[20]_i_1 
       (.I0(data0[20]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__3_n_4),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[20]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[21]_i_1 
       (.I0(data0[21]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__4_n_7),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[21]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[22]_i_1 
       (.I0(data0[22]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__4_n_6),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[22]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[23]_i_1 
       (.I0(data0[23]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__4_n_5),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[23]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[24]_i_1 
       (.I0(data0[24]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__4_n_4),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[24]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[25]_i_1 
       (.I0(data0[25]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__5_n_7),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[25]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[26]_i_1 
       (.I0(data0[26]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__5_n_6),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[26]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[27]_i_1 
       (.I0(data0[27]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__5_n_5),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[27]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[28]_i_1 
       (.I0(data0[28]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__5_n_4),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[28]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[29]_i_1 
       (.I0(data0[29]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__6_n_7),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[29]));
  LUT6 #(
    .INIT(64'hF0F0F000CCDDCCDD)) 
    \position[2]_i_1 
       (.I0(\position[31]_i_5_n_0 ),
        .I1(nxt_position0_carry_n_6),
        .I2(data0[2]),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_3_n_0 ),
        .I5(dir),
        .O(nxt_position[2]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[30]_i_1 
       (.I0(data0[30]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__6_n_6),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[30]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[31]_i_1 
       (.I0(data0[31]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__6_n_5),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \position[31]_i_10 
       (.I0(position[9]),
        .I1(position[7]),
        .I2(position[11]),
        .I3(position[10]),
        .O(\position[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \position[31]_i_11 
       (.I0(position[30]),
        .I1(position[31]),
        .I2(position[28]),
        .I3(position[29]),
        .I4(position[4]),
        .I5(position[3]),
        .O(\position[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \position[31]_i_3 
       (.I0(position[6]),
        .I1(position[8]),
        .I2(position[2]),
        .I3(position[5]),
        .I4(position[1]),
        .I5(Q),
        .O(\position[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \position[31]_i_4 
       (.I0(\position[31]_i_6_n_0 ),
        .I1(\position[31]_i_7_n_0 ),
        .I2(\position[31]_i_8_n_0 ),
        .I3(\position[31]_i_9_n_0 ),
        .I4(\position[31]_i_10_n_0 ),
        .I5(\position[31]_i_11_n_0 ),
        .O(\position[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \position[31]_i_5 
       (.I0(position[6]),
        .I1(position[8]),
        .I2(position[2]),
        .I3(position[5]),
        .I4(position[1]),
        .I5(Q),
        .O(\position[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \position[31]_i_6 
       (.I0(position[21]),
        .I1(position[20]),
        .I2(position[23]),
        .I3(position[22]),
        .O(\position[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \position[31]_i_7 
       (.I0(position[25]),
        .I1(position[24]),
        .I2(position[27]),
        .I3(position[26]),
        .O(\position[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \position[31]_i_8 
       (.I0(position[13]),
        .I1(position[12]),
        .I2(position[15]),
        .I3(position[14]),
        .O(\position[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \position[31]_i_9 
       (.I0(position[17]),
        .I1(position[16]),
        .I2(position[19]),
        .I3(position[18]),
        .O(\position[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[3]_i_1 
       (.I0(data0[3]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry_n_5),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[3]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[4]_i_1 
       (.I0(data0[4]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry_n_4),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[4]));
  LUT6 #(
    .INIT(64'hF0F0F000CCDDCCDD)) 
    \position[5]_i_1 
       (.I0(\position[31]_i_5_n_0 ),
        .I1(nxt_position0_carry__0_n_7),
        .I2(data0[5]),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_3_n_0 ),
        .I5(dir),
        .O(nxt_position[5]));
  LUT6 #(
    .INIT(64'hF0F0F000CCDDCCDD)) 
    \position[6]_i_1 
       (.I0(\position[31]_i_5_n_0 ),
        .I1(nxt_position0_carry__0_n_6),
        .I2(data0[6]),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_3_n_0 ),
        .I5(dir),
        .O(nxt_position[6]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[7]_i_1 
       (.I0(data0[7]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__0_n_5),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[7]));
  LUT6 #(
    .INIT(64'hF0F0F000CCDDCCDD)) 
    \position[8]_i_1 
       (.I0(\position[31]_i_5_n_0 ),
        .I1(nxt_position0_carry__0_n_4),
        .I2(data0[8]),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_3_n_0 ),
        .I5(dir),
        .O(nxt_position[8]));
  LUT6 #(
    .INIT(64'hAA88AA88F0F0F000)) 
    \position[9]_i_1 
       (.I0(data0[9]),
        .I1(\position[31]_i_3_n_0 ),
        .I2(nxt_position0_carry__1_n_7),
        .I3(\position[31]_i_4_n_0 ),
        .I4(\position[31]_i_5_n_0 ),
        .I5(dir),
        .O(nxt_position[9]));
  FDSE \position_reg[0] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[0]),
        .Q(Q),
        .S(SR));
  FDRE \position_reg[10] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[10]),
        .Q(position[10]),
        .R(SR));
  FDRE \position_reg[11] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[11]),
        .Q(position[11]),
        .R(SR));
  FDRE \position_reg[12] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[12]),
        .Q(position[12]),
        .R(SR));
  CARRY4 \position_reg[12]_i_2 
       (.CI(\position_reg[8]_i_2_n_0 ),
        .CO({\position_reg[12]_i_2_n_0 ,\position_reg[12]_i_2_n_1 ,\position_reg[12]_i_2_n_2 ,\position_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(position[12:9]));
  FDRE \position_reg[13] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[13]),
        .Q(position[13]),
        .R(SR));
  FDRE \position_reg[14] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[14]),
        .Q(position[14]),
        .R(SR));
  FDRE \position_reg[15] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[15]),
        .Q(position[15]),
        .R(SR));
  FDRE \position_reg[16] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[16]),
        .Q(position[16]),
        .R(SR));
  CARRY4 \position_reg[16]_i_2 
       (.CI(\position_reg[12]_i_2_n_0 ),
        .CO({\position_reg[16]_i_2_n_0 ,\position_reg[16]_i_2_n_1 ,\position_reg[16]_i_2_n_2 ,\position_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(position[16:13]));
  FDRE \position_reg[17] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[17]),
        .Q(position[17]),
        .R(SR));
  FDRE \position_reg[18] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[18]),
        .Q(position[18]),
        .R(SR));
  FDRE \position_reg[19] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[19]),
        .Q(position[19]),
        .R(SR));
  FDSE \position_reg[1] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[1]),
        .Q(position[1]),
        .S(SR));
  FDRE \position_reg[20] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[20]),
        .Q(position[20]),
        .R(SR));
  CARRY4 \position_reg[20]_i_2 
       (.CI(\position_reg[16]_i_2_n_0 ),
        .CO({\position_reg[20]_i_2_n_0 ,\position_reg[20]_i_2_n_1 ,\position_reg[20]_i_2_n_2 ,\position_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(position[20:17]));
  FDRE \position_reg[21] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[21]),
        .Q(position[21]),
        .R(SR));
  FDRE \position_reg[22] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[22]),
        .Q(position[22]),
        .R(SR));
  FDRE \position_reg[23] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[23]),
        .Q(position[23]),
        .R(SR));
  FDRE \position_reg[24] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[24]),
        .Q(position[24]),
        .R(SR));
  CARRY4 \position_reg[24]_i_2 
       (.CI(\position_reg[20]_i_2_n_0 ),
        .CO({\position_reg[24]_i_2_n_0 ,\position_reg[24]_i_2_n_1 ,\position_reg[24]_i_2_n_2 ,\position_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(position[24:21]));
  FDRE \position_reg[25] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[25]),
        .Q(position[25]),
        .R(SR));
  FDRE \position_reg[26] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[26]),
        .Q(position[26]),
        .R(SR));
  FDRE \position_reg[27] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[27]),
        .Q(position[27]),
        .R(SR));
  FDRE \position_reg[28] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[28]),
        .Q(position[28]),
        .R(SR));
  CARRY4 \position_reg[28]_i_2 
       (.CI(\position_reg[24]_i_2_n_0 ),
        .CO({\position_reg[28]_i_2_n_0 ,\position_reg[28]_i_2_n_1 ,\position_reg[28]_i_2_n_2 ,\position_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(position[28:25]));
  FDRE \position_reg[29] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[29]),
        .Q(position[29]),
        .R(SR));
  FDRE \position_reg[2] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[2]),
        .Q(position[2]),
        .R(SR));
  FDRE \position_reg[30] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[30]),
        .Q(position[30]),
        .R(SR));
  FDRE \position_reg[31] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[31]),
        .Q(position[31]),
        .R(SR));
  CARRY4 \position_reg[31]_i_2 
       (.CI(\position_reg[28]_i_2_n_0 ),
        .CO({\NLW_position_reg[31]_i_2_CO_UNCONNECTED [3:2],\position_reg[31]_i_2_n_2 ,\position_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_position_reg[31]_i_2_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,position[31:29]}));
  FDRE \position_reg[3] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[3]),
        .Q(position[3]),
        .R(SR));
  FDSE \position_reg[4] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[4]),
        .Q(position[4]),
        .S(SR));
  CARRY4 \position_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\position_reg[4]_i_2_n_0 ,\position_reg[4]_i_2_n_1 ,\position_reg[4]_i_2_n_2 ,\position_reg[4]_i_2_n_3 }),
        .CYINIT(Q),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(position[4:1]));
  FDSE \position_reg[5] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[5]),
        .Q(position[5]),
        .S(SR));
  FDRE \position_reg[6] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[6]),
        .Q(position[6]),
        .R(SR));
  FDSE \position_reg[7] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[7]),
        .Q(position[7]),
        .S(SR));
  FDRE \position_reg[8] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[8]),
        .Q(position[8]),
        .R(SR));
  CARRY4 \position_reg[8]_i_2 
       (.CI(\position_reg[4]_i_2_n_0 ),
        .CO({\position_reg[8]_i_2_n_0 ,\position_reg[8]_i_2_n_1 ,\position_reg[8]_i_2_n_2 ,\position_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(position[8:5]));
  FDRE \position_reg[9] 
       (.C(s00_axi_aclk),
        .CE(posPulseAdjCount),
        .D(nxt_position[9]),
        .Q(position[9]),
        .R(SR));
  FDRE present_pulse_A_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sync_chA),
        .Q(present_pulse_A),
        .R(SR));
  FDRE present_pulse_B_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sync_chB),
        .Q(present_pulse_B),
        .R(SR));
  FDRE q1_chA_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(chA),
        .Q(q1_chA),
        .R(1'b0));
  FDRE q1_chB_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(chB),
        .Q(q1_chB),
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
  LUT2 #(
    .INIT(4'h2)) 
    \rev_cnt[0]_i_2 
       (.I0(present_pulse_A),
        .I1(past_pulse_A),
        .O(posedge_A));
  LUT1 #(
    .INIT(2'h1)) 
    \rev_cnt[0]_i_4 
       (.I0(rev_cnt_reg[0]),
        .O(\rev_cnt[0]_i_4_n_0 ));
  FDRE \rev_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[0]_i_3_n_7 ),
        .Q(rev_cnt_reg[0]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\rev_cnt_reg[0]_i_3_n_0 ,\rev_cnt_reg[0]_i_3_n_1 ,\rev_cnt_reg[0]_i_3_n_2 ,\rev_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rev_cnt_reg[0]_i_3_n_4 ,\rev_cnt_reg[0]_i_3_n_5 ,\rev_cnt_reg[0]_i_3_n_6 ,\rev_cnt_reg[0]_i_3_n_7 }),
        .S({rev_cnt_reg[3:1],\rev_cnt[0]_i_4_n_0 }));
  FDRE \rev_cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[8]_i_1_n_5 ),
        .Q(rev_cnt_reg[10]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[8]_i_1_n_4 ),
        .Q(rev_cnt_reg[11]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[12]_i_1_n_7 ),
        .Q(rev_cnt_reg[12]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[12]_i_1 
       (.CI(\rev_cnt_reg[8]_i_1_n_0 ),
        .CO({\rev_cnt_reg[12]_i_1_n_0 ,\rev_cnt_reg[12]_i_1_n_1 ,\rev_cnt_reg[12]_i_1_n_2 ,\rev_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rev_cnt_reg[12]_i_1_n_4 ,\rev_cnt_reg[12]_i_1_n_5 ,\rev_cnt_reg[12]_i_1_n_6 ,\rev_cnt_reg[12]_i_1_n_7 }),
        .S(rev_cnt_reg[15:12]));
  FDRE \rev_cnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[12]_i_1_n_6 ),
        .Q(rev_cnt_reg[13]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[12]_i_1_n_5 ),
        .Q(rev_cnt_reg[14]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[12]_i_1_n_4 ),
        .Q(rev_cnt_reg[15]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[16] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[16]_i_1_n_7 ),
        .Q(rev_cnt_reg[16]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[16]_i_1 
       (.CI(\rev_cnt_reg[12]_i_1_n_0 ),
        .CO({\rev_cnt_reg[16]_i_1_n_0 ,\rev_cnt_reg[16]_i_1_n_1 ,\rev_cnt_reg[16]_i_1_n_2 ,\rev_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rev_cnt_reg[16]_i_1_n_4 ,\rev_cnt_reg[16]_i_1_n_5 ,\rev_cnt_reg[16]_i_1_n_6 ,\rev_cnt_reg[16]_i_1_n_7 }),
        .S(rev_cnt_reg[19:16]));
  FDRE \rev_cnt_reg[17] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[16]_i_1_n_6 ),
        .Q(rev_cnt_reg[17]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[18] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[16]_i_1_n_5 ),
        .Q(rev_cnt_reg[18]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[19] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[16]_i_1_n_4 ),
        .Q(rev_cnt_reg[19]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[0]_i_3_n_6 ),
        .Q(rev_cnt_reg[1]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[20] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[20]_i_1_n_7 ),
        .Q(rev_cnt_reg[20]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[20]_i_1 
       (.CI(\rev_cnt_reg[16]_i_1_n_0 ),
        .CO({\rev_cnt_reg[20]_i_1_n_0 ,\rev_cnt_reg[20]_i_1_n_1 ,\rev_cnt_reg[20]_i_1_n_2 ,\rev_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rev_cnt_reg[20]_i_1_n_4 ,\rev_cnt_reg[20]_i_1_n_5 ,\rev_cnt_reg[20]_i_1_n_6 ,\rev_cnt_reg[20]_i_1_n_7 }),
        .S(rev_cnt_reg[23:20]));
  FDRE \rev_cnt_reg[21] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[20]_i_1_n_6 ),
        .Q(rev_cnt_reg[21]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[22] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[20]_i_1_n_5 ),
        .Q(rev_cnt_reg[22]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[23] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[20]_i_1_n_4 ),
        .Q(rev_cnt_reg[23]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[24] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[24]_i_1_n_7 ),
        .Q(rev_cnt_reg[24]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[24]_i_1 
       (.CI(\rev_cnt_reg[20]_i_1_n_0 ),
        .CO({\rev_cnt_reg[24]_i_1_n_0 ,\rev_cnt_reg[24]_i_1_n_1 ,\rev_cnt_reg[24]_i_1_n_2 ,\rev_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rev_cnt_reg[24]_i_1_n_4 ,\rev_cnt_reg[24]_i_1_n_5 ,\rev_cnt_reg[24]_i_1_n_6 ,\rev_cnt_reg[24]_i_1_n_7 }),
        .S(rev_cnt_reg[27:24]));
  FDRE \rev_cnt_reg[25] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[24]_i_1_n_6 ),
        .Q(rev_cnt_reg[25]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[26] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[24]_i_1_n_5 ),
        .Q(rev_cnt_reg[26]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[27] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[24]_i_1_n_4 ),
        .Q(rev_cnt_reg[27]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[28] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[28]_i_1_n_7 ),
        .Q(rev_cnt_reg[28]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[28]_i_1 
       (.CI(\rev_cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_rev_cnt_reg[28]_i_1_CO_UNCONNECTED [3:2],\rev_cnt_reg[28]_i_1_n_2 ,\rev_cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rev_cnt_reg[28]_i_1_O_UNCONNECTED [3],\rev_cnt_reg[28]_i_1_n_5 ,\rev_cnt_reg[28]_i_1_n_6 ,\rev_cnt_reg[28]_i_1_n_7 }),
        .S({1'b0,rev_cnt_reg[30:28]}));
  FDRE \rev_cnt_reg[29] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[28]_i_1_n_6 ),
        .Q(rev_cnt_reg[29]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[0]_i_3_n_5 ),
        .Q(rev_cnt_reg[2]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[30] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[28]_i_1_n_5 ),
        .Q(rev_cnt_reg[30]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[0]_i_3_n_4 ),
        .Q(rev_cnt_reg[3]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[4]_i_1_n_7 ),
        .Q(rev_cnt_reg[4]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[4]_i_1 
       (.CI(\rev_cnt_reg[0]_i_3_n_0 ),
        .CO({\rev_cnt_reg[4]_i_1_n_0 ,\rev_cnt_reg[4]_i_1_n_1 ,\rev_cnt_reg[4]_i_1_n_2 ,\rev_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rev_cnt_reg[4]_i_1_n_4 ,\rev_cnt_reg[4]_i_1_n_5 ,\rev_cnt_reg[4]_i_1_n_6 ,\rev_cnt_reg[4]_i_1_n_7 }),
        .S(rev_cnt_reg[7:4]));
  FDRE \rev_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[4]_i_1_n_6 ),
        .Q(rev_cnt_reg[5]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[4]_i_1_n_5 ),
        .Q(rev_cnt_reg[6]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[4]_i_1_n_4 ),
        .Q(rev_cnt_reg[7]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE \rev_cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[8]_i_1_n_7 ),
        .Q(rev_cnt_reg[8]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  CARRY4 \rev_cnt_reg[8]_i_1 
       (.CI(\rev_cnt_reg[4]_i_1_n_0 ),
        .CO({\rev_cnt_reg[8]_i_1_n_0 ,\rev_cnt_reg[8]_i_1_n_1 ,\rev_cnt_reg[8]_i_1_n_2 ,\rev_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rev_cnt_reg[8]_i_1_n_4 ,\rev_cnt_reg[8]_i_1_n_5 ,\rev_cnt_reg[8]_i_1_n_6 ,\rev_cnt_reg[8]_i_1_n_7 }),
        .S(rev_cnt_reg[11:8]));
  FDRE \rev_cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(posedge_A),
        .D(\rev_cnt_reg[8]_i_1_n_6 ),
        .Q(rev_cnt_reg[9]),
        .R(\rev_cnt[0]_i_1_n_0 ));
  FDRE sync_chA_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(q1_chA),
        .Q(sync_chA),
        .R(1'b0));
  FDRE sync_chB_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(q1_chB),
        .Q(sync_chB),
        .R(1'b0));
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
        .I4(\timer_reg[12]_i_2_n_6 ),
        .O(timer_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[11]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[12]_i_2_n_5 ),
        .O(timer_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[12]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[12]_i_2_n_4 ),
        .O(timer_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[13]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[16]_i_2_n_7 ),
        .O(timer_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[14]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[16]_i_2_n_6 ),
        .O(timer_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[15]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[16]_i_2_n_5 ),
        .O(timer_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[16]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[16]_i_2_n_4 ),
        .O(timer_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[17]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[20]_i_2_n_7 ),
        .O(timer_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[18]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[20]_i_2_n_6 ),
        .O(timer_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[19]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[20]_i_2_n_5 ),
        .O(timer_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[1]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[4]_i_2_n_7 ),
        .O(timer_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[20]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[20]_i_2_n_4 ),
        .O(timer_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[21]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[24]_i_2_n_7 ),
        .O(timer_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[22]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[24]_i_2_n_6 ),
        .O(timer_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[23]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[24]_i_2_n_5 ),
        .O(timer_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[24]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[24]_i_2_n_4 ),
        .O(timer_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[25]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[28]_i_2_n_7 ),
        .O(timer_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[26]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[28]_i_2_n_6 ),
        .O(timer_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[27]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[28]_i_2_n_5 ),
        .O(timer_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[28]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[28]_i_2_n_4 ),
        .O(timer_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[29]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[31]_i_6_n_7 ),
        .O(timer_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[2]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[4]_i_2_n_6 ),
        .O(timer_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[30]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[31]_i_6_n_6 ),
        .O(timer_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[31]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[31]_i_6_n_5 ),
        .O(timer_0[31]));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \timer[31]_i_10 
       (.I0(timer[12]),
        .I1(timer[13]),
        .I2(timer[15]),
        .I3(timer[14]),
        .O(\timer[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \timer[31]_i_2 
       (.I0(timer[18]),
        .I1(timer[19]),
        .I2(timer[16]),
        .I3(timer[17]),
        .I4(\timer[31]_i_7_n_0 ),
        .O(\timer[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer[31]_i_3 
       (.I0(timer[26]),
        .I1(timer[27]),
        .I2(timer[24]),
        .I3(timer[25]),
        .I4(\timer[31]_i_8_n_0 ),
        .O(\timer[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \timer[31]_i_4 
       (.I0(timer[2]),
        .I1(timer[3]),
        .I2(timer[0]),
        .I3(timer[1]),
        .I4(\timer[31]_i_9_n_0 ),
        .O(\timer[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \timer[31]_i_5 
       (.I0(timer[11]),
        .I1(timer[10]),
        .I2(timer[8]),
        .I3(timer[9]),
        .I4(\timer[31]_i_10_n_0 ),
        .O(\timer[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \timer[31]_i_7 
       (.I0(timer[20]),
        .I1(timer[21]),
        .I2(timer[23]),
        .I3(timer[22]),
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
    .INIT(16'hFF7F)) 
    \timer[31]_i_9 
       (.I0(timer[5]),
        .I1(timer[4]),
        .I2(timer[6]),
        .I3(timer[7]),
        .O(\timer[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[3]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[4]_i_2_n_5 ),
        .O(timer_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[4]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[4]_i_2_n_4 ),
        .O(timer_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[5]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[8]_i_2_n_7 ),
        .O(timer_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[6]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[8]_i_2_n_6 ),
        .O(timer_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[7]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[8]_i_2_n_5 ),
        .O(timer_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[8]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[8]_i_2_n_4 ),
        .O(timer_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \timer[9]_i_1 
       (.I0(\timer[31]_i_2_n_0 ),
        .I1(\timer[31]_i_3_n_0 ),
        .I2(\timer[31]_i_4_n_0 ),
        .I3(\timer[31]_i_5_n_0 ),
        .I4(\timer_reg[12]_i_2_n_7 ),
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
  CARRY4 \timer_reg[12]_i_2 
       (.CI(\timer_reg[8]_i_2_n_0 ),
        .CO({\timer_reg[12]_i_2_n_0 ,\timer_reg[12]_i_2_n_1 ,\timer_reg[12]_i_2_n_2 ,\timer_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[12]_i_2_n_4 ,\timer_reg[12]_i_2_n_5 ,\timer_reg[12]_i_2_n_6 ,\timer_reg[12]_i_2_n_7 }),
        .S(timer[12:9]));
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
  CARRY4 \timer_reg[16]_i_2 
       (.CI(\timer_reg[12]_i_2_n_0 ),
        .CO({\timer_reg[16]_i_2_n_0 ,\timer_reg[16]_i_2_n_1 ,\timer_reg[16]_i_2_n_2 ,\timer_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[16]_i_2_n_4 ,\timer_reg[16]_i_2_n_5 ,\timer_reg[16]_i_2_n_6 ,\timer_reg[16]_i_2_n_7 }),
        .S(timer[16:13]));
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
  CARRY4 \timer_reg[20]_i_2 
       (.CI(\timer_reg[16]_i_2_n_0 ),
        .CO({\timer_reg[20]_i_2_n_0 ,\timer_reg[20]_i_2_n_1 ,\timer_reg[20]_i_2_n_2 ,\timer_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[20]_i_2_n_4 ,\timer_reg[20]_i_2_n_5 ,\timer_reg[20]_i_2_n_6 ,\timer_reg[20]_i_2_n_7 }),
        .S(timer[20:17]));
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
  CARRY4 \timer_reg[24]_i_2 
       (.CI(\timer_reg[20]_i_2_n_0 ),
        .CO({\timer_reg[24]_i_2_n_0 ,\timer_reg[24]_i_2_n_1 ,\timer_reg[24]_i_2_n_2 ,\timer_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[24]_i_2_n_4 ,\timer_reg[24]_i_2_n_5 ,\timer_reg[24]_i_2_n_6 ,\timer_reg[24]_i_2_n_7 }),
        .S(timer[24:21]));
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
  CARRY4 \timer_reg[28]_i_2 
       (.CI(\timer_reg[24]_i_2_n_0 ),
        .CO({\timer_reg[28]_i_2_n_0 ,\timer_reg[28]_i_2_n_1 ,\timer_reg[28]_i_2_n_2 ,\timer_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[28]_i_2_n_4 ,\timer_reg[28]_i_2_n_5 ,\timer_reg[28]_i_2_n_6 ,\timer_reg[28]_i_2_n_7 }),
        .S(timer[28:25]));
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
  CARRY4 \timer_reg[31]_i_6 
       (.CI(\timer_reg[28]_i_2_n_0 ),
        .CO({\NLW_timer_reg[31]_i_6_CO_UNCONNECTED [3:2],\timer_reg[31]_i_6_n_2 ,\timer_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_timer_reg[31]_i_6_O_UNCONNECTED [3],\timer_reg[31]_i_6_n_5 ,\timer_reg[31]_i_6_n_6 ,\timer_reg[31]_i_6_n_7 }),
        .S({1'b0,timer[31:29]}));
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
  CARRY4 \timer_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\timer_reg[4]_i_2_n_0 ,\timer_reg[4]_i_2_n_1 ,\timer_reg[4]_i_2_n_2 ,\timer_reg[4]_i_2_n_3 }),
        .CYINIT(timer[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[4]_i_2_n_4 ,\timer_reg[4]_i_2_n_5 ,\timer_reg[4]_i_2_n_6 ,\timer_reg[4]_i_2_n_7 }),
        .S(timer[4:1]));
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
  CARRY4 \timer_reg[8]_i_2 
       (.CI(\timer_reg[4]_i_2_n_0 ),
        .CO({\timer_reg[8]_i_2_n_0 ,\timer_reg[8]_i_2_n_1 ,\timer_reg[8]_i_2_n_2 ,\timer_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[8]_i_2_n_4 ,\timer_reg[8]_i_2_n_5 ,\timer_reg[8]_i_2_n_6 ,\timer_reg[8]_i_2_n_7 }),
        .S(timer[8:5]));
  FDRE \timer_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(timer_0[9]),
        .Q(timer[9]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_direction
   (dir,
    D,
    s00_axi_aclk,
    Q,
    axi_araddr,
    \axi_rdata_reg[0] ,
    chB,
    chA);
  output dir;
  output [0:0]D;
  input s00_axi_aclk;
  input [0:0]Q;
  input [1:0]axi_araddr;
  input [0:0]\axi_rdata_reg[0] ;
  input chB;
  input chA;

  wire [0:0]D;
  wire [0:0]Q;
  wire [1:0]axi_araddr;
  wire [0:0]\axi_rdata_reg[0] ;
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

  LUT5 #(
    .INIT(32'h88FC8830)) 
    \axi_rdata[0]_i_1 
       (.I0(Q),
        .I1(axi_araddr[1]),
        .I2(dir),
        .I3(axi_araddr[0]),
        .I4(\axi_rdata_reg[0] ),
        .O(D));
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
    s00_axi_aclk,
    chB,
    chA,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input chB;
  input chA;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input s00_axi_aresetn;
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
    s00_axi_aclk,
    chB,
    chA,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input chB;
  input chA;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input s00_axi_aresetn;
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
  wire [0:0]position;
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
       (.D(reg_data_out[0]),
        .Q(slv_reg3[0]),
        .axi_araddr(axi_araddr),
        .\axi_rdata_reg[0] (position),
        .chA(chA),
        .chB(chB),
        .dir(dir),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_QEI qei_i
       (.D(reg_data_out[31:1]),
        .Q(position),
        .SR(qei_i_n_0),
        .axi_araddr(axi_araddr),
        .\axi_rdata_reg[31] (slv_reg3[31:1]),
        .chA(chA),
        .chB(chB),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
