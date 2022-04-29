// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Apr 28 19:20:09 2022
// Host        : LAPTOP-6D15CRP5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ugv_motorPWM_0_1_sim_netlist.v
// Design      : ugv_motorPWM_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorPWM_v1_0
   (pwm,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    right_motor_en,
    left_motor_en,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output [1:0]pwm;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output right_motor_en;
  output left_motor_en;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire left_motor_en;
  wire [1:0]pwm;
  wire right_motor_en;
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorPWM_v1_0_S00_AXI motorPWM_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .left_motor_en(left_motor_en),
        .pwm(pwm),
        .right_motor_en(right_motor_en),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorPWM_v1_0_S00_AXI
   (pwm,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    right_motor_en,
    left_motor_en,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output [1:0]pwm;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output right_motor_en;
  output left_motor_en;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
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
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire \cntReg_reg[3]_i_2_n_0 ;
  wire \cntReg_reg[3]_i_2_n_1 ;
  wire \cntReg_reg[3]_i_2_n_2 ;
  wire \cntReg_reg[3]_i_2_n_3 ;
  wire [3:0]cnt_r;
  wire left_motor_en;
  wire [1:0]p_0_in;
  wire p_0_in_0;
  wire p_2_in;
  wire [15:0]period;
  wire [1:0]pwm;
  wire pwm_i_n_0;
  wire pwm_i_n_18;
  wire pwm_i_n_19;
  wire pwm_i_n_20;
  wire pwm_i_n_21;
  wire pwm_i_n_22;
  wire pwm_i_n_23;
  wire [31:0]reg_data_out;
  wire right_motor_en;
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
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire \slv_reg2_reg_n_0_[9] ;
  wire [0:0]slv_reg3;
  wire \slv_reg3[0]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__2;

  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(pwm_i_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
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
        .R(pwm_i_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(pwm_i_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
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
        .R(pwm_i_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(pwm_i_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(pwm_i_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(pwm_i_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(pwm_i_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[17]_i_1 
       (.I0(period[1]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[17] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[17] ),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[18]_i_1 
       (.I0(period[2]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[18] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[18] ),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[19]_i_1 
       (.I0(period[3]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[19] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[19] ),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[20]_i_1 
       (.I0(period[4]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[20] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[20] ),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[21]_i_1 
       (.I0(period[5]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[21] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[21] ),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[22]_i_1 
       (.I0(period[6]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[22] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[22] ),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[23]_i_1 
       (.I0(period[7]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[23] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[23] ),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[24]_i_1 
       (.I0(period[8]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[24] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[24] ),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[25]_i_1 
       (.I0(period[9]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[25] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[26]_i_1 
       (.I0(period[10]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[26] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[27]_i_1 
       (.I0(period[11]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[27] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[28]_i_1 
       (.I0(period[12]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[28] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[28] ),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[29]_i_1 
       (.I0(period[13]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[29] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[30]_i_1 
       (.I0(period[14]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[30] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[30] ),
        .O(reg_data_out[30]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[31]_i_1 
       (.I0(period[15]),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[31] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[31] ),
        .O(reg_data_out[31]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(pwm_i_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(pwm_i_n_0));
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
        .R(pwm_i_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(pwm_i_n_0));
  CARRY4 \cntReg_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\cntReg_reg[3]_i_2_n_0 ,\cntReg_reg[3]_i_2_n_1 ,\cntReg_reg[3]_i_2_n_2 ,\cntReg_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\slv_reg1_reg_n_0_[3] ,\slv_reg1_reg_n_0_[2] ,\slv_reg1_reg_n_0_[1] ,\slv_reg1_reg_n_0_[0] }),
        .O(cnt_r),
        .S({pwm_i_n_20,pwm_i_n_21,pwm_i_n_22,pwm_i_n_23}));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    left_motor_en_INST_0
       (.I0(s00_axi_aresetn),
        .I1(p_2_in),
        .I2(slv_reg3),
        .I3(p_0_in_0),
        .O(left_motor_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwmGen pwm_i
       (.CO(\cntReg_reg[3]_i_2_n_0 ),
        .D(reg_data_out[16:0]),
        .O(cnt_r),
        .Q({period,\slv_reg1_reg_n_0_[15] ,\slv_reg1_reg_n_0_[14] ,\slv_reg1_reg_n_0_[13] ,\slv_reg1_reg_n_0_[12] ,\slv_reg1_reg_n_0_[11] ,\slv_reg1_reg_n_0_[10] ,\slv_reg1_reg_n_0_[9] ,\slv_reg1_reg_n_0_[8] ,\slv_reg1_reg_n_0_[7] ,\slv_reg1_reg_n_0_[6] ,\slv_reg1_reg_n_0_[5] ,\slv_reg1_reg_n_0_[4] ,\slv_reg1_reg_n_0_[3] ,\slv_reg1_reg_n_0_[2] ,\slv_reg1_reg_n_0_[1] ,\slv_reg1_reg_n_0_[0] }),
        .S({pwm_i_n_20,pwm_i_n_21,pwm_i_n_22,pwm_i_n_23}),
        .SR(pwm_i_n_0),
        .axi_araddr(axi_araddr),
        .\axi_rdata_reg[16] ({\slv_reg2_reg_n_0_[16] ,\slv_reg2_reg_n_0_[15] ,\slv_reg2_reg_n_0_[14] ,\slv_reg2_reg_n_0_[13] ,\slv_reg2_reg_n_0_[12] ,\slv_reg2_reg_n_0_[11] ,\slv_reg2_reg_n_0_[10] ,\slv_reg2_reg_n_0_[9] ,\slv_reg2_reg_n_0_[8] ,\slv_reg2_reg_n_0_[7] ,\slv_reg2_reg_n_0_[6] ,\slv_reg2_reg_n_0_[5] ,\slv_reg2_reg_n_0_[4] ,\slv_reg2_reg_n_0_[3] ,\slv_reg2_reg_n_0_[2] ,\slv_reg2_reg_n_0_[1] ,\slv_reg2_reg_n_0_[0] }),
        .\axi_rdata_reg[16]_0 ({\slv_reg0_reg_n_0_[16] ,\slv_reg0_reg_n_0_[15] ,\slv_reg0_reg_n_0_[14] ,\slv_reg0_reg_n_0_[13] ,\slv_reg0_reg_n_0_[12] ,\slv_reg0_reg_n_0_[11] ,\slv_reg0_reg_n_0_[10] ,p_2_in,p_0_in_0,\slv_reg0_reg_n_0_[7] ,\slv_reg0_reg_n_0_[6] ,\slv_reg0_reg_n_0_[5] ,\slv_reg0_reg_n_0_[4] ,\slv_reg0_reg_n_0_[3] ,\slv_reg0_reg_n_0_[2] ,\slv_reg0_reg_n_0_[1] ,\slv_reg0_reg_n_0_[0] }),
        .\ma_r_reg[0]_0 ({pwm_i_n_18,pwm_i_n_19}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .slv_reg3(slv_reg3));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_reg[0] 
       (.CLR(1'b0),
        .D(pwm_i_n_19),
        .G(s00_axi_aresetn),
        .GE(1'b1),
        .Q(pwm[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_reg[1] 
       (.CLR(1'b0),
        .D(pwm_i_n_18),
        .G(s00_axi_aresetn),
        .GE(1'b1),
        .Q(pwm[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    right_motor_en_INST_0
       (.I0(s00_axi_aresetn),
        .I1(p_2_in),
        .I2(p_0_in_0),
        .I3(slv_reg3),
        .O(right_motor_en));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(p_0_in_0),
        .R(pwm_i_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(p_2_in),
        .R(pwm_i_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(period[0]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(period[1]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(period[2]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(period[3]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(period[4]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(period[5]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(period[6]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(period[7]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(period[8]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(period[9]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(period[10]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(period[11]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(period[12]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(period[13]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(period[14]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(period[15]),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(pwm_i_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(pwm_i_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(pwm_i_n_0));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \slv_reg3[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(slv_reg_wren__2),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(slv_reg3),
        .O(\slv_reg3[0]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[0]_i_1_n_0 ),
        .Q(slv_reg3),
        .R(pwm_i_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwmGen
   (SR,
    D,
    \ma_r_reg[0]_0 ,
    S,
    s00_axi_aclk,
    Q,
    \axi_rdata_reg[16] ,
    \axi_rdata_reg[16]_0 ,
    O,
    s00_axi_aresetn,
    axi_araddr,
    slv_reg3,
    CO);
  output [0:0]SR;
  output [16:0]D;
  output [1:0]\ma_r_reg[0]_0 ;
  output [3:0]S;
  input s00_axi_aclk;
  input [31:0]Q;
  input [16:0]\axi_rdata_reg[16] ;
  input [16:0]\axi_rdata_reg[16]_0 ;
  input [3:0]O;
  input s00_axi_aresetn;
  input [1:0]axi_araddr;
  input [0:0]slv_reg3;
  input [0:0]CO;

  wire [0:0]CO;
  wire [16:0]D;
  wire [3:0]O;
  wire [31:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [1:0]axi_araddr;
  wire [16:0]\axi_rdata_reg[16] ;
  wire [16:0]\axi_rdata_reg[16]_0 ;
  wire [16:1]cnt0;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_1;
  wire cnt0_carry__1_n_2;
  wire cnt0_carry__1_n_3;
  wire cnt0_carry__2_n_1;
  wire cnt0_carry__2_n_2;
  wire cnt0_carry__2_n_3;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire cnt1_carry__0_i_1_n_3;
  wire cnt1_carry__0_i_2_n_0;
  wire cnt1_carry__0_i_3_n_0;
  wire cnt1_carry__0_n_0;
  wire cnt1_carry__0_n_1;
  wire cnt1_carry__0_n_2;
  wire cnt1_carry__0_n_3;
  wire cnt1_carry__1_n_1;
  wire cnt1_carry__1_n_2;
  wire cnt1_carry__1_n_3;
  wire cnt1_carry_i_1_n_0;
  wire cnt1_carry_i_2_n_0;
  wire cnt1_carry_i_3_n_0;
  wire cnt1_carry_i_4_n_0;
  wire cnt1_carry_n_0;
  wire cnt1_carry_n_1;
  wire cnt1_carry_n_2;
  wire cnt1_carry_n_3;
  wire \cnt1_inferred__0/i__carry__0_n_0 ;
  wire \cnt1_inferred__0/i__carry__0_n_1 ;
  wire \cnt1_inferred__0/i__carry__0_n_2 ;
  wire \cnt1_inferred__0/i__carry__0_n_3 ;
  wire \cnt1_inferred__0/i__carry__1_n_0 ;
  wire \cnt1_inferred__0/i__carry__1_n_1 ;
  wire \cnt1_inferred__0/i__carry__1_n_2 ;
  wire \cnt1_inferred__0/i__carry__1_n_3 ;
  wire \cnt1_inferred__0/i__carry__2_n_0 ;
  wire \cnt1_inferred__0/i__carry__2_n_1 ;
  wire \cnt1_inferred__0/i__carry__2_n_2 ;
  wire \cnt1_inferred__0/i__carry__2_n_3 ;
  wire \cnt1_inferred__0/i__carry_n_0 ;
  wire \cnt1_inferred__0/i__carry_n_1 ;
  wire \cnt1_inferred__0/i__carry_n_2 ;
  wire \cnt1_inferred__0/i__carry_n_3 ;
  wire [16:1]cnt2;
  wire cnt2_carry__0_i_1_n_0;
  wire cnt2_carry__0_i_2_n_0;
  wire cnt2_carry__0_i_3_n_0;
  wire cnt2_carry__0_i_4_n_0;
  wire cnt2_carry__0_n_0;
  wire cnt2_carry__0_n_1;
  wire cnt2_carry__0_n_2;
  wire cnt2_carry__0_n_3;
  wire cnt2_carry__0_n_4;
  wire cnt2_carry__0_n_5;
  wire cnt2_carry__0_n_6;
  wire cnt2_carry__0_n_7;
  wire cnt2_carry__1_i_1_n_0;
  wire cnt2_carry__1_i_2_n_0;
  wire cnt2_carry__1_i_3_n_0;
  wire cnt2_carry__1_i_4_n_0;
  wire cnt2_carry__1_n_0;
  wire cnt2_carry__1_n_1;
  wire cnt2_carry__1_n_2;
  wire cnt2_carry__1_n_3;
  wire cnt2_carry__1_n_4;
  wire cnt2_carry__1_n_5;
  wire cnt2_carry__1_n_6;
  wire cnt2_carry__1_n_7;
  wire cnt2_carry__2_i_1_n_0;
  wire cnt2_carry__2_i_2_n_0;
  wire cnt2_carry__2_i_3_n_0;
  wire cnt2_carry__2_n_0;
  wire cnt2_carry__2_n_2;
  wire cnt2_carry__2_n_3;
  wire cnt2_carry__2_n_5;
  wire cnt2_carry__2_n_6;
  wire cnt2_carry__2_n_7;
  wire cnt2_carry_i_1_n_0;
  wire cnt2_carry_i_2_n_0;
  wire cnt2_carry_i_3_n_0;
  wire cnt2_carry_i_4_n_0;
  wire cnt2_carry_n_0;
  wire cnt2_carry_n_1;
  wire cnt2_carry_n_2;
  wire cnt2_carry_n_3;
  wire cnt2_carry_n_4;
  wire cnt2_carry_n_5;
  wire cnt2_carry_n_6;
  wire cnt2_carry_n_7;
  wire \cnt2_inferred__0/i__carry__0_n_0 ;
  wire \cnt2_inferred__0/i__carry__0_n_1 ;
  wire \cnt2_inferred__0/i__carry__0_n_2 ;
  wire \cnt2_inferred__0/i__carry__0_n_3 ;
  wire \cnt2_inferred__0/i__carry__1_n_0 ;
  wire \cnt2_inferred__0/i__carry__1_n_1 ;
  wire \cnt2_inferred__0/i__carry__1_n_2 ;
  wire \cnt2_inferred__0/i__carry__1_n_3 ;
  wire \cnt2_inferred__0/i__carry__2_n_0 ;
  wire \cnt2_inferred__0/i__carry__2_n_1 ;
  wire \cnt2_inferred__0/i__carry__2_n_2 ;
  wire \cnt2_inferred__0/i__carry__2_n_3 ;
  wire \cnt2_inferred__0/i__carry_n_0 ;
  wire \cnt2_inferred__0/i__carry_n_1 ;
  wire \cnt2_inferred__0/i__carry_n_2 ;
  wire \cnt2_inferred__0/i__carry_n_3 ;
  wire [16:0]cntReg;
  wire [16:0]cntReg0;
  wire \cntReg[0]_i_1_n_0 ;
  wire \cntReg[10]_i_1_n_0 ;
  wire \cntReg[11]_i_10_n_0 ;
  wire \cntReg[11]_i_11_n_0 ;
  wire \cntReg[11]_i_1_n_0 ;
  wire \cntReg[11]_i_4_n_0 ;
  wire \cntReg[11]_i_5_n_0 ;
  wire \cntReg[11]_i_6_n_0 ;
  wire \cntReg[11]_i_7_n_0 ;
  wire \cntReg[11]_i_8_n_0 ;
  wire \cntReg[11]_i_9_n_0 ;
  wire \cntReg[12]_i_1_n_0 ;
  wire \cntReg[13]_i_1_n_0 ;
  wire \cntReg[14]_i_1_n_0 ;
  wire \cntReg[15]_i_10_n_0 ;
  wire \cntReg[15]_i_11_n_0 ;
  wire \cntReg[15]_i_1_n_0 ;
  wire \cntReg[15]_i_4_n_0 ;
  wire \cntReg[15]_i_5_n_0 ;
  wire \cntReg[15]_i_6_n_0 ;
  wire \cntReg[15]_i_7_n_0 ;
  wire \cntReg[15]_i_8_n_0 ;
  wire \cntReg[15]_i_9_n_0 ;
  wire \cntReg[16]_i_1_n_0 ;
  wire \cntReg[16]_i_5_n_0 ;
  wire \cntReg[16]_i_6_n_0 ;
  wire \cntReg[1]_i_1_n_0 ;
  wire \cntReg[2]_i_1_n_0 ;
  wire \cntReg[3]_i_10_n_0 ;
  wire \cntReg[3]_i_11_n_0 ;
  wire \cntReg[3]_i_1_n_0 ;
  wire \cntReg[3]_i_8_n_0 ;
  wire \cntReg[3]_i_9_n_0 ;
  wire \cntReg[4]_i_1_n_0 ;
  wire \cntReg[5]_i_1_n_0 ;
  wire \cntReg[6]_i_1_n_0 ;
  wire \cntReg[7]_i_10_n_0 ;
  wire \cntReg[7]_i_11_n_0 ;
  wire \cntReg[7]_i_1_n_0 ;
  wire \cntReg[7]_i_4_n_0 ;
  wire \cntReg[7]_i_5_n_0 ;
  wire \cntReg[7]_i_6_n_0 ;
  wire \cntReg[7]_i_7_n_0 ;
  wire \cntReg[7]_i_8_n_0 ;
  wire \cntReg[7]_i_9_n_0 ;
  wire \cntReg[8]_i_1_n_0 ;
  wire \cntReg[9]_i_1_n_0 ;
  wire \cntReg_reg[11]_i_2_n_0 ;
  wire \cntReg_reg[11]_i_2_n_1 ;
  wire \cntReg_reg[11]_i_2_n_2 ;
  wire \cntReg_reg[11]_i_2_n_3 ;
  wire \cntReg_reg[11]_i_3_n_0 ;
  wire \cntReg_reg[11]_i_3_n_1 ;
  wire \cntReg_reg[11]_i_3_n_2 ;
  wire \cntReg_reg[11]_i_3_n_3 ;
  wire \cntReg_reg[15]_i_2_n_0 ;
  wire \cntReg_reg[15]_i_2_n_1 ;
  wire \cntReg_reg[15]_i_2_n_2 ;
  wire \cntReg_reg[15]_i_2_n_3 ;
  wire \cntReg_reg[15]_i_3_n_0 ;
  wire \cntReg_reg[15]_i_3_n_1 ;
  wire \cntReg_reg[15]_i_3_n_2 ;
  wire \cntReg_reg[15]_i_3_n_3 ;
  wire \cntReg_reg[3]_i_3_n_0 ;
  wire \cntReg_reg[3]_i_3_n_1 ;
  wire \cntReg_reg[3]_i_3_n_2 ;
  wire \cntReg_reg[3]_i_3_n_3 ;
  wire \cntReg_reg[7]_i_2_n_0 ;
  wire \cntReg_reg[7]_i_2_n_1 ;
  wire \cntReg_reg[7]_i_2_n_2 ;
  wire \cntReg_reg[7]_i_2_n_3 ;
  wire \cntReg_reg[7]_i_3_n_0 ;
  wire \cntReg_reg[7]_i_3_n_1 ;
  wire \cntReg_reg[7]_i_3_n_2 ;
  wire \cntReg_reg[7]_i_3_n_3 ;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[0]_i_3_n_0 ;
  wire \cnt[0]_i_4_n_0 ;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt[0]_i_6_n_0 ;
  wire \cnt[12]_i_2_n_0 ;
  wire \cnt[12]_i_3_n_0 ;
  wire \cnt[12]_i_4_n_0 ;
  wire \cnt[12]_i_5_n_0 ;
  wire \cnt[16]_i_2_n_0 ;
  wire \cnt[4]_i_2_n_0 ;
  wire \cnt[4]_i_3_n_0 ;
  wire \cnt[4]_i_4_n_0 ;
  wire \cnt[4]_i_5_n_0 ;
  wire \cnt[8]_i_2_n_0 ;
  wire \cnt[8]_i_3_n_0 ;
  wire \cnt[8]_i_4_n_0 ;
  wire \cnt[8]_i_5_n_0 ;
  wire [16:4]cnt_r;
  wire [15:0]cnt_r2;
  wire cnt_r2__0_carry__0_i_10_n_0;
  wire cnt_r2__0_carry__0_i_11_n_0;
  wire cnt_r2__0_carry__0_i_12_n_0;
  wire cnt_r2__0_carry__0_i_1_n_0;
  wire cnt_r2__0_carry__0_i_2_n_0;
  wire cnt_r2__0_carry__0_i_3_n_0;
  wire cnt_r2__0_carry__0_i_4_n_0;
  wire cnt_r2__0_carry__0_i_5_n_0;
  wire cnt_r2__0_carry__0_i_6_n_0;
  wire cnt_r2__0_carry__0_i_7_n_0;
  wire cnt_r2__0_carry__0_i_8_n_0;
  wire cnt_r2__0_carry__0_i_9_n_0;
  wire cnt_r2__0_carry__0_n_0;
  wire cnt_r2__0_carry__0_n_1;
  wire cnt_r2__0_carry__0_n_2;
  wire cnt_r2__0_carry__0_n_3;
  wire cnt_r2__0_carry__0_n_4;
  wire cnt_r2__0_carry__0_n_5;
  wire cnt_r2__0_carry__0_n_6;
  wire cnt_r2__0_carry__0_n_7;
  wire cnt_r2__0_carry__1_i_1_n_0;
  wire cnt_r2__0_carry__1_i_2_n_0;
  wire cnt_r2__0_carry__1_i_3_n_0;
  wire cnt_r2__0_carry__1_i_4_n_0;
  wire cnt_r2__0_carry__1_n_1;
  wire cnt_r2__0_carry__1_n_3;
  wire cnt_r2__0_carry__1_n_6;
  wire cnt_r2__0_carry__1_n_7;
  wire cnt_r2__0_carry_i_1_n_0;
  wire cnt_r2__0_carry_i_2_n_0;
  wire cnt_r2__0_carry_i_3_n_0;
  wire cnt_r2__0_carry_i_4_n_0;
  wire cnt_r2__0_carry_i_5_n_0;
  wire cnt_r2__0_carry_i_6_n_0;
  wire cnt_r2__0_carry_i_7_n_0;
  wire cnt_r2__0_carry_i_8_n_0;
  wire cnt_r2__0_carry_n_0;
  wire cnt_r2__0_carry_n_1;
  wire cnt_r2__0_carry_n_2;
  wire cnt_r2__0_carry_n_3;
  wire cnt_r2__0_carry_n_4;
  wire cnt_r2__30_carry__0_i_10_n_0;
  wire cnt_r2__30_carry__0_i_11_n_0;
  wire cnt_r2__30_carry__0_i_12_n_0;
  wire cnt_r2__30_carry__0_i_1_n_0;
  wire cnt_r2__30_carry__0_i_2_n_0;
  wire cnt_r2__30_carry__0_i_3_n_0;
  wire cnt_r2__30_carry__0_i_4_n_0;
  wire cnt_r2__30_carry__0_i_5_n_0;
  wire cnt_r2__30_carry__0_i_6_n_0;
  wire cnt_r2__30_carry__0_i_7_n_0;
  wire cnt_r2__30_carry__0_i_8_n_0;
  wire cnt_r2__30_carry__0_i_9_n_0;
  wire cnt_r2__30_carry__0_n_0;
  wire cnt_r2__30_carry__0_n_1;
  wire cnt_r2__30_carry__0_n_2;
  wire cnt_r2__30_carry__0_n_3;
  wire cnt_r2__30_carry__0_n_4;
  wire cnt_r2__30_carry__0_n_5;
  wire cnt_r2__30_carry__0_n_6;
  wire cnt_r2__30_carry__0_n_7;
  wire cnt_r2__30_carry__1_i_1_n_0;
  wire cnt_r2__30_carry__1_i_2_n_0;
  wire cnt_r2__30_carry__1_i_3_n_0;
  wire cnt_r2__30_carry__1_i_4_n_0;
  wire cnt_r2__30_carry__1_n_1;
  wire cnt_r2__30_carry__1_n_3;
  wire cnt_r2__30_carry__1_n_6;
  wire cnt_r2__30_carry__1_n_7;
  wire cnt_r2__30_carry_i_1_n_0;
  wire cnt_r2__30_carry_i_2_n_0;
  wire cnt_r2__30_carry_i_3_n_0;
  wire cnt_r2__30_carry_i_4_n_0;
  wire cnt_r2__30_carry_i_5_n_0;
  wire cnt_r2__30_carry_i_6_n_0;
  wire cnt_r2__30_carry_i_7_n_0;
  wire cnt_r2__30_carry_i_8_n_0;
  wire cnt_r2__30_carry_n_0;
  wire cnt_r2__30_carry_n_1;
  wire cnt_r2__30_carry_n_2;
  wire cnt_r2__30_carry_n_3;
  wire cnt_r2__30_carry_n_4;
  wire cnt_r2__30_carry_n_5;
  wire cnt_r2__30_carry_n_6;
  wire cnt_r2__30_carry_n_7;
  wire cnt_r2__60_carry__0_i_10_n_0;
  wire cnt_r2__60_carry__0_i_11_n_0;
  wire cnt_r2__60_carry__0_i_12_n_0;
  wire cnt_r2__60_carry__0_i_13_n_0;
  wire cnt_r2__60_carry__0_i_14_n_0;
  wire cnt_r2__60_carry__0_i_15_n_0;
  wire cnt_r2__60_carry__0_i_16_n_0;
  wire cnt_r2__60_carry__0_i_17_n_0;
  wire cnt_r2__60_carry__0_i_18_n_0;
  wire cnt_r2__60_carry__0_i_19_n_0;
  wire cnt_r2__60_carry__0_i_1_n_0;
  wire cnt_r2__60_carry__0_i_2_n_0;
  wire cnt_r2__60_carry__0_i_3_n_0;
  wire cnt_r2__60_carry__0_i_4_n_0;
  wire cnt_r2__60_carry__0_i_5_n_0;
  wire cnt_r2__60_carry__0_i_6_n_0;
  wire cnt_r2__60_carry__0_i_7_n_0;
  wire cnt_r2__60_carry__0_i_8_n_0;
  wire cnt_r2__60_carry__0_i_9_n_0;
  wire cnt_r2__60_carry__0_n_0;
  wire cnt_r2__60_carry__0_n_1;
  wire cnt_r2__60_carry__0_n_2;
  wire cnt_r2__60_carry__0_n_3;
  wire cnt_r2__60_carry__1_i_10_n_0;
  wire cnt_r2__60_carry__1_i_11_n_0;
  wire cnt_r2__60_carry__1_i_12_n_0;
  wire cnt_r2__60_carry__1_i_13_n_0;
  wire cnt_r2__60_carry__1_i_14_n_0;
  wire cnt_r2__60_carry__1_i_15_n_0;
  wire cnt_r2__60_carry__1_i_16_n_0;
  wire cnt_r2__60_carry__1_i_1_n_0;
  wire cnt_r2__60_carry__1_i_2_n_0;
  wire cnt_r2__60_carry__1_i_3_n_0;
  wire cnt_r2__60_carry__1_i_4_n_0;
  wire cnt_r2__60_carry__1_i_5_n_0;
  wire cnt_r2__60_carry__1_i_6_n_0;
  wire cnt_r2__60_carry__1_i_7_n_0;
  wire cnt_r2__60_carry__1_i_8_n_0;
  wire cnt_r2__60_carry__1_i_9_n_0;
  wire cnt_r2__60_carry__1_n_0;
  wire cnt_r2__60_carry__1_n_1;
  wire cnt_r2__60_carry__1_n_2;
  wire cnt_r2__60_carry__1_n_3;
  wire cnt_r2__60_carry__2_i_1_n_0;
  wire cnt_r2__60_carry_i_1_n_0;
  wire cnt_r2__60_carry_i_2_n_0;
  wire cnt_r2__60_carry_i_3_n_0;
  wire cnt_r2__60_carry_i_4_n_0;
  wire cnt_r2__60_carry_n_0;
  wire cnt_r2__60_carry_n_1;
  wire cnt_r2__60_carry_n_2;
  wire cnt_r2__60_carry_n_3;
  wire [16:0]cnt_reg;
  wire \cnt_reg[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_2_n_1 ;
  wire \cnt_reg[0]_i_2_n_2 ;
  wire \cnt_reg[0]_i_2_n_3 ;
  wire \cnt_reg[0]_i_2_n_4 ;
  wire \cnt_reg[0]_i_2_n_5 ;
  wire \cnt_reg[0]_i_2_n_6 ;
  wire \cnt_reg[0]_i_2_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire \ma_r[0]_i_1_n_0 ;
  wire \ma_r[1]_i_1_n_0 ;
  wire [1:0]\ma_r_reg[0]_0 ;
  wire \ma_r_reg_n_0_[0] ;
  wire \ma_r_reg_n_0_[1] ;
  wire pulse_out;
  wire pulse_out_i_1_n_0;
  wire pwm_en__6;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [0:0]slv_reg3;
  wire [3:3]NLW_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_cnt1_carry_O_UNCONNECTED;
  wire [3:0]NLW_cnt1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_cnt1_carry__0_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_cnt1_carry__0_i_1_O_UNCONNECTED;
  wire [3:3]NLW_cnt1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_cnt1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_cnt1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_cnt1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_cnt1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_cnt1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [2:2]NLW_cnt2_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_cnt2_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_cntReg_reg[16]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_cntReg_reg[16]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_cntReg_reg[16]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_cntReg_reg[16]_i_4_O_UNCONNECTED ;
  wire [3:1]NLW_cnt_r2__0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_cnt_r2__0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_cnt_r2__30_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_cnt_r2__30_carry__1_O_UNCONNECTED;
  wire [0:0]NLW_cnt_r2__60_carry_O_UNCONNECTED;
  wire [3:0]NLW_cnt_r2__60_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_cnt_r2__60_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_cnt_reg[16]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(cntReg[0]),
        .I1(Q[0]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [0]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_1 
       (.I0(cntReg[10]),
        .I1(Q[10]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [10]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_1 
       (.I0(cntReg[11]),
        .I1(Q[11]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [11]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_1 
       (.I0(cntReg[12]),
        .I1(Q[12]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [12]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_1 
       (.I0(cntReg[13]),
        .I1(Q[13]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [13]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(cntReg[14]),
        .I1(Q[14]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [14]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(cntReg[15]),
        .I1(Q[15]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [15]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(cntReg[16]),
        .I1(Q[16]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [16]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [16]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(cntReg[1]),
        .I1(Q[1]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [1]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(cntReg[2]),
        .I1(Q[2]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [2]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(cntReg[3]),
        .I1(Q[3]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [3]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(cntReg[4]),
        .I1(Q[4]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [4]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(cntReg[5]),
        .I1(Q[5]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [5]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(cntReg[6]),
        .I1(Q[6]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [6]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(cntReg[7]),
        .I1(Q[7]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [7]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_1 
       (.I0(cntReg[8]),
        .I1(Q[8]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [8]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_1 
       (.I0(cntReg[9]),
        .I1(Q[9]),
        .I2(axi_araddr[0]),
        .I3(\axi_rdata_reg[16] [9]),
        .I4(axi_araddr[1]),
        .I5(\axi_rdata_reg[16]_0 [9]),
        .O(D[9]));
  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3}),
        .CYINIT(cnt_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[4:1]),
        .S(cnt_reg[4:1]));
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[8:5]),
        .S(cnt_reg[8:5]));
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,cnt0_carry__1_n_1,cnt0_carry__1_n_2,cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[12:9]),
        .S(cnt_reg[12:9]));
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO({NLW_cnt0_carry__2_CO_UNCONNECTED[3],cnt0_carry__2_n_1,cnt0_carry__2_n_2,cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt0[16:13]),
        .S(cnt_reg[16:13]));
  CARRY4 cnt1_carry
       (.CI(1'b0),
        .CO({cnt1_carry_n_0,cnt1_carry_n_1,cnt1_carry_n_2,cnt1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt1_carry_O_UNCONNECTED[3:0]),
        .S({cnt1_carry_i_1_n_0,cnt1_carry_i_2_n_0,cnt1_carry_i_3_n_0,cnt1_carry_i_4_n_0}));
  CARRY4 cnt1_carry__0
       (.CI(cnt1_carry_n_0),
        .CO({cnt1_carry__0_n_0,cnt1_carry__0_n_1,cnt1_carry__0_n_2,cnt1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt1_carry__0_O_UNCONNECTED[3:0]),
        .S({cnt1_carry__0_i_1_n_3,cnt1_carry__0_i_1_n_3,cnt1_carry__0_i_2_n_0,cnt1_carry__0_i_3_n_0}));
  CARRY4 cnt1_carry__0_i_1
       (.CI(\cnt2_inferred__0/i__carry__2_n_0 ),
        .CO({NLW_cnt1_carry__0_i_1_CO_UNCONNECTED[3:1],cnt1_carry__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt1_carry__0_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT5 #(
    .INIT(32'h90000090)) 
    cnt1_carry__0_i_2
       (.I0(cnt_reg[15]),
        .I1(cnt2[15]),
        .I2(cnt1_carry__0_i_1_n_3),
        .I3(cnt2[16]),
        .I4(cnt_reg[16]),
        .O(cnt1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cnt1_carry__0_i_3
       (.I0(cnt_reg[12]),
        .I1(cnt2[12]),
        .I2(cnt2[14]),
        .I3(cnt_reg[14]),
        .I4(cnt2[13]),
        .I5(cnt_reg[13]),
        .O(cnt1_carry__0_i_3_n_0));
  CARRY4 cnt1_carry__1
       (.CI(cnt1_carry__0_n_0),
        .CO({NLW_cnt1_carry__1_CO_UNCONNECTED[3],cnt1_carry__1_n_1,cnt1_carry__1_n_2,cnt1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cnt1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,cnt1_carry__0_i_1_n_3,cnt1_carry__0_i_1_n_3,cnt1_carry__0_i_1_n_3}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cnt1_carry_i_1
       (.I0(cnt_reg[9]),
        .I1(cnt2[9]),
        .I2(cnt2[11]),
        .I3(cnt_reg[11]),
        .I4(cnt2[10]),
        .I5(cnt_reg[10]),
        .O(cnt1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cnt1_carry_i_2
       (.I0(cnt_reg[6]),
        .I1(cnt2[6]),
        .I2(cnt2[8]),
        .I3(cnt_reg[8]),
        .I4(cnt2[7]),
        .I5(cnt_reg[7]),
        .O(cnt1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cnt1_carry_i_3
       (.I0(cnt_reg[3]),
        .I1(cnt2[3]),
        .I2(cnt2[5]),
        .I3(cnt_reg[5]),
        .I4(cnt2[4]),
        .I5(cnt_reg[4]),
        .O(cnt1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    cnt1_carry_i_4
       (.I0(cnt_reg[0]),
        .I1(cntReg[0]),
        .I2(cnt2[2]),
        .I3(cnt_reg[2]),
        .I4(cnt2[1]),
        .I5(cnt_reg[1]),
        .O(cnt1_carry_i_4_n_0));
  CARRY4 \cnt1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\cnt1_inferred__0/i__carry_n_0 ,\cnt1_inferred__0/i__carry_n_1 ,\cnt1_inferred__0/i__carry_n_2 ,\cnt1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_cnt1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 \cnt1_inferred__0/i__carry__0 
       (.CI(\cnt1_inferred__0/i__carry_n_0 ),
        .CO({\cnt1_inferred__0/i__carry__0_n_0 ,\cnt1_inferred__0/i__carry__0_n_1 ,\cnt1_inferred__0/i__carry__0_n_2 ,\cnt1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_cnt1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  CARRY4 \cnt1_inferred__0/i__carry__1 
       (.CI(\cnt1_inferred__0/i__carry__0_n_0 ),
        .CO({\cnt1_inferred__0/i__carry__1_n_0 ,\cnt1_inferred__0/i__carry__1_n_1 ,\cnt1_inferred__0/i__carry__1_n_2 ,\cnt1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__1_i_1__0_n_0}),
        .O(\NLW_cnt1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({cnt2_carry__2_n_0,cnt2_carry__2_n_0,cnt2_carry__2_n_0,i__carry__1_i_2__0_n_0}));
  CARRY4 \cnt1_inferred__0/i__carry__2 
       (.CI(\cnt1_inferred__0/i__carry__1_n_0 ),
        .CO({\cnt1_inferred__0/i__carry__2_n_0 ,\cnt1_inferred__0/i__carry__2_n_1 ,\cnt1_inferred__0/i__carry__2_n_2 ,\cnt1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cnt1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({cnt2_carry__2_n_0,cnt2_carry__2_n_0,cnt2_carry__2_n_0,cnt2_carry__2_n_0}));
  CARRY4 cnt2_carry
       (.CI(1'b0),
        .CO({cnt2_carry_n_0,cnt2_carry_n_1,cnt2_carry_n_2,cnt2_carry_n_3}),
        .CYINIT(Q[16]),
        .DI(Q[20:17]),
        .O({cnt2_carry_n_4,cnt2_carry_n_5,cnt2_carry_n_6,cnt2_carry_n_7}),
        .S({cnt2_carry_i_1_n_0,cnt2_carry_i_2_n_0,cnt2_carry_i_3_n_0,cnt2_carry_i_4_n_0}));
  CARRY4 cnt2_carry__0
       (.CI(cnt2_carry_n_0),
        .CO({cnt2_carry__0_n_0,cnt2_carry__0_n_1,cnt2_carry__0_n_2,cnt2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O({cnt2_carry__0_n_4,cnt2_carry__0_n_5,cnt2_carry__0_n_6,cnt2_carry__0_n_7}),
        .S({cnt2_carry__0_i_1_n_0,cnt2_carry__0_i_2_n_0,cnt2_carry__0_i_3_n_0,cnt2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt2_carry__0_i_1
       (.I0(Q[24]),
        .O(cnt2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt2_carry__0_i_2
       (.I0(Q[23]),
        .O(cnt2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt2_carry__0_i_3
       (.I0(Q[22]),
        .O(cnt2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt2_carry__0_i_4
       (.I0(Q[21]),
        .O(cnt2_carry__0_i_4_n_0));
  CARRY4 cnt2_carry__1
       (.CI(cnt2_carry__0_n_0),
        .CO({cnt2_carry__1_n_0,cnt2_carry__1_n_1,cnt2_carry__1_n_2,cnt2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O({cnt2_carry__1_n_4,cnt2_carry__1_n_5,cnt2_carry__1_n_6,cnt2_carry__1_n_7}),
        .S({cnt2_carry__1_i_1_n_0,cnt2_carry__1_i_2_n_0,cnt2_carry__1_i_3_n_0,cnt2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt2_carry__1_i_1
       (.I0(Q[28]),
        .O(cnt2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt2_carry__1_i_2
       (.I0(Q[27]),
        .O(cnt2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt2_carry__1_i_3
       (.I0(Q[26]),
        .O(cnt2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt2_carry__1_i_4
       (.I0(Q[25]),
        .O(cnt2_carry__1_i_4_n_0));
  CARRY4 cnt2_carry__2
       (.CI(cnt2_carry__1_n_0),
        .CO({cnt2_carry__2_n_0,NLW_cnt2_carry__2_CO_UNCONNECTED[2],cnt2_carry__2_n_2,cnt2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[31:29]}),
        .O({NLW_cnt2_carry__2_O_UNCONNECTED[3],cnt2_carry__2_n_5,cnt2_carry__2_n_6,cnt2_carry__2_n_7}),
        .S({1'b1,cnt2_carry__2_i_1_n_0,cnt2_carry__2_i_2_n_0,cnt2_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt2_carry__2_i_1
       (.I0(Q[31]),
        .O(cnt2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt2_carry__2_i_2
       (.I0(Q[30]),
        .O(cnt2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt2_carry__2_i_3
       (.I0(Q[29]),
        .O(cnt2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt2_carry_i_1
       (.I0(Q[20]),
        .O(cnt2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt2_carry_i_2
       (.I0(Q[19]),
        .O(cnt2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt2_carry_i_3
       (.I0(Q[18]),
        .O(cnt2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt2_carry_i_4
       (.I0(Q[17]),
        .O(cnt2_carry_i_4_n_0));
  CARRY4 \cnt2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\cnt2_inferred__0/i__carry_n_0 ,\cnt2_inferred__0/i__carry_n_1 ,\cnt2_inferred__0/i__carry_n_2 ,\cnt2_inferred__0/i__carry_n_3 }),
        .CYINIT(cntReg[0]),
        .DI(cntReg[4:1]),
        .O(cnt2[4:1]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \cnt2_inferred__0/i__carry__0 
       (.CI(\cnt2_inferred__0/i__carry_n_0 ),
        .CO({\cnt2_inferred__0/i__carry__0_n_0 ,\cnt2_inferred__0/i__carry__0_n_1 ,\cnt2_inferred__0/i__carry__0_n_2 ,\cnt2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(cntReg[8:5]),
        .O(cnt2[8:5]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \cnt2_inferred__0/i__carry__1 
       (.CI(\cnt2_inferred__0/i__carry__0_n_0 ),
        .CO({\cnt2_inferred__0/i__carry__1_n_0 ,\cnt2_inferred__0/i__carry__1_n_1 ,\cnt2_inferred__0/i__carry__1_n_2 ,\cnt2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(cntReg[12:9]),
        .O(cnt2[12:9]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \cnt2_inferred__0/i__carry__2 
       (.CI(\cnt2_inferred__0/i__carry__1_n_0 ),
        .CO({\cnt2_inferred__0/i__carry__2_n_0 ,\cnt2_inferred__0/i__carry__2_n_1 ,\cnt2_inferred__0/i__carry__2_n_2 ,\cnt2_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(cntReg[16:13]),
        .O(cnt2[16:13]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[0]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[0]),
        .I3(O[0]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[0]),
        .O(\cntReg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[10]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[10]),
        .I3(cnt_r[10]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[10]),
        .O(\cntReg[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[11]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[11]),
        .I3(cnt_r[11]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[11]),
        .O(\cntReg[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[11]_i_10 
       (.I0(Q[25]),
        .I1(cnt_r[9]),
        .O(\cntReg[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[11]_i_11 
       (.I0(Q[24]),
        .I1(cnt_r[8]),
        .O(\cntReg[11]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \cntReg[11]_i_4 
       (.I0(Q[11]),
        .I1(pwm_en__6),
        .I2(cnt_r2[11]),
        .O(\cntReg[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \cntReg[11]_i_5 
       (.I0(Q[10]),
        .I1(pwm_en__6),
        .I2(cnt_r2[10]),
        .O(\cntReg[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \cntReg[11]_i_6 
       (.I0(Q[9]),
        .I1(pwm_en__6),
        .I2(cnt_r2[9]),
        .O(\cntReg[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \cntReg[11]_i_7 
       (.I0(Q[8]),
        .I1(pwm_en__6),
        .I2(cnt_r2[8]),
        .O(\cntReg[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[11]_i_8 
       (.I0(Q[27]),
        .I1(cnt_r[11]),
        .O(\cntReg[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[11]_i_9 
       (.I0(Q[26]),
        .I1(cnt_r[10]),
        .O(\cntReg[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[12]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[12]),
        .I3(cnt_r[12]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[12]),
        .O(\cntReg[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[13]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[13]),
        .I3(cnt_r[13]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[13]),
        .O(\cntReg[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[14]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[14]),
        .I3(cnt_r[14]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[14]),
        .O(\cntReg[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[15]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[15]),
        .I3(cnt_r[15]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[15]),
        .O(\cntReg[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[15]_i_10 
       (.I0(Q[29]),
        .I1(cnt_r[13]),
        .O(\cntReg[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[15]_i_11 
       (.I0(Q[28]),
        .I1(cnt_r[12]),
        .O(\cntReg[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \cntReg[15]_i_4 
       (.I0(Q[15]),
        .I1(pwm_en__6),
        .I2(cnt_r2[15]),
        .O(\cntReg[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \cntReg[15]_i_5 
       (.I0(Q[14]),
        .I1(pwm_en__6),
        .I2(cnt_r2[14]),
        .O(\cntReg[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \cntReg[15]_i_6 
       (.I0(Q[13]),
        .I1(pwm_en__6),
        .I2(cnt_r2[13]),
        .O(\cntReg[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \cntReg[15]_i_7 
       (.I0(Q[12]),
        .I1(pwm_en__6),
        .I2(cnt_r2[12]),
        .O(\cntReg[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[15]_i_8 
       (.I0(Q[31]),
        .I1(cnt_r[15]),
        .O(\cntReg[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[15]_i_9 
       (.I0(Q[30]),
        .I1(cnt_r[14]),
        .O(\cntReg[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \cntReg[16]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(cntReg0[16]),
        .I3(\axi_rdata_reg[16]_0 [8]),
        .I4(cnt_r[16]),
        .O(\cntReg[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cntReg[16]_i_2 
       (.I0(\axi_rdata_reg[16]_0 [5]),
        .I1(\axi_rdata_reg[16]_0 [4]),
        .I2(\axi_rdata_reg[16]_0 [6]),
        .I3(\axi_rdata_reg[16]_0 [7]),
        .I4(\cntReg[16]_i_5_n_0 ),
        .O(pwm_en__6));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cntReg[16]_i_5 
       (.I0(\axi_rdata_reg[16]_0 [2]),
        .I1(\axi_rdata_reg[16]_0 [3]),
        .I2(\axi_rdata_reg[16]_0 [0]),
        .I3(\axi_rdata_reg[16]_0 [1]),
        .O(\cntReg[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cntReg[16]_i_6 
       (.I0(cnt_r[16]),
        .O(\cntReg[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[1]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[1]),
        .I3(O[1]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[1]),
        .O(\cntReg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[2]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[2]),
        .I3(O[2]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[2]),
        .O(\cntReg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[3]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[3]),
        .I3(O[3]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[3]),
        .O(\cntReg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[3]_i_10 
       (.I0(Q[17]),
        .I1(O[1]),
        .O(\cntReg[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[3]_i_11 
       (.I0(Q[16]),
        .I1(O[0]),
        .O(\cntReg[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hA99A)) 
    \cntReg[3]_i_4 
       (.I0(Q[3]),
        .I1(pwm_en__6),
        .I2(cnt_r2__0_carry_n_4),
        .I3(cnt_r2__30_carry_n_7),
        .O(S[3]));
  LUT3 #(
    .INIT(8'h9A)) 
    \cntReg[3]_i_5 
       (.I0(Q[2]),
        .I1(pwm_en__6),
        .I2(cnt_r2[2]),
        .O(S[2]));
  LUT3 #(
    .INIT(8'h9A)) 
    \cntReg[3]_i_6 
       (.I0(Q[1]),
        .I1(pwm_en__6),
        .I2(cnt_r2[1]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h9A)) 
    \cntReg[3]_i_7 
       (.I0(Q[0]),
        .I1(pwm_en__6),
        .I2(cnt_r2[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[3]_i_8 
       (.I0(Q[19]),
        .I1(O[3]),
        .O(\cntReg[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[3]_i_9 
       (.I0(Q[18]),
        .I1(O[2]),
        .O(\cntReg[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[4]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[4]),
        .I3(cnt_r[4]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[4]),
        .O(\cntReg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[5]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[5]),
        .I3(cnt_r[5]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[5]),
        .O(\cntReg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[6]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[6]),
        .I3(cnt_r[6]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[6]),
        .O(\cntReg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[7]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[7]),
        .I3(cnt_r[7]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[7]),
        .O(\cntReg[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[7]_i_10 
       (.I0(Q[21]),
        .I1(cnt_r[5]),
        .O(\cntReg[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[7]_i_11 
       (.I0(Q[20]),
        .I1(cnt_r[4]),
        .O(\cntReg[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \cntReg[7]_i_4 
       (.I0(Q[7]),
        .I1(pwm_en__6),
        .I2(cnt_r2[7]),
        .O(\cntReg[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \cntReg[7]_i_5 
       (.I0(Q[6]),
        .I1(pwm_en__6),
        .I2(cnt_r2[6]),
        .O(\cntReg[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \cntReg[7]_i_6 
       (.I0(Q[5]),
        .I1(pwm_en__6),
        .I2(cnt_r2[5]),
        .O(\cntReg[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \cntReg[7]_i_7 
       (.I0(Q[4]),
        .I1(pwm_en__6),
        .I2(cnt_r2[4]),
        .O(\cntReg[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[7]_i_8 
       (.I0(Q[23]),
        .I1(cnt_r[7]),
        .O(\cntReg[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \cntReg[7]_i_9 
       (.I0(Q[22]),
        .I1(cnt_r[6]),
        .O(\cntReg[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[8]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[8]),
        .I3(cnt_r[8]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[8]),
        .O(\cntReg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4B0F4F4F4B0B0B0)) 
    \cntReg[9]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(Q[9]),
        .I3(cnt_r[9]),
        .I4(\axi_rdata_reg[16]_0 [8]),
        .I5(cntReg0[9]),
        .O(\cntReg[9]_i_1_n_0 ));
  FDCE \cntReg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[0]_i_1_n_0 ),
        .Q(cntReg[0]));
  FDCE \cntReg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[10]_i_1_n_0 ),
        .Q(cntReg[10]));
  FDCE \cntReg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[11]_i_1_n_0 ),
        .Q(cntReg[11]));
  CARRY4 \cntReg_reg[11]_i_2 
       (.CI(\cntReg_reg[7]_i_2_n_0 ),
        .CO({\cntReg_reg[11]_i_2_n_0 ,\cntReg_reg[11]_i_2_n_1 ,\cntReg_reg[11]_i_2_n_2 ,\cntReg_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(cnt_r[11:8]),
        .S({\cntReg[11]_i_4_n_0 ,\cntReg[11]_i_5_n_0 ,\cntReg[11]_i_6_n_0 ,\cntReg[11]_i_7_n_0 }));
  CARRY4 \cntReg_reg[11]_i_3 
       (.CI(\cntReg_reg[7]_i_3_n_0 ),
        .CO({\cntReg_reg[11]_i_3_n_0 ,\cntReg_reg[11]_i_3_n_1 ,\cntReg_reg[11]_i_3_n_2 ,\cntReg_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(cntReg0[11:8]),
        .S({\cntReg[11]_i_8_n_0 ,\cntReg[11]_i_9_n_0 ,\cntReg[11]_i_10_n_0 ,\cntReg[11]_i_11_n_0 }));
  FDCE \cntReg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[12]_i_1_n_0 ),
        .Q(cntReg[12]));
  FDCE \cntReg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[13]_i_1_n_0 ),
        .Q(cntReg[13]));
  FDCE \cntReg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[14]_i_1_n_0 ),
        .Q(cntReg[14]));
  FDCE \cntReg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[15]_i_1_n_0 ),
        .Q(cntReg[15]));
  CARRY4 \cntReg_reg[15]_i_2 
       (.CI(\cntReg_reg[11]_i_2_n_0 ),
        .CO({\cntReg_reg[15]_i_2_n_0 ,\cntReg_reg[15]_i_2_n_1 ,\cntReg_reg[15]_i_2_n_2 ,\cntReg_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(cnt_r[15:12]),
        .S({\cntReg[15]_i_4_n_0 ,\cntReg[15]_i_5_n_0 ,\cntReg[15]_i_6_n_0 ,\cntReg[15]_i_7_n_0 }));
  CARRY4 \cntReg_reg[15]_i_3 
       (.CI(\cntReg_reg[11]_i_3_n_0 ),
        .CO({\cntReg_reg[15]_i_3_n_0 ,\cntReg_reg[15]_i_3_n_1 ,\cntReg_reg[15]_i_3_n_2 ,\cntReg_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[31:28]),
        .O(cntReg0[15:12]),
        .S({\cntReg[15]_i_8_n_0 ,\cntReg[15]_i_9_n_0 ,\cntReg[15]_i_10_n_0 ,\cntReg[15]_i_11_n_0 }));
  FDCE \cntReg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[16]_i_1_n_0 ),
        .Q(cntReg[16]));
  CARRY4 \cntReg_reg[16]_i_3 
       (.CI(\cntReg_reg[15]_i_3_n_0 ),
        .CO(\NLW_cntReg_reg[16]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cntReg_reg[16]_i_3_O_UNCONNECTED [3:1],cntReg0[16]}),
        .S({1'b0,1'b0,1'b0,\cntReg[16]_i_6_n_0 }));
  CARRY4 \cntReg_reg[16]_i_4 
       (.CI(\cntReg_reg[15]_i_2_n_0 ),
        .CO({\NLW_cntReg_reg[16]_i_4_CO_UNCONNECTED [3:1],cnt_r[16]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_cntReg_reg[16]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE \cntReg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[1]_i_1_n_0 ),
        .Q(cntReg[1]));
  FDCE \cntReg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[2]_i_1_n_0 ),
        .Q(cntReg[2]));
  FDCE \cntReg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[3]_i_1_n_0 ),
        .Q(cntReg[3]));
  CARRY4 \cntReg_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\cntReg_reg[3]_i_3_n_0 ,\cntReg_reg[3]_i_3_n_1 ,\cntReg_reg[3]_i_3_n_2 ,\cntReg_reg[3]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI(Q[19:16]),
        .O(cntReg0[3:0]),
        .S({\cntReg[3]_i_8_n_0 ,\cntReg[3]_i_9_n_0 ,\cntReg[3]_i_10_n_0 ,\cntReg[3]_i_11_n_0 }));
  FDCE \cntReg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[4]_i_1_n_0 ),
        .Q(cntReg[4]));
  FDCE \cntReg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[5]_i_1_n_0 ),
        .Q(cntReg[5]));
  FDCE \cntReg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[6]_i_1_n_0 ),
        .Q(cntReg[6]));
  FDCE \cntReg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[7]_i_1_n_0 ),
        .Q(cntReg[7]));
  CARRY4 \cntReg_reg[7]_i_2 
       (.CI(CO),
        .CO({\cntReg_reg[7]_i_2_n_0 ,\cntReg_reg[7]_i_2_n_1 ,\cntReg_reg[7]_i_2_n_2 ,\cntReg_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(cnt_r[7:4]),
        .S({\cntReg[7]_i_4_n_0 ,\cntReg[7]_i_5_n_0 ,\cntReg[7]_i_6_n_0 ,\cntReg[7]_i_7_n_0 }));
  CARRY4 \cntReg_reg[7]_i_3 
       (.CI(\cntReg_reg[3]_i_3_n_0 ),
        .CO({\cntReg_reg[7]_i_3_n_0 ,\cntReg_reg[7]_i_3_n_1 ,\cntReg_reg[7]_i_3_n_2 ,\cntReg_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(cntReg0[7:4]),
        .S({\cntReg[7]_i_8_n_0 ,\cntReg[7]_i_9_n_0 ,\cntReg[7]_i_10_n_0 ,\cntReg[7]_i_11_n_0 }));
  FDCE \cntReg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[8]_i_1_n_0 ),
        .Q(cntReg[8]));
  FDCE \cntReg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\cntReg[9]_i_1_n_0 ),
        .Q(cntReg[9]));
  LUT2 #(
    .INIT(4'h4)) 
    \cnt[0]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .O(\cnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[0]_i_3 
       (.I0(cnt_reg[3]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[3]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[0]_i_4 
       (.I0(cnt_reg[2]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[2]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[0]_i_5 
       (.I0(cnt_reg[1]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[1]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h31)) 
    \cnt[0]_i_6 
       (.I0(\cnt1_inferred__0/i__carry__2_n_0 ),
        .I1(cnt_reg[0]),
        .I2(cnt1_carry__1_n_1),
        .O(\cnt[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[12]_i_2 
       (.I0(cnt_reg[15]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[15]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[12]_i_3 
       (.I0(cnt_reg[14]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[14]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[12]_i_4 
       (.I0(cnt_reg[13]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[13]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[12]_i_5 
       (.I0(cnt_reg[12]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[12]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[16]_i_2 
       (.I0(cnt_reg[16]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[16]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[4]_i_2 
       (.I0(cnt_reg[7]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[7]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[4]_i_3 
       (.I0(cnt_reg[6]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[6]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[4]_i_4 
       (.I0(cnt_reg[5]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[5]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[4]_i_5 
       (.I0(cnt_reg[4]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[4]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[8]_i_2 
       (.I0(cnt_reg[11]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[11]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[8]_i_3 
       (.I0(cnt_reg[10]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[10]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[8]_i_4 
       (.I0(cnt_reg[9]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[9]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \cnt[8]_i_5 
       (.I0(cnt_reg[8]),
        .I1(cnt1_carry__1_n_1),
        .I2(cnt0[8]),
        .I3(\cnt1_inferred__0/i__carry__2_n_0 ),
        .O(\cnt[8]_i_5_n_0 ));
  CARRY4 cnt_r2__0_carry
       (.CI(1'b0),
        .CO({cnt_r2__0_carry_n_0,cnt_r2__0_carry_n_1,cnt_r2__0_carry_n_2,cnt_r2__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_r2__0_carry_i_1_n_0,cnt_r2__0_carry_i_2_n_0,cnt_r2__0_carry_i_3_n_0,1'b0}),
        .O({cnt_r2__0_carry_n_4,cnt_r2[2:0]}),
        .S({cnt_r2__0_carry_i_4_n_0,cnt_r2__0_carry_i_5_n_0,cnt_r2__0_carry_i_6_n_0,cnt_r2__0_carry_i_7_n_0}));
  CARRY4 cnt_r2__0_carry__0
       (.CI(cnt_r2__0_carry_n_0),
        .CO({cnt_r2__0_carry__0_n_0,cnt_r2__0_carry__0_n_1,cnt_r2__0_carry__0_n_2,cnt_r2__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_r2__0_carry__0_i_1_n_0,cnt_r2__0_carry__0_i_2_n_0,cnt_r2__0_carry__0_i_3_n_0,cnt_r2__0_carry__0_i_4_n_0}),
        .O({cnt_r2__0_carry__0_n_4,cnt_r2__0_carry__0_n_5,cnt_r2__0_carry__0_n_6,cnt_r2__0_carry__0_n_7}),
        .S({cnt_r2__0_carry__0_i_5_n_0,cnt_r2__0_carry__0_i_6_n_0,cnt_r2__0_carry__0_i_7_n_0,cnt_r2__0_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    cnt_r2__0_carry__0_i_1
       (.I0(\axi_rdata_reg[16]_0 [2]),
        .I1(\axi_rdata_reg[16] [4]),
        .I2(\axi_rdata_reg[16]_0 [1]),
        .I3(\axi_rdata_reg[16] [5]),
        .I4(\axi_rdata_reg[16]_0 [0]),
        .I5(\axi_rdata_reg[16] [6]),
        .O(cnt_r2__0_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__0_carry__0_i_10
       (.I0(\axi_rdata_reg[16] [4]),
        .I1(\axi_rdata_reg[16]_0 [2]),
        .O(cnt_r2__0_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__0_carry__0_i_11
       (.I0(\axi_rdata_reg[16] [3]),
        .I1(\axi_rdata_reg[16]_0 [2]),
        .O(cnt_r2__0_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__0_carry__0_i_12
       (.I0(\axi_rdata_reg[16] [2]),
        .I1(\axi_rdata_reg[16]_0 [2]),
        .O(cnt_r2__0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    cnt_r2__0_carry__0_i_2
       (.I0(\axi_rdata_reg[16]_0 [2]),
        .I1(\axi_rdata_reg[16] [3]),
        .I2(\axi_rdata_reg[16]_0 [1]),
        .I3(\axi_rdata_reg[16] [4]),
        .I4(\axi_rdata_reg[16]_0 [0]),
        .I5(\axi_rdata_reg[16] [5]),
        .O(cnt_r2__0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    cnt_r2__0_carry__0_i_3
       (.I0(\axi_rdata_reg[16]_0 [2]),
        .I1(\axi_rdata_reg[16] [2]),
        .I2(\axi_rdata_reg[16]_0 [1]),
        .I3(\axi_rdata_reg[16] [3]),
        .I4(\axi_rdata_reg[16]_0 [0]),
        .I5(\axi_rdata_reg[16] [4]),
        .O(cnt_r2__0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    cnt_r2__0_carry__0_i_4
       (.I0(\axi_rdata_reg[16]_0 [2]),
        .I1(\axi_rdata_reg[16] [1]),
        .I2(\axi_rdata_reg[16]_0 [1]),
        .I3(\axi_rdata_reg[16] [2]),
        .I4(\axi_rdata_reg[16]_0 [0]),
        .I5(\axi_rdata_reg[16] [3]),
        .O(cnt_r2__0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    cnt_r2__0_carry__0_i_5
       (.I0(cnt_r2__0_carry__0_i_1_n_0),
        .I1(\axi_rdata_reg[16]_0 [1]),
        .I2(\axi_rdata_reg[16] [6]),
        .I3(cnt_r2__0_carry__0_i_9_n_0),
        .I4(\axi_rdata_reg[16] [7]),
        .I5(\axi_rdata_reg[16]_0 [0]),
        .O(cnt_r2__0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    cnt_r2__0_carry__0_i_6
       (.I0(cnt_r2__0_carry__0_i_2_n_0),
        .I1(\axi_rdata_reg[16]_0 [1]),
        .I2(\axi_rdata_reg[16] [5]),
        .I3(cnt_r2__0_carry__0_i_10_n_0),
        .I4(\axi_rdata_reg[16] [6]),
        .I5(\axi_rdata_reg[16]_0 [0]),
        .O(cnt_r2__0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    cnt_r2__0_carry__0_i_7
       (.I0(cnt_r2__0_carry__0_i_3_n_0),
        .I1(\axi_rdata_reg[16]_0 [1]),
        .I2(\axi_rdata_reg[16] [4]),
        .I3(cnt_r2__0_carry__0_i_11_n_0),
        .I4(\axi_rdata_reg[16] [5]),
        .I5(\axi_rdata_reg[16]_0 [0]),
        .O(cnt_r2__0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    cnt_r2__0_carry__0_i_8
       (.I0(cnt_r2__0_carry__0_i_4_n_0),
        .I1(\axi_rdata_reg[16]_0 [1]),
        .I2(\axi_rdata_reg[16] [3]),
        .I3(cnt_r2__0_carry__0_i_12_n_0),
        .I4(\axi_rdata_reg[16] [4]),
        .I5(\axi_rdata_reg[16]_0 [0]),
        .O(cnt_r2__0_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__0_carry__0_i_9
       (.I0(\axi_rdata_reg[16] [5]),
        .I1(\axi_rdata_reg[16]_0 [2]),
        .O(cnt_r2__0_carry__0_i_9_n_0));
  CARRY4 cnt_r2__0_carry__1
       (.CI(cnt_r2__0_carry__0_n_0),
        .CO({NLW_cnt_r2__0_carry__1_CO_UNCONNECTED[3],cnt_r2__0_carry__1_n_1,NLW_cnt_r2__0_carry__1_CO_UNCONNECTED[1],cnt_r2__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,cnt_r2__0_carry__1_i_1_n_0,cnt_r2__0_carry__1_i_2_n_0}),
        .O({NLW_cnt_r2__0_carry__1_O_UNCONNECTED[3:2],cnt_r2__0_carry__1_n_6,cnt_r2__0_carry__1_n_7}),
        .S({1'b0,1'b1,cnt_r2__0_carry__1_i_3_n_0,cnt_r2__0_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'h8000)) 
    cnt_r2__0_carry__1_i_1
       (.I0(\axi_rdata_reg[16]_0 [2]),
        .I1(\axi_rdata_reg[16] [6]),
        .I2(\axi_rdata_reg[16]_0 [1]),
        .I3(\axi_rdata_reg[16] [7]),
        .O(cnt_r2__0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    cnt_r2__0_carry__1_i_2
       (.I0(\axi_rdata_reg[16]_0 [2]),
        .I1(\axi_rdata_reg[16] [5]),
        .I2(\axi_rdata_reg[16]_0 [1]),
        .I3(\axi_rdata_reg[16] [6]),
        .I4(\axi_rdata_reg[16]_0 [0]),
        .I5(\axi_rdata_reg[16] [7]),
        .O(cnt_r2__0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h7000)) 
    cnt_r2__0_carry__1_i_3
       (.I0(\axi_rdata_reg[16]_0 [1]),
        .I1(\axi_rdata_reg[16] [6]),
        .I2(\axi_rdata_reg[16]_0 [2]),
        .I3(\axi_rdata_reg[16] [7]),
        .O(cnt_r2__0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    cnt_r2__0_carry__1_i_4
       (.I0(\axi_rdata_reg[16]_0 [0]),
        .I1(\axi_rdata_reg[16] [5]),
        .I2(\axi_rdata_reg[16] [6]),
        .I3(\axi_rdata_reg[16]_0 [2]),
        .I4(\axi_rdata_reg[16] [7]),
        .I5(\axi_rdata_reg[16]_0 [1]),
        .O(cnt_r2__0_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    cnt_r2__0_carry_i_1
       (.I0(\axi_rdata_reg[16]_0 [1]),
        .I1(\axi_rdata_reg[16] [2]),
        .I2(\axi_rdata_reg[16]_0 [2]),
        .I3(\axi_rdata_reg[16] [1]),
        .I4(\axi_rdata_reg[16] [3]),
        .I5(\axi_rdata_reg[16]_0 [0]),
        .O(cnt_r2__0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    cnt_r2__0_carry_i_2
       (.I0(\axi_rdata_reg[16]_0 [1]),
        .I1(\axi_rdata_reg[16] [1]),
        .I2(\axi_rdata_reg[16]_0 [2]),
        .I3(\axi_rdata_reg[16] [0]),
        .O(cnt_r2__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_r2__0_carry_i_3
       (.I0(\axi_rdata_reg[16]_0 [0]),
        .I1(\axi_rdata_reg[16] [1]),
        .O(cnt_r2__0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    cnt_r2__0_carry_i_4
       (.I0(\axi_rdata_reg[16] [2]),
        .I1(cnt_r2__0_carry_i_8_n_0),
        .I2(\axi_rdata_reg[16] [1]),
        .I3(\axi_rdata_reg[16]_0 [1]),
        .I4(\axi_rdata_reg[16] [0]),
        .I5(\axi_rdata_reg[16]_0 [2]),
        .O(cnt_r2__0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    cnt_r2__0_carry_i_5
       (.I0(\axi_rdata_reg[16] [0]),
        .I1(\axi_rdata_reg[16]_0 [2]),
        .I2(\axi_rdata_reg[16] [1]),
        .I3(\axi_rdata_reg[16]_0 [1]),
        .I4(\axi_rdata_reg[16]_0 [0]),
        .I5(\axi_rdata_reg[16] [2]),
        .O(cnt_r2__0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    cnt_r2__0_carry_i_6
       (.I0(\axi_rdata_reg[16]_0 [0]),
        .I1(\axi_rdata_reg[16] [1]),
        .I2(\axi_rdata_reg[16]_0 [1]),
        .I3(\axi_rdata_reg[16] [0]),
        .O(cnt_r2__0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_r2__0_carry_i_7
       (.I0(\axi_rdata_reg[16] [0]),
        .I1(\axi_rdata_reg[16]_0 [0]),
        .O(cnt_r2__0_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__0_carry_i_8
       (.I0(\axi_rdata_reg[16] [3]),
        .I1(\axi_rdata_reg[16]_0 [0]),
        .O(cnt_r2__0_carry_i_8_n_0));
  CARRY4 cnt_r2__30_carry
       (.CI(1'b0),
        .CO({cnt_r2__30_carry_n_0,cnt_r2__30_carry_n_1,cnt_r2__30_carry_n_2,cnt_r2__30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_r2__30_carry_i_1_n_0,cnt_r2__30_carry_i_2_n_0,cnt_r2__30_carry_i_3_n_0,1'b0}),
        .O({cnt_r2__30_carry_n_4,cnt_r2__30_carry_n_5,cnt_r2__30_carry_n_6,cnt_r2__30_carry_n_7}),
        .S({cnt_r2__30_carry_i_4_n_0,cnt_r2__30_carry_i_5_n_0,cnt_r2__30_carry_i_6_n_0,cnt_r2__30_carry_i_7_n_0}));
  CARRY4 cnt_r2__30_carry__0
       (.CI(cnt_r2__30_carry_n_0),
        .CO({cnt_r2__30_carry__0_n_0,cnt_r2__30_carry__0_n_1,cnt_r2__30_carry__0_n_2,cnt_r2__30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_r2__30_carry__0_i_1_n_0,cnt_r2__30_carry__0_i_2_n_0,cnt_r2__30_carry__0_i_3_n_0,cnt_r2__30_carry__0_i_4_n_0}),
        .O({cnt_r2__30_carry__0_n_4,cnt_r2__30_carry__0_n_5,cnt_r2__30_carry__0_n_6,cnt_r2__30_carry__0_n_7}),
        .S({cnt_r2__30_carry__0_i_5_n_0,cnt_r2__30_carry__0_i_6_n_0,cnt_r2__30_carry__0_i_7_n_0,cnt_r2__30_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    cnt_r2__30_carry__0_i_1
       (.I0(\axi_rdata_reg[16]_0 [5]),
        .I1(\axi_rdata_reg[16] [4]),
        .I2(\axi_rdata_reg[16]_0 [4]),
        .I3(\axi_rdata_reg[16] [5]),
        .I4(\axi_rdata_reg[16]_0 [3]),
        .I5(\axi_rdata_reg[16] [6]),
        .O(cnt_r2__30_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__30_carry__0_i_10
       (.I0(\axi_rdata_reg[16] [4]),
        .I1(\axi_rdata_reg[16]_0 [5]),
        .O(cnt_r2__30_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__30_carry__0_i_11
       (.I0(\axi_rdata_reg[16] [3]),
        .I1(\axi_rdata_reg[16]_0 [5]),
        .O(cnt_r2__30_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__30_carry__0_i_12
       (.I0(\axi_rdata_reg[16] [2]),
        .I1(\axi_rdata_reg[16]_0 [5]),
        .O(cnt_r2__30_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    cnt_r2__30_carry__0_i_2
       (.I0(\axi_rdata_reg[16]_0 [5]),
        .I1(\axi_rdata_reg[16] [3]),
        .I2(\axi_rdata_reg[16]_0 [4]),
        .I3(\axi_rdata_reg[16] [4]),
        .I4(\axi_rdata_reg[16]_0 [3]),
        .I5(\axi_rdata_reg[16] [5]),
        .O(cnt_r2__30_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    cnt_r2__30_carry__0_i_3
       (.I0(\axi_rdata_reg[16]_0 [5]),
        .I1(\axi_rdata_reg[16] [2]),
        .I2(\axi_rdata_reg[16]_0 [4]),
        .I3(\axi_rdata_reg[16] [3]),
        .I4(\axi_rdata_reg[16]_0 [3]),
        .I5(\axi_rdata_reg[16] [4]),
        .O(cnt_r2__30_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    cnt_r2__30_carry__0_i_4
       (.I0(\axi_rdata_reg[16]_0 [5]),
        .I1(\axi_rdata_reg[16] [1]),
        .I2(\axi_rdata_reg[16]_0 [4]),
        .I3(\axi_rdata_reg[16] [2]),
        .I4(\axi_rdata_reg[16]_0 [3]),
        .I5(\axi_rdata_reg[16] [3]),
        .O(cnt_r2__30_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    cnt_r2__30_carry__0_i_5
       (.I0(cnt_r2__30_carry__0_i_1_n_0),
        .I1(\axi_rdata_reg[16]_0 [4]),
        .I2(\axi_rdata_reg[16] [6]),
        .I3(cnt_r2__30_carry__0_i_9_n_0),
        .I4(\axi_rdata_reg[16] [7]),
        .I5(\axi_rdata_reg[16]_0 [3]),
        .O(cnt_r2__30_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    cnt_r2__30_carry__0_i_6
       (.I0(cnt_r2__30_carry__0_i_2_n_0),
        .I1(\axi_rdata_reg[16]_0 [4]),
        .I2(\axi_rdata_reg[16] [5]),
        .I3(cnt_r2__30_carry__0_i_10_n_0),
        .I4(\axi_rdata_reg[16] [6]),
        .I5(\axi_rdata_reg[16]_0 [3]),
        .O(cnt_r2__30_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    cnt_r2__30_carry__0_i_7
       (.I0(cnt_r2__30_carry__0_i_3_n_0),
        .I1(\axi_rdata_reg[16]_0 [4]),
        .I2(\axi_rdata_reg[16] [4]),
        .I3(cnt_r2__30_carry__0_i_11_n_0),
        .I4(\axi_rdata_reg[16] [5]),
        .I5(\axi_rdata_reg[16]_0 [3]),
        .O(cnt_r2__30_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    cnt_r2__30_carry__0_i_8
       (.I0(cnt_r2__30_carry__0_i_4_n_0),
        .I1(\axi_rdata_reg[16]_0 [4]),
        .I2(\axi_rdata_reg[16] [3]),
        .I3(cnt_r2__30_carry__0_i_12_n_0),
        .I4(\axi_rdata_reg[16] [4]),
        .I5(\axi_rdata_reg[16]_0 [3]),
        .O(cnt_r2__30_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__30_carry__0_i_9
       (.I0(\axi_rdata_reg[16] [5]),
        .I1(\axi_rdata_reg[16]_0 [5]),
        .O(cnt_r2__30_carry__0_i_9_n_0));
  CARRY4 cnt_r2__30_carry__1
       (.CI(cnt_r2__30_carry__0_n_0),
        .CO({NLW_cnt_r2__30_carry__1_CO_UNCONNECTED[3],cnt_r2__30_carry__1_n_1,NLW_cnt_r2__30_carry__1_CO_UNCONNECTED[1],cnt_r2__30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,cnt_r2__30_carry__1_i_1_n_0,cnt_r2__30_carry__1_i_2_n_0}),
        .O({NLW_cnt_r2__30_carry__1_O_UNCONNECTED[3:2],cnt_r2__30_carry__1_n_6,cnt_r2__30_carry__1_n_7}),
        .S({1'b0,1'b1,cnt_r2__30_carry__1_i_3_n_0,cnt_r2__30_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'h8000)) 
    cnt_r2__30_carry__1_i_1
       (.I0(\axi_rdata_reg[16]_0 [5]),
        .I1(\axi_rdata_reg[16] [6]),
        .I2(\axi_rdata_reg[16]_0 [4]),
        .I3(\axi_rdata_reg[16] [7]),
        .O(cnt_r2__30_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    cnt_r2__30_carry__1_i_2
       (.I0(\axi_rdata_reg[16]_0 [5]),
        .I1(\axi_rdata_reg[16] [5]),
        .I2(\axi_rdata_reg[16]_0 [4]),
        .I3(\axi_rdata_reg[16] [6]),
        .I4(\axi_rdata_reg[16]_0 [3]),
        .I5(\axi_rdata_reg[16] [7]),
        .O(cnt_r2__30_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h7000)) 
    cnt_r2__30_carry__1_i_3
       (.I0(\axi_rdata_reg[16]_0 [4]),
        .I1(\axi_rdata_reg[16] [6]),
        .I2(\axi_rdata_reg[16]_0 [5]),
        .I3(\axi_rdata_reg[16] [7]),
        .O(cnt_r2__30_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hE75F30007800F000)) 
    cnt_r2__30_carry__1_i_4
       (.I0(\axi_rdata_reg[16]_0 [3]),
        .I1(\axi_rdata_reg[16] [5]),
        .I2(\axi_rdata_reg[16] [6]),
        .I3(\axi_rdata_reg[16]_0 [5]),
        .I4(\axi_rdata_reg[16] [7]),
        .I5(\axi_rdata_reg[16]_0 [4]),
        .O(cnt_r2__30_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    cnt_r2__30_carry_i_1
       (.I0(\axi_rdata_reg[16]_0 [4]),
        .I1(\axi_rdata_reg[16] [2]),
        .I2(\axi_rdata_reg[16]_0 [5]),
        .I3(\axi_rdata_reg[16] [1]),
        .I4(\axi_rdata_reg[16] [3]),
        .I5(\axi_rdata_reg[16]_0 [3]),
        .O(cnt_r2__30_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    cnt_r2__30_carry_i_2
       (.I0(\axi_rdata_reg[16]_0 [4]),
        .I1(\axi_rdata_reg[16] [1]),
        .I2(\axi_rdata_reg[16]_0 [5]),
        .I3(\axi_rdata_reg[16] [0]),
        .O(cnt_r2__30_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_r2__30_carry_i_3
       (.I0(\axi_rdata_reg[16]_0 [3]),
        .I1(\axi_rdata_reg[16] [1]),
        .O(cnt_r2__30_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    cnt_r2__30_carry_i_4
       (.I0(\axi_rdata_reg[16] [2]),
        .I1(cnt_r2__30_carry_i_8_n_0),
        .I2(\axi_rdata_reg[16] [1]),
        .I3(\axi_rdata_reg[16]_0 [4]),
        .I4(\axi_rdata_reg[16] [0]),
        .I5(\axi_rdata_reg[16]_0 [5]),
        .O(cnt_r2__30_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    cnt_r2__30_carry_i_5
       (.I0(\axi_rdata_reg[16] [0]),
        .I1(\axi_rdata_reg[16]_0 [5]),
        .I2(\axi_rdata_reg[16] [1]),
        .I3(\axi_rdata_reg[16]_0 [4]),
        .I4(\axi_rdata_reg[16]_0 [3]),
        .I5(\axi_rdata_reg[16] [2]),
        .O(cnt_r2__30_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    cnt_r2__30_carry_i_6
       (.I0(\axi_rdata_reg[16]_0 [3]),
        .I1(\axi_rdata_reg[16] [1]),
        .I2(\axi_rdata_reg[16]_0 [4]),
        .I3(\axi_rdata_reg[16] [0]),
        .O(cnt_r2__30_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    cnt_r2__30_carry_i_7
       (.I0(\axi_rdata_reg[16] [0]),
        .I1(\axi_rdata_reg[16]_0 [3]),
        .O(cnt_r2__30_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__30_carry_i_8
       (.I0(\axi_rdata_reg[16] [3]),
        .I1(\axi_rdata_reg[16]_0 [3]),
        .O(cnt_r2__30_carry_i_8_n_0));
  CARRY4 cnt_r2__60_carry
       (.CI(1'b0),
        .CO({cnt_r2__60_carry_n_0,cnt_r2__60_carry_n_1,cnt_r2__60_carry_n_2,cnt_r2__60_carry_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_r2__60_carry_i_1_n_0,cnt_r2__0_carry__0_n_6,cnt_r2__0_carry__0_n_7,cnt_r2__0_carry_n_4}),
        .O({cnt_r2[6:4],NLW_cnt_r2__60_carry_O_UNCONNECTED[0]}),
        .S({cnt_r2__60_carry_i_2_n_0,cnt_r2__60_carry_i_3_n_0,cnt_r2__60_carry_i_4_n_0,cnt_r2[3]}));
  CARRY4 cnt_r2__60_carry__0
       (.CI(cnt_r2__60_carry_n_0),
        .CO({cnt_r2__60_carry__0_n_0,cnt_r2__60_carry__0_n_1,cnt_r2__60_carry__0_n_2,cnt_r2__60_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_r2__60_carry__0_i_1_n_0,cnt_r2__60_carry__0_i_2_n_0,cnt_r2__60_carry__0_i_3_n_0,cnt_r2__60_carry__0_i_4_n_0}),
        .O(cnt_r2[10:7]),
        .S({cnt_r2__60_carry__0_i_5_n_0,cnt_r2__60_carry__0_i_6_n_0,cnt_r2__60_carry__0_i_7_n_0,cnt_r2__60_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h8F08)) 
    cnt_r2__60_carry__0_i_1
       (.I0(\axi_rdata_reg[16]_0 [6]),
        .I1(\axi_rdata_reg[16] [3]),
        .I2(cnt_r2__60_carry__0_i_9_n_0),
        .I3(cnt_r2__60_carry__0_i_10_n_0),
        .O(cnt_r2__60_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    cnt_r2__60_carry__0_i_10
       (.I0(cnt_r2__30_carry__0_n_6),
        .I1(cnt_r2__0_carry__1_n_7),
        .I2(\axi_rdata_reg[16]_0 [7]),
        .I3(\axi_rdata_reg[16] [1]),
        .O(cnt_r2__60_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    cnt_r2__60_carry__0_i_11
       (.I0(\axi_rdata_reg[16]_0 [7]),
        .I1(\axi_rdata_reg[16] [1]),
        .I2(cnt_r2__30_carry__0_n_6),
        .I3(cnt_r2__0_carry__1_n_7),
        .O(cnt_r2__60_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__60_carry__0_i_12
       (.I0(\axi_rdata_reg[16] [3]),
        .I1(\axi_rdata_reg[16]_0 [6]),
        .O(cnt_r2__60_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    cnt_r2__60_carry__0_i_13
       (.I0(\axi_rdata_reg[16]_0 [7]),
        .I1(\axi_rdata_reg[16] [3]),
        .I2(cnt_r2__30_carry__0_n_4),
        .I3(cnt_r2__0_carry__1_n_1),
        .O(cnt_r2__60_carry__0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__60_carry__0_i_14
       (.I0(\axi_rdata_reg[16] [4]),
        .I1(\axi_rdata_reg[16]_0 [6]),
        .O(cnt_r2__60_carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    cnt_r2__60_carry__0_i_15
       (.I0(cnt_r2__30_carry__0_n_5),
        .I1(cnt_r2__0_carry__1_n_6),
        .I2(\axi_rdata_reg[16]_0 [7]),
        .I3(\axi_rdata_reg[16] [2]),
        .O(cnt_r2__60_carry__0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    cnt_r2__60_carry__0_i_16
       (.I0(cnt_r2__0_carry__0_n_5),
        .I1(cnt_r2__30_carry_n_4),
        .I2(\axi_rdata_reg[16]_0 [6]),
        .I3(\axi_rdata_reg[16] [1]),
        .O(cnt_r2__60_carry__0_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__60_carry__0_i_17
       (.I0(\axi_rdata_reg[16] [2]),
        .I1(\axi_rdata_reg[16]_0 [6]),
        .O(cnt_r2__60_carry__0_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__60_carry__0_i_18
       (.I0(\axi_rdata_reg[16] [0]),
        .I1(\axi_rdata_reg[16]_0 [7]),
        .O(cnt_r2__60_carry__0_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    cnt_r2__60_carry__0_i_19
       (.I0(\axi_rdata_reg[16]_0 [7]),
        .I1(\axi_rdata_reg[16] [0]),
        .I2(cnt_r2__30_carry__0_n_7),
        .I3(cnt_r2__0_carry__0_n_4),
        .O(cnt_r2__60_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'h8A08080808080808)) 
    cnt_r2__60_carry__0_i_2
       (.I0(\axi_rdata_reg[16]_0 [6]),
        .I1(\axi_rdata_reg[16] [2]),
        .I2(cnt_r2__60_carry__0_i_11_n_0),
        .I3(\axi_rdata_reg[16] [1]),
        .I4(cnt_r2__30_carry_n_4),
        .I5(cnt_r2__0_carry__0_n_5),
        .O(cnt_r2__60_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h5995959595959595)) 
    cnt_r2__60_carry__0_i_3
       (.I0(cnt_r2__60_carry__0_i_11_n_0),
        .I1(\axi_rdata_reg[16]_0 [6]),
        .I2(\axi_rdata_reg[16] [2]),
        .I3(cnt_r2__0_carry__0_n_5),
        .I4(cnt_r2__30_carry_n_4),
        .I5(\axi_rdata_reg[16] [1]),
        .O(cnt_r2__60_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9666)) 
    cnt_r2__60_carry__0_i_4
       (.I0(cnt_r2__0_carry__0_n_4),
        .I1(cnt_r2__30_carry__0_n_7),
        .I2(\axi_rdata_reg[16] [0]),
        .I3(\axi_rdata_reg[16]_0 [7]),
        .O(cnt_r2__60_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    cnt_r2__60_carry__0_i_5
       (.I0(cnt_r2__60_carry__0_i_10_n_0),
        .I1(cnt_r2__60_carry__0_i_9_n_0),
        .I2(cnt_r2__60_carry__0_i_12_n_0),
        .I3(cnt_r2__60_carry__0_i_13_n_0),
        .I4(cnt_r2__60_carry__0_i_14_n_0),
        .I5(cnt_r2__60_carry__0_i_15_n_0),
        .O(cnt_r2__60_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    cnt_r2__60_carry__0_i_6
       (.I0(cnt_r2__60_carry__0_i_16_n_0),
        .I1(cnt_r2__60_carry__0_i_11_n_0),
        .I2(cnt_r2__60_carry__0_i_17_n_0),
        .I3(cnt_r2__60_carry__0_i_9_n_0),
        .I4(cnt_r2__60_carry__0_i_12_n_0),
        .I5(cnt_r2__60_carry__0_i_10_n_0),
        .O(cnt_r2__60_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    cnt_r2__60_carry__0_i_7
       (.I0(cnt_r2__60_carry__0_i_11_n_0),
        .I1(cnt_r2__60_carry__0_i_17_n_0),
        .I2(cnt_r2__60_carry__0_i_16_n_0),
        .I3(cnt_r2__60_carry__0_i_18_n_0),
        .I4(cnt_r2__0_carry__0_n_4),
        .I5(cnt_r2__30_carry__0_n_7),
        .O(cnt_r2__60_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h6A959595)) 
    cnt_r2__60_carry__0_i_8
       (.I0(cnt_r2__60_carry__0_i_19_n_0),
        .I1(\axi_rdata_reg[16] [1]),
        .I2(\axi_rdata_reg[16]_0 [6]),
        .I3(cnt_r2__30_carry_n_4),
        .I4(cnt_r2__0_carry__0_n_5),
        .O(cnt_r2__60_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    cnt_r2__60_carry__0_i_9
       (.I0(\axi_rdata_reg[16]_0 [7]),
        .I1(\axi_rdata_reg[16] [2]),
        .I2(cnt_r2__30_carry__0_n_5),
        .I3(cnt_r2__0_carry__1_n_6),
        .O(cnt_r2__60_carry__0_i_9_n_0));
  CARRY4 cnt_r2__60_carry__1
       (.CI(cnt_r2__60_carry__0_n_0),
        .CO({cnt_r2__60_carry__1_n_0,cnt_r2__60_carry__1_n_1,cnt_r2__60_carry__1_n_2,cnt_r2__60_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({cnt_r2__60_carry__1_i_1_n_0,cnt_r2__60_carry__1_i_2_n_0,cnt_r2__60_carry__1_i_3_n_0,cnt_r2__60_carry__1_i_4_n_0}),
        .O(cnt_r2[14:11]),
        .S({cnt_r2__60_carry__1_i_5_n_0,cnt_r2__60_carry__1_i_6_n_0,cnt_r2__60_carry__1_i_7_n_0,cnt_r2__60_carry__1_i_8_n_0}));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    cnt_r2__60_carry__1_i_1
       (.I0(cnt_r2__60_carry__1_i_9_n_0),
        .I1(cnt_r2__30_carry__1_n_1),
        .I2(\axi_rdata_reg[16] [6]),
        .I3(\axi_rdata_reg[16]_0 [7]),
        .I4(cnt_r2__30_carry__1_n_6),
        .I5(\axi_rdata_reg[16] [5]),
        .O(cnt_r2__60_carry__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__60_carry__1_i_10
       (.I0(\axi_rdata_reg[16] [6]),
        .I1(\axi_rdata_reg[16]_0 [6]),
        .O(cnt_r2__60_carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    cnt_r2__60_carry__1_i_11
       (.I0(cnt_r2__30_carry__0_n_4),
        .I1(cnt_r2__0_carry__1_n_1),
        .I2(\axi_rdata_reg[16]_0 [7]),
        .I3(\axi_rdata_reg[16] [3]),
        .O(cnt_r2__60_carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    cnt_r2__60_carry__1_i_12
       (.I0(\axi_rdata_reg[16]_0 [7]),
        .I1(\axi_rdata_reg[16] [5]),
        .I2(cnt_r2__30_carry__1_n_6),
        .O(cnt_r2__60_carry__1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h87)) 
    cnt_r2__60_carry__1_i_13
       (.I0(\axi_rdata_reg[16]_0 [7]),
        .I1(\axi_rdata_reg[16] [6]),
        .I2(cnt_r2__30_carry__1_n_1),
        .O(cnt_r2__60_carry__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__60_carry__1_i_14
       (.I0(\axi_rdata_reg[16] [5]),
        .I1(\axi_rdata_reg[16]_0 [6]),
        .O(cnt_r2__60_carry__1_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6A959595)) 
    cnt_r2__60_carry__1_i_15
       (.I0(cnt_r2__30_carry__1_n_6),
        .I1(\axi_rdata_reg[16] [5]),
        .I2(\axi_rdata_reg[16]_0 [7]),
        .I3(\axi_rdata_reg[16]_0 [6]),
        .I4(\axi_rdata_reg[16] [6]),
        .O(cnt_r2__60_carry__1_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h87)) 
    cnt_r2__60_carry__1_i_16
       (.I0(\axi_rdata_reg[16]_0 [7]),
        .I1(\axi_rdata_reg[16] [4]),
        .I2(cnt_r2__30_carry__1_n_7),
        .O(cnt_r2__60_carry__1_i_16_n_0));
  LUT6 #(
    .INIT(64'h7D44144414441444)) 
    cnt_r2__60_carry__1_i_2
       (.I0(cnt_r2__60_carry__1_i_10_n_0),
        .I1(cnt_r2__30_carry__1_n_6),
        .I2(\axi_rdata_reg[16] [5]),
        .I3(\axi_rdata_reg[16]_0 [7]),
        .I4(cnt_r2__30_carry__1_n_7),
        .I5(\axi_rdata_reg[16] [4]),
        .O(cnt_r2__60_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h8FF8F8F808808080)) 
    cnt_r2__60_carry__1_i_3
       (.I0(\axi_rdata_reg[16]_0 [6]),
        .I1(\axi_rdata_reg[16] [5]),
        .I2(cnt_r2__30_carry__1_n_7),
        .I3(\axi_rdata_reg[16] [4]),
        .I4(\axi_rdata_reg[16]_0 [7]),
        .I5(cnt_r2__60_carry__1_i_11_n_0),
        .O(cnt_r2__60_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h8F08)) 
    cnt_r2__60_carry__1_i_4
       (.I0(\axi_rdata_reg[16]_0 [6]),
        .I1(\axi_rdata_reg[16] [4]),
        .I2(cnt_r2__60_carry__0_i_13_n_0),
        .I3(cnt_r2__60_carry__0_i_15_n_0),
        .O(cnt_r2__60_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h4FD525D52540B040)) 
    cnt_r2__60_carry__1_i_5
       (.I0(cnt_r2__60_carry__1_i_12_n_0),
        .I1(\axi_rdata_reg[16]_0 [6]),
        .I2(\axi_rdata_reg[16] [7]),
        .I3(\axi_rdata_reg[16]_0 [7]),
        .I4(\axi_rdata_reg[16] [6]),
        .I5(cnt_r2__30_carry__1_n_1),
        .O(cnt_r2__60_carry__1_i_5_n_0));
  LUT5 #(
    .INIT(32'h69999666)) 
    cnt_r2__60_carry__1_i_6
       (.I0(cnt_r2__60_carry__1_i_2_n_0),
        .I1(cnt_r2__60_carry__1_i_13_n_0),
        .I2(\axi_rdata_reg[16]_0 [6]),
        .I3(\axi_rdata_reg[16] [7]),
        .I4(cnt_r2__60_carry__1_i_12_n_0),
        .O(cnt_r2__60_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hD2B4B4B4B42D2D2D)) 
    cnt_r2__60_carry__1_i_7
       (.I0(cnt_r2__60_carry__1_i_11_n_0),
        .I1(cnt_r2__60_carry__1_i_14_n_0),
        .I2(cnt_r2__60_carry__1_i_15_n_0),
        .I3(\axi_rdata_reg[16]_0 [7]),
        .I4(\axi_rdata_reg[16] [4]),
        .I5(cnt_r2__30_carry__1_n_7),
        .O(cnt_r2__60_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    cnt_r2__60_carry__1_i_8
       (.I0(cnt_r2__60_carry__0_i_15_n_0),
        .I1(cnt_r2__60_carry__0_i_13_n_0),
        .I2(cnt_r2__60_carry__0_i_14_n_0),
        .I3(cnt_r2__60_carry__1_i_16_n_0),
        .I4(cnt_r2__60_carry__1_i_14_n_0),
        .I5(cnt_r2__60_carry__1_i_11_n_0),
        .O(cnt_r2__60_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    cnt_r2__60_carry__1_i_9
       (.I0(\axi_rdata_reg[16] [7]),
        .I1(\axi_rdata_reg[16]_0 [6]),
        .O(cnt_r2__60_carry__1_i_9_n_0));
  CARRY4 cnt_r2__60_carry__2
       (.CI(cnt_r2__60_carry__1_n_0),
        .CO(NLW_cnt_r2__60_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt_r2__60_carry__2_O_UNCONNECTED[3:1],cnt_r2[15]}),
        .S({1'b0,1'b0,1'b0,cnt_r2__60_carry__2_i_1_n_0}));
  LUT4 #(
    .INIT(16'h8000)) 
    cnt_r2__60_carry__2_i_1
       (.I0(\axi_rdata_reg[16] [7]),
        .I1(cnt_r2__30_carry__1_n_1),
        .I2(\axi_rdata_reg[16] [6]),
        .I3(\axi_rdata_reg[16]_0 [7]),
        .O(cnt_r2__60_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt_r2__60_carry_i_1
       (.I0(cnt_r2__0_carry__0_n_5),
        .I1(cnt_r2__30_carry_n_4),
        .O(cnt_r2__60_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9666)) 
    cnt_r2__60_carry_i_2
       (.I0(cnt_r2__30_carry_n_4),
        .I1(cnt_r2__0_carry__0_n_5),
        .I2(\axi_rdata_reg[16]_0 [6]),
        .I3(\axi_rdata_reg[16] [0]),
        .O(cnt_r2__60_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt_r2__60_carry_i_3
       (.I0(cnt_r2__0_carry__0_n_6),
        .I1(cnt_r2__30_carry_n_5),
        .O(cnt_r2__60_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt_r2__60_carry_i_4
       (.I0(cnt_r2__0_carry__0_n_7),
        .I1(cnt_r2__30_carry_n_6),
        .O(cnt_r2__60_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnt_r2__60_carry_i_5
       (.I0(cnt_r2__0_carry_n_4),
        .I1(cnt_r2__30_carry_n_7),
        .O(cnt_r2[3]));
  FDCE \cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[0]_i_2_n_7 ),
        .Q(cnt_reg[0]));
  CARRY4 \cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_2_n_0 ,\cnt_reg[0]_i_2_n_1 ,\cnt_reg[0]_i_2_n_2 ,\cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,cnt1_carry__1_n_1}),
        .O({\cnt_reg[0]_i_2_n_4 ,\cnt_reg[0]_i_2_n_5 ,\cnt_reg[0]_i_2_n_6 ,\cnt_reg[0]_i_2_n_7 }),
        .S({\cnt[0]_i_3_n_0 ,\cnt[0]_i_4_n_0 ,\cnt[0]_i_5_n_0 ,\cnt[0]_i_6_n_0 }));
  FDCE \cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]));
  FDCE \cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]));
  FDCE \cnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(cnt_reg[12]));
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S({\cnt[12]_i_2_n_0 ,\cnt[12]_i_3_n_0 ,\cnt[12]_i_4_n_0 ,\cnt[12]_i_5_n_0 }));
  FDCE \cnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(cnt_reg[13]));
  FDCE \cnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(cnt_reg[14]));
  FDCE \cnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(cnt_reg[15]));
  FDCE \cnt_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(cnt_reg[16]));
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO(\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[16]_i_1_O_UNCONNECTED [3:1],\cnt_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\cnt[16]_i_2_n_0 }));
  FDCE \cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[0]_i_2_n_6 ),
        .Q(cnt_reg[1]));
  FDCE \cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[0]_i_2_n_5 ),
        .Q(cnt_reg[2]));
  FDCE \cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[0]_i_2_n_4 ),
        .Q(cnt_reg[3]));
  FDCE \cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]));
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_2_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S({\cnt[4]_i_2_n_0 ,\cnt[4]_i_3_n_0 ,\cnt[4]_i_4_n_0 ,\cnt[4]_i_5_n_0 }));
  FDCE \cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]));
  FDCE \cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]));
  FDCE \cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]));
  FDCE \cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]));
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S({\cnt[8]_i_2_n_0 ,\cnt[8]_i_3_n_0 ,\cnt[8]_i_4_n_0 ,\cnt[8]_i_5_n_0 }));
  FDCE \cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\cnt[0]_i_1_n_0 ),
        .CLR(SR),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(cntReg[8]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1__0
       (.I0(cnt_reg[14]),
        .I1(cnt2_carry__2_n_6),
        .I2(cnt2_carry__2_n_5),
        .I3(cnt_reg[15]),
        .O(i__carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(cntReg[7]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2__0
       (.I0(cnt_reg[12]),
        .I1(cnt2_carry__1_n_4),
        .I2(cnt2_carry__2_n_7),
        .I3(cnt_reg[13]),
        .O(i__carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(cntReg[6]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3__0
       (.I0(cnt_reg[10]),
        .I1(cnt2_carry__1_n_6),
        .I2(cnt2_carry__1_n_5),
        .I3(cnt_reg[11]),
        .O(i__carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(cntReg[5]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4__0
       (.I0(cnt_reg[8]),
        .I1(cnt2_carry__0_n_4),
        .I2(cnt2_carry__1_n_7),
        .I3(cnt_reg[9]),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(cnt_reg[14]),
        .I1(cnt2_carry__2_n_6),
        .I2(cnt_reg[15]),
        .I3(cnt2_carry__2_n_5),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(cnt_reg[12]),
        .I1(cnt2_carry__1_n_4),
        .I2(cnt_reg[13]),
        .I3(cnt2_carry__2_n_7),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(cnt_reg[10]),
        .I1(cnt2_carry__1_n_6),
        .I2(cnt_reg[11]),
        .I3(cnt2_carry__1_n_5),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(cnt_reg[8]),
        .I1(cnt2_carry__0_n_4),
        .I2(cnt_reg[9]),
        .I3(cnt2_carry__1_n_7),
        .O(i__carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(cntReg[12]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__1_i_1__0
       (.I0(cnt_reg[16]),
        .I1(cnt2_carry__2_n_0),
        .O(i__carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(cntReg[11]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h4)) 
    i__carry__1_i_2__0
       (.I0(cnt_reg[16]),
        .I1(cnt2_carry__2_n_0),
        .O(i__carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(cntReg[10]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(cntReg[9]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(cntReg[16]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(cntReg[15]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(cntReg[14]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(cntReg[13]),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(cntReg[4]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__0
       (.I0(cnt_reg[6]),
        .I1(cnt2_carry__0_n_6),
        .I2(cnt2_carry__0_n_5),
        .I3(cnt_reg[7]),
        .O(i__carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(cntReg[3]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__0
       (.I0(cnt_reg[4]),
        .I1(cnt2_carry_n_4),
        .I2(cnt2_carry__0_n_7),
        .I3(cnt_reg[5]),
        .O(i__carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(cntReg[2]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__0
       (.I0(cnt_reg[2]),
        .I1(cnt2_carry_n_6),
        .I2(cnt2_carry_n_5),
        .I3(cnt_reg[3]),
        .O(i__carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(cntReg[1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h8F08)) 
    i__carry_i_4__0
       (.I0(Q[16]),
        .I1(cnt_reg[0]),
        .I2(cnt2_carry_n_7),
        .I3(cnt_reg[1]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(cnt_reg[6]),
        .I1(cnt2_carry__0_n_6),
        .I2(cnt_reg[7]),
        .I3(cnt2_carry__0_n_5),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(cnt_reg[4]),
        .I1(cnt2_carry_n_4),
        .I2(cnt_reg[5]),
        .I3(cnt2_carry__0_n_7),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(cnt_reg[2]),
        .I1(cnt2_carry_n_6),
        .I2(cnt_reg[3]),
        .I3(cnt2_carry_n_5),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    i__carry_i_8
       (.I0(cnt_reg[0]),
        .I1(Q[16]),
        .I2(cnt_reg[1]),
        .I3(cnt2_carry_n_7),
        .O(i__carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    \ma_r[0]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(pulse_out),
        .O(\ma_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ma_r[1]_i_1 
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(pulse_out),
        .O(\ma_r[1]_i_1_n_0 ));
  FDCE \ma_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\ma_r[0]_i_1_n_0 ),
        .Q(\ma_r_reg_n_0_[0] ));
  FDCE \ma_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\ma_r[1]_i_1_n_0 ),
        .Q(\ma_r_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h44044400)) 
    pulse_out_i_1
       (.I0(pwm_en__6),
        .I1(\axi_rdata_reg[16]_0 [9]),
        .I2(\cnt1_inferred__0/i__carry__2_n_0 ),
        .I3(cnt1_carry__1_n_1),
        .I4(pulse_out),
        .O(pulse_out_i_1_n_0));
  FDCE pulse_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(pulse_out_i_1_n_0),
        .Q(pulse_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \pwm_reg[0]_i_1 
       (.I0(\ma_r_reg_n_0_[1] ),
        .I1(\axi_rdata_reg[16]_0 [8]),
        .I2(slv_reg3),
        .I3(\axi_rdata_reg[16]_0 [9]),
        .I4(\ma_r_reg_n_0_[0] ),
        .O(\ma_r_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \pwm_reg[1]_i_1 
       (.I0(\ma_r_reg_n_0_[0] ),
        .I1(\axi_rdata_reg[16]_0 [8]),
        .I2(slv_reg3),
        .I3(\axi_rdata_reg[16]_0 [9]),
        .I4(\ma_r_reg_n_0_[1] ),
        .O(\ma_r_reg[0]_0 [1]));
endmodule

(* CHECK_LICENSE_TYPE = "ugv_motorPWM_0_1,motorPWM_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "motorPWM_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (right_motor_en,
    left_motor_en,
    pwm,
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
  output right_motor_en;
  output left_motor_en;
  output [1:0]pwm;
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
  wire left_motor_en;
  wire [1:0]pwm;
  wire right_motor_en;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorPWM_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .left_motor_en(left_motor_en),
        .pwm(pwm),
        .right_motor_en(right_motor_en),
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
