// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Apr 16 20:38:57 2022
// Host        : LAPTOP-6D15CRP5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ugv_PmodGPS_0_0_sim_netlist.v
// Design      : ugv_PmodGPS_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_Core
   (reg1,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    reg2,
    gpio_io_o,
    \Not_Dual.gpio_OE_reg[1]_0 ,
    \Not_Dual.gpio_OE_reg[0]_0 ,
    ip2bus_wrack_i,
    ip2bus_rdack_i,
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30]_0 ,
    s_axi_aclk,
    bus2ip_reset,
    Q,
    gpio_reg_en,
    bus2ip_rnw,
    bus2ip_cs,
    gpio_io_i,
    s_axi_wdata,
    \Not_Dual.gpio_Data_Out_reg[0]_0 ,
    \Not_Dual.gpio_OE_reg[0]_1 );
  output [1:0]reg1;
  output GPIO_xferAck_i;
  output gpio_xferAck_Reg;
  output [1:0]reg2;
  output [1:0]gpio_io_o;
  output \Not_Dual.gpio_OE_reg[1]_0 ;
  output \Not_Dual.gpio_OE_reg[0]_0 ;
  output ip2bus_wrack_i;
  output ip2bus_rdack_i;
  input \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30]_0 ;
  input s_axi_aclk;
  input bus2ip_reset;
  input [1:0]Q;
  input gpio_reg_en;
  input bus2ip_rnw;
  input bus2ip_cs;
  input [1:0]gpio_io_i;
  input [3:0]s_axi_wdata;
  input \Not_Dual.gpio_Data_Out_reg[0]_0 ;
  input \Not_Dual.gpio_OE_reg[0]_1 ;

  wire GPIO_xferAck_i;
  wire \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1[30]_i_1_n_0 ;
  wire \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30]_0 ;
  wire \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg2[30]_i_1_n_0 ;
  wire \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1[31]_i_2_n_0 ;
  wire \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg2[31]_i_1_n_0 ;
  wire \Not_Dual.gpio_Data_Out[0]_i_1_n_0 ;
  wire \Not_Dual.gpio_Data_Out[1]_i_1_n_0 ;
  wire \Not_Dual.gpio_Data_Out_reg[0]_0 ;
  wire \Not_Dual.gpio_OE[0]_i_1_n_0 ;
  wire \Not_Dual.gpio_OE[1]_i_1_n_0 ;
  wire \Not_Dual.gpio_OE_reg[0]_0 ;
  wire \Not_Dual.gpio_OE_reg[0]_1 ;
  wire \Not_Dual.gpio_OE_reg[1]_0 ;
  wire [1:0]Q;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [0:1]gpio_Data_In;
  wire [1:0]gpio_io_i;
  wire [0:1]gpio_io_i_d2;
  wire [1:0]gpio_io_o;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire iGPIO_xferAck;
  wire ip2bus_rdack_i;
  wire ip2bus_wrack_i;
  wire [1:0]reg1;
  wire [1:0]reg2;
  wire s_axi_aclk;
  wire [3:0]s_axi_wdata;

  LUT6 #(
    .INIT(64'h22CE222222C22222)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1[30]_i_1 
       (.I0(gpio_io_o[1]),
        .I1(\Not_Dual.gpio_OE_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio_Data_In[0]),
        .O(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1[30]_i_1_n_0 ));
  FDRE \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1[30]_i_1_n_0 ),
        .Q(reg1[1]),
        .R(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30]_0 ));
  LUT6 #(
    .INIT(64'h22CE222222C22222)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg2[30]_i_1 
       (.I0(reg2[1]),
        .I1(\Not_Dual.gpio_OE_reg[0]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio_Data_In[0]),
        .O(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg2[30]_i_1_n_0 ));
  FDRE \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg2_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg2[30]_i_1_n_0 ),
        .Q(reg2[1]),
        .R(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30]_0 ));
  LUT6 #(
    .INIT(64'h22CE222222C22222)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1[31]_i_2 
       (.I0(gpio_io_o[0]),
        .I1(\Not_Dual.gpio_OE_reg[1]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio_Data_In[1]),
        .O(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1[31]_i_2_n_0 ));
  FDRE \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1[31]_i_2_n_0 ),
        .Q(reg1[0]),
        .R(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30]_0 ));
  LUT6 #(
    .INIT(64'h22CE222222C22222)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg2[31]_i_1 
       (.I0(reg2[0]),
        .I1(\Not_Dual.gpio_OE_reg[1]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(gpio_reg_en),
        .I5(gpio_Data_In[1]),
        .O(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg2[31]_i_1_n_0 ));
  FDRE \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg2_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg2[31]_i_1_n_0 ),
        .Q(reg2[0]),
        .R(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30]_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync \Not_Dual.INPUT_DOUBLE_REGS3 
       (.gpio_io_i(gpio_io_i),
        .s_axi_aclk(s_axi_aclk),
        .scndry_vect_out({gpio_io_i_d2[0],gpio_io_i_d2[1]}));
  FDRE \Not_Dual.gpio_Data_In_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[0]),
        .Q(gpio_Data_In[0]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[1]),
        .Q(gpio_Data_In[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \Not_Dual.gpio_Data_Out[0]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(bus2ip_cs),
        .I2(Q[1]),
        .I3(s_axi_wdata[3]),
        .I4(\Not_Dual.gpio_Data_Out_reg[0]_0 ),
        .I5(gpio_io_o[1]),
        .O(\Not_Dual.gpio_Data_Out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \Not_Dual.gpio_Data_Out[1]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(bus2ip_cs),
        .I2(Q[1]),
        .I3(s_axi_wdata[2]),
        .I4(\Not_Dual.gpio_Data_Out_reg[0]_0 ),
        .I5(gpio_io_o[0]),
        .O(\Not_Dual.gpio_Data_Out[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.gpio_Data_Out[0]_i_1_n_0 ),
        .Q(gpio_io_o[1]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.gpio_Data_Out[1]_i_1_n_0 ),
        .Q(gpio_io_o[0]),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \Not_Dual.gpio_OE[0]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(bus2ip_cs),
        .I2(Q[1]),
        .I3(s_axi_wdata[3]),
        .I4(\Not_Dual.gpio_OE_reg[0]_1 ),
        .I5(\Not_Dual.gpio_OE_reg[0]_0 ),
        .O(\Not_Dual.gpio_OE[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \Not_Dual.gpio_OE[1]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(bus2ip_cs),
        .I2(Q[1]),
        .I3(s_axi_wdata[2]),
        .I4(\Not_Dual.gpio_OE_reg[0]_1 ),
        .I5(\Not_Dual.gpio_OE_reg[1]_0 ),
        .O(\Not_Dual.gpio_OE[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.gpio_OE[0]_i_1_n_0 ),
        .Q(\Not_Dual.gpio_OE_reg[0]_0 ),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Not_Dual.gpio_OE_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Not_Dual.gpio_OE[1]_i_1_n_0 ),
        .Q(\Not_Dual.gpio_OE_reg[1]_0 ),
        .S(bus2ip_reset));
  FDRE gpio_xferAck_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_xferAck_i),
        .Q(gpio_xferAck_Reg),
        .R(bus2ip_reset));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    iGPIO_xferAck_i_1
       (.I0(gpio_xferAck_Reg),
        .I1(bus2ip_cs),
        .I2(GPIO_xferAck_i),
        .O(iGPIO_xferAck));
  FDRE iGPIO_xferAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iGPIO_xferAck),
        .Q(GPIO_xferAck_i),
        .R(bus2ip_reset));
  LUT2 #(
    .INIT(4'h8)) 
    ip2bus_rdack_i_D1_i_1
       (.I0(GPIO_xferAck_i),
        .I1(bus2ip_rnw),
        .O(ip2bus_rdack_i));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ip2bus_wrack_i_D1_i_1
       (.I0(GPIO_xferAck_i),
        .I1(bus2ip_rnw),
        .O(ip2bus_wrack_i));
endmodule

(* HW_HANDOFF = "PmodGPS.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodGPS
   (AXI_LITE_GPIO_araddr,
    AXI_LITE_GPIO_arready,
    AXI_LITE_GPIO_arvalid,
    AXI_LITE_GPIO_awaddr,
    AXI_LITE_GPIO_awready,
    AXI_LITE_GPIO_awvalid,
    AXI_LITE_GPIO_bready,
    AXI_LITE_GPIO_bresp,
    AXI_LITE_GPIO_bvalid,
    AXI_LITE_GPIO_rdata,
    AXI_LITE_GPIO_rready,
    AXI_LITE_GPIO_rresp,
    AXI_LITE_GPIO_rvalid,
    AXI_LITE_GPIO_wdata,
    AXI_LITE_GPIO_wready,
    AXI_LITE_GPIO_wstrb,
    AXI_LITE_GPIO_wvalid,
    AXI_LITE_UART_araddr,
    AXI_LITE_UART_arready,
    AXI_LITE_UART_arvalid,
    AXI_LITE_UART_awaddr,
    AXI_LITE_UART_awready,
    AXI_LITE_UART_awvalid,
    AXI_LITE_UART_bready,
    AXI_LITE_UART_bresp,
    AXI_LITE_UART_bvalid,
    AXI_LITE_UART_rdata,
    AXI_LITE_UART_rready,
    AXI_LITE_UART_rresp,
    AXI_LITE_UART_rvalid,
    AXI_LITE_UART_wdata,
    AXI_LITE_UART_wready,
    AXI_LITE_UART_wstrb,
    AXI_LITE_UART_wvalid,
    Pmod_out_pin10_i,
    Pmod_out_pin10_o,
    Pmod_out_pin10_t,
    Pmod_out_pin1_i,
    Pmod_out_pin1_o,
    Pmod_out_pin1_t,
    Pmod_out_pin2_i,
    Pmod_out_pin2_o,
    Pmod_out_pin2_t,
    Pmod_out_pin3_i,
    Pmod_out_pin3_o,
    Pmod_out_pin3_t,
    Pmod_out_pin4_i,
    Pmod_out_pin4_o,
    Pmod_out_pin4_t,
    Pmod_out_pin7_i,
    Pmod_out_pin7_o,
    Pmod_out_pin7_t,
    Pmod_out_pin8_i,
    Pmod_out_pin8_o,
    Pmod_out_pin8_t,
    Pmod_out_pin9_i,
    Pmod_out_pin9_o,
    Pmod_out_pin9_t,
    gps_uart_interrupt,
    s_axi_aclk,
    s_axi_aresetn);
  input [8:0]AXI_LITE_GPIO_araddr;
  output AXI_LITE_GPIO_arready;
  input AXI_LITE_GPIO_arvalid;
  input [8:0]AXI_LITE_GPIO_awaddr;
  output AXI_LITE_GPIO_awready;
  input AXI_LITE_GPIO_awvalid;
  input AXI_LITE_GPIO_bready;
  output [1:0]AXI_LITE_GPIO_bresp;
  output AXI_LITE_GPIO_bvalid;
  output [31:0]AXI_LITE_GPIO_rdata;
  input AXI_LITE_GPIO_rready;
  output [1:0]AXI_LITE_GPIO_rresp;
  output AXI_LITE_GPIO_rvalid;
  input [31:0]AXI_LITE_GPIO_wdata;
  output AXI_LITE_GPIO_wready;
  input [3:0]AXI_LITE_GPIO_wstrb;
  input AXI_LITE_GPIO_wvalid;
  input [12:0]AXI_LITE_UART_araddr;
  output AXI_LITE_UART_arready;
  input AXI_LITE_UART_arvalid;
  input [12:0]AXI_LITE_UART_awaddr;
  output AXI_LITE_UART_awready;
  input AXI_LITE_UART_awvalid;
  input AXI_LITE_UART_bready;
  output [1:0]AXI_LITE_UART_bresp;
  output AXI_LITE_UART_bvalid;
  output [31:0]AXI_LITE_UART_rdata;
  input AXI_LITE_UART_rready;
  output [1:0]AXI_LITE_UART_rresp;
  output AXI_LITE_UART_rvalid;
  input [31:0]AXI_LITE_UART_wdata;
  output AXI_LITE_UART_wready;
  input [3:0]AXI_LITE_UART_wstrb;
  input AXI_LITE_UART_wvalid;
  input Pmod_out_pin10_i;
  output Pmod_out_pin10_o;
  output Pmod_out_pin10_t;
  input Pmod_out_pin1_i;
  output Pmod_out_pin1_o;
  output Pmod_out_pin1_t;
  input Pmod_out_pin2_i;
  output Pmod_out_pin2_o;
  output Pmod_out_pin2_t;
  input Pmod_out_pin3_i;
  output Pmod_out_pin3_o;
  output Pmod_out_pin3_t;
  input Pmod_out_pin4_i;
  output Pmod_out_pin4_o;
  output Pmod_out_pin4_t;
  input Pmod_out_pin7_i;
  output Pmod_out_pin7_o;
  output Pmod_out_pin7_t;
  input Pmod_out_pin8_i;
  output Pmod_out_pin8_o;
  output Pmod_out_pin8_t;
  input Pmod_out_pin9_i;
  output Pmod_out_pin9_o;
  output Pmod_out_pin9_t;
  output gps_uart_interrupt;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire [8:0]AXI_LITE_GPIO_araddr;
  wire AXI_LITE_GPIO_arready;
  wire AXI_LITE_GPIO_arvalid;
  wire [8:0]AXI_LITE_GPIO_awaddr;
  wire AXI_LITE_GPIO_awready;
  wire AXI_LITE_GPIO_awvalid;
  wire AXI_LITE_GPIO_bready;
  wire [1:0]AXI_LITE_GPIO_bresp;
  wire AXI_LITE_GPIO_bvalid;
  wire [31:0]AXI_LITE_GPIO_rdata;
  wire AXI_LITE_GPIO_rready;
  wire [1:0]AXI_LITE_GPIO_rresp;
  wire AXI_LITE_GPIO_rvalid;
  wire [31:0]AXI_LITE_GPIO_wdata;
  wire AXI_LITE_GPIO_wready;
  wire [3:0]AXI_LITE_GPIO_wstrb;
  wire AXI_LITE_GPIO_wvalid;
  wire [12:0]AXI_LITE_UART_araddr;
  wire AXI_LITE_UART_arready;
  wire AXI_LITE_UART_arvalid;
  wire [12:0]AXI_LITE_UART_awaddr;
  wire AXI_LITE_UART_awready;
  wire AXI_LITE_UART_awvalid;
  wire AXI_LITE_UART_bready;
  wire [1:0]AXI_LITE_UART_bresp;
  wire AXI_LITE_UART_bvalid;
  wire [31:0]AXI_LITE_UART_rdata;
  wire AXI_LITE_UART_rready;
  wire [1:0]AXI_LITE_UART_rresp;
  wire AXI_LITE_UART_rvalid;
  wire [31:0]AXI_LITE_UART_wdata;
  wire AXI_LITE_UART_wready;
  wire [3:0]AXI_LITE_UART_wstrb;
  wire AXI_LITE_UART_wvalid;
  wire Pmod_out_pin10_i;
  wire Pmod_out_pin10_o;
  wire Pmod_out_pin10_t;
  wire Pmod_out_pin1_i;
  wire Pmod_out_pin1_o;
  wire Pmod_out_pin1_t;
  wire Pmod_out_pin2_i;
  wire Pmod_out_pin2_o;
  wire Pmod_out_pin2_t;
  wire Pmod_out_pin3_i;
  wire Pmod_out_pin3_o;
  wire Pmod_out_pin3_t;
  wire Pmod_out_pin4_i;
  wire Pmod_out_pin4_o;
  wire Pmod_out_pin4_t;
  wire Pmod_out_pin7_i;
  wire Pmod_out_pin7_o;
  wire Pmod_out_pin7_t;
  wire Pmod_out_pin8_i;
  wire Pmod_out_pin8_o;
  wire Pmod_out_pin8_t;
  wire Pmod_out_pin9_i;
  wire Pmod_out_pin9_o;
  wire Pmod_out_pin9_t;
  wire [1:0]axi_gpio_0_GPIO_TRI_I;
  wire [1:0]axi_gpio_0_GPIO_TRI_O;
  wire [1:0]axi_gpio_0_GPIO_TRI_T;
  wire axi_uart16550_0_UART_RxD;
  wire axi_uart16550_0_UART_TxD;
  wire gps_uart_interrupt;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire NLW_axi_uart16550_0_baudoutn_UNCONNECTED;
  wire NLW_axi_uart16550_0_ddis_UNCONNECTED;
  wire NLW_axi_uart16550_0_dtrn_UNCONNECTED;
  wire NLW_axi_uart16550_0_out1n_UNCONNECTED;
  wire NLW_axi_uart16550_0_out2n_UNCONNECTED;
  wire NLW_axi_uart16550_0_rtsn_UNCONNECTED;
  wire NLW_axi_uart16550_0_rxrdyn_UNCONNECTED;
  wire NLW_axi_uart16550_0_txrdyn_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "PmodGPS_axi_gpio_0_0,axi_gpio,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "axi_gpio,Vivado 2019.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodGPS_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_i(axi_gpio_0_GPIO_TRI_I),
        .gpio_io_o(axi_gpio_0_GPIO_TRI_O),
        .gpio_io_t(axi_gpio_0_GPIO_TRI_T),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(AXI_LITE_GPIO_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(AXI_LITE_GPIO_arready),
        .s_axi_arvalid(AXI_LITE_GPIO_arvalid),
        .s_axi_awaddr(AXI_LITE_GPIO_awaddr),
        .s_axi_awready(AXI_LITE_GPIO_awready),
        .s_axi_awvalid(AXI_LITE_GPIO_awvalid),
        .s_axi_bready(AXI_LITE_GPIO_bready),
        .s_axi_bresp(AXI_LITE_GPIO_bresp),
        .s_axi_bvalid(AXI_LITE_GPIO_bvalid),
        .s_axi_rdata(AXI_LITE_GPIO_rdata),
        .s_axi_rready(AXI_LITE_GPIO_rready),
        .s_axi_rresp(AXI_LITE_GPIO_rresp),
        .s_axi_rvalid(AXI_LITE_GPIO_rvalid),
        .s_axi_wdata(AXI_LITE_GPIO_wdata),
        .s_axi_wready(AXI_LITE_GPIO_wready),
        .s_axi_wstrb(AXI_LITE_GPIO_wstrb),
        .s_axi_wvalid(AXI_LITE_GPIO_wvalid));
  (* CHECK_LICENSE_TYPE = "PmodGPS_axi_uart16550_0_0,axi_uart16550,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "axi_uart16550,Vivado 2019.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodGPS_axi_uart16550_0_0 axi_uart16550_0
       (.baudoutn(NLW_axi_uart16550_0_baudoutn_UNCONNECTED),
        .ctsn(1'b1),
        .dcdn(1'b1),
        .ddis(NLW_axi_uart16550_0_ddis_UNCONNECTED),
        .dsrn(1'b1),
        .dtrn(NLW_axi_uart16550_0_dtrn_UNCONNECTED),
        .freeze(1'b0),
        .ip2intc_irpt(gps_uart_interrupt),
        .out1n(NLW_axi_uart16550_0_out1n_UNCONNECTED),
        .out2n(NLW_axi_uart16550_0_out2n_UNCONNECTED),
        .rin(1'b1),
        .rtsn(NLW_axi_uart16550_0_rtsn_UNCONNECTED),
        .rxrdyn(NLW_axi_uart16550_0_rxrdyn_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(AXI_LITE_UART_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(AXI_LITE_UART_arready),
        .s_axi_arvalid(AXI_LITE_UART_arvalid),
        .s_axi_awaddr(AXI_LITE_UART_awaddr),
        .s_axi_awready(AXI_LITE_UART_awready),
        .s_axi_awvalid(AXI_LITE_UART_awvalid),
        .s_axi_bready(AXI_LITE_UART_bready),
        .s_axi_bresp(AXI_LITE_UART_bresp),
        .s_axi_bvalid(AXI_LITE_UART_bvalid),
        .s_axi_rdata(AXI_LITE_UART_rdata),
        .s_axi_rready(AXI_LITE_UART_rready),
        .s_axi_rresp(AXI_LITE_UART_rresp),
        .s_axi_rvalid(AXI_LITE_UART_rvalid),
        .s_axi_wdata(AXI_LITE_UART_wdata),
        .s_axi_wready(AXI_LITE_UART_wready),
        .s_axi_wstrb(AXI_LITE_UART_wstrb),
        .s_axi_wvalid(AXI_LITE_UART_wvalid),
        .sin(axi_uart16550_0_UART_RxD),
        .sout(axi_uart16550_0_UART_TxD),
        .txrdyn(NLW_axi_uart16550_0_txrdyn_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "PmodGPS_pmod_bridge_0_0,pmod_concat,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "pmod_concat,Vivado 2019.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodGPS_pmod_bridge_0_0 pmod_bridge_0
       (.in1_O(axi_uart16550_0_UART_TxD),
        .in2_I(axi_uart16550_0_UART_RxD),
        .in_top_uart_gpio_bus_I(axi_gpio_0_GPIO_TRI_I),
        .in_top_uart_gpio_bus_O(axi_gpio_0_GPIO_TRI_O),
        .in_top_uart_gpio_bus_T(axi_gpio_0_GPIO_TRI_T),
        .out0_I(Pmod_out_pin1_i),
        .out0_O(Pmod_out_pin1_o),
        .out0_T(Pmod_out_pin1_t),
        .out1_I(Pmod_out_pin2_i),
        .out1_O(Pmod_out_pin2_o),
        .out1_T(Pmod_out_pin2_t),
        .out2_I(Pmod_out_pin3_i),
        .out2_O(Pmod_out_pin3_o),
        .out2_T(Pmod_out_pin3_t),
        .out3_I(Pmod_out_pin4_i),
        .out3_O(Pmod_out_pin4_o),
        .out3_T(Pmod_out_pin4_t),
        .out4_I(Pmod_out_pin7_i),
        .out4_O(Pmod_out_pin7_o),
        .out4_T(Pmod_out_pin7_t),
        .out5_I(Pmod_out_pin8_i),
        .out5_O(Pmod_out_pin8_o),
        .out5_T(Pmod_out_pin8_t),
        .out6_I(Pmod_out_pin9_i),
        .out6_O(Pmod_out_pin9_o),
        .out6_T(Pmod_out_pin9_t),
        .out7_I(Pmod_out_pin10_i),
        .out7_O(Pmod_out_pin10_o),
        .out7_T(Pmod_out_pin10_t));
endmodule

(* CHECK_LICENSE_TYPE = "PmodGPS_axi_gpio_0_0,axi_gpio,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_gpio,Vivado 2019.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodGPS_axi_gpio_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_I" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE" *) input [1:0]gpio_io_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_O" *) output [1:0]gpio_io_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO TRI_T" *) output [1:0]gpio_io_t;

  wire [1:0]gpio_io_i;
  wire [1:0]gpio_io_o;
  wire [1:0]gpio_io_t;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_ip2intc_irpt_UNCONNECTED;
  wire [31:0]NLW_U0_gpio2_io_o_UNCONNECTED;
  wire [31:0]NLW_U0_gpio2_io_t_UNCONNECTED;

  (* C_ALL_INPUTS = "0" *) 
  (* C_ALL_INPUTS_2 = "0" *) 
  (* C_ALL_OUTPUTS = "0" *) 
  (* C_ALL_OUTPUTS_2 = "0" *) 
  (* C_DOUT_DEFAULT = "0" *) 
  (* C_DOUT_DEFAULT_2 = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_GPIO2_WIDTH = "32" *) 
  (* C_GPIO_WIDTH = "2" *) 
  (* C_INTERRUPT_PRESENT = "0" *) 
  (* C_IS_DUAL = "0" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TRI_DEFAULT = "-1" *) 
  (* C_TRI_DEFAULT_2 = "-1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_group = "LOGICORE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio U0
       (.gpio2_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gpio2_io_o(NLW_U0_gpio2_io_o_UNCONNECTED[31:0]),
        .gpio2_io_t(NLW_U0_gpio2_io_t_UNCONNECTED[31:0]),
        .gpio_io_i(gpio_io_i),
        .gpio_io_o(gpio_io_o),
        .gpio_io_t(gpio_io_t),
        .ip2intc_irpt(NLW_U0_ip2intc_irpt_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "PmodGPS_axi_uart16550_0_0,axi_uart16550,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_uart16550,Vivado 2019.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodGPS_axi_uart16550_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    ip2intc_irpt,
    freeze,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    baudoutn,
    ctsn,
    dcdn,
    ddis,
    dsrn,
    dtrn,
    out1n,
    out2n,
    rin,
    rtsn,
    rxrdyn,
    sin,
    sout,
    txrdyn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output ip2intc_irpt;
  input freeze;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [12:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [12:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART BAUDOUTn" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UART_BOARD_INTERFACE" *) output baudoutn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART CTSn" *) input ctsn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART DCDn" *) input dcdn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART DDIS" *) output ddis;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART DSRn" *) input dsrn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART DTRn" *) output dtrn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART OUT1n" *) output out1n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART OUT2n" *) output out2n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART RI" *) input rin;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART RTSn" *) output rtsn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART RXRDYn" *) output rxrdyn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART RxD" *) input sin;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART TxD" *) output sout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART TXRDYn" *) output txrdyn;

  wire baudoutn;
  wire ctsn;
  wire dcdn;
  wire ddis;
  wire dsrn;
  wire dtrn;
  wire freeze;
  wire ip2intc_irpt;
  wire out1n;
  wire out2n;
  wire rin;
  wire rtsn;
  wire rxrdyn;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sin;
  wire sout;
  wire txrdyn;
  wire NLW_U0_xout_UNCONNECTED;

  (* C_EXTERNAL_XIN_CLK_HZ = "25000000" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_EXTERNAL_RCLK = "0" *) 
  (* C_HAS_EXTERNAL_XIN = "0" *) 
  (* C_IS_A_16550 = "1" *) 
  (* C_S_AXI_ACLK_FREQ_HZ = "100000000" *) 
  (* C_S_AXI_ADDR_WIDTH = "13" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_uart16550 U0
       (.baudoutn(baudoutn),
        .ctsn(ctsn),
        .dcdn(dcdn),
        .ddis(ddis),
        .dsrn(dsrn),
        .dtrn(dtrn),
        .freeze(freeze),
        .ip2intc_irpt(ip2intc_irpt),
        .out1n(out1n),
        .out2n(out2n),
        .rclk(1'b0),
        .rin(rin),
        .rtsn(rtsn),
        .rxrdyn(rxrdyn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sin(sin),
        .sout(sout),
        .txrdyn(txrdyn),
        .xin(1'b0),
        .xout(NLW_U0_xout_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "PmodGPS_pmod_bridge_0_0,pmod_concat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pmod_concat,Vivado 2019.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodGPS_pmod_bridge_0_0
   (in_top_uart_gpio_bus_I,
    in_top_uart_gpio_bus_O,
    in_top_uart_gpio_bus_T,
    in2_I,
    in1_O,
    out0_I,
    out1_I,
    out2_I,
    out3_I,
    out4_I,
    out5_I,
    out6_I,
    out7_I,
    out0_O,
    out1_O,
    out2_O,
    out3_O,
    out4_O,
    out5_O,
    out6_O,
    out7_O,
    out0_T,
    out1_T,
    out2_T,
    out3_T,
    out4_T,
    out5_T,
    out6_T,
    out7_T);
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 UART_GPIO_Top_Row TRI_I" *) output [1:0]in_top_uart_gpio_bus_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 UART_GPIO_Top_Row TRI_O" *) input [1:0]in_top_uart_gpio_bus_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 UART_GPIO_Top_Row TRI_T" *) input [1:0]in_top_uart_gpio_bus_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_Top_Row RxD" *) output in2_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART_Top_Row TxD" *) input in1_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_I" *) input out0_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_I" *) input out1_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_I" *) input out2_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_I" *) input out3_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_I" *) input out4_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_I" *) input out5_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_I" *) input out6_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_I" *) input out7_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_O" *) output out0_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_O" *) output out1_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_O" *) output out2_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_O" *) output out3_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_O" *) output out4_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_O" *) output out5_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_O" *) output out6_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_O" *) output out7_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_T" *) output out0_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_T" *) output out1_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_T" *) output out2_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_T" *) output out3_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_T" *) output out4_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_T" *) output out5_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_T" *) output out6_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_T" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Pmod_out, BOARD.ASSOCIATED_PARAM PMOD" *) output out7_T;

  wire in1_O;
  wire in2_I;
  wire [1:0]in_top_uart_gpio_bus_I;
  wire [1:0]in_top_uart_gpio_bus_O;
  wire [1:0]in_top_uart_gpio_bus_T;
  wire out0_I;
  wire out0_O;
  wire out0_T;
  wire out1_I;
  wire out1_O;
  wire out1_T;
  wire out2_I;
  wire out2_O;
  wire out2_T;
  wire out3_I;
  wire out3_O;
  wire out3_T;
  wire out4_I;
  wire out4_O;
  wire out4_T;
  wire out5_I;
  wire out5_O;
  wire out5_T;
  wire out6_I;
  wire out6_O;
  wire out6_T;
  wire out7_I;
  wire out7_O;
  wire out7_T;
  wire NLW_inst_in0_I_UNCONNECTED;
  wire NLW_inst_in1_I_UNCONNECTED;
  wire NLW_inst_in3_I_UNCONNECTED;
  wire NLW_inst_in4_I_UNCONNECTED;
  wire NLW_inst_in5_I_UNCONNECTED;
  wire NLW_inst_in6_I_UNCONNECTED;
  wire NLW_inst_in7_I_UNCONNECTED;
  wire [3:0]NLW_inst_in_bottom_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED;
  wire [3:0]NLW_inst_in_top_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_top_i2c_gpio_bus_I_UNCONNECTED;

  (* Bottom_Row_Interface = "Disabled" *) 
  (* Top_Row_Interface = "UART" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_concat inst
       (.in0_I(NLW_inst_in0_I_UNCONNECTED),
        .in0_O(1'b1),
        .in0_T(1'b1),
        .in1_I(NLW_inst_in1_I_UNCONNECTED),
        .in1_O(in1_O),
        .in1_T(1'b1),
        .in2_I(in2_I),
        .in2_O(1'b1),
        .in2_T(1'b1),
        .in3_I(NLW_inst_in3_I_UNCONNECTED),
        .in3_O(1'b1),
        .in3_T(1'b1),
        .in4_I(NLW_inst_in4_I_UNCONNECTED),
        .in4_O(1'b1),
        .in4_T(1'b1),
        .in5_I(NLW_inst_in5_I_UNCONNECTED),
        .in5_O(1'b1),
        .in5_T(1'b1),
        .in6_I(NLW_inst_in6_I_UNCONNECTED),
        .in6_O(1'b1),
        .in6_T(1'b1),
        .in7_I(NLW_inst_in7_I_UNCONNECTED),
        .in7_O(1'b1),
        .in7_T(1'b1),
        .in_bottom_bus_I(NLW_inst_in_bottom_bus_I_UNCONNECTED[3:0]),
        .in_bottom_bus_O({1'b0,1'b0,1'b0,1'b1}),
        .in_bottom_bus_T({1'b0,1'b0,1'b0,1'b1}),
        .in_bottom_i2c_gpio_bus_I(NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED[1:0]),
        .in_bottom_i2c_gpio_bus_O({1'b0,1'b1}),
        .in_bottom_i2c_gpio_bus_T({1'b0,1'b1}),
        .in_bottom_uart_gpio_bus_I(NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED[1:0]),
        .in_bottom_uart_gpio_bus_O({1'b0,1'b1}),
        .in_bottom_uart_gpio_bus_T({1'b0,1'b1}),
        .in_top_bus_I(NLW_inst_in_top_bus_I_UNCONNECTED[3:0]),
        .in_top_bus_O({1'b0,1'b0,1'b0,1'b0}),
        .in_top_bus_T({1'b0,1'b0,1'b0,1'b0}),
        .in_top_i2c_gpio_bus_I(NLW_inst_in_top_i2c_gpio_bus_I_UNCONNECTED[1:0]),
        .in_top_i2c_gpio_bus_O({1'b0,1'b1}),
        .in_top_i2c_gpio_bus_T({1'b0,1'b1}),
        .in_top_uart_gpio_bus_I(in_top_uart_gpio_bus_I),
        .in_top_uart_gpio_bus_O(in_top_uart_gpio_bus_O),
        .in_top_uart_gpio_bus_T(in_top_uart_gpio_bus_T),
        .out0_I(out0_I),
        .out0_O(out0_O),
        .out0_T(out0_T),
        .out1_I(out1_I),
        .out1_O(out1_O),
        .out1_T(out1_T),
        .out2_I(out2_I),
        .out2_O(out2_O),
        .out2_T(out2_T),
        .out3_I(out3_I),
        .out3_O(out3_O),
        .out3_T(out3_T),
        .out4_I(out4_I),
        .out4_O(out4_O),
        .out4_T(out4_T),
        .out5_I(out5_I),
        .out5_O(out5_O),
        .out5_T(out5_T),
        .out6_I(out6_I),
        .out6_O(out6_O),
        .out6_T(out6_T),
        .out7_I(out7_I),
        .out7_O(out7_O),
        .out7_T(out7_T));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
   (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    rst_reg,
    rst_reg_0,
    gpio_reg_en,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    bus2ip_rnw_i_reg,
    D,
    Q,
    s_axi_aclk,
    \Not_Dual.gpio_OE_reg[0] ,
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30] ,
    \Not_Dual.gpio_OE_reg[0]_0 ,
    s_axi_aresetn,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    ip2bus_rdack_i_D1,
    AXI_LITE_GPIO_arready,
    AXI_LITE_GPIO_arready_0,
    ip2bus_wrack_i_D1,
    AXI_LITE_GPIO_wready,
    reg2,
    reg1);
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output rst_reg;
  output rst_reg_0;
  output gpio_reg_en;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output bus2ip_rnw_i_reg;
  output [2:0]D;
  input Q;
  input s_axi_aclk;
  input \Not_Dual.gpio_OE_reg[0] ;
  input \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30] ;
  input [2:0]\Not_Dual.gpio_OE_reg[0]_0 ;
  input s_axi_aresetn;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input ip2bus_rdack_i_D1;
  input AXI_LITE_GPIO_arready;
  input [3:0]AXI_LITE_GPIO_arready_0;
  input ip2bus_wrack_i_D1;
  input AXI_LITE_GPIO_wready;
  input [1:0]reg2;
  input [1:0]reg1;

  wire AXI_LITE_GPIO_arready;
  wire [3:0]AXI_LITE_GPIO_arready_0;
  wire AXI_LITE_GPIO_wready;
  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire [2:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire GPIO_xferAck_i;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30] ;
  wire \Not_Dual.gpio_OE_reg[0] ;
  wire [2:0]\Not_Dual.gpio_OE_reg[0]_0 ;
  wire Q;
  wire bus2ip_rnw_i_reg;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire cs_ce_clr;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire \ip2bus_data_i_D1[30]_i_2_n_0 ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire [1:0]reg1;
  wire [1:0]reg2;
  wire rst_reg;
  wire rst_reg_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;

  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30] ),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\Not_Dual.gpio_OE_reg[0]_0 [0]),
        .I1(\Not_Dual.gpio_OE_reg[0]_0 [1]),
        .O(ce_expnd_i_3));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\Not_Dual.gpio_OE_reg[0]_0 [0]),
        .I1(\Not_Dual.gpio_OE_reg[0]_0 [1]),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(\Not_Dual.gpio_OE_reg[0]_0 [1]),
        .I1(\Not_Dual.gpio_OE_reg[0]_0 [0]),
        .O(ce_expnd_i_1));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(ip2bus_rdack_i_D1_reg),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2 
       (.I0(\Not_Dual.gpio_OE_reg[0]_0 [1]),
        .I1(\Not_Dual.gpio_OE_reg[0]_0 [0]),
        .O(ce_expnd_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(Q),
        .I2(s_axi_aresetn),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(ip2bus_wrack_i_D1_reg),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1[31]_i_1 
       (.I0(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30] ),
        .I1(GPIO_xferAck_i),
        .I2(gpio_xferAck_Reg),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .O(bus2ip_rnw_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Not_Dual.ALLOUT0_ND.READ_REG_GEN[1].reg1[31]_i_3 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(\Not_Dual.gpio_OE_reg[0]_0 [2]),
        .O(gpio_reg_en));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    \Not_Dual.gpio_Data_Out[0]_i_2 
       (.I0(\Not_Dual.gpio_OE_reg[0] ),
        .I1(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30] ),
        .I2(\Not_Dual.gpio_OE_reg[0]_0 [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I4(\Not_Dual.gpio_OE_reg[0]_0 [0]),
        .I5(\Not_Dual.gpio_OE_reg[0]_0 [1]),
        .O(rst_reg_0));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    \Not_Dual.gpio_OE[0]_i_2 
       (.I0(\Not_Dual.gpio_OE_reg[0] ),
        .I1(\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30] ),
        .I2(\Not_Dual.gpio_OE_reg[0]_0 [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I4(\Not_Dual.gpio_OE_reg[0]_0 [1]),
        .I5(\Not_Dual.gpio_OE_reg[0]_0 [0]),
        .O(rst_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \ip2bus_data_i_D1[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h000F0AC000000000)) 
    \ip2bus_data_i_D1[30]_i_1 
       (.I0(reg2[1]),
        .I1(reg1[1]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\ip2bus_data_i_D1[30]_i_2_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ip2bus_data_i_D1[30]_i_2 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .O(\ip2bus_data_i_D1[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000F0AC000000000)) 
    \ip2bus_data_i_D1[31]_i_1 
       (.I0(reg2[0]),
        .I1(reg1[0]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I5(\ip2bus_data_i_D1[30]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack_i_D1),
        .I1(AXI_LITE_GPIO_arready),
        .I2(AXI_LITE_GPIO_arready_0[2]),
        .I3(AXI_LITE_GPIO_arready_0[1]),
        .I4(AXI_LITE_GPIO_arready_0[3]),
        .I5(AXI_LITE_GPIO_arready_0[0]),
        .O(ip2bus_rdack_i_D1_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack_i_D1),
        .I1(AXI_LITE_GPIO_wready),
        .I2(AXI_LITE_GPIO_arready_0[2]),
        .I3(AXI_LITE_GPIO_arready_0[1]),
        .I4(AXI_LITE_GPIO_arready_0[3]),
        .I5(AXI_LITE_GPIO_arready_0[0]),
        .O(ip2bus_wrack_i_D1_reg));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder__parameterized0
   (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    bus2ip_rdce_i,
    Wr,
    bus2ip_wrce_i,
    s_axi_aclk,
    Q,
    s_axi_aresetn,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ,
    Bus_RNW_reg_reg_0,
    wrReq_d1);
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output bus2ip_rdce_i;
  output Wr;
  output bus2ip_wrce_i;
  input s_axi_aclk;
  input Q;
  input s_axi_aresetn;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  input Bus_RNW_reg_reg_0;
  input wrReq_d1;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  wire Q;
  wire Wr;
  wire bus2ip_rdce_i;
  wire bus2ip_wrce_i;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire wrReq_d1;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(Bus_RNW_reg_reg_0),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Q),
        .I2(s_axi_aresetn),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bus2ip_rdreq_d1_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg),
        .O(bus2ip_rdce_i));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    wrReq_d1_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(Bus_RNW_reg),
        .O(bus2ip_wrce_i));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    wr_d_i_1
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(wrReq_d1),
        .O(Wr));
endmodule

(* C_ALL_INPUTS = "0" *) (* C_ALL_INPUTS_2 = "0" *) (* C_ALL_OUTPUTS = "0" *) 
(* C_ALL_OUTPUTS_2 = "0" *) (* C_DOUT_DEFAULT = "0" *) (* C_DOUT_DEFAULT_2 = "0" *) 
(* C_FAMILY = "zynq" *) (* C_GPIO2_WIDTH = "32" *) (* C_GPIO_WIDTH = "2" *) 
(* C_INTERRUPT_PRESENT = "0" *) (* C_IS_DUAL = "0" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TRI_DEFAULT = "-1" *) (* C_TRI_DEFAULT_2 = "-1" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ip_group = "LOGICORE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    ip2intc_irpt,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t,
    gpio2_io_i,
    gpio2_io_o,
    gpio2_io_t);
  (* sigis = "Clk" *) input s_axi_aclk;
  (* sigis = "Rst" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output ip2intc_irpt;
  input [1:0]gpio_io_i;
  output [1:0]gpio_io_o;
  output [1:0]gpio_io_t;
  input [31:0]gpio2_io_i;
  output [31:0]gpio2_io_o;
  output [31:0]gpio2_io_t;

  wire \<const0> ;
  wire \<const1> ;
  wire AXI_LITE_IPIF_I_n_12;
  wire AXI_LITE_IPIF_I_n_5;
  wire AXI_LITE_IPIF_I_n_8;
  wire GPIO_xferAck_i;
  wire [5:6]bus2ip_addr;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [1:0]gpio_io_i;
  wire [1:0]gpio_io_o;
  wire [1:0]gpio_io_t;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire [0:31]ip2bus_data;
  wire [0:31]ip2bus_data_i_D1;
  wire ip2bus_rdack_i;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_D1;
  wire [30:31]reg1;
  wire [30:31]reg2;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [30:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign gpio2_io_o[31] = \<const0> ;
  assign gpio2_io_o[30] = \<const0> ;
  assign gpio2_io_o[29] = \<const0> ;
  assign gpio2_io_o[28] = \<const0> ;
  assign gpio2_io_o[27] = \<const0> ;
  assign gpio2_io_o[26] = \<const0> ;
  assign gpio2_io_o[25] = \<const0> ;
  assign gpio2_io_o[24] = \<const0> ;
  assign gpio2_io_o[23] = \<const0> ;
  assign gpio2_io_o[22] = \<const0> ;
  assign gpio2_io_o[21] = \<const0> ;
  assign gpio2_io_o[20] = \<const0> ;
  assign gpio2_io_o[19] = \<const0> ;
  assign gpio2_io_o[18] = \<const0> ;
  assign gpio2_io_o[17] = \<const0> ;
  assign gpio2_io_o[16] = \<const0> ;
  assign gpio2_io_o[15] = \<const0> ;
  assign gpio2_io_o[14] = \<const0> ;
  assign gpio2_io_o[13] = \<const0> ;
  assign gpio2_io_o[12] = \<const0> ;
  assign gpio2_io_o[11] = \<const0> ;
  assign gpio2_io_o[10] = \<const0> ;
  assign gpio2_io_o[9] = \<const0> ;
  assign gpio2_io_o[8] = \<const0> ;
  assign gpio2_io_o[7] = \<const0> ;
  assign gpio2_io_o[6] = \<const0> ;
  assign gpio2_io_o[5] = \<const0> ;
  assign gpio2_io_o[4] = \<const0> ;
  assign gpio2_io_o[3] = \<const0> ;
  assign gpio2_io_o[2] = \<const0> ;
  assign gpio2_io_o[1] = \<const0> ;
  assign gpio2_io_o[0] = \<const0> ;
  assign gpio2_io_t[31] = \<const1> ;
  assign gpio2_io_t[30] = \<const1> ;
  assign gpio2_io_t[29] = \<const1> ;
  assign gpio2_io_t[28] = \<const1> ;
  assign gpio2_io_t[27] = \<const1> ;
  assign gpio2_io_t[26] = \<const1> ;
  assign gpio2_io_t[25] = \<const1> ;
  assign gpio2_io_t[24] = \<const1> ;
  assign gpio2_io_t[23] = \<const1> ;
  assign gpio2_io_t[22] = \<const1> ;
  assign gpio2_io_t[21] = \<const1> ;
  assign gpio2_io_t[20] = \<const1> ;
  assign gpio2_io_t[19] = \<const1> ;
  assign gpio2_io_t[18] = \<const1> ;
  assign gpio2_io_t[17] = \<const1> ;
  assign gpio2_io_t[16] = \<const1> ;
  assign gpio2_io_t[15] = \<const1> ;
  assign gpio2_io_t[14] = \<const1> ;
  assign gpio2_io_t[13] = \<const1> ;
  assign gpio2_io_t[12] = \<const1> ;
  assign gpio2_io_t[11] = \<const1> ;
  assign gpio2_io_t[10] = \<const1> ;
  assign gpio2_io_t[9] = \<const1> ;
  assign gpio2_io_t[8] = \<const1> ;
  assign gpio2_io_t[7] = \<const1> ;
  assign gpio2_io_t[6] = \<const1> ;
  assign gpio2_io_t[5] = \<const1> ;
  assign gpio2_io_t[4] = \<const1> ;
  assign gpio2_io_t[3] = \<const1> ;
  assign gpio2_io_t[2] = \<const1> ;
  assign gpio2_io_t[1] = \<const1> ;
  assign gpio2_io_t[0] = \<const1> ;
  assign ip2intc_irpt = \<const0> ;
  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [30];
  assign s_axi_rdata[30] = \^s_axi_rdata [30];
  assign s_axi_rdata[29] = \^s_axi_rdata [30];
  assign s_axi_rdata[28] = \^s_axi_rdata [30];
  assign s_axi_rdata[27] = \^s_axi_rdata [30];
  assign s_axi_rdata[26] = \^s_axi_rdata [30];
  assign s_axi_rdata[25] = \^s_axi_rdata [30];
  assign s_axi_rdata[24] = \^s_axi_rdata [30];
  assign s_axi_rdata[23] = \^s_axi_rdata [30];
  assign s_axi_rdata[22] = \^s_axi_rdata [30];
  assign s_axi_rdata[21] = \^s_axi_rdata [30];
  assign s_axi_rdata[20] = \^s_axi_rdata [30];
  assign s_axi_rdata[19] = \^s_axi_rdata [30];
  assign s_axi_rdata[18] = \^s_axi_rdata [30];
  assign s_axi_rdata[17] = \^s_axi_rdata [30];
  assign s_axi_rdata[16] = \^s_axi_rdata [30];
  assign s_axi_rdata[15] = \^s_axi_rdata [30];
  assign s_axi_rdata[14] = \^s_axi_rdata [30];
  assign s_axi_rdata[13] = \^s_axi_rdata [30];
  assign s_axi_rdata[12] = \^s_axi_rdata [30];
  assign s_axi_rdata[11] = \^s_axi_rdata [30];
  assign s_axi_rdata[10] = \^s_axi_rdata [30];
  assign s_axi_rdata[9] = \^s_axi_rdata [30];
  assign s_axi_rdata[8] = \^s_axi_rdata [30];
  assign s_axi_rdata[7] = \^s_axi_rdata [30];
  assign s_axi_rdata[6] = \^s_axi_rdata [30];
  assign s_axi_rdata[5] = \^s_axi_rdata [30];
  assign s_axi_rdata[4] = \^s_axi_rdata [30];
  assign s_axi_rdata[3] = \^s_axi_rdata [30];
  assign s_axi_rdata[2] = \^s_axi_rdata [30];
  assign s_axi_rdata[1:0] = \^s_axi_rdata [1:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif AXI_LITE_IPIF_I
       (.D({ip2bus_data[0],ip2bus_data[30],ip2bus_data[31]}),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .Q({bus2ip_addr[5],bus2ip_addr[6]}),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_rnw_i_reg(AXI_LITE_IPIF_I_n_12),
        .gpio_reg_en(gpio_reg_en),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(s_axi_arready),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(s_axi_wready),
        .reg1({reg1[30],reg1[31]}),
        .reg2({reg2[30],reg2[31]}),
        .rst_reg(AXI_LITE_IPIF_I_n_5),
        .rst_reg_0(AXI_LITE_IPIF_I_n_8),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[8],s_axi_araddr[3:2]}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[8],s_axi_awaddr[3:2]}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [30],\^s_axi_rdata [1:0]}),
        .\s_axi_rdata_i_reg[31] ({ip2bus_data_i_D1[0],ip2bus_data_i_D1[30],ip2bus_data_i_D1[31]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(s_axi_rvalid),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_Core gpio_core_1
       (.GPIO_xferAck_i(GPIO_xferAck_i),
        .\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30]_0 (AXI_LITE_IPIF_I_n_12),
        .\Not_Dual.gpio_Data_Out_reg[0]_0 (AXI_LITE_IPIF_I_n_8),
        .\Not_Dual.gpio_OE_reg[0]_0 (gpio_io_t[1]),
        .\Not_Dual.gpio_OE_reg[0]_1 (AXI_LITE_IPIF_I_n_5),
        .\Not_Dual.gpio_OE_reg[1]_0 (gpio_io_t[0]),
        .Q({bus2ip_addr[5],bus2ip_addr[6]}),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .gpio_io_i(gpio_io_i),
        .gpio_io_o(gpio_io_o),
        .gpio_reg_en(gpio_reg_en),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i(ip2bus_rdack_i),
        .ip2bus_wrack_i(ip2bus_wrack_i),
        .reg1({reg1[30],reg1[31]}),
        .reg2({reg2[30],reg2[31]}),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata({s_axi_wdata[31:30],s_axi_wdata[1:0]}));
  FDRE \ip2bus_data_i_D1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[0]),
        .Q(ip2bus_data_i_D1[0]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[30]),
        .Q(ip2bus_data_i_D1[30]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[31]),
        .Q(ip2bus_data_i_D1[31]),
        .R(bus2ip_reset));
  FDRE ip2bus_rdack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_i),
        .Q(ip2bus_rdack_i_D1),
        .R(bus2ip_reset));
  FDRE ip2bus_wrack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_i),
        .Q(ip2bus_wrack_i_D1),
        .R(bus2ip_reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
   (bus2ip_reset,
    bus2ip_rnw,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    bus2ip_cs,
    rst_reg,
    Q,
    rst_reg_0,
    gpio_reg_en,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    bus2ip_rnw_i_reg,
    s_axi_rdata,
    D,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_bready,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    \s_axi_rdata_i_reg[31] ,
    reg2,
    reg1,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output bus2ip_reset;
  output bus2ip_rnw;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output bus2ip_cs;
  output rst_reg;
  output [1:0]Q;
  output rst_reg_0;
  output gpio_reg_en;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output bus2ip_rnw_i_reg;
  output [2:0]s_axi_rdata;
  output [2:0]D;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input [2:0]\s_axi_rdata_i_reg[31] ;
  input [1:0]reg2;
  input [1:0]reg1;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;

  wire [2:0]D;
  wire GPIO_xferAck_i;
  wire [1:0]Q;
  wire bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire bus2ip_rnw_i_reg;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire [1:0]reg1;
  wire [1:0]reg2;
  wire rst_reg;
  wire rst_reg_0;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_reg;
  wire [2:0]s_axi_rdata;
  wire [2:0]\s_axi_rdata_i_reg[31] ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (bus2ip_cs),
        .Q(Q),
        .SR(bus2ip_reset),
        .bus2ip_rnw_i_reg_0(bus2ip_rnw),
        .bus2ip_rnw_i_reg_1(bus2ip_rnw_i_reg),
        .gpio_reg_en(gpio_reg_en),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .reg1(reg1),
        .reg2(reg2),
        .rst_reg_0(rst_reg),
        .rst_reg_1(rst_reg_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31]_0 (\s_axi_rdata_i_reg[31] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif__parameterized0
   (ce_out_i,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_rdata,
    \bus2ip_addr_i_reg[4] ,
    bus2ip_rdce_i,
    Wr,
    bus2ip_wrce_i,
    bus2ip_reset_int_core,
    s_axi_arvalid,
    s_axi_aclk,
    s_axi_aresetn,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr,
    Q,
    wrReq_d1);
  output ce_out_i;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [7:0]s_axi_rdata;
  output [2:0]\bus2ip_addr_i_reg[4] ;
  output bus2ip_rdce_i;
  output Wr;
  output bus2ip_wrce_i;
  input bus2ip_reset_int_core;
  input s_axi_arvalid;
  input s_axi_aclk;
  input s_axi_aresetn;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_rready;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;
  input [7:0]Q;
  input wrReq_d1;

  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire [7:0]Q;
  wire Wr;
  wire [2:0]\bus2ip_addr_i_reg[4] ;
  wire bus2ip_rdce_i;
  wire bus2ip_reset_int_core;
  wire bus2ip_wrce_i;
  wire ce_out_i;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [7:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_wvalid;
  wire wrReq_d1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment__parameterized0 I_SLAVE_ATTACHMENT
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (ce_out_i),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .Q(Q),
        .Wr(Wr),
        .\bus2ip_addr_i_reg[4]_0 (\bus2ip_addr_i_reg[4] ),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .wrReq_d1(wrReq_d1));
endmodule

(* C_EXTERNAL_XIN_CLK_HZ = "25000000" *) (* C_FAMILY = "zynq" *) (* C_HAS_EXTERNAL_RCLK = "0" *) 
(* C_HAS_EXTERNAL_XIN = "0" *) (* C_IS_A_16550 = "1" *) (* C_S_AXI_ACLK_FREQ_HZ = "100000000" *) 
(* C_S_AXI_ADDR_WIDTH = "13" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_uart16550
   (s_axi_aclk,
    s_axi_aresetn,
    ip2intc_irpt,
    freeze,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    baudoutn,
    ctsn,
    dcdn,
    ddis,
    dsrn,
    dtrn,
    out1n,
    out2n,
    rclk,
    rin,
    rtsn,
    rxrdyn,
    sin,
    sout,
    txrdyn,
    xin,
    xout);
  input s_axi_aclk;
  input s_axi_aresetn;
  (* sigis = "INTERRUPT" *) output ip2intc_irpt;
  input freeze;
  input [12:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [12:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output baudoutn;
  input ctsn;
  input dcdn;
  output ddis;
  input dsrn;
  output dtrn;
  output out1n;
  output out2n;
  (* sigis = "CLK" *) input rclk;
  input rin;
  output rtsn;
  output rxrdyn;
  input sin;
  output sout;
  output txrdyn;
  (* sigis = "CLK" *) input xin;
  output xout;

  wire \<const0> ;
  wire [2:0]Addr;
  wire [7:0]Dout;
  wire \IPIC_IF_I_1/wrReq_d1 ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i ;
  wire Wr;
  wire baudoutn;
  wire bus2ip_rdce_i;
  wire bus2ip_reset_int_core;
  wire bus2ip_reset_int_core_i_1_n_0;
  wire bus2ip_wrce_i;
  wire ctsn;
  wire dcdn;
  wire ddis;
  wire dsrn;
  wire dtrn;
  wire freeze;
  wire ip2intc_irpt;
  wire out1n;
  wire out2n;
  wire rin;
  wire rtsn;
  wire rxrdyn;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [7:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire sin;
  wire sout;
  wire txrdyn;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7:0] = \^s_axi_rdata [7:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  assign xout = \<const0> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif__parameterized0 AXI_LITE_IPIF_I
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (s_axi_arready),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (s_axi_awready),
        .Q(Dout),
        .Wr(Wr),
        .\bus2ip_addr_i_reg[4] (Addr),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .ce_out_i(\I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[4:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[4:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .wrReq_d1(\IPIC_IF_I_1/wrReq_d1 ));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xuart XUART_I_1
       (.Q(Dout),
        .Wr(Wr),
        .\addr_d_reg[2] (Addr),
        .baudoutn(baudoutn),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .ce_out_i(\I_SLAVE_ATTACHMENT/I_DECODER/ce_out_i ),
        .ctsn(ctsn),
        .dcdn(dcdn),
        .ddis(ddis),
        .dsrn(dsrn),
        .dtrn(dtrn),
        .freeze(freeze),
        .ip2intc_irpt(ip2intc_irpt),
        .out1n(out1n),
        .out2n(out2n),
        .rin(rin),
        .rtsn(rtsn),
        .rxrdyn(rxrdyn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_awready(s_axi_awready),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .sin(sin),
        .sout(sout),
        .txrdyn(txrdyn),
        .wrReq_d1(\IPIC_IF_I_1/wrReq_d1 ));
  LUT1 #(
    .INIT(2'h1)) 
    bus2ip_reset_int_core_i_1
       (.I0(s_axi_aresetn),
        .O(bus2ip_reset_int_core_i_1_n_0));
  FDRE bus2ip_reset_int_core_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_reset_int_core_i_1_n_0),
        .Q(bus2ip_reset_int_core),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync
   (scndry_vect_out,
    gpio_io_i,
    s_axi_aclk);
  output [1:0]scndry_vect_out;
  input [1:0]gpio_io_i;
  input s_axi_aclk;

  wire [1:0]gpio_io_i;
  wire s_axi_aclk;
  wire s_level_out_bus_d1_cdc_to_0;
  wire s_level_out_bus_d1_cdc_to_1;
  wire s_level_out_bus_d2_0;
  wire s_level_out_bus_d2_1;
  wire s_level_out_bus_d3_0;
  wire s_level_out_bus_d3_1;
  wire [1:0]scndry_vect_out;

  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_0),
        .Q(s_level_out_bus_d2_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d1_cdc_to_1),
        .Q(s_level_out_bus_d2_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_0),
        .Q(s_level_out_bus_d3_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d2_1),
        .Q(s_level_out_bus_d3_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_0),
        .Q(scndry_vect_out[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_level_out_bus_d3_1),
        .Q(scndry_vect_out[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[0]),
        .Q(s_level_out_bus_d1_cdc_to_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i[1]),
        .Q(s_level_out_bus_d1_cdc_to_1),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f
   (fifo_full_p1,
    Q,
    tx_fifo_rd_en_int,
    FIFO_Full_reg,
    tx_fifo_wr_en_d,
    tx_fifo_full,
    \INFERRED_GEN.cnt_i_reg[2]_0 ,
    SS,
    s_axi_aclk);
  output fifo_full_p1;
  output [4:0]Q;
  input tx_fifo_rd_en_int;
  input FIFO_Full_reg;
  input tx_fifo_wr_en_d;
  input tx_fifo_full;
  input \INFERRED_GEN.cnt_i_reg[2]_0 ;
  input [0:0]SS;
  input s_axi_aclk;

  wire FIFO_Full_i_2_n_0;
  wire FIFO_Full_reg;
  wire \INFERRED_GEN.cnt_i[4]_i_2_n_0 ;
  wire \INFERRED_GEN.cnt_i_reg[2]_0 ;
  wire [4:0]Q;
  wire [0:0]SS;
  wire [4:0]addr_i_p1;
  wire fifo_full_p1;
  wire s_axi_aclk;
  wire tx_fifo_full;
  wire tx_fifo_rd_en_int;
  wire tx_fifo_wr_en_d;

  LUT6 #(
    .INIT(64'h1000011101110000)) 
    FIFO_Full_i_1
       (.I0(FIFO_Full_i_2_n_0),
        .I1(Q[4]),
        .I2(tx_fifo_rd_en_int),
        .I3(FIFO_Full_reg),
        .I4(Q[3]),
        .I5(\INFERRED_GEN.cnt_i[4]_i_2_n_0 ),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'hF7FF5DF7FFAEFFFF)) 
    FIFO_Full_i_2
       (.I0(Q[2]),
        .I1(tx_fifo_wr_en_d),
        .I2(tx_fifo_full),
        .I3(Q[0]),
        .I4(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I5(Q[1]),
        .O(FIFO_Full_i_2_n_0));
  LUT6 #(
    .INIT(64'hA6A6A6A659A6A6A6)) 
    \INFERRED_GEN.cnt_i[0]_i_1 
       (.I0(Q[0]),
        .I1(tx_fifo_wr_en_d),
        .I2(tx_fifo_full),
        .I3(tx_fifo_rd_en_int),
        .I4(FIFO_Full_reg),
        .I5(Q[4]),
        .O(addr_i_p1[0]));
  LUT5 #(
    .INIT(32'hA69AA6A6)) 
    \INFERRED_GEN.cnt_i[1]_i_1 
       (.I0(Q[1]),
        .I1(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I2(Q[0]),
        .I3(tx_fifo_full),
        .I4(tx_fifo_wr_en_d),
        .O(addr_i_p1[1]));
  LUT6 #(
    .INIT(64'hFFBADFFF00452000)) 
    \INFERRED_GEN.cnt_i[2]_i_1 
       (.I0(Q[0]),
        .I1(tx_fifo_full),
        .I2(tx_fifo_wr_en_d),
        .I3(Q[1]),
        .I4(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I5(Q[2]),
        .O(addr_i_p1[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h40BFBF40)) 
    \INFERRED_GEN.cnt_i[3]_i_1 
       (.I0(Q[4]),
        .I1(FIFO_Full_reg),
        .I2(tx_fifo_rd_en_int),
        .I3(\INFERRED_GEN.cnt_i[4]_i_2_n_0 ),
        .I4(Q[3]),
        .O(addr_i_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h71787878)) 
    \INFERRED_GEN.cnt_i[4]_i_1 
       (.I0(\INFERRED_GEN.cnt_i[4]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(FIFO_Full_reg),
        .I4(tx_fifo_rd_en_int),
        .O(addr_i_p1[4]));
  LUT6 #(
    .INIT(64'hCECCCCCCCCCC8C88)) 
    \INFERRED_GEN.cnt_i[4]_i_2 
       (.I0(Q[0]),
        .I1(\INFERRED_GEN.cnt_i_reg[2]_0 ),
        .I2(tx_fifo_full),
        .I3(tx_fifo_wr_en_d),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\INFERRED_GEN.cnt_i[4]_i_2_n_0 ));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q[2]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(Q[3]),
        .S(SS));
  FDSE \INFERRED_GEN.cnt_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[4]),
        .Q(Q[4]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "cntr_incr_decr_addn_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f_0
   (\INFERRED_GEN.cnt_i_reg[4]_0 ,
    Q,
    \INFERRED_GEN.cnt_i_reg[4]_1 ,
    fifo_full_p1,
    lsr4_set,
    lsr3_set,
    \INFERRED_GEN.cnt_i_reg[4]_2 ,
    lsr2_rst_reg,
    chipSelect,
    wr_d,
    rx_fifo_rd_en_d,
    lsr2_rst,
    rx_fifo_wr_en_i,
    data3,
    rx_fifo_rd_en_d1,
    out,
    \lsr_reg[4] ,
    rx_fifo_data_in,
    rx_fifo_rst,
    s_axi_aclk);
  output \INFERRED_GEN.cnt_i_reg[4]_0 ;
  output [4:0]Q;
  output \INFERRED_GEN.cnt_i_reg[4]_1 ;
  output fifo_full_p1;
  output lsr4_set;
  output lsr3_set;
  output \INFERRED_GEN.cnt_i_reg[4]_2 ;
  input lsr2_rst_reg;
  input chipSelect;
  input wr_d;
  input rx_fifo_rd_en_d;
  input lsr2_rst;
  input rx_fifo_wr_en_i;
  input [1:0]data3;
  input rx_fifo_rd_en_d1;
  input [1:0]out;
  input \lsr_reg[4] ;
  input [1:0]rx_fifo_data_in;
  input rx_fifo_rst;
  input s_axi_aclk;

  wire FIFO_Full_i_2__0_n_0;
  wire \INFERRED_GEN.cnt_i[3]_i_2_n_0 ;
  wire \INFERRED_GEN.cnt_i[4]_i_2__0_n_0 ;
  wire \INFERRED_GEN.cnt_i[4]_i_3_n_0 ;
  wire \INFERRED_GEN.cnt_i_reg[4]_0 ;
  wire \INFERRED_GEN.cnt_i_reg[4]_1 ;
  wire \INFERRED_GEN.cnt_i_reg[4]_2 ;
  wire [4:0]Q;
  wire Rx_fifo_trigger_i_2_n_0;
  wire [4:0]addr_i_p1;
  wire chipSelect;
  wire [1:0]data3;
  wire fifo_full_p1;
  wire lsr2_rst;
  wire lsr2_rst_reg;
  wire lsr3_set;
  wire lsr4_set;
  wire \lsr_reg[4] ;
  wire [1:0]out;
  wire [1:0]rx_fifo_data_in;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_rd_en_d1;
  wire rx_fifo_rst;
  wire rx_fifo_wr_en_i;
  wire s_axi_aclk;
  wire wr_d;

  LUT6 #(
    .INIT(64'h8C878F8700000000)) 
    FIFO_Full_i_1__0
       (.I0(\INFERRED_GEN.cnt_i[4]_i_2__0_n_0 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(rx_fifo_rd_en_d),
        .I4(\INFERRED_GEN.cnt_i[4]_i_3_n_0 ),
        .I5(FIFO_Full_i_2__0_n_0),
        .O(fifo_full_p1));
  LUT6 #(
    .INIT(64'h8060000000000100)) 
    FIFO_Full_i_2__0
       (.I0(rx_fifo_wr_en_i),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\INFERRED_GEN.cnt_i[3]_i_2_n_0 ),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(FIFO_Full_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h59A6)) 
    \INFERRED_GEN.cnt_i[0]_i_1__0 
       (.I0(rx_fifo_wr_en_i),
        .I1(rx_fifo_rd_en_d),
        .I2(Q[4]),
        .I3(Q[0]),
        .O(addr_i_p1[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h77E78818)) 
    \INFERRED_GEN.cnt_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(rx_fifo_wr_en_i),
        .I2(rx_fifo_rd_en_d),
        .I3(Q[4]),
        .I4(Q[1]),
        .O(addr_i_p1[1]));
  LUT6 #(
    .INIT(64'h65AAAAAAAAAAAA9A)) 
    \INFERRED_GEN.cnt_i[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(rx_fifo_rd_en_d),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(rx_fifo_wr_en_i),
        .O(addr_i_p1[2]));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAA6)) 
    \INFERRED_GEN.cnt_i[3]_i_1__0 
       (.I0(Q[3]),
        .I1(\INFERRED_GEN.cnt_i[3]_i_2_n_0 ),
        .I2(rx_fifo_wr_en_i),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(addr_i_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \INFERRED_GEN.cnt_i[3]_i_2 
       (.I0(rx_fifo_rd_en_d),
        .I1(Q[4]),
        .O(\INFERRED_GEN.cnt_i[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h73787078)) 
    \INFERRED_GEN.cnt_i[4]_i_1__0 
       (.I0(\INFERRED_GEN.cnt_i[4]_i_2__0_n_0 ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(rx_fifo_rd_en_d),
        .I4(\INFERRED_GEN.cnt_i[4]_i_3_n_0 ),
        .O(addr_i_p1[4]));
  LUT6 #(
    .INIT(64'hF444444444444440)) 
    \INFERRED_GEN.cnt_i[4]_i_2__0 
       (.I0(Q[4]),
        .I1(rx_fifo_rd_en_d),
        .I2(rx_fifo_wr_en_i),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\INFERRED_GEN.cnt_i[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555500015555)) 
    \INFERRED_GEN.cnt_i[4]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(rx_fifo_wr_en_i),
        .I4(rx_fifo_rd_en_d),
        .I5(Q[4]),
        .O(\INFERRED_GEN.cnt_i[4]_i_3_n_0 ));
  FDSE \INFERRED_GEN.cnt_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[0]),
        .Q(Q[0]),
        .S(rx_fifo_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[1]),
        .Q(Q[1]),
        .S(rx_fifo_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[2]),
        .Q(Q[2]),
        .S(rx_fifo_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[3]),
        .Q(Q[3]),
        .S(rx_fifo_rst));
  FDSE \INFERRED_GEN.cnt_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(addr_i_p1[4]),
        .Q(Q[4]),
        .S(rx_fifo_rst));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h1)) 
    Rx_fifo_trigger_i_1
       (.I0(Q[4]),
        .I1(Rx_fifo_trigger_i_2_n_0),
        .O(\INFERRED_GEN.cnt_i_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h777F155501110000)) 
    Rx_fifo_trigger_i_2
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(data3[0]),
        .I5(data3[1]),
        .O(Rx_fifo_trigger_i_2_n_0));
  LUT6 #(
    .INIT(64'h44444FFF44444444)) 
    lsr2_rst_i_1
       (.I0(Q[4]),
        .I1(lsr2_rst_reg),
        .I2(chipSelect),
        .I3(wr_d),
        .I4(rx_fifo_rd_en_d),
        .I5(lsr2_rst),
        .O(\INFERRED_GEN.cnt_i_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \lsr[2]_i_5 
       (.I0(Q[4]),
        .I1(\lsr_reg[4] ),
        .I2(rx_fifo_rd_en_d1),
        .I3(rx_fifo_rd_en_d),
        .O(\INFERRED_GEN.cnt_i_reg[4]_2 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \lsr[3]_i_2 
       (.I0(Q[4]),
        .I1(rx_fifo_rd_en_d1),
        .I2(rx_fifo_rd_en_d),
        .I3(out[1]),
        .I4(\lsr_reg[4] ),
        .I5(rx_fifo_data_in[1]),
        .O(lsr3_set));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \lsr[4]_i_2 
       (.I0(Q[4]),
        .I1(rx_fifo_rd_en_d1),
        .I2(rx_fifo_rd_en_d),
        .I3(out[0]),
        .I4(\lsr_reg[4] ),
        .I5(rx_fifo_data_in[0]),
        .O(lsr4_set));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynshreg_f
   (out,
    tx_fifo_wr_en_d,
    tx_fifo_full,
    \tsr_reg[7] ,
    Q,
    s_axi_aclk);
  output [7:0]out;
  input tx_fifo_wr_en_d;
  input tx_fifo_full;
  input [7:0]\tsr_reg[7] ;
  input [3:0]Q;
  input s_axi_aclk;

  wire [3:0]Q;
  wire [7:0]out;
  wire s_axi_aclk;
  wire [7:0]\tsr_reg[7] ;
  wire tx_fifo_full;
  wire tx_fifo_wr_en_d;
  wire tx_fifo_wr_en_i;

  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][0]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [7]),
        .Q(out[7]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][1]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [6]),
        .Q(out[6]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][2]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [5]),
        .Q(out[5]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][3]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [4]),
        .Q(out[4]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][4]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [3]),
        .Q(out[3]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][5]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [2]),
        .Q(out[2]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][6]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [1]),
        .Q(out[1]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.tx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][7]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(tx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(\tsr_reg[7] [0]),
        .Q(out[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \INFERRED_GEN.data_reg[15][7]_srl16_i_1 
       (.I0(tx_fifo_wr_en_d),
        .I1(tx_fifo_full),
        .O(tx_fifo_wr_en_i));
endmodule

(* ORIG_REF_NAME = "dynshreg_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynshreg_f__parameterized0
   (\GENERATING_FIFOS.rx_fifo_rd_en_d_reg ,
    out,
    D,
    lsr2_set,
    \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ,
    rx_fifo_rd_en_d,
    \Dout_reg[1] ,
    \Dout_reg[1]_0 ,
    \Dout_reg[1]_1 ,
    \Dout_reg[3] ,
    \Dout_reg[1]_2 ,
    \Dout_reg[6] ,
    \Dout_reg[6]_0 ,
    \Dout_reg[7] ,
    \Dout_reg[6]_1 ,
    \Dout_reg[6]_2 ,
    \Dout_reg[7]_0 ,
    \Dout_reg[7]_1 ,
    \Dout_reg[3]_0 ,
    \Dout_reg[3]_1 ,
    \Dout_reg[3]_2 ,
    \Dout_reg[2] ,
    \Dout_reg[2]_0 ,
    \Dout_reg[2]_1 ,
    \Dout_reg[0] ,
    \Dout_reg[0]_0 ,
    \Dout_reg[0]_1 ,
    \Dout_reg[5] ,
    \Dout_reg[4] ,
    \Dout_reg[3]_3 ,
    \Dout_reg[3]_4 ,
    \lsr_reg[2] ,
    \lsr_reg[2]_0 ,
    rx_fifo_data_in,
    rx_fifo_wr_en_i,
    Q,
    s_axi_aclk);
  output \GENERATING_FIFOS.rx_fifo_rd_en_d_reg ;
  output [1:0]out;
  output [7:0]D;
  output lsr2_set;
  input \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  input rx_fifo_rd_en_d;
  input \Dout_reg[1] ;
  input \Dout_reg[1]_0 ;
  input \Dout_reg[1]_1 ;
  input [3:0]\Dout_reg[3] ;
  input \Dout_reg[1]_2 ;
  input \Dout_reg[6] ;
  input \Dout_reg[6]_0 ;
  input [7:0]\Dout_reg[7] ;
  input \Dout_reg[6]_1 ;
  input \Dout_reg[6]_2 ;
  input \Dout_reg[7]_0 ;
  input \Dout_reg[7]_1 ;
  input \Dout_reg[3]_0 ;
  input \Dout_reg[3]_1 ;
  input \Dout_reg[3]_2 ;
  input \Dout_reg[2] ;
  input \Dout_reg[2]_0 ;
  input \Dout_reg[2]_1 ;
  input \Dout_reg[0] ;
  input \Dout_reg[0]_0 ;
  input \Dout_reg[0]_1 ;
  input \Dout_reg[5] ;
  input \Dout_reg[4] ;
  input \Dout_reg[3]_3 ;
  input [3:0]\Dout_reg[3]_4 ;
  input [0:0]\lsr_reg[2] ;
  input \lsr_reg[2]_0 ;
  input [10:0]rx_fifo_data_in;
  input rx_fifo_wr_en_i;
  input [3:0]Q;
  input s_axi_aclk;

  wire [7:0]D;
  wire \Dout[0]_i_5_n_0 ;
  wire \Dout[1]_i_5_n_0 ;
  wire \Dout[2]_i_5_n_0 ;
  wire \Dout[3]_i_6_n_0 ;
  wire \Dout_reg[0] ;
  wire \Dout_reg[0]_0 ;
  wire \Dout_reg[0]_1 ;
  wire \Dout_reg[1] ;
  wire \Dout_reg[1]_0 ;
  wire \Dout_reg[1]_1 ;
  wire \Dout_reg[1]_2 ;
  wire \Dout_reg[2] ;
  wire \Dout_reg[2]_0 ;
  wire \Dout_reg[2]_1 ;
  wire [3:0]\Dout_reg[3] ;
  wire \Dout_reg[3]_0 ;
  wire \Dout_reg[3]_1 ;
  wire \Dout_reg[3]_2 ;
  wire \Dout_reg[3]_3 ;
  wire [3:0]\Dout_reg[3]_4 ;
  wire \Dout_reg[4] ;
  wire \Dout_reg[5] ;
  wire \Dout_reg[6] ;
  wire \Dout_reg[6]_0 ;
  wire \Dout_reg[6]_1 ;
  wire \Dout_reg[6]_2 ;
  wire [7:0]\Dout_reg[7] ;
  wire \Dout_reg[7]_0 ;
  wire \Dout_reg[7]_1 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  wire \GENERATING_FIFOS.rx_fifo_rd_en_d_reg ;
  wire [3:0]Q;
  wire lsr2_set;
  wire [0:0]\lsr_reg[2] ;
  wire \lsr_reg[2]_0 ;
  wire [1:0]out;
  wire [10:0]rx_fifo_data_in;
  wire [10:0]rx_fifo_data_out;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_wr_en_i;
  wire s_axi_aclk;

  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    \Dout[0]_i_1 
       (.I0(\Dout_reg[0] ),
        .I1(\Dout_reg[0]_0 ),
        .I2(\Dout_reg[0]_1 ),
        .I3(\Dout_reg[3] [0]),
        .I4(\Dout_reg[1]_2 ),
        .I5(\Dout[0]_i_5_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \Dout[0]_i_5 
       (.I0(\Dout_reg[3]_3 ),
        .I1(\Dout_reg[3]_4 [0]),
        .I2(\Dout_reg[6] ),
        .I3(rx_fifo_data_out[0]),
        .I4(\Dout_reg[6]_0 ),
        .I5(\Dout_reg[7] [0]),
        .O(\Dout[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    \Dout[1]_i_1 
       (.I0(\Dout_reg[1] ),
        .I1(\Dout_reg[1]_0 ),
        .I2(\Dout_reg[1]_1 ),
        .I3(\Dout_reg[3] [1]),
        .I4(\Dout_reg[1]_2 ),
        .I5(\Dout[1]_i_5_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \Dout[1]_i_5 
       (.I0(\Dout_reg[3]_3 ),
        .I1(\Dout_reg[3]_4 [1]),
        .I2(\Dout_reg[6] ),
        .I3(rx_fifo_data_out[1]),
        .I4(\Dout_reg[6]_0 ),
        .I5(\Dout_reg[7] [1]),
        .O(\Dout[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    \Dout[2]_i_1 
       (.I0(\Dout_reg[2] ),
        .I1(\Dout_reg[2]_0 ),
        .I2(\Dout_reg[2]_1 ),
        .I3(\Dout_reg[3] [2]),
        .I4(\Dout_reg[1]_2 ),
        .I5(\Dout[2]_i_5_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \Dout[2]_i_5 
       (.I0(\Dout_reg[3]_3 ),
        .I1(\Dout_reg[3]_4 [2]),
        .I2(\Dout_reg[6] ),
        .I3(rx_fifo_data_out[2]),
        .I4(\Dout_reg[6]_0 ),
        .I5(\Dout_reg[7] [2]),
        .O(\Dout[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    \Dout[3]_i_1 
       (.I0(\Dout_reg[3]_0 ),
        .I1(\Dout_reg[3]_1 ),
        .I2(\Dout_reg[3]_2 ),
        .I3(\Dout_reg[3] [3]),
        .I4(\Dout_reg[1]_2 ),
        .I5(\Dout[3]_i_6_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \Dout[3]_i_6 
       (.I0(\Dout_reg[3]_3 ),
        .I1(\Dout_reg[3]_4 [3]),
        .I2(\Dout_reg[6] ),
        .I3(rx_fifo_data_out[3]),
        .I4(\Dout_reg[6]_0 ),
        .I5(\Dout_reg[7] [3]),
        .O(\Dout[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \Dout[4]_i_1 
       (.I0(\Dout_reg[6] ),
        .I1(rx_fifo_data_out[4]),
        .I2(\Dout_reg[6]_0 ),
        .I3(\Dout_reg[7] [4]),
        .I4(\Dout_reg[4] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \Dout[5]_i_1 
       (.I0(\Dout_reg[6] ),
        .I1(rx_fifo_data_out[5]),
        .I2(\Dout_reg[6]_0 ),
        .I3(\Dout_reg[7] [5]),
        .I4(\Dout_reg[5] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4540)) 
    \Dout[6]_i_1 
       (.I0(\Dout_reg[6] ),
        .I1(rx_fifo_data_out[6]),
        .I2(\Dout_reg[6]_0 ),
        .I3(\Dout_reg[7] [6]),
        .I4(\Dout_reg[6]_1 ),
        .I5(\Dout_reg[6]_2 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4540)) 
    \Dout[7]_i_2 
       (.I0(\Dout_reg[6] ),
        .I1(rx_fifo_data_out[7]),
        .I2(\Dout_reg[6]_0 ),
        .I3(\Dout_reg[7] [7]),
        .I4(\Dout_reg[7]_0 ),
        .I5(\Dout_reg[7]_1 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hEEEEEEE0)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_i_1 
       (.I0(\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ),
        .I1(rx_fifo_rd_en_d),
        .I2(rx_fifo_data_out[10]),
        .I3(out[1]),
        .I4(out[0]),
        .O(\GENERATING_FIFOS.rx_fifo_rd_en_d_reg ));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][0]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][0]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[10]),
        .Q(rx_fifo_data_out[10]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][10]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][10]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[0]),
        .Q(rx_fifo_data_out[0]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][1]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][1]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[9]),
        .Q(out[1]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][2]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][2]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[8]),
        .Q(out[0]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][3]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][3]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[7]),
        .Q(rx_fifo_data_out[7]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][4]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][4]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[6]),
        .Q(rx_fifo_data_out[6]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][5]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][5]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[5]),
        .Q(rx_fifo_data_out[5]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][6]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][6]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[4]),
        .Q(rx_fifo_data_out[4]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][7]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][7]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[3]),
        .Q(rx_fifo_data_out[3]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][8]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][8]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[2]),
        .Q(rx_fifo_data_out[2]));
  (* srl_bus_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15] " *) 
  (* srl_name = "inst/axi_uart16550_0/U0/\XUART_I_1/UART16550_I_1/GENERATING_FIFOS.rx_fifo_block_1/srl_fifo_rbu_f_i1/DYNSHREG_F_I/INFERRED_GEN.data_reg[15][9]_srl16 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \INFERRED_GEN.data_reg[15][9]_srl16 
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .CE(rx_fifo_wr_en_i),
        .CLK(s_axi_aclk),
        .D(rx_fifo_data_in[1]),
        .Q(rx_fifo_data_out[1]));
  LUT5 #(
    .INIT(32'h08AA0808)) 
    \lsr[2]_i_2 
       (.I0(\lsr_reg[2] ),
        .I1(rx_fifo_data_out[10]),
        .I2(\lsr_reg[2]_0 ),
        .I3(\Dout_reg[6]_0 ),
        .I4(rx_fifo_data_in[10]),
        .O(lsr2_set));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ipic_if
   (wrReq_d1,
    s_axi_awready,
    s_axi_arready,
    Rd,
    bus2ip_reset_int_core,
    bus2ip_wrce_i,
    s_axi_aclk,
    bus2ip_rdce_i);
  output wrReq_d1;
  output s_axi_awready;
  output s_axi_arready;
  output Rd;
  input bus2ip_reset_int_core;
  input bus2ip_wrce_i;
  input s_axi_aclk;
  input bus2ip_rdce_i;

  wire Rd;
  wire bus2ip_rdce_i;
  wire bus2ip_rdreq_d1;
  wire bus2ip_rdreq_d2;
  wire bus2ip_rdreq_d3;
  wire bus2ip_rdreq_d4;
  wire bus2ip_reset_int_core;
  wire bus2ip_wrce_i;
  wire ip2bus_rdack;
  wire ip2bus_rdack_d1;
  wire ip2bus_wrack;
  wire ip2bus_wrack_d1;
  wire s_axi_aclk;
  wire s_axi_arready;
  wire s_axi_awready;
  wire wrReq_d1;
  wire wrReq_d2;
  wire wrReq_d3;

  FDRE IP2Bus_RdAcknowledge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_d1),
        .Q(s_axi_arready),
        .R(bus2ip_reset_int_core));
  FDRE IP2Bus_WrAcknowledge_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_d1),
        .Q(s_axi_awready),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdce_i),
        .Q(bus2ip_rdreq_d1),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdreq_d1),
        .Q(bus2ip_rdreq_d2),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdreq_d2),
        .Q(bus2ip_rdreq_d3),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rdreq_d4_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_rdreq_d3),
        .Q(bus2ip_rdreq_d4),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h2)) 
    ip2bus_rdack_d1_i_1
       (.I0(bus2ip_rdreq_d3),
        .I1(bus2ip_rdreq_d4),
        .O(ip2bus_rdack));
  FDRE ip2bus_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack),
        .Q(ip2bus_rdack_d1),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h2)) 
    ip2bus_wrack_d1_i_1
       (.I0(wrReq_d2),
        .I1(wrReq_d3),
        .O(ip2bus_wrack));
  FDRE ip2bus_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack),
        .Q(ip2bus_wrack_d1),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h2)) 
    rd_d_i_1
       (.I0(bus2ip_rdreq_d1),
        .I1(bus2ip_rdreq_d2),
        .O(Rd));
  FDRE wrReq_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bus2ip_wrce_i),
        .Q(wrReq_d1),
        .R(bus2ip_reset_int_core));
  FDRE wrReq_d2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrReq_d1),
        .Q(wrReq_d2),
        .R(bus2ip_reset_int_core));
  FDRE wrReq_d3_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(wrReq_d2),
        .Q(wrReq_d3),
        .R(bus2ip_reset_int_core));
endmodule

(* Bottom_Row_Interface = "Disabled" *) (* Top_Row_Interface = "UART" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pmod_concat
   (in_top_bus_I,
    in_top_bus_O,
    in_top_bus_T,
    in_top_uart_gpio_bus_I,
    in_top_uart_gpio_bus_O,
    in_top_uart_gpio_bus_T,
    in_top_i2c_gpio_bus_I,
    in_top_i2c_gpio_bus_O,
    in_top_i2c_gpio_bus_T,
    in_bottom_bus_I,
    in_bottom_bus_O,
    in_bottom_bus_T,
    in_bottom_uart_gpio_bus_I,
    in_bottom_uart_gpio_bus_O,
    in_bottom_uart_gpio_bus_T,
    in_bottom_i2c_gpio_bus_I,
    in_bottom_i2c_gpio_bus_O,
    in_bottom_i2c_gpio_bus_T,
    in0_I,
    in1_I,
    in2_I,
    in3_I,
    in4_I,
    in5_I,
    in6_I,
    in7_I,
    in0_O,
    in1_O,
    in2_O,
    in3_O,
    in4_O,
    in5_O,
    in6_O,
    in7_O,
    in0_T,
    in1_T,
    in2_T,
    in3_T,
    in4_T,
    in5_T,
    in6_T,
    in7_T,
    out0_I,
    out1_I,
    out2_I,
    out3_I,
    out4_I,
    out5_I,
    out6_I,
    out7_I,
    out0_O,
    out1_O,
    out2_O,
    out3_O,
    out4_O,
    out5_O,
    out6_O,
    out7_O,
    out0_T,
    out1_T,
    out2_T,
    out3_T,
    out4_T,
    out5_T,
    out6_T,
    out7_T);
  output [3:0]in_top_bus_I;
  input [3:0]in_top_bus_O;
  input [3:0]in_top_bus_T;
  output [1:0]in_top_uart_gpio_bus_I;
  input [1:0]in_top_uart_gpio_bus_O;
  input [1:0]in_top_uart_gpio_bus_T;
  output [1:0]in_top_i2c_gpio_bus_I;
  input [1:0]in_top_i2c_gpio_bus_O;
  input [1:0]in_top_i2c_gpio_bus_T;
  output [3:0]in_bottom_bus_I;
  input [3:0]in_bottom_bus_O;
  input [3:0]in_bottom_bus_T;
  output [1:0]in_bottom_uart_gpio_bus_I;
  input [1:0]in_bottom_uart_gpio_bus_O;
  input [1:0]in_bottom_uart_gpio_bus_T;
  output [1:0]in_bottom_i2c_gpio_bus_I;
  input [1:0]in_bottom_i2c_gpio_bus_O;
  input [1:0]in_bottom_i2c_gpio_bus_T;
  output in0_I;
  output in1_I;
  output in2_I;
  output in3_I;
  output in4_I;
  output in5_I;
  output in6_I;
  output in7_I;
  input in0_O;
  input in1_O;
  input in2_O;
  input in3_O;
  input in4_O;
  input in5_O;
  input in6_O;
  input in7_O;
  input in0_T;
  input in1_T;
  input in2_T;
  input in3_T;
  input in4_T;
  input in5_T;
  input in6_T;
  input in7_T;
  input out0_I;
  input out1_I;
  input out2_I;
  input out3_I;
  input out4_I;
  input out5_I;
  input out6_I;
  input out7_I;
  output out0_O;
  output out1_O;
  output out2_O;
  output out3_O;
  output out4_O;
  output out5_O;
  output out6_O;
  output out7_O;
  output out0_T;
  output out1_T;
  output out2_T;
  output out3_T;
  output out4_T;
  output out5_T;
  output out6_T;
  output out7_T;

  wire \<const0> ;
  wire \<const1> ;
  wire in1_O;
  wire in4_O;
  wire in4_T;
  wire in5_O;
  wire in5_T;
  wire in6_O;
  wire in6_T;
  wire in7_O;
  wire in7_T;
  wire [1:0]in_top_uart_gpio_bus_O;
  wire [1:0]in_top_uart_gpio_bus_T;
  wire out0_I;
  wire out2_I;
  wire out3_I;
  wire out4_I;
  wire out5_I;
  wire out6_I;
  wire out7_I;

  assign in0_I = \<const0> ;
  assign in1_I = \<const0> ;
  assign in2_I = out2_I;
  assign in3_I = \<const0> ;
  assign in4_I = out4_I;
  assign in5_I = out5_I;
  assign in6_I = out6_I;
  assign in7_I = out7_I;
  assign in_bottom_bus_I[3] = \<const0> ;
  assign in_bottom_bus_I[2] = \<const0> ;
  assign in_bottom_bus_I[1] = \<const0> ;
  assign in_bottom_bus_I[0] = \<const0> ;
  assign in_bottom_i2c_gpio_bus_I[1] = \<const0> ;
  assign in_bottom_i2c_gpio_bus_I[0] = \<const0> ;
  assign in_bottom_uart_gpio_bus_I[1] = \<const0> ;
  assign in_bottom_uart_gpio_bus_I[0] = \<const0> ;
  assign in_top_bus_I[3] = \<const0> ;
  assign in_top_bus_I[2] = \<const0> ;
  assign in_top_bus_I[1] = \<const0> ;
  assign in_top_bus_I[0] = \<const0> ;
  assign in_top_i2c_gpio_bus_I[1] = \<const0> ;
  assign in_top_i2c_gpio_bus_I[0] = \<const0> ;
  assign in_top_uart_gpio_bus_I[1] = out3_I;
  assign in_top_uart_gpio_bus_I[0] = out0_I;
  assign out0_O = in_top_uart_gpio_bus_O[0];
  assign out0_T = in_top_uart_gpio_bus_T[0];
  assign out1_O = in1_O;
  assign out1_T = \<const0> ;
  assign out2_O = \<const0> ;
  assign out2_T = \<const1> ;
  assign out3_O = in_top_uart_gpio_bus_O[1];
  assign out3_T = in_top_uart_gpio_bus_T[1];
  assign out4_O = in4_O;
  assign out4_T = in4_T;
  assign out5_O = in5_O;
  assign out5_T = in5_T;
  assign out6_O = in6_O;
  assign out6_T = in6_T;
  assign out7_O = in7_O;
  assign out7_T = in7_T;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx16550
   (rx_fifo_data_in,
    p_0_in,
    bus2ip_reset_int_core_reg,
    \lsr_reg[1] ,
    \dlm_reg[6] ,
    \dll_reg[3] ,
    \dlm_reg[7] ,
    \dlm_reg[4] ,
    SR,
    rx_fifo_wr_en_i,
    Rx_error_in_fifo0,
    \Rbr_reg[7]_0 ,
    s_axi_aclk,
    rx_sin,
    Q,
    lsr_reg0,
    \lsr_reg[0] ,
    \lsr_reg[0]_0 ,
    \lsr_reg[0]_1 ,
    bus2ip_reset_int_core,
    mcr4_d,
    resynch_clkdiv_frame_d_reg_0,
    parity_error_d_reg_0,
    \lsr_reg[0]_2 ,
    p_92_in,
    \lsr_reg[1]_0 ,
    \lsr_reg[1]_1 ,
    baudoutN_int_i,
    clockDiv,
    \clkdiv_reg[0]_0 ,
    rx_fifo_rd_en_d,
    rx_fifo_rst,
    rx_fifo_full);
  output [10:0]rx_fifo_data_in;
  output p_0_in;
  output bus2ip_reset_int_core_reg;
  output \lsr_reg[1] ;
  output \dlm_reg[6] ;
  output \dll_reg[3] ;
  output \dlm_reg[7] ;
  output \dlm_reg[4] ;
  output [0:0]SR;
  output rx_fifo_wr_en_i;
  output Rx_error_in_fifo0;
  output [7:0]\Rbr_reg[7]_0 ;
  input s_axi_aclk;
  input rx_sin;
  input [1:0]Q;
  input lsr_reg0;
  input \lsr_reg[0] ;
  input [0:0]\lsr_reg[0]_0 ;
  input \lsr_reg[0]_1 ;
  input bus2ip_reset_int_core;
  input mcr4_d;
  input [0:0]resynch_clkdiv_frame_d_reg_0;
  input [5:0]parity_error_d_reg_0;
  input \lsr_reg[0]_2 ;
  input p_92_in;
  input \lsr_reg[1]_0 ;
  input \lsr_reg[1]_1 ;
  input baudoutN_int_i;
  input [15:0]clockDiv;
  input \clkdiv_reg[0]_0 ;
  input rx_fifo_rd_en_d;
  input rx_fifo_rst;
  input rx_fifo_full;

  wire \FSM_sequential_receive_state[0]_i_2_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_3_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_4_n_0 ;
  wire \FSM_sequential_receive_state[0]_i_5_n_0 ;
  wire \FSM_sequential_receive_state[1]_i_2_n_0 ;
  wire \FSM_sequential_receive_state[1]_i_3_n_0 ;
  wire \FSM_sequential_receive_state[1]_i_4_n_0 ;
  wire \FSM_sequential_receive_state[3]_i_3_n_0 ;
  wire \FSM_sequential_receive_state[3]_i_4_n_0 ;
  wire \FSM_sequential_receive_state[3]_i_5_n_0 ;
  wire [1:0]Q;
  wire [7:0]\Rbr_reg[7]_0 ;
  wire Rx_error_in_fifo0;
  wire [0:0]SR;
  wire baudoutN_int_i;
  wire break_interrupt_error_d;
  wire break_interrupt_error_d_i_1_n_0;
  wire break_interrupt_error_d_i_3_n_0;
  wire break_interrupt_error_d_i_4_n_0;
  wire break_interrupt_error_d_i_5_n_0;
  wire break_interrupt_error_d_i_6_n_0;
  wire break_interrupt_error_d_i_7_n_0;
  wire break_interrupt_error_d_i_8_n_0;
  wire break_interrupt_error_d_i_9_n_0;
  wire break_interrupt_error_d_reg_n_0;
  wire break_interrupt_flag;
  wire break_interrupt_flag_i_1_n_0;
  wire break_interrupt_i0;
  wire bus2ip_reset_int_core;
  wire bus2ip_reset_int_core_reg;
  wire character_received;
  wire character_received_com;
  wire character_received_d;
  wire character_received_flag;
  wire character_received_flag0;
  wire character_received_rclk;
  wire clk1x;
  wire clk1x0;
  wire clk1x_d;
  wire clk1x_i_3_n_0;
  wire clk2x;
  wire clk2x0;
  wire clk_div_en_i_1_n_0;
  wire clk_div_en_i_2_n_0;
  wire clk_div_en_i_3_n_0;
  wire clk_div_en_i_4_n_0;
  wire clk_div_en_reg_n_0;
  wire \clkdiv[0]_i_1_n_0 ;
  wire \clkdiv[1]_i_1__0_n_0 ;
  wire \clkdiv[2]_i_1__0_n_0 ;
  wire \clkdiv[2]_i_2_n_0 ;
  wire \clkdiv[3]_i_1__0_n_0 ;
  wire \clkdiv[3]_i_2__0_n_0 ;
  wire \clkdiv[3]_i_3_n_0 ;
  wire \clkdiv[3]_i_4_n_0 ;
  wire \clkdiv[3]_i_5_n_0 ;
  wire \clkdiv[3]_i_6_n_0 ;
  wire \clkdiv[3]_i_7_n_0 ;
  wire \clkdiv_reg[0]_0 ;
  wire \clkdiv_reg_n_0_[0] ;
  wire \clkdiv_reg_n_0_[1] ;
  wire \clkdiv_reg_n_0_[2] ;
  wire \clkdiv_reg_n_0_[3] ;
  wire [15:0]clockDiv;
  wire clock_1x_early;
  wire clock_1x_early0;
  wire \dll_reg[3] ;
  wire \dlm_reg[4] ;
  wire \dlm_reg[6] ;
  wire \dlm_reg[7] ;
  wire framing_error_com;
  wire framing_error_d;
  wire framing_error_d_i_2_n_0;
  wire framing_error_flag;
  wire framing_error_flag0;
  wire framing_error_flag_i_1_n_0;
  wire framing_error_i0;
  wire got_start_bit_com;
  wire got_start_bit_d;
  wire have_bi_in_fifo_n;
  wire have_bi_in_fifo_n_i_i_1_n_0;
  wire have_bi_in_fifo_n_i_i_2_n_0;
  wire load_rbr_com;
  wire load_rbr_d;
  wire load_rbr_d_i_1_n_0;
  wire lsr1_set;
  wire \lsr[0]_i_2_n_0 ;
  wire lsr_reg0;
  wire \lsr_reg[0] ;
  wire [0:0]\lsr_reg[0]_0 ;
  wire \lsr_reg[0]_1 ;
  wire \lsr_reg[0]_2 ;
  wire \lsr_reg[1] ;
  wire \lsr_reg[1]_0 ;
  wire \lsr_reg[1]_1 ;
  wire mcr4_d;
  wire [3:0]next_state;
  wire p_0_in;
  wire p_92_in;
  wire parity_error_d;
  wire parity_error_d0;
  wire parity_error_d_i_2_n_0;
  wire parity_error_d_i_3_n_0;
  wire parity_error_d_i_4_n_0;
  wire parity_error_d_i_5_n_0;
  wire parity_error_d_i_6_n_0;
  wire parity_error_d_i_7_n_0;
  wire parity_error_d_i_8_n_0;
  wire [5:0]parity_error_d_reg_0;
  wire parity_error_i0;
  wire parity_error_latch;
  wire parity_error_latch_i_1_n_0;
  wire rbr_d0;
  wire \rbr_d[0]_i_1_n_0 ;
  wire \rbr_d[1]_i_1_n_0 ;
  wire \rbr_d[2]_i_1_n_0 ;
  wire \rbr_d[3]_i_1_n_0 ;
  wire \rbr_d[4]_i_1_n_0 ;
  wire \rbr_d[5]_i_1_n_0 ;
  wire \rbr_d[6]_i_1_n_0 ;
  wire \rbr_d[7]_i_2_n_0 ;
  wire rclk_int;
  wire [3:0]receive_state;
  wire resynch_clkdiv;
  wire resynch_clkdiv_d;
  wire resynch_clkdiv_d_i_2_n_0;
  wire resynch_clkdiv_d_i_3_n_0;
  wire resynch_clkdiv_frame_d;
  wire resynch_clkdiv_frame_d_i_1_n_0;
  wire resynch_clkdiv_frame_d_i_2_n_0;
  wire resynch_clkdiv_frame_d_i_3_n_0;
  wire [0:0]resynch_clkdiv_frame_d_reg_0;
  wire resynch_clkdiv_startbit;
  wire resynch_clkdiv_startbit_d;
  wire resynch_clkdiv_startbit_d_i_2_n_0;
  wire [7:0]rsr;
  wire [10:0]rx_fifo_data_in;
  wire rx_fifo_full;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_rst;
  wire rx_fifo_wr_en_i;
  wire rx_parity_com;
  wire rx_rst;
  wire rx_sin;
  wire s_axi_aclk;
  wire sin_d1;
  wire sin_d10;
  wire sin_d2;
  wire sin_d3;
  wire sin_d4;
  wire sin_d5;
  wire sin_d6;
  wire sin_d7;
  wire sin_d8;
  wire sin_d9;

  FDRE Data_ready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(character_received_flag),
        .Q(character_received),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'hFFFFFFFF05003500)) 
    \FSM_sequential_receive_state[0]_i_1 
       (.I0(\FSM_sequential_receive_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_receive_state[0]_i_3_n_0 ),
        .I2(receive_state[2]),
        .I3(receive_state[3]),
        .I4(\FSM_sequential_receive_state[0]_i_4_n_0 ),
        .I5(\FSM_sequential_receive_state[0]_i_5_n_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'hF03C103CF13CF03C)) 
    \FSM_sequential_receive_state[0]_i_2 
       (.I0(parity_error_d_reg_0[3]),
        .I1(\FSM_sequential_receive_state[3]_i_5_n_0 ),
        .I2(receive_state[0]),
        .I3(receive_state[1]),
        .I4(parity_error_d_reg_0[0]),
        .I5(parity_error_d_reg_0[1]),
        .O(\FSM_sequential_receive_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \FSM_sequential_receive_state[0]_i_3 
       (.I0(parity_error_d_reg_0[1]),
        .I1(parity_error_d_reg_0[0]),
        .I2(receive_state[0]),
        .O(\FSM_sequential_receive_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \FSM_sequential_receive_state[0]_i_4 
       (.I0(parity_error_d_reg_0[3]),
        .I1(sin_d2),
        .I2(parity_error_d_reg_0[2]),
        .O(\FSM_sequential_receive_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h51410101)) 
    \FSM_sequential_receive_state[0]_i_5 
       (.I0(receive_state[3]),
        .I1(receive_state[2]),
        .I2(receive_state[0]),
        .I3(receive_state[1]),
        .I4(sin_d2),
        .O(\FSM_sequential_receive_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD0C0D0C0D0CFDFC0)) 
    \FSM_sequential_receive_state[1]_i_1 
       (.I0(\FSM_sequential_receive_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_receive_state[1]_i_3_n_0 ),
        .I2(receive_state[3]),
        .I3(receive_state[2]),
        .I4(receive_state[0]),
        .I5(receive_state[1]),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'h5757575757575700)) 
    \FSM_sequential_receive_state[1]_i_2 
       (.I0(receive_state[0]),
        .I1(parity_error_d_reg_0[0]),
        .I2(parity_error_d_reg_0[1]),
        .I3(parity_error_d_reg_0[3]),
        .I4(parity_error_d_reg_0[2]),
        .I5(sin_d2),
        .O(\FSM_sequential_receive_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAFBA)) 
    \FSM_sequential_receive_state[1]_i_3 
       (.I0(\FSM_sequential_receive_state[1]_i_4_n_0 ),
        .I1(sin_d2),
        .I2(receive_state[0]),
        .I3(parity_error_d_reg_0[2]),
        .I4(receive_state[1]),
        .I5(receive_state[2]),
        .O(\FSM_sequential_receive_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000C080C0008000C)) 
    \FSM_sequential_receive_state[1]_i_4 
       (.I0(break_interrupt_error_d_i_8_n_0),
        .I1(receive_state[1]),
        .I2(receive_state[2]),
        .I3(receive_state[0]),
        .I4(parity_error_d_reg_0[0]),
        .I5(parity_error_d_reg_0[1]),
        .O(\FSM_sequential_receive_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7416741654167416)) 
    \FSM_sequential_receive_state[2]_i_1 
       (.I0(receive_state[3]),
        .I1(receive_state[2]),
        .I2(receive_state[1]),
        .I3(receive_state[0]),
        .I4(parity_error_d_reg_0[1]),
        .I5(parity_error_d_reg_0[0]),
        .O(next_state[2]));
  LUT4 #(
    .INIT(16'hBEFF)) 
    \FSM_sequential_receive_state[3]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(mcr4_d),
        .I2(resynch_clkdiv_frame_d_reg_0),
        .I3(have_bi_in_fifo_n),
        .O(parity_error_d0));
  LUT6 #(
    .INIT(64'h04C404C407C704C4)) 
    \FSM_sequential_receive_state[3]_i_2 
       (.I0(\FSM_sequential_receive_state[3]_i_3_n_0 ),
        .I1(receive_state[3]),
        .I2(receive_state[2]),
        .I3(\FSM_sequential_receive_state[3]_i_4_n_0 ),
        .I4(receive_state[1]),
        .I5(receive_state[0]),
        .O(next_state[3]));
  LUT6 #(
    .INIT(64'h02FF000004FF00FF)) 
    \FSM_sequential_receive_state[3]_i_3 
       (.I0(parity_error_d_reg_0[1]),
        .I1(parity_error_d_reg_0[0]),
        .I2(parity_error_d_reg_0[3]),
        .I3(receive_state[1]),
        .I4(\FSM_sequential_receive_state[3]_i_5_n_0 ),
        .I5(receive_state[0]),
        .O(\FSM_sequential_receive_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000100010101)) 
    \FSM_sequential_receive_state[3]_i_4 
       (.I0(parity_error_d_reg_0[3]),
        .I1(parity_error_d_reg_0[2]),
        .I2(sin_d2),
        .I3(receive_state[0]),
        .I4(parity_error_d_reg_0[0]),
        .I5(parity_error_d_reg_0[1]),
        .O(\FSM_sequential_receive_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_receive_state[3]_i_5 
       (.I0(parity_error_d_reg_0[2]),
        .I1(sin_d2),
        .O(\FSM_sequential_receive_state[3]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDSE \FSM_sequential_receive_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[0]),
        .Q(receive_state[0]),
        .S(parity_error_d0));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDRE \FSM_sequential_receive_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[1]),
        .Q(receive_state[1]),
        .R(parity_error_d0));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDSE \FSM_sequential_receive_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[2]),
        .Q(receive_state[2]),
        .S(parity_error_d0));
  (* FSM_ENCODED_STATES = "data_bit3:0001,data_bit2:0000,data_bit1:0110,frame_error:0011,stop_bit1:1000,stop_bit2:0111,parity_bit:1001,start_bit:0100,idle:0101,data_bit6:1010,data_bit8:1100,data_bit5:1101,data_bit7:1011,data_bit4:0010" *) 
  FDRE \FSM_sequential_receive_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(next_state[3]),
        .Q(receive_state[3]),
        .R(parity_error_d0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \INFERRED_GEN.data_reg[15][10]_srl16_i_1 
       (.I0(rx_fifo_full),
        .I1(\lsr_reg[0] ),
        .I2(character_received),
        .I3(have_bi_in_fifo_n),
        .O(rx_fifo_wr_en_i));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_i_1 
       (.I0(baudoutN_int_i),
        .I1(\dlm_reg[6] ),
        .I2(\dll_reg[3] ),
        .I3(\dlm_reg[7] ),
        .I4(\dlm_reg[4] ),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_i_3 
       (.I0(clockDiv[14]),
        .I1(clockDiv[13]),
        .I2(clockDiv[0]),
        .I3(clockDiv[4]),
        .O(\dlm_reg[6] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_i_4 
       (.I0(clockDiv[3]),
        .I1(clockDiv[2]),
        .I2(clockDiv[7]),
        .I3(clockDiv[8]),
        .O(\dll_reg[3] ));
  LUT4 #(
    .INIT(16'h0001)) 
    \NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_i_5 
       (.I0(clockDiv[15]),
        .I1(clockDiv[6]),
        .I2(clockDiv[1]),
        .I3(clockDiv[9]),
        .O(\dlm_reg[7] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_i_6 
       (.I0(clockDiv[12]),
        .I1(clockDiv[10]),
        .I2(clockDiv[5]),
        .I3(clockDiv[11]),
        .O(\dlm_reg[4] ));
  FDRE \Rbr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[0]),
        .Q(\Rbr_reg[7]_0 [0]),
        .R(rx_rst));
  FDRE \Rbr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[1]),
        .Q(\Rbr_reg[7]_0 [1]),
        .R(rx_rst));
  FDRE \Rbr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[2]),
        .Q(\Rbr_reg[7]_0 [2]),
        .R(rx_rst));
  FDRE \Rbr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[3]),
        .Q(\Rbr_reg[7]_0 [3]),
        .R(rx_rst));
  FDRE \Rbr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[4]),
        .Q(\Rbr_reg[7]_0 [4]),
        .R(rx_rst));
  FDRE \Rbr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[5]),
        .Q(\Rbr_reg[7]_0 [5]),
        .R(rx_rst));
  FDRE \Rbr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[6]),
        .Q(\Rbr_reg[7]_0 [6]),
        .R(rx_rst));
  FDRE \Rbr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_data_in[7]),
        .Q(\Rbr_reg[7]_0 [7]),
        .R(rx_rst));
  LUT4 #(
    .INIT(16'hAAA8)) 
    Rx_error_in_fifo_i_1
       (.I0(rx_fifo_wr_en_i),
        .I1(rx_fifo_data_in[8]),
        .I2(rx_fifo_data_in[9]),
        .I3(rx_fifo_data_in[10]),
        .O(Rx_error_in_fifo0));
  LUT6 #(
    .INIT(64'h00000000E2E2EEE2)) 
    break_interrupt_error_d_i_1
       (.I0(break_interrupt_error_d_reg_n_0),
        .I1(break_interrupt_error_d),
        .I2(break_interrupt_error_d_i_3_n_0),
        .I3(break_interrupt_error_d_i_4_n_0),
        .I4(break_interrupt_error_d_i_5_n_0),
        .I5(parity_error_d0),
        .O(break_interrupt_error_d_i_1_n_0));
  LUT6 #(
    .INIT(64'h0BBBFFFF00000000)) 
    break_interrupt_error_d_i_2
       (.I0(sin_d2),
        .I1(break_interrupt_error_d_i_6_n_0),
        .I2(receive_state[2]),
        .I3(receive_state[1]),
        .I4(receive_state[3]),
        .I5(clk1x),
        .O(break_interrupt_error_d));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h80808000)) 
    break_interrupt_error_d_i_3
       (.I0(break_interrupt_error_d_i_7_n_0),
        .I1(receive_state[3]),
        .I2(receive_state[0]),
        .I3(sin_d2),
        .I4(break_interrupt_error_d_reg_n_0),
        .O(break_interrupt_error_d_i_3_n_0));
  LUT6 #(
    .INIT(64'h77777777F7FFFFFF)) 
    break_interrupt_error_d_i_4
       (.I0(receive_state[3]),
        .I1(receive_state[1]),
        .I2(parity_error_d_reg_0[1]),
        .I3(parity_error_d_reg_0[0]),
        .I4(break_interrupt_error_d_i_8_n_0),
        .I5(receive_state[2]),
        .O(break_interrupt_error_d_i_4_n_0));
  LUT6 #(
    .INIT(64'hABAB03ABFFAB03AB)) 
    break_interrupt_error_d_i_5
       (.I0(receive_state[0]),
        .I1(sin_d2),
        .I2(break_interrupt_error_d_reg_n_0),
        .I3(parity_error_d_i_7_n_0),
        .I4(receive_state[3]),
        .I5(parity_error_d_reg_0[2]),
        .O(break_interrupt_error_d_i_5_n_0));
  LUT6 #(
    .INIT(64'h002000200020FFFF)) 
    break_interrupt_error_d_i_6
       (.I0(parity_error_d_reg_0[2]),
        .I1(receive_state[2]),
        .I2(receive_state[0]),
        .I3(receive_state[1]),
        .I4(break_interrupt_error_d_i_9_n_0),
        .I5(parity_error_d_reg_0[3]),
        .O(break_interrupt_error_d_i_6_n_0));
  LUT6 #(
    .INIT(64'h6767676767476727)) 
    break_interrupt_error_d_i_7
       (.I0(receive_state[1]),
        .I1(receive_state[2]),
        .I2(\FSM_sequential_receive_state[3]_i_5_n_0 ),
        .I3(parity_error_d_reg_0[0]),
        .I4(parity_error_d_reg_0[1]),
        .I5(parity_error_d_reg_0[3]),
        .O(break_interrupt_error_d_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h01)) 
    break_interrupt_error_d_i_8
       (.I0(sin_d2),
        .I1(parity_error_d_reg_0[2]),
        .I2(parity_error_d_reg_0[3]),
        .O(break_interrupt_error_d_i_8_n_0));
  LUT6 #(
    .INIT(64'hA2A0F7BFAAAAFFFF)) 
    break_interrupt_error_d_i_9
       (.I0(receive_state[0]),
        .I1(receive_state[1]),
        .I2(parity_error_d_reg_0[0]),
        .I3(parity_error_d_reg_0[1]),
        .I4(receive_state[2]),
        .I5(parity_error_d_reg_0[2]),
        .O(break_interrupt_error_d_i_9_n_0));
  FDRE break_interrupt_error_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(break_interrupt_error_d_i_1_n_0),
        .Q(break_interrupt_error_d_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    break_interrupt_flag_i_1
       (.I0(p_0_in),
        .I1(break_interrupt_error_d_reg_n_0),
        .I2(break_interrupt_flag),
        .O(break_interrupt_flag_i_1_n_0));
  FDRE break_interrupt_flag_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(break_interrupt_flag_i_1_n_0),
        .Q(break_interrupt_flag),
        .R(framing_error_flag0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    break_interrupt_i_i_1
       (.I0(character_received_flag),
        .I1(break_interrupt_flag),
        .O(break_interrupt_i0));
  FDRE break_interrupt_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(break_interrupt_i0),
        .Q(rx_fifo_data_in[8]),
        .R(rx_rst));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \character_counter[9]_i_1 
       (.I0(rx_fifo_wr_en_i),
        .I1(\lsr_reg[0]_0 ),
        .I2(rx_fifo_rd_en_d),
        .I3(rx_fifo_rst),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h0C0C0010)) 
    character_received_d_i_1
       (.I0(receive_state[2]),
        .I1(receive_state[1]),
        .I2(receive_state[3]),
        .I3(parity_error_d_reg_0[2]),
        .I4(receive_state[0]),
        .O(character_received_com));
  FDRE character_received_d_reg
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(character_received_com),
        .Q(character_received_d),
        .R(parity_error_d0));
  LUT4 #(
    .INIT(16'hFFBE)) 
    character_received_flag_i_1
       (.I0(character_received_rclk),
        .I1(resynch_clkdiv_frame_d_reg_0),
        .I2(mcr4_d),
        .I3(bus2ip_reset_int_core),
        .O(framing_error_flag0));
  LUT2 #(
    .INIT(4'h2)) 
    character_received_flag_i_2
       (.I0(character_received_d),
        .I1(p_0_in),
        .O(character_received_flag0));
  FDRE character_received_flag_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(character_received_flag0),
        .Q(character_received_flag),
        .R(framing_error_flag0));
  FDRE character_received_rclk_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(character_received_d),
        .Q(character_received_rclk),
        .R(rx_rst));
  FDRE clk1x_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1x),
        .Q(clk1x_d),
        .R(rx_rst));
  LUT3 #(
    .INIT(8'hF6)) 
    clk1x_i_1
       (.I0(resynch_clkdiv_frame_d_reg_0),
        .I1(mcr4_d),
        .I2(bus2ip_reset_int_core),
        .O(rx_rst));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    clk1x_i_2
       (.I0(clk1x_i_3_n_0),
        .I1(\clkdiv_reg_n_0_[2] ),
        .I2(\clkdiv_reg_n_0_[3] ),
        .I3(\clkdiv_reg_n_0_[1] ),
        .I4(\clkdiv_reg_n_0_[0] ),
        .I5(p_0_in),
        .O(clk1x0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFB00FFFF)) 
    clk1x_i_3
       (.I0(resynch_clkdiv_startbit_d_i_2_n_0),
        .I1(sin_d10),
        .I2(sin_d9),
        .I3(resynch_clkdiv_d_i_2_n_0),
        .I4(got_start_bit_d),
        .I5(p_0_in),
        .O(clk1x_i_3_n_0));
  FDRE clk1x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1x0),
        .Q(clk1x),
        .R(rx_rst));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    clk2x_i_1__0
       (.I0(\clkdiv_reg_n_0_[1] ),
        .I1(\clkdiv_reg_n_0_[0] ),
        .I2(\clkdiv_reg_n_0_[2] ),
        .I3(\clkdiv_reg_n_0_[3] ),
        .I4(p_0_in),
        .O(clk2x0));
  FDRE clk2x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk2x0),
        .Q(clk2x),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'hA2AAAAAA00000000)) 
    clk_div_en_i_1
       (.I0(clk_div_en_i_2_n_0),
        .I1(clk_div_en_i_3_n_0),
        .I2(receive_state[1]),
        .I3(receive_state[2]),
        .I4(clk1x_d),
        .I5(clk_div_en_i_4_n_0),
        .O(clk_div_en_i_1_n_0));
  LUT4 #(
    .INIT(16'h0082)) 
    clk_div_en_i_2
       (.I0(have_bi_in_fifo_n),
        .I1(resynch_clkdiv_frame_d_reg_0),
        .I2(mcr4_d),
        .I3(bus2ip_reset_int_core),
        .O(clk_div_en_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    clk_div_en_i_3
       (.I0(receive_state[0]),
        .I1(receive_state[3]),
        .O(clk_div_en_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    clk_div_en_i_4
       (.I0(p_0_in),
        .I1(sin_d1),
        .I2(sin_d2),
        .I3(got_start_bit_d),
        .I4(clk_div_en_reg_n_0),
        .O(clk_div_en_i_4_n_0));
  FDRE clk_div_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk_div_en_i_1_n_0),
        .Q(clk_div_en_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \clkdiv[0]_i_1 
       (.I0(\clkdiv[3]_i_5_n_0 ),
        .I1(resynch_clkdiv_frame_d),
        .I2(resynch_clkdiv_startbit_d),
        .I3(resynch_clkdiv_d),
        .I4(\clkdiv_reg_n_0_[0] ),
        .O(\clkdiv[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAABAAAA)) 
    \clkdiv[1]_i_1__0 
       (.I0(\clkdiv[3]_i_5_n_0 ),
        .I1(resynch_clkdiv_frame_d),
        .I2(resynch_clkdiv_startbit_d),
        .I3(resynch_clkdiv_d),
        .I4(\clkdiv_reg_n_0_[0] ),
        .I5(\clkdiv_reg_n_0_[1] ),
        .O(\clkdiv[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000006AFFFFFFFF)) 
    \clkdiv[2]_i_1__0 
       (.I0(\clkdiv_reg_n_0_[2] ),
        .I1(\clkdiv_reg_n_0_[1] ),
        .I2(\clkdiv_reg_n_0_[0] ),
        .I3(resynch_clkdiv_startbit_d),
        .I4(resynch_clkdiv_frame_d),
        .I5(\clkdiv[2]_i_2_n_0 ),
        .O(\clkdiv[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \clkdiv[2]_i_2 
       (.I0(resynch_clkdiv_d),
        .I1(\clkdiv[3]_i_5_n_0 ),
        .O(\clkdiv[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \clkdiv[3]_i_1__0 
       (.I0(clk1x_i_3_n_0),
        .I1(clk_div_en_reg_n_0),
        .I2(\clkdiv[3]_i_4_n_0 ),
        .O(\clkdiv[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \clkdiv[3]_i_2__0 
       (.I0(resynch_clkdiv_frame_d),
        .I1(resynch_clkdiv_startbit_d),
        .I2(resynch_clkdiv_d),
        .I3(\clkdiv[3]_i_5_n_0 ),
        .I4(p_0_in),
        .O(\clkdiv[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000EFFE)) 
    \clkdiv[3]_i_3 
       (.I0(resynch_clkdiv_startbit_d),
        .I1(resynch_clkdiv_frame_d),
        .I2(\clkdiv_reg_n_0_[3] ),
        .I3(\clkdiv[3]_i_6_n_0 ),
        .I4(\clkdiv[3]_i_5_n_0 ),
        .I5(resynch_clkdiv_d),
        .O(\clkdiv[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \clkdiv[3]_i_4 
       (.I0(bus2ip_reset_int_core),
        .I1(mcr4_d),
        .I2(resynch_clkdiv_frame_d_reg_0),
        .O(\clkdiv[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \clkdiv[3]_i_5 
       (.I0(\clkdiv_reg[0]_0 ),
        .I1(parity_error_d_reg_0[2]),
        .I2(clk2x),
        .I3(\clkdiv[3]_i_7_n_0 ),
        .I4(receive_state[1]),
        .I5(receive_state[0]),
        .O(\clkdiv[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \clkdiv[3]_i_6 
       (.I0(\clkdiv_reg_n_0_[1] ),
        .I1(\clkdiv_reg_n_0_[0] ),
        .I2(\clkdiv_reg_n_0_[2] ),
        .O(\clkdiv[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \clkdiv[3]_i_7 
       (.I0(receive_state[2]),
        .I1(receive_state[3]),
        .O(\clkdiv[3]_i_7_n_0 ));
  FDRE \clkdiv_reg[0] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_2__0_n_0 ),
        .D(\clkdiv[0]_i_1_n_0 ),
        .Q(\clkdiv_reg_n_0_[0] ),
        .R(\clkdiv[3]_i_1__0_n_0 ));
  FDRE \clkdiv_reg[1] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_2__0_n_0 ),
        .D(\clkdiv[1]_i_1__0_n_0 ),
        .Q(\clkdiv_reg_n_0_[1] ),
        .R(\clkdiv[3]_i_1__0_n_0 ));
  FDRE \clkdiv_reg[2] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_2__0_n_0 ),
        .D(\clkdiv[2]_i_1__0_n_0 ),
        .Q(\clkdiv_reg_n_0_[2] ),
        .R(\clkdiv[3]_i_1__0_n_0 ));
  FDRE \clkdiv_reg[3] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_2__0_n_0 ),
        .D(\clkdiv[3]_i_3_n_0 ),
        .Q(\clkdiv_reg_n_0_[3] ),
        .R(\clkdiv[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    clock_1x_early_i_1
       (.I0(\clkdiv_reg_n_0_[0] ),
        .I1(\clkdiv_reg_n_0_[1] ),
        .I2(\clkdiv_reg_n_0_[3] ),
        .I3(\clkdiv_reg_n_0_[2] ),
        .I4(p_0_in),
        .O(clock_1x_early0));
  FDRE clock_1x_early_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clock_1x_early0),
        .Q(clock_1x_early),
        .R(rx_rst));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h04)) 
    framing_error_d_i_1
       (.I0(sin_d2),
        .I1(receive_state[3]),
        .I2(framing_error_d_i_2_n_0),
        .O(framing_error_com));
  LUT6 #(
    .INIT(64'hFFFFFEF0FDFB00FF)) 
    framing_error_d_i_2
       (.I0(parity_error_d_reg_0[1]),
        .I1(parity_error_d_reg_0[0]),
        .I2(parity_error_d_reg_0[3]),
        .I3(receive_state[0]),
        .I4(receive_state[1]),
        .I5(receive_state[2]),
        .O(framing_error_d_i_2_n_0));
  FDRE framing_error_d_reg
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(framing_error_com),
        .Q(framing_error_d),
        .R(parity_error_d0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    framing_error_flag_i_1
       (.I0(p_0_in),
        .I1(framing_error_d),
        .I2(framing_error_flag),
        .O(framing_error_flag_i_1_n_0));
  FDRE framing_error_flag_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(framing_error_flag_i_1_n_0),
        .Q(framing_error_flag),
        .R(framing_error_flag0));
  LUT2 #(
    .INIT(4'h8)) 
    framing_error_i_i_1
       (.I0(character_received_flag),
        .I1(framing_error_flag),
        .O(framing_error_i0));
  FDRE framing_error_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(framing_error_i0),
        .Q(rx_fifo_data_in[9]),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'h050FF0FFF5FFFFDF)) 
    got_start_bit_d_i_1
       (.I0(sin_d2),
        .I1(parity_error_d_reg_0[2]),
        .I2(receive_state[3]),
        .I3(receive_state[0]),
        .I4(receive_state[1]),
        .I5(receive_state[2]),
        .O(got_start_bit_com));
  FDRE got_start_bit_d_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(got_start_bit_com),
        .Q(got_start_bit_d),
        .R(rx_rst));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF6FF)) 
    have_bi_in_fifo_n_i_i_1
       (.I0(resynch_clkdiv_frame_d_reg_0),
        .I1(mcr4_d),
        .I2(bus2ip_reset_int_core),
        .I3(have_bi_in_fifo_n_i_i_2_n_0),
        .O(have_bi_in_fifo_n_i_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    have_bi_in_fifo_n_i_i_2
       (.I0(sin_d2),
        .I1(character_received_flag),
        .I2(\lsr_reg[0] ),
        .I3(rx_fifo_data_in[8]),
        .I4(break_interrupt_flag),
        .I5(have_bi_in_fifo_n),
        .O(have_bi_in_fifo_n_i_i_2_n_0));
  FDRE have_bi_in_fifo_n_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(have_bi_in_fifo_n_i_i_1_n_0),
        .Q(have_bi_in_fifo_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00008A80)) 
    load_rbr_d_i_1
       (.I0(\clkdiv[3]_i_4_n_0 ),
        .I1(load_rbr_com),
        .I2(clk2x),
        .I3(load_rbr_d),
        .I4(resynch_clkdiv_d),
        .O(load_rbr_d_i_1_n_0));
  LUT6 #(
    .INIT(64'h0020020000088888)) 
    load_rbr_d_i_2
       (.I0(receive_state[3]),
        .I1(receive_state[2]),
        .I2(parity_error_d_reg_0[1]),
        .I3(parity_error_d_reg_0[0]),
        .I4(receive_state[0]),
        .I5(receive_state[1]),
        .O(load_rbr_com));
  FDRE load_rbr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(load_rbr_d_i_1_n_0),
        .Q(load_rbr_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000F000B000B00)) 
    \lsr[0]_i_1 
       (.I0(\lsr_reg[0]_2 ),
        .I1(p_92_in),
        .I2(bus2ip_reset_int_core),
        .I3(\lsr[0]_i_2_n_0 ),
        .I4(\lsr_reg[0]_0 ),
        .I5(\lsr_reg[0] ),
        .O(bus2ip_reset_int_core_reg));
  LUT6 #(
    .INIT(64'hBBFBFFFB88F8FFF8)) 
    \lsr[0]_i_2 
       (.I0(Q[0]),
        .I1(lsr_reg0),
        .I2(character_received),
        .I3(\lsr_reg[0] ),
        .I4(\lsr_reg[0]_0 ),
        .I5(\lsr_reg[0]_1 ),
        .O(\lsr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FECE)) 
    \lsr[1]_i_1 
       (.I0(\lsr_reg[1]_0 ),
        .I1(lsr1_set),
        .I2(lsr_reg0),
        .I3(Q[1]),
        .I4(\lsr_reg[1]_1 ),
        .I5(bus2ip_reset_int_core),
        .O(\lsr_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \lsr[1]_i_2 
       (.I0(\lsr_reg[0]_1 ),
        .I1(character_received),
        .I2(\lsr_reg[0] ),
        .I3(rx_fifo_full),
        .O(lsr1_set));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF40)) 
    parity_error_d_i_1
       (.I0(parity_error_d_i_2_n_0),
        .I1(receive_state[2]),
        .I2(receive_state[3]),
        .I3(parity_error_d_i_3_n_0),
        .I4(parity_error_d_i_4_n_0),
        .I5(parity_error_d_i_5_n_0),
        .O(rx_parity_com));
  LUT6 #(
    .INIT(64'hFFFFFFFF8B74AA55)) 
    parity_error_d_i_2
       (.I0(parity_error_d),
        .I1(\FSM_sequential_receive_state[0]_i_3_n_0 ),
        .I2(parity_error_d_reg_0[4]),
        .I3(sin_d2),
        .I4(parity_error_d_reg_0[5]),
        .I5(receive_state[1]),
        .O(parity_error_d_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    parity_error_d_i_3
       (.I0(receive_state[1]),
        .I1(receive_state[2]),
        .I2(receive_state[3]),
        .I3(receive_state[0]),
        .I4(parity_error_d_i_6_n_0),
        .O(parity_error_d_i_3_n_0));
  LUT6 #(
    .INIT(64'h0F66000F0F660066)) 
    parity_error_d_i_4
       (.I0(parity_error_d),
        .I1(sin_d2),
        .I2(parity_error_d_reg_0[4]),
        .I3(receive_state[3]),
        .I4(parity_error_d_i_7_n_0),
        .I5(receive_state[0]),
        .O(parity_error_d_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    parity_error_d_i_5
       (.I0(receive_state[1]),
        .I1(receive_state[3]),
        .I2(receive_state[2]),
        .I3(receive_state[0]),
        .I4(parity_error_d_i_8_n_0),
        .O(parity_error_d_i_5_n_0));
  LUT6 #(
    .INIT(64'hA2AA5D55AEAA5155)) 
    parity_error_d_i_6
       (.I0(parity_error_d),
        .I1(parity_error_d_reg_0[5]),
        .I2(parity_error_d_reg_0[0]),
        .I3(parity_error_d_reg_0[1]),
        .I4(sin_d2),
        .I5(parity_error_d_reg_0[4]),
        .O(parity_error_d_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    parity_error_d_i_7
       (.I0(receive_state[1]),
        .I1(receive_state[2]),
        .O(parity_error_d_i_7_n_0));
  LUT6 #(
    .INIT(64'hA2AA5D55AEAA5155)) 
    parity_error_d_i_8
       (.I0(parity_error_d),
        .I1(parity_error_d_reg_0[5]),
        .I2(parity_error_d_reg_0[1]),
        .I3(parity_error_d_reg_0[0]),
        .I4(sin_d2),
        .I5(parity_error_d_reg_0[4]),
        .O(parity_error_d_i_8_n_0));
  FDRE parity_error_d_reg
       (.C(s_axi_aclk),
        .CE(clk1x),
        .D(rx_parity_com),
        .Q(parity_error_d),
        .R(parity_error_d0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h80)) 
    parity_error_i_i_1
       (.I0(parity_error_latch),
        .I1(character_received_flag),
        .I2(parity_error_d_reg_0[3]),
        .O(parity_error_i0));
  FDRE parity_error_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(parity_error_i0),
        .Q(rx_fifo_data_in[10]),
        .R(rx_rst));
  LUT4 #(
    .INIT(16'hBF80)) 
    parity_error_latch_i_1
       (.I0(parity_error_d),
        .I1(load_rbr_d),
        .I2(clk2x),
        .I3(parity_error_latch),
        .O(parity_error_latch_i_1_n_0));
  FDRE parity_error_latch_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(parity_error_latch_i_1_n_0),
        .Q(parity_error_latch),
        .R(framing_error_flag0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rbr_d[0]_i_1 
       (.I0(rsr[0]),
        .I1(rsr[2]),
        .I2(parity_error_d_reg_0[0]),
        .I3(rsr[1]),
        .I4(parity_error_d_reg_0[1]),
        .I5(rsr[3]),
        .O(\rbr_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rbr_d[1]_i_1 
       (.I0(rsr[1]),
        .I1(rsr[3]),
        .I2(parity_error_d_reg_0[0]),
        .I3(rsr[2]),
        .I4(parity_error_d_reg_0[1]),
        .I5(rsr[4]),
        .O(\rbr_d[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rbr_d[2]_i_1 
       (.I0(rsr[2]),
        .I1(rsr[4]),
        .I2(parity_error_d_reg_0[0]),
        .I3(rsr[3]),
        .I4(parity_error_d_reg_0[1]),
        .I5(rsr[5]),
        .O(\rbr_d[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rbr_d[3]_i_1 
       (.I0(rsr[3]),
        .I1(rsr[5]),
        .I2(parity_error_d_reg_0[0]),
        .I3(rsr[4]),
        .I4(parity_error_d_reg_0[1]),
        .I5(rsr[6]),
        .O(\rbr_d[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rbr_d[4]_i_1 
       (.I0(rsr[4]),
        .I1(rsr[6]),
        .I2(parity_error_d_reg_0[0]),
        .I3(rsr[5]),
        .I4(parity_error_d_reg_0[1]),
        .I5(rsr[7]),
        .O(\rbr_d[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rbr_d[5]_i_1 
       (.I0(rsr[5]),
        .I1(rsr[7]),
        .I2(parity_error_d_reg_0[0]),
        .I3(parity_error_d_reg_0[1]),
        .I4(rsr[6]),
        .O(\rbr_d[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \rbr_d[6]_i_1 
       (.I0(parity_error_d_reg_0[1]),
        .I1(rsr[7]),
        .I2(parity_error_d_reg_0[0]),
        .I3(rsr[6]),
        .O(\rbr_d[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rbr_d[7]_i_1 
       (.I0(clk1x),
        .I1(load_rbr_d),
        .O(rbr_d0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rbr_d[7]_i_2 
       (.I0(rsr[7]),
        .I1(parity_error_d_reg_0[1]),
        .I2(parity_error_d_reg_0[0]),
        .O(\rbr_d[7]_i_2_n_0 ));
  FDRE \rbr_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[0]_i_1_n_0 ),
        .Q(rx_fifo_data_in[0]),
        .R(rx_rst));
  FDRE \rbr_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[1]_i_1_n_0 ),
        .Q(rx_fifo_data_in[1]),
        .R(rx_rst));
  FDRE \rbr_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[2]_i_1_n_0 ),
        .Q(rx_fifo_data_in[2]),
        .R(rx_rst));
  FDRE \rbr_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[3]_i_1_n_0 ),
        .Q(rx_fifo_data_in[3]),
        .R(rx_rst));
  FDRE \rbr_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[4]_i_1_n_0 ),
        .Q(rx_fifo_data_in[4]),
        .R(rx_rst));
  FDRE \rbr_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[5]_i_1_n_0 ),
        .Q(rx_fifo_data_in[5]),
        .R(rx_rst));
  FDRE \rbr_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[6]_i_1_n_0 ),
        .Q(rx_fifo_data_in[6]),
        .R(rx_rst));
  FDRE \rbr_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(rbr_d0),
        .D(\rbr_d[7]_i_2_n_0 ),
        .Q(rx_fifo_data_in[7]),
        .R(rx_rst));
  LUT3 #(
    .INIT(8'h04)) 
    resynch_clkdiv_d_i_1
       (.I0(p_0_in),
        .I1(got_start_bit_d),
        .I2(resynch_clkdiv_d_i_2_n_0),
        .O(resynch_clkdiv));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    resynch_clkdiv_d_i_2
       (.I0(resynch_clkdiv_d_i_3_n_0),
        .I1(framing_error_d),
        .I2(clock_1x_early),
        .I3(sin_d5),
        .I4(sin_d6),
        .O(resynch_clkdiv_d_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFE3FFF)) 
    resynch_clkdiv_d_i_3
       (.I0(parity_error_d_reg_0[2]),
        .I1(receive_state[1]),
        .I2(receive_state[2]),
        .I3(receive_state[0]),
        .I4(receive_state[3]),
        .O(resynch_clkdiv_d_i_3_n_0));
  FDRE resynch_clkdiv_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(resynch_clkdiv),
        .Q(resynch_clkdiv_d),
        .R(rx_rst));
  LUT6 #(
    .INIT(64'hF2FFFFF202000002)) 
    resynch_clkdiv_frame_d_i_1
       (.I0(resynch_clkdiv_frame_d_i_2_n_0),
        .I1(resynch_clkdiv_frame_d_i_3_n_0),
        .I2(bus2ip_reset_int_core),
        .I3(mcr4_d),
        .I4(resynch_clkdiv_frame_d_reg_0),
        .I5(resynch_clkdiv_frame_d),
        .O(resynch_clkdiv_frame_d_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    resynch_clkdiv_frame_d_i_2
       (.I0(p_0_in),
        .I1(got_start_bit_d),
        .I2(sin_d10),
        .I3(sin_d9),
        .O(resynch_clkdiv_frame_d_i_2_n_0));
  LUT6 #(
    .INIT(64'hF7F7FFF7FFFFFFFF)) 
    resynch_clkdiv_frame_d_i_3
       (.I0(receive_state[1]),
        .I1(receive_state[0]),
        .I2(receive_state[3]),
        .I3(parity_error_d_reg_0[2]),
        .I4(receive_state[2]),
        .I5(framing_error_d),
        .O(resynch_clkdiv_frame_d_i_3_n_0));
  FDRE resynch_clkdiv_frame_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(resynch_clkdiv_frame_d_i_1_n_0),
        .Q(resynch_clkdiv_frame_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    resynch_clkdiv_startbit_d_i_1
       (.I0(sin_d9),
        .I1(sin_d10),
        .I2(got_start_bit_d),
        .I3(p_0_in),
        .I4(resynch_clkdiv_startbit_d_i_2_n_0),
        .O(resynch_clkdiv_startbit));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    resynch_clkdiv_startbit_d_i_2
       (.I0(receive_state[0]),
        .I1(receive_state[3]),
        .I2(receive_state[2]),
        .I3(receive_state[1]),
        .O(resynch_clkdiv_startbit_d_i_2_n_0));
  FDRE resynch_clkdiv_startbit_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(resynch_clkdiv_startbit),
        .Q(resynch_clkdiv_startbit_d),
        .R(rx_rst));
  FDRE \rsr_reg[0] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[1]),
        .Q(rsr[0]),
        .R(rx_rst));
  FDRE \rsr_reg[1] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[2]),
        .Q(rsr[1]),
        .R(rx_rst));
  FDRE \rsr_reg[2] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[3]),
        .Q(rsr[2]),
        .R(rx_rst));
  FDRE \rsr_reg[3] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[4]),
        .Q(rsr[3]),
        .R(rx_rst));
  FDRE \rsr_reg[4] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[5]),
        .Q(rsr[4]),
        .R(rx_rst));
  FDRE \rsr_reg[5] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[6]),
        .Q(rsr[5]),
        .R(rx_rst));
  FDRE \rsr_reg[6] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(rsr[7]),
        .Q(rsr[6]),
        .R(rx_rst));
  FDRE \rsr_reg[7] 
       (.C(s_axi_aclk),
        .CE(clk1x_d),
        .D(sin_d2),
        .Q(rsr[7]),
        .R(rx_rst));
  FDRE sin_d10_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d9),
        .Q(sin_d10),
        .R(rx_rst));
  LUT1 #(
    .INIT(2'h1)) 
    sin_d1_i_1
       (.I0(p_0_in),
        .O(rclk_int));
  FDRE sin_d1_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(rx_sin),
        .Q(sin_d1),
        .R(rx_rst));
  FDRE sin_d2_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d1),
        .Q(sin_d2),
        .R(rx_rst));
  FDRE sin_d3_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d2),
        .Q(sin_d3),
        .R(rx_rst));
  FDRE sin_d4_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d3),
        .Q(sin_d4),
        .R(rx_rst));
  FDRE sin_d5_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d4),
        .Q(sin_d5),
        .R(rx_rst));
  FDRE sin_d6_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d5),
        .Q(sin_d6),
        .R(rx_rst));
  FDRE sin_d7_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d6),
        .Q(sin_d7),
        .R(rx_rst));
  FDRE sin_d8_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d7),
        .Q(sin_d8),
        .R(rx_rst));
  FDRE sin_d9_reg
       (.C(s_axi_aclk),
        .CE(rclk_int),
        .D(sin_d8),
        .Q(sin_d9),
        .R(rx_rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_fifo_block
   (rx_fifo_full,
    Rx_error_in_fifo,
    \INFERRED_GEN.cnt_i_reg[4] ,
    Q,
    thre_iir_set_reg,
    bus2ip_reset_int_core_reg,
    thre_iir_set_reg_0,
    \lsr_reg[5] ,
    bus2ip_reset_int_core_reg_0,
    \GENERATING_FIFOS.rx_fifo_rd_en_d_reg ,
    D,
    lsr4_set,
    lsr3_set,
    lsr2_set,
    \lsr_reg[0] ,
    bus2ip_reset_int_core,
    s_axi_aclk,
    rx_fifo_rst,
    Rx_error_in_fifo0,
    lsr2_rst_reg,
    chipSelect,
    wr_d,
    rx_fifo_rd_en_d,
    lsr2_rst,
    rx_fifo_wr_en_i,
    thre_iir_set,
    \Dout_reg[3] ,
    \iir_reg[3] ,
    \iir_reg[0] ,
    p_0_in,
    data3,
    thre_iir_set_reg_1,
    thre_iir_set_reg_2,
    p_2_in50_in,
    writing_thr,
    lsr5_d,
    \iir_reg[3]_0 ,
    thre_iir_set_reg_3,
    \iir_reg[3]_1 ,
    thre_iir_set_reg_4,
    \iir_reg[3]_2 ,
    \iir_reg[3]_3 ,
    thre_iir_set_i_4,
    thre_iir_set_i_4_0,
    thre_iir_set_i_4_1,
    \Dout_reg[6] ,
    \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ,
    \Dout_reg[1] ,
    \Dout_reg[1]_0 ,
    \Dout_reg[1]_1 ,
    \Dout_reg[3]_0 ,
    \Dout_reg[1]_2 ,
    \Dout_reg[6]_0 ,
    \Dout_reg[7] ,
    \Dout_reg[6]_1 ,
    \Dout_reg[6]_2 ,
    \Dout_reg[7]_0 ,
    \Dout_reg[7]_1 ,
    \Dout_reg[3]_1 ,
    \Dout_reg[3]_2 ,
    \Dout_reg[3]_3 ,
    \Dout_reg[2] ,
    \Dout_reg[2]_0 ,
    \Dout_reg[2]_1 ,
    \Dout_reg[0] ,
    \Dout_reg[0]_0 ,
    \Dout_reg[0]_1 ,
    \Dout_reg[5] ,
    \Dout_reg[4] ,
    \Dout_reg[3]_4 ,
    rx_fifo_rd_en_d1,
    rx_fifo_data_in,
    \lsr_reg[2] ,
    p_2_in44_in,
    p_1_in43_in,
    \iir_reg[0]_0 ,
    p_0_in42_in,
    rxrdyN_int_reg,
    rxrdyN_int_reg_0,
    SR);
  output rx_fifo_full;
  output Rx_error_in_fifo;
  output \INFERRED_GEN.cnt_i_reg[4] ;
  output [0:0]Q;
  output thre_iir_set_reg;
  output bus2ip_reset_int_core_reg;
  output thre_iir_set_reg_0;
  output \lsr_reg[5] ;
  output bus2ip_reset_int_core_reg_0;
  output \GENERATING_FIFOS.rx_fifo_rd_en_d_reg ;
  output [7:0]D;
  output lsr4_set;
  output lsr3_set;
  output lsr2_set;
  output \lsr_reg[0] ;
  input bus2ip_reset_int_core;
  input s_axi_aclk;
  input rx_fifo_rst;
  input Rx_error_in_fifo0;
  input lsr2_rst_reg;
  input chipSelect;
  input wr_d;
  input rx_fifo_rd_en_d;
  input lsr2_rst;
  input rx_fifo_wr_en_i;
  input thre_iir_set;
  input [3:0]\Dout_reg[3] ;
  input \iir_reg[3] ;
  input \iir_reg[0] ;
  input p_0_in;
  input [1:0]data3;
  input thre_iir_set_reg_1;
  input thre_iir_set_reg_2;
  input p_2_in50_in;
  input writing_thr;
  input lsr5_d;
  input \iir_reg[3]_0 ;
  input thre_iir_set_reg_3;
  input \iir_reg[3]_1 ;
  input thre_iir_set_reg_4;
  input \iir_reg[3]_2 ;
  input \iir_reg[3]_3 ;
  input thre_iir_set_i_4;
  input thre_iir_set_i_4_0;
  input thre_iir_set_i_4_1;
  input \Dout_reg[6] ;
  input \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  input \Dout_reg[1] ;
  input \Dout_reg[1]_0 ;
  input \Dout_reg[1]_1 ;
  input [3:0]\Dout_reg[3]_0 ;
  input \Dout_reg[1]_2 ;
  input \Dout_reg[6]_0 ;
  input [7:0]\Dout_reg[7] ;
  input \Dout_reg[6]_1 ;
  input \Dout_reg[6]_2 ;
  input \Dout_reg[7]_0 ;
  input \Dout_reg[7]_1 ;
  input \Dout_reg[3]_1 ;
  input \Dout_reg[3]_2 ;
  input \Dout_reg[3]_3 ;
  input \Dout_reg[2] ;
  input \Dout_reg[2]_0 ;
  input \Dout_reg[2]_1 ;
  input \Dout_reg[0] ;
  input \Dout_reg[0]_0 ;
  input \Dout_reg[0]_1 ;
  input \Dout_reg[5] ;
  input \Dout_reg[4] ;
  input \Dout_reg[3]_4 ;
  input rx_fifo_rd_en_d1;
  input [10:0]rx_fifo_data_in;
  input [0:0]\lsr_reg[2] ;
  input p_2_in44_in;
  input p_1_in43_in;
  input \iir_reg[0]_0 ;
  input p_0_in42_in;
  input rxrdyN_int_reg;
  input rxrdyN_int_reg_0;
  input [0:0]SR;

  wire [7:0]D;
  wire \Dout_reg[0] ;
  wire \Dout_reg[0]_0 ;
  wire \Dout_reg[0]_1 ;
  wire \Dout_reg[1] ;
  wire \Dout_reg[1]_0 ;
  wire \Dout_reg[1]_1 ;
  wire \Dout_reg[1]_2 ;
  wire \Dout_reg[2] ;
  wire \Dout_reg[2]_0 ;
  wire \Dout_reg[2]_1 ;
  wire [3:0]\Dout_reg[3] ;
  wire [3:0]\Dout_reg[3]_0 ;
  wire \Dout_reg[3]_1 ;
  wire \Dout_reg[3]_2 ;
  wire \Dout_reg[3]_3 ;
  wire \Dout_reg[3]_4 ;
  wire \Dout_reg[4] ;
  wire \Dout_reg[5] ;
  wire \Dout_reg[6] ;
  wire \Dout_reg[6]_0 ;
  wire \Dout_reg[6]_1 ;
  wire \Dout_reg[6]_2 ;
  wire [7:0]\Dout_reg[7] ;
  wire \Dout_reg[7]_0 ;
  wire \Dout_reg[7]_1 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  wire \GENERATING_FIFOS.rx_fifo_rd_en_d_reg ;
  wire \INFERRED_GEN.cnt_i_reg[4] ;
  wire [0:0]Q;
  wire Rx_error_in_fifo;
  wire Rx_error_in_fifo0;
  wire [0:0]SR;
  wire bus2ip_reset_int_core;
  wire bus2ip_reset_int_core_reg;
  wire bus2ip_reset_int_core_reg_0;
  wire chipSelect;
  wire [1:0]data3;
  wire \iir_reg[0] ;
  wire \iir_reg[0]_0 ;
  wire \iir_reg[3] ;
  wire \iir_reg[3]_0 ;
  wire \iir_reg[3]_1 ;
  wire \iir_reg[3]_2 ;
  wire \iir_reg[3]_3 ;
  wire lsr2_rst;
  wire lsr2_rst_reg;
  wire lsr2_set;
  wire lsr3_set;
  wire lsr4_set;
  wire lsr5_d;
  wire \lsr_reg[0] ;
  wire [0:0]\lsr_reg[2] ;
  wire \lsr_reg[5] ;
  wire p_0_in;
  wire p_0_in42_in;
  wire p_1_in43_in;
  wire p_2_in44_in;
  wire p_2_in50_in;
  wire [10:0]rx_fifo_data_in;
  wire rx_fifo_full;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_rd_en_d1;
  wire rx_fifo_rst;
  wire rx_fifo_wr_en_i;
  wire rxrdyN_int_reg;
  wire rxrdyN_int_reg_0;
  wire s_axi_aclk;
  wire srl_fifo_rbu_f_i1_n_3;
  wire thre_iir_set;
  wire thre_iir_set_i_4;
  wire thre_iir_set_i_4_0;
  wire thre_iir_set_i_4_1;
  wire thre_iir_set_reg;
  wire thre_iir_set_reg_0;
  wire thre_iir_set_reg_1;
  wire thre_iir_set_reg_2;
  wire thre_iir_set_reg_3;
  wire thre_iir_set_reg_4;
  wire wr_d;
  wire writing_thr;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_fifo_control rx_fifo_control_1
       (.Q(Q),
        .Rx_error_in_fifo(Rx_error_in_fifo),
        .Rx_error_in_fifo0(Rx_error_in_fifo0),
        .Rx_fifo_trigger_reg_0(srl_fifo_rbu_f_i1_n_3),
        .SR(SR),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_reset_int_core_reg(bus2ip_reset_int_core_reg),
        .bus2ip_reset_int_core_reg_0(bus2ip_reset_int_core_reg_0),
        .\iir_reg[0] (\Dout_reg[3] [2:0]),
        .\iir_reg[0]_0 (\iir_reg[0] ),
        .\iir_reg[0]_1 (\iir_reg[0]_0 ),
        .\iir_reg[3] (\iir_reg[3] ),
        .\iir_reg[3]_0 (\iir_reg[3]_0 ),
        .\iir_reg[3]_1 (\iir_reg[3]_1 ),
        .\iir_reg[3]_2 (lsr2_rst_reg),
        .\iir_reg[3]_3 (\iir_reg[3]_2 ),
        .\iir_reg[3]_4 (\iir_reg[3]_3 ),
        .\iir_reg[3]_5 (\Dout_reg[6] ),
        .lsr5_d(lsr5_d),
        .\lsr_reg[0] (\lsr_reg[0] ),
        .\lsr_reg[5] (\lsr_reg[5] ),
        .p_0_in(p_0_in),
        .p_0_in42_in(p_0_in42_in),
        .p_1_in43_in(p_1_in43_in),
        .p_2_in44_in(p_2_in44_in),
        .p_2_in50_in(p_2_in50_in),
        .rxrdyN_int_reg(rxrdyN_int_reg),
        .rxrdyN_int_reg_0(rxrdyN_int_reg_0),
        .s_axi_aclk(s_axi_aclk),
        .thre_iir_set(thre_iir_set),
        .thre_iir_set_i_4_0(thre_iir_set_i_4),
        .thre_iir_set_i_4_1(thre_iir_set_i_4_0),
        .thre_iir_set_i_4_2(thre_iir_set_i_4_1),
        .thre_iir_set_reg(thre_iir_set_reg),
        .thre_iir_set_reg_0(thre_iir_set_reg_0),
        .thre_iir_set_reg_1(thre_iir_set_reg_1),
        .thre_iir_set_reg_2(thre_iir_set_reg_2),
        .thre_iir_set_reg_3(thre_iir_set_reg_3),
        .thre_iir_set_reg_4(thre_iir_set_reg_4),
        .writing_thr(writing_thr));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f__parameterized0 srl_fifo_rbu_f_i1
       (.D(D),
        .\Dout_reg[0] (\Dout_reg[0] ),
        .\Dout_reg[0]_0 (\Dout_reg[0]_0 ),
        .\Dout_reg[0]_1 (\Dout_reg[0]_1 ),
        .\Dout_reg[1] (\Dout_reg[1] ),
        .\Dout_reg[1]_0 (\Dout_reg[1]_0 ),
        .\Dout_reg[1]_1 (\Dout_reg[1]_1 ),
        .\Dout_reg[1]_2 (\Dout_reg[1]_2 ),
        .\Dout_reg[2] (\Dout_reg[2] ),
        .\Dout_reg[2]_0 (\Dout_reg[2]_0 ),
        .\Dout_reg[2]_1 (\Dout_reg[2]_1 ),
        .\Dout_reg[3] (\Dout_reg[3]_0 ),
        .\Dout_reg[3]_0 (\Dout_reg[3]_1 ),
        .\Dout_reg[3]_1 (\Dout_reg[3]_2 ),
        .\Dout_reg[3]_2 (\Dout_reg[3]_3 ),
        .\Dout_reg[3]_3 (\Dout_reg[3]_4 ),
        .\Dout_reg[3]_4 (\Dout_reg[3] ),
        .\Dout_reg[4] (\Dout_reg[4] ),
        .\Dout_reg[5] (\Dout_reg[5] ),
        .\Dout_reg[6] (\Dout_reg[6]_0 ),
        .\Dout_reg[6]_0 (\Dout_reg[6] ),
        .\Dout_reg[6]_1 (\Dout_reg[6]_1 ),
        .\Dout_reg[6]_2 (\Dout_reg[6]_2 ),
        .\Dout_reg[7] (\Dout_reg[7] ),
        .\Dout_reg[7]_0 (\Dout_reg[7]_0 ),
        .\Dout_reg[7]_1 (\Dout_reg[7]_1 ),
        .\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg (\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ),
        .\GENERATING_FIFOS.rx_fifo_rd_en_d_reg (\GENERATING_FIFOS.rx_fifo_rd_en_d_reg ),
        .\INFERRED_GEN.cnt_i_reg[4] (\INFERRED_GEN.cnt_i_reg[4] ),
        .\INFERRED_GEN.cnt_i_reg[4]_0 (srl_fifo_rbu_f_i1_n_3),
        .Q(Q),
        .chipSelect(chipSelect),
        .data3(data3),
        .lsr2_rst(lsr2_rst),
        .lsr2_rst_reg(lsr2_rst_reg),
        .lsr2_set(lsr2_set),
        .lsr3_set(lsr3_set),
        .lsr4_set(lsr4_set),
        .\lsr_reg[2] (\lsr_reg[2] ),
        .rx_fifo_data_in(rx_fifo_data_in),
        .rx_fifo_full(rx_fifo_full),
        .rx_fifo_rd_en_d(rx_fifo_rd_en_d),
        .rx_fifo_rd_en_d1(rx_fifo_rd_en_d1),
        .rx_fifo_rst(rx_fifo_rst),
        .rx_fifo_wr_en_i(rx_fifo_wr_en_i),
        .s_axi_aclk(s_axi_aclk),
        .wr_d(wr_d));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_fifo_control
   (Rx_error_in_fifo,
    thre_iir_set_reg,
    bus2ip_reset_int_core_reg,
    thre_iir_set_reg_0,
    \lsr_reg[5] ,
    bus2ip_reset_int_core_reg_0,
    \lsr_reg[0] ,
    bus2ip_reset_int_core,
    Rx_fifo_trigger_reg_0,
    s_axi_aclk,
    Rx_error_in_fifo0,
    thre_iir_set,
    \iir_reg[0] ,
    \iir_reg[3] ,
    \iir_reg[0]_0 ,
    p_0_in,
    thre_iir_set_reg_1,
    thre_iir_set_reg_2,
    p_2_in50_in,
    writing_thr,
    lsr5_d,
    \iir_reg[3]_0 ,
    thre_iir_set_reg_3,
    \iir_reg[3]_1 ,
    thre_iir_set_reg_4,
    \iir_reg[3]_2 ,
    \iir_reg[3]_3 ,
    \iir_reg[3]_4 ,
    thre_iir_set_i_4_0,
    thre_iir_set_i_4_1,
    thre_iir_set_i_4_2,
    \iir_reg[3]_5 ,
    p_2_in44_in,
    p_1_in43_in,
    \iir_reg[0]_1 ,
    p_0_in42_in,
    Q,
    rxrdyN_int_reg,
    rxrdyN_int_reg_0,
    SR);
  output Rx_error_in_fifo;
  output thre_iir_set_reg;
  output bus2ip_reset_int_core_reg;
  output thre_iir_set_reg_0;
  output \lsr_reg[5] ;
  output bus2ip_reset_int_core_reg_0;
  output \lsr_reg[0] ;
  input bus2ip_reset_int_core;
  input Rx_fifo_trigger_reg_0;
  input s_axi_aclk;
  input Rx_error_in_fifo0;
  input thre_iir_set;
  input [2:0]\iir_reg[0] ;
  input \iir_reg[3] ;
  input \iir_reg[0]_0 ;
  input p_0_in;
  input thre_iir_set_reg_1;
  input thre_iir_set_reg_2;
  input p_2_in50_in;
  input writing_thr;
  input lsr5_d;
  input \iir_reg[3]_0 ;
  input thre_iir_set_reg_3;
  input \iir_reg[3]_1 ;
  input thre_iir_set_reg_4;
  input \iir_reg[3]_2 ;
  input \iir_reg[3]_3 ;
  input \iir_reg[3]_4 ;
  input thre_iir_set_i_4_0;
  input thre_iir_set_i_4_1;
  input thre_iir_set_i_4_2;
  input \iir_reg[3]_5 ;
  input p_2_in44_in;
  input p_1_in43_in;
  input \iir_reg[0]_1 ;
  input p_0_in42_in;
  input [0:0]Q;
  input rxrdyN_int_reg;
  input rxrdyN_int_reg_0;
  input [0:0]SR;

  wire [0:0]Q;
  wire Rx_error_in_fifo;
  wire Rx_error_in_fifo0;
  wire Rx_fifo_trigger_reg_0;
  wire [0:0]SR;
  wire bus2ip_reset_int_core;
  wire bus2ip_reset_int_core_reg;
  wire bus2ip_reset_int_core_reg_0;
  wire character_counter0;
  wire \character_counter[9]_i_4_n_0 ;
  wire \character_counter_reg_n_0_[0] ;
  wire \character_counter_reg_n_0_[1] ;
  wire \character_counter_reg_n_0_[2] ;
  wire \character_counter_reg_n_0_[3] ;
  wire \character_counter_reg_n_0_[4] ;
  wire \character_counter_reg_n_0_[5] ;
  wire \character_counter_reg_n_0_[6] ;
  wire \character_counter_reg_n_0_[7] ;
  wire \iir[1]_i_2_n_0 ;
  wire \iir[1]_i_3_n_0 ;
  wire \iir[2]_i_2_n_0 ;
  wire \iir[3]_i_3_n_0 ;
  wire \iir[3]_i_4_n_0 ;
  wire \iir[3]_i_7_n_0 ;
  wire [2:0]\iir_reg[0] ;
  wire \iir_reg[0]_0 ;
  wire \iir_reg[0]_1 ;
  wire \iir_reg[3] ;
  wire \iir_reg[3]_0 ;
  wire \iir_reg[3]_1 ;
  wire \iir_reg[3]_2 ;
  wire \iir_reg[3]_3 ;
  wire \iir_reg[3]_4 ;
  wire \iir_reg[3]_5 ;
  wire lsr5_d;
  wire \lsr_reg[0] ;
  wire \lsr_reg[5] ;
  wire p_0_in;
  wire p_0_in42_in;
  wire p_0_in_0;
  wire p_1_in;
  wire p_1_in43_in;
  wire p_2_in44_in;
  wire p_2_in50_in;
  wire [9:0]plusOp;
  wire rx_fifo_trigger;
  wire rxrdyN_int_reg;
  wire rxrdyN_int_reg_0;
  wire s_axi_aclk;
  wire thre_iir_set;
  wire thre_iir_set_i_4_0;
  wire thre_iir_set_i_4_1;
  wire thre_iir_set_i_4_2;
  wire thre_iir_set_i_4_n_0;
  wire thre_iir_set_reg;
  wire thre_iir_set_reg_0;
  wire thre_iir_set_reg_1;
  wire thre_iir_set_reg_2;
  wire thre_iir_set_reg_3;
  wire thre_iir_set_reg_4;
  wire writing_thr;

  FDRE Rx_error_in_fifo_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rx_error_in_fifo0),
        .Q(Rx_error_in_fifo),
        .R(bus2ip_reset_int_core));
  FDRE Rx_fifo_trigger_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rx_fifo_trigger_reg_0),
        .Q(rx_fifo_trigger),
        .R(bus2ip_reset_int_core));
  LUT1 #(
    .INIT(2'h1)) 
    \character_counter[0]_i_1 
       (.I0(\character_counter_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \character_counter[1]_i_1 
       (.I0(\character_counter_reg_n_0_[0] ),
        .I1(\character_counter_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \character_counter[2]_i_1 
       (.I0(\character_counter_reg_n_0_[2] ),
        .I1(\character_counter_reg_n_0_[0] ),
        .I2(\character_counter_reg_n_0_[1] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \character_counter[3]_i_1 
       (.I0(\character_counter_reg_n_0_[3] ),
        .I1(\character_counter_reg_n_0_[1] ),
        .I2(\character_counter_reg_n_0_[0] ),
        .I3(\character_counter_reg_n_0_[2] ),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \character_counter[4]_i_1 
       (.I0(\character_counter_reg_n_0_[4] ),
        .I1(\character_counter_reg_n_0_[2] ),
        .I2(\character_counter_reg_n_0_[0] ),
        .I3(\character_counter_reg_n_0_[1] ),
        .I4(\character_counter_reg_n_0_[3] ),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \character_counter[5]_i_1 
       (.I0(\character_counter_reg_n_0_[5] ),
        .I1(\character_counter_reg_n_0_[3] ),
        .I2(\character_counter_reg_n_0_[1] ),
        .I3(\character_counter_reg_n_0_[0] ),
        .I4(\character_counter_reg_n_0_[2] ),
        .I5(\character_counter_reg_n_0_[4] ),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \character_counter[6]_i_1 
       (.I0(\character_counter_reg_n_0_[6] ),
        .I1(\character_counter[9]_i_4_n_0 ),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \character_counter[7]_i_1 
       (.I0(\character_counter_reg_n_0_[7] ),
        .I1(\character_counter[9]_i_4_n_0 ),
        .I2(\character_counter_reg_n_0_[6] ),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \character_counter[8]_i_1 
       (.I0(\character_counter_reg_n_0_[6] ),
        .I1(\character_counter[9]_i_4_n_0 ),
        .I2(\character_counter_reg_n_0_[7] ),
        .I3(p_0_in_0),
        .O(plusOp[8]));
  LUT3 #(
    .INIT(8'h15)) 
    \character_counter[9]_i_2 
       (.I0(p_0_in),
        .I1(p_1_in),
        .I2(p_0_in_0),
        .O(character_counter0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \character_counter[9]_i_3 
       (.I0(p_1_in),
        .I1(\character_counter_reg_n_0_[6] ),
        .I2(\character_counter[9]_i_4_n_0 ),
        .I3(\character_counter_reg_n_0_[7] ),
        .I4(p_0_in_0),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \character_counter[9]_i_4 
       (.I0(\character_counter_reg_n_0_[4] ),
        .I1(\character_counter_reg_n_0_[2] ),
        .I2(\character_counter_reg_n_0_[0] ),
        .I3(\character_counter_reg_n_0_[1] ),
        .I4(\character_counter_reg_n_0_[3] ),
        .I5(\character_counter_reg_n_0_[5] ),
        .O(\character_counter[9]_i_4_n_0 ));
  FDRE \character_counter_reg[0] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[0]),
        .Q(\character_counter_reg_n_0_[0] ),
        .R(SR));
  FDRE \character_counter_reg[1] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[1]),
        .Q(\character_counter_reg_n_0_[1] ),
        .R(SR));
  FDRE \character_counter_reg[2] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[2]),
        .Q(\character_counter_reg_n_0_[2] ),
        .R(SR));
  FDRE \character_counter_reg[3] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[3]),
        .Q(\character_counter_reg_n_0_[3] ),
        .R(SR));
  FDRE \character_counter_reg[4] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[4]),
        .Q(\character_counter_reg_n_0_[4] ),
        .R(SR));
  FDRE \character_counter_reg[5] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[5]),
        .Q(\character_counter_reg_n_0_[5] ),
        .R(SR));
  FDRE \character_counter_reg[6] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[6]),
        .Q(\character_counter_reg_n_0_[6] ),
        .R(SR));
  FDRE \character_counter_reg[7] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[7]),
        .Q(\character_counter_reg_n_0_[7] ),
        .R(SR));
  FDRE \character_counter_reg[8] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[8]),
        .Q(p_0_in_0),
        .R(SR));
  FDRE \character_counter_reg[9] 
       (.C(s_axi_aclk),
        .CE(character_counter0),
        .D(plusOp[9]),
        .Q(p_1_in),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0700)) 
    \iir[0]_i_1 
       (.I0(thre_iir_set),
        .I1(\iir_reg[0] [1]),
        .I2(\iir_reg[0]_0 ),
        .I3(\iir[2]_i_2_n_0 ),
        .I4(\iir[3]_i_4_n_0 ),
        .I5(bus2ip_reset_int_core),
        .O(thre_iir_set_reg_0));
  LUT6 #(
    .INIT(64'h000000000000FF80)) 
    \iir[1]_i_1 
       (.I0(\iir[1]_i_2_n_0 ),
        .I1(thre_iir_set),
        .I2(\iir_reg[0] [1]),
        .I3(\iir_reg[3] ),
        .I4(\iir[3]_i_4_n_0 ),
        .I5(bus2ip_reset_int_core),
        .O(thre_iir_set_reg));
  LUT6 #(
    .INIT(64'h0F0F0FFFDFDF0FFF)) 
    \iir[1]_i_2 
       (.I0(\iir[1]_i_3_n_0 ),
        .I1(Q),
        .I2(\iir_reg[0] [0]),
        .I3(rxrdyN_int_reg),
        .I4(\iir_reg[3]_5 ),
        .I5(rx_fifo_trigger),
        .O(\iir[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \iir[1]_i_3 
       (.I0(p_0_in_0),
        .I1(p_1_in),
        .O(\iir[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \iir[2]_i_1 
       (.I0(\iir[2]_i_2_n_0 ),
        .I1(\iir[3]_i_4_n_0 ),
        .I2(bus2ip_reset_int_core),
        .O(bus2ip_reset_int_core_reg));
  LUT6 #(
    .INIT(64'h00000002AAAAAAAA)) 
    \iir[2]_i_2 
       (.I0(\iir[1]_i_2_n_0 ),
        .I1(p_2_in44_in),
        .I2(p_1_in43_in),
        .I3(\iir_reg[0]_1 ),
        .I4(p_0_in42_in),
        .I5(\iir_reg[0] [2]),
        .O(\iir[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \iir[3]_i_1 
       (.I0(\iir_reg[3] ),
        .I1(\iir[3]_i_3_n_0 ),
        .I2(\iir[3]_i_4_n_0 ),
        .I3(bus2ip_reset_int_core),
        .O(bus2ip_reset_int_core_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \iir[3]_i_3 
       (.I0(Q),
        .I1(\iir_reg[3]_5 ),
        .I2(p_0_in_0),
        .I3(p_1_in),
        .I4(\iir_reg[0] [0]),
        .O(\iir[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0083008033B333B3)) 
    \iir[3]_i_4 
       (.I0(\iir_reg[3]_2 ),
        .I1(\iir_reg[3]_1 ),
        .I2(\iir_reg[3]_3 ),
        .I3(\iir_reg[3]_4 ),
        .I4(\iir_reg[3]_0 ),
        .I5(\iir[3]_i_7_n_0 ),
        .O(\iir[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFCFEFFFFFFFCF)) 
    \iir[3]_i_7 
       (.I0(rx_fifo_trigger),
        .I1(thre_iir_set_i_4_0),
        .I2(\iir_reg[3]_3 ),
        .I3(thre_iir_set_i_4_1),
        .I4(thre_iir_set_i_4_2),
        .I5(\iir_reg[3]_5 ),
        .O(\iir[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4444444477774777)) 
    rxrdyN_int_i_1
       (.I0(rxrdyN_int_reg),
        .I1(rxrdyN_int_reg_0),
        .I2(p_0_in_0),
        .I3(p_1_in),
        .I4(Q),
        .I5(rx_fifo_trigger),
        .O(\lsr_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000AAAA88A8)) 
    thre_iir_set_i_1
       (.I0(thre_iir_set_reg_1),
        .I1(thre_iir_set_reg_2),
        .I2(p_2_in50_in),
        .I3(thre_iir_set_i_4_n_0),
        .I4(thre_iir_set),
        .I5(writing_thr),
        .O(\lsr_reg[5] ));
  LUT6 #(
    .INIT(64'hAAAA880800008808)) 
    thre_iir_set_i_4
       (.I0(lsr5_d),
        .I1(\iir[3]_i_7_n_0 ),
        .I2(\iir_reg[3]_0 ),
        .I3(thre_iir_set_reg_3),
        .I4(\iir_reg[3]_1 ),
        .I5(thre_iir_set_reg_4),
        .O(thre_iir_set_i_4_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
   (SR,
    bus2ip_rnw_i_reg_0,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    rst_reg_0,
    Q,
    rst_reg_1,
    gpio_reg_en,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    bus2ip_rnw_i_reg_1,
    s_axi_rdata,
    D,
    s_axi_aclk,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_bready,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    \s_axi_rdata_i_reg[31]_0 ,
    reg2,
    reg1,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output [0:0]SR;
  output bus2ip_rnw_i_reg_0;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output rst_reg_0;
  output [1:0]Q;
  output rst_reg_1;
  output gpio_reg_en;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output bus2ip_rnw_i_reg_1;
  output [2:0]s_axi_rdata;
  output [2:0]D;
  input s_axi_aclk;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input [2:0]\s_axi_rdata_i_reg[31]_0 ;
  input [1:0]reg2;
  input [1:0]reg1;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;

  wire [2:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire GPIO_xferAck_i;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [0:0]bus2ip_addr;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_2_n_0 ;
  wire bus2ip_rnw_i_reg_0;
  wire bus2ip_rnw_i_reg_1;
  wire clear;
  wire gpio_reg_en;
  wire gpio_xferAck_Reg;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write_i_1_n_0;
  wire is_write_i_2_n_0;
  wire is_write_reg_n_0;
  wire p_0_in;
  wire [1:0]p_0_out;
  wire p_5_in;
  wire [3:0]plusOp;
  wire [1:0]reg1;
  wire [1:0]reg2;
  wire rst_reg_0;
  wire rst_reg_1;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire [2:0]s_axi_rdata;
  wire \s_axi_rdata_i[0]_i_1_n_0 ;
  wire \s_axi_rdata_i[1]_i_1_n_0 ;
  wire \s_axi_rdata_i[31]_i_1_n_0 ;
  wire [2:0]\s_axi_rdata_i_reg[31]_0 ;
  wire s_axi_rready;
  wire s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire state1__2;

  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ip2bus_rdack_i_D1_reg),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(ip2bus_wrack_i_D1_reg),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
       (.AXI_LITE_GPIO_arready(is_read_reg_n_0),
        .AXI_LITE_GPIO_arready_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .AXI_LITE_GPIO_wready(is_write_reg_n_0),
        .D(D),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\Not_Dual.ALLOUT0_ND.READ_REG_GEN[0].reg1_reg[30] (bus2ip_rnw_i_reg_0),
        .\Not_Dual.gpio_OE_reg[0] (SR),
        .\Not_Dual.gpio_OE_reg[0]_0 ({bus2ip_addr,Q}),
        .Q(start2),
        .bus2ip_rnw_i_reg(bus2ip_rnw_i_reg_1),
        .gpio_reg_en(gpio_reg_en),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .reg1(reg1),
        .reg2(reg2),
        .rst_reg(rst_reg_0),
        .rst_reg_0(rst_reg_1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[8]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[8]_i_2_n_0 ),
        .Q(bus2ip_addr),
        .R(SR));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h8BBB8888)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(state1__2),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(is_read_reg_n_0),
        .O(is_read_i_1_n_0));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h2000FFFF20000000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(is_write_i_2_n_0),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_write_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid_i_reg_0),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_write_i_2_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(p_0_in));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(SR),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(\s_axi_rdata_i_reg[31]_0 [0]),
        .I1(s_axi_rresp_i),
        .I2(s_axi_rdata[0]),
        .O(\s_axi_rdata_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata_i[1]_i_1 
       (.I0(\s_axi_rdata_i_reg[31]_0 [1]),
        .I1(s_axi_rresp_i),
        .I2(s_axi_rdata[1]),
        .O(\s_axi_rdata_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(\s_axi_rdata_i_reg[31]_0 [2]),
        .I1(s_axi_rresp_i),
        .I2(s_axi_rdata[2]),
        .O(\s_axi_rdata_i[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rdata_i[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rdata_i[1]_i_1_n_0 ),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rdata_i[31]_i_1_n_0 ),
        .Q(s_axi_rdata[2]),
        .R(SR));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(ip2bus_rdack_i_D1_reg),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
  LUT5 #(
    .INIT(32'h77FC44FC)) 
    \state[0]_i_1 
       (.I0(state1__2),
        .I1(state[0]),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(ip2bus_wrack_i_D1_reg),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(state[0]),
        .I5(ip2bus_rdack_i_D1_reg),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(state[0]),
        .R(SR));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(state[1]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment__parameterized0
   (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_rdata,
    \bus2ip_addr_i_reg[4]_0 ,
    bus2ip_rdce_i,
    Wr,
    bus2ip_wrce_i,
    bus2ip_reset_int_core,
    s_axi_arvalid,
    s_axi_aclk,
    s_axi_aresetn,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr,
    Q,
    wrReq_d1);
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [7:0]s_axi_rdata;
  output [2:0]\bus2ip_addr_i_reg[4]_0 ;
  output bus2ip_rdce_i;
  output Wr;
  output bus2ip_wrce_i;
  input bus2ip_reset_int_core;
  input s_axi_arvalid;
  input s_axi_aclk;
  input s_axi_aresetn;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  input \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_rready;
  input [2:0]s_axi_araddr;
  input [2:0]s_axi_awaddr;
  input [7:0]Q;
  input wrReq_d1;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire [7:0]Q;
  wire Wr;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_2_n_0 ;
  wire [2:0]\bus2ip_addr_i_reg[4]_0 ;
  wire bus2ip_rdce_i;
  wire bus2ip_reset_int_core;
  wire bus2ip_rnw_i_reg_n_0;
  wire bus2ip_wrce_i;
  wire s_axi_aclk;
  wire [2:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [2:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bresp_i;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [7:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rresp_i;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire wrReq_d1;

  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I1(s_axi_bresp_i),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(state1__2),
        .I4(s_axi_rresp_i),
        .I5(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888F8F8F88888888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(state1__2),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(state1__2));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .S(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(bus2ip_reset_int_core));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder__parameterized0 I_DECODER
       (.Bus_RNW_reg_reg_0(bus2ip_rnw_i_reg_n_0),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .Q(start2),
        .Wr(Wr),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .wrReq_d1(wrReq_d1));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA00)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_2 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[4]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg[4]_0 [0]),
        .R(bus2ip_reset_int_core));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg[4]_0 [1]),
        .R(bus2ip_reset_int_core));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_2_n_0 ),
        .Q(\bus2ip_addr_i_reg[4]_0 [2]),
        .R(bus2ip_reset_int_core));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[4]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(bus2ip_reset_int_core));
  LUT4 #(
    .INIT(16'h8F88)) 
    s_axi_bvalid_i_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .I1(s_axi_bresp_i),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[0]),
        .Q(s_axi_rdata[0]),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[1]),
        .Q(s_axi_rdata[1]),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[2]),
        .Q(s_axi_rdata[2]),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[3]),
        .Q(s_axi_rdata[3]),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[4]),
        .Q(s_axi_rdata[4]),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[5]),
        .Q(s_axi_rdata[5]),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[6]),
        .Q(s_axi_rdata[6]),
        .R(bus2ip_reset_int_core));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[7]),
        .Q(s_axi_rdata[7]),
        .R(bus2ip_reset_int_core));
  LUT4 #(
    .INIT(16'h8F88)) 
    s_axi_rvalid_i_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I1(s_axi_rresp_i),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(bus2ip_reset_int_core));
  LUT4 #(
    .INIT(16'hF800)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(bus2ip_reset_int_core));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f
   (Q,
    FIFO_Full_reg_0,
    out,
    SS,
    s_axi_aclk,
    tx_fifo_rd_en_int,
    FIFO_Full_reg_1,
    tx_fifo_wr_en_d,
    \INFERRED_GEN.cnt_i_reg[2] ,
    txrdyn,
    data3,
    p_2_in50_in,
    \tsr_reg[7] );
  output [0:0]Q;
  output FIFO_Full_reg_0;
  output [7:0]out;
  input [0:0]SS;
  input s_axi_aclk;
  input tx_fifo_rd_en_int;
  input FIFO_Full_reg_1;
  input tx_fifo_wr_en_d;
  input \INFERRED_GEN.cnt_i_reg[2] ;
  input txrdyn;
  input [0:0]data3;
  input p_2_in50_in;
  input [7:0]\tsr_reg[7] ;

  wire CNTR_INCR_DECR_ADDN_F_I_n_2;
  wire CNTR_INCR_DECR_ADDN_F_I_n_3;
  wire CNTR_INCR_DECR_ADDN_F_I_n_4;
  wire CNTR_INCR_DECR_ADDN_F_I_n_5;
  wire FIFO_Full_reg_0;
  wire FIFO_Full_reg_1;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire [0:0]data3;
  wire fifo_full_p1;
  wire [7:0]out;
  wire p_2_in50_in;
  wire s_axi_aclk;
  wire [7:0]\tsr_reg[7] ;
  wire tx_fifo_full;
  wire tx_fifo_rd_en_int;
  wire tx_fifo_wr_en_d;
  wire txrdyn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f CNTR_INCR_DECR_ADDN_F_I
       (.FIFO_Full_reg(FIFO_Full_reg_1),
        .\INFERRED_GEN.cnt_i_reg[2]_0 (\INFERRED_GEN.cnt_i_reg[2] ),
        .Q({Q,CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4,CNTR_INCR_DECR_ADDN_F_I_n_5}),
        .SS(SS),
        .fifo_full_p1(fifo_full_p1),
        .s_axi_aclk(s_axi_aclk),
        .tx_fifo_full(tx_fifo_full),
        .tx_fifo_rd_en_int(tx_fifo_rd_en_int),
        .tx_fifo_wr_en_d(tx_fifo_wr_en_d));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynshreg_f DYNSHREG_F_I
       (.Q({CNTR_INCR_DECR_ADDN_F_I_n_2,CNTR_INCR_DECR_ADDN_F_I_n_3,CNTR_INCR_DECR_ADDN_F_I_n_4,CNTR_INCR_DECR_ADDN_F_I_n_5}),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .\tsr_reg[7] (\tsr_reg[7] ),
        .tx_fifo_full(tx_fifo_full),
        .tx_fifo_wr_en_d(tx_fifo_wr_en_d));
  FDRE FIFO_Full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(tx_fifo_full),
        .R(SS));
  LUT5 #(
    .INIT(32'h2000EFFF)) 
    txrdyN_int_i_1
       (.I0(tx_fifo_full),
        .I1(txrdyn),
        .I2(data3),
        .I3(FIFO_Full_reg_1),
        .I4(p_2_in50_in),
        .O(FIFO_Full_reg_0));
endmodule

(* ORIG_REF_NAME = "srl_fifo_rbu_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f__parameterized0
   (rx_fifo_full,
    \INFERRED_GEN.cnt_i_reg[4] ,
    Q,
    \INFERRED_GEN.cnt_i_reg[4]_0 ,
    \GENERATING_FIFOS.rx_fifo_rd_en_d_reg ,
    D,
    lsr4_set,
    lsr3_set,
    lsr2_set,
    rx_fifo_rst,
    s_axi_aclk,
    lsr2_rst_reg,
    chipSelect,
    wr_d,
    rx_fifo_rd_en_d,
    lsr2_rst,
    rx_fifo_wr_en_i,
    data3,
    \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ,
    \Dout_reg[1] ,
    \Dout_reg[1]_0 ,
    \Dout_reg[1]_1 ,
    \Dout_reg[3] ,
    \Dout_reg[1]_2 ,
    \Dout_reg[6] ,
    \Dout_reg[6]_0 ,
    \Dout_reg[7] ,
    \Dout_reg[6]_1 ,
    \Dout_reg[6]_2 ,
    \Dout_reg[7]_0 ,
    \Dout_reg[7]_1 ,
    \Dout_reg[3]_0 ,
    \Dout_reg[3]_1 ,
    \Dout_reg[3]_2 ,
    \Dout_reg[2] ,
    \Dout_reg[2]_0 ,
    \Dout_reg[2]_1 ,
    \Dout_reg[0] ,
    \Dout_reg[0]_0 ,
    \Dout_reg[0]_1 ,
    \Dout_reg[5] ,
    \Dout_reg[4] ,
    \Dout_reg[3]_3 ,
    \Dout_reg[3]_4 ,
    rx_fifo_rd_en_d1,
    rx_fifo_data_in,
    \lsr_reg[2] );
  output rx_fifo_full;
  output \INFERRED_GEN.cnt_i_reg[4] ;
  output [0:0]Q;
  output \INFERRED_GEN.cnt_i_reg[4]_0 ;
  output \GENERATING_FIFOS.rx_fifo_rd_en_d_reg ;
  output [7:0]D;
  output lsr4_set;
  output lsr3_set;
  output lsr2_set;
  input rx_fifo_rst;
  input s_axi_aclk;
  input lsr2_rst_reg;
  input chipSelect;
  input wr_d;
  input rx_fifo_rd_en_d;
  input lsr2_rst;
  input rx_fifo_wr_en_i;
  input [1:0]data3;
  input \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  input \Dout_reg[1] ;
  input \Dout_reg[1]_0 ;
  input \Dout_reg[1]_1 ;
  input [3:0]\Dout_reg[3] ;
  input \Dout_reg[1]_2 ;
  input \Dout_reg[6] ;
  input \Dout_reg[6]_0 ;
  input [7:0]\Dout_reg[7] ;
  input \Dout_reg[6]_1 ;
  input \Dout_reg[6]_2 ;
  input \Dout_reg[7]_0 ;
  input \Dout_reg[7]_1 ;
  input \Dout_reg[3]_0 ;
  input \Dout_reg[3]_1 ;
  input \Dout_reg[3]_2 ;
  input \Dout_reg[2] ;
  input \Dout_reg[2]_0 ;
  input \Dout_reg[2]_1 ;
  input \Dout_reg[0] ;
  input \Dout_reg[0]_0 ;
  input \Dout_reg[0]_1 ;
  input \Dout_reg[5] ;
  input \Dout_reg[4] ;
  input \Dout_reg[3]_3 ;
  input [3:0]\Dout_reg[3]_4 ;
  input rx_fifo_rd_en_d1;
  input [10:0]rx_fifo_data_in;
  input [0:0]\lsr_reg[2] ;

  wire CNTR_INCR_DECR_ADDN_F_I_n_10;
  wire [7:0]D;
  wire \Dout_reg[0] ;
  wire \Dout_reg[0]_0 ;
  wire \Dout_reg[0]_1 ;
  wire \Dout_reg[1] ;
  wire \Dout_reg[1]_0 ;
  wire \Dout_reg[1]_1 ;
  wire \Dout_reg[1]_2 ;
  wire \Dout_reg[2] ;
  wire \Dout_reg[2]_0 ;
  wire \Dout_reg[2]_1 ;
  wire [3:0]\Dout_reg[3] ;
  wire \Dout_reg[3]_0 ;
  wire \Dout_reg[3]_1 ;
  wire \Dout_reg[3]_2 ;
  wire \Dout_reg[3]_3 ;
  wire [3:0]\Dout_reg[3]_4 ;
  wire \Dout_reg[4] ;
  wire \Dout_reg[5] ;
  wire \Dout_reg[6] ;
  wire \Dout_reg[6]_0 ;
  wire \Dout_reg[6]_1 ;
  wire \Dout_reg[6]_2 ;
  wire [7:0]\Dout_reg[7] ;
  wire \Dout_reg[7]_0 ;
  wire \Dout_reg[7]_1 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ;
  wire \GENERATING_FIFOS.rx_fifo_rd_en_d_reg ;
  wire \INFERRED_GEN.cnt_i_reg[4] ;
  wire \INFERRED_GEN.cnt_i_reg[4]_0 ;
  wire [0:0]Q;
  wire chipSelect;
  wire [1:0]data3;
  wire fifo_full_p1;
  wire lsr2_rst;
  wire lsr2_rst_reg;
  wire lsr2_set;
  wire lsr3_set;
  wire lsr4_set;
  wire [0:0]\lsr_reg[2] ;
  wire [3:0]rx_fifo_count;
  wire [10:0]rx_fifo_data_in;
  wire [9:8]rx_fifo_data_out;
  wire rx_fifo_full;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_rd_en_d1;
  wire rx_fifo_rst;
  wire rx_fifo_wr_en_i;
  wire s_axi_aclk;
  wire wr_d;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f_0 CNTR_INCR_DECR_ADDN_F_I
       (.\INFERRED_GEN.cnt_i_reg[4]_0 (\INFERRED_GEN.cnt_i_reg[4] ),
        .\INFERRED_GEN.cnt_i_reg[4]_1 (\INFERRED_GEN.cnt_i_reg[4]_0 ),
        .\INFERRED_GEN.cnt_i_reg[4]_2 (CNTR_INCR_DECR_ADDN_F_I_n_10),
        .Q({Q,rx_fifo_count}),
        .chipSelect(chipSelect),
        .data3(data3),
        .fifo_full_p1(fifo_full_p1),
        .lsr2_rst(lsr2_rst),
        .lsr2_rst_reg(lsr2_rst_reg),
        .lsr3_set(lsr3_set),
        .lsr4_set(lsr4_set),
        .\lsr_reg[4] (\Dout_reg[6]_0 ),
        .out(rx_fifo_data_out),
        .rx_fifo_data_in(rx_fifo_data_in[9:8]),
        .rx_fifo_rd_en_d(rx_fifo_rd_en_d),
        .rx_fifo_rd_en_d1(rx_fifo_rd_en_d1),
        .rx_fifo_rst(rx_fifo_rst),
        .rx_fifo_wr_en_i(rx_fifo_wr_en_i),
        .s_axi_aclk(s_axi_aclk),
        .wr_d(wr_d));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dynshreg_f__parameterized0 DYNSHREG_F_I
       (.D(D),
        .\Dout_reg[0] (\Dout_reg[0] ),
        .\Dout_reg[0]_0 (\Dout_reg[0]_0 ),
        .\Dout_reg[0]_1 (\Dout_reg[0]_1 ),
        .\Dout_reg[1] (\Dout_reg[1] ),
        .\Dout_reg[1]_0 (\Dout_reg[1]_0 ),
        .\Dout_reg[1]_1 (\Dout_reg[1]_1 ),
        .\Dout_reg[1]_2 (\Dout_reg[1]_2 ),
        .\Dout_reg[2] (\Dout_reg[2] ),
        .\Dout_reg[2]_0 (\Dout_reg[2]_0 ),
        .\Dout_reg[2]_1 (\Dout_reg[2]_1 ),
        .\Dout_reg[3] (\Dout_reg[3] ),
        .\Dout_reg[3]_0 (\Dout_reg[3]_0 ),
        .\Dout_reg[3]_1 (\Dout_reg[3]_1 ),
        .\Dout_reg[3]_2 (\Dout_reg[3]_2 ),
        .\Dout_reg[3]_3 (\Dout_reg[3]_3 ),
        .\Dout_reg[3]_4 (\Dout_reg[3]_4 ),
        .\Dout_reg[4] (\Dout_reg[4] ),
        .\Dout_reg[5] (\Dout_reg[5] ),
        .\Dout_reg[6] (\Dout_reg[6] ),
        .\Dout_reg[6]_0 (\Dout_reg[6]_0 ),
        .\Dout_reg[6]_1 (\Dout_reg[6]_1 ),
        .\Dout_reg[6]_2 (\Dout_reg[6]_2 ),
        .\Dout_reg[7] (\Dout_reg[7] ),
        .\Dout_reg[7]_0 (\Dout_reg[7]_0 ),
        .\Dout_reg[7]_1 (\Dout_reg[7]_1 ),
        .\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg (\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg ),
        .\GENERATING_FIFOS.rx_fifo_rd_en_d_reg (\GENERATING_FIFOS.rx_fifo_rd_en_d_reg ),
        .Q(rx_fifo_count),
        .lsr2_set(lsr2_set),
        .\lsr_reg[2] (\lsr_reg[2] ),
        .\lsr_reg[2]_0 (CNTR_INCR_DECR_ADDN_F_I_n_10),
        .out(rx_fifo_data_out),
        .rx_fifo_data_in(rx_fifo_data_in),
        .rx_fifo_rd_en_d(rx_fifo_rd_en_d),
        .rx_fifo_wr_en_i(rx_fifo_wr_en_i),
        .s_axi_aclk(s_axi_aclk));
  FDRE FIFO_Full_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fifo_full_p1),
        .Q(rx_fifo_full),
        .R(rx_fifo_rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx16550
   (tx_empty,
    tx_fifo_rd_en_int,
    tsr_loaded,
    \FSM_sequential_transmit_state_reg[3]_0 ,
    sout,
    \Lcr_reg[0] ,
    Tx_fifo_rd_en_reg_0,
    rx_sin,
    bus2ip_reset_int_core,
    s_axi_aclk,
    p_0_in,
    Q,
    Pmod_out_pin2_o,
    \FSM_sequential_transmit_state_reg[0]_0 ,
    \tsr_reg[0]_0 ,
    \tsr_reg[1]_0 ,
    \tsr_reg[2]_0 ,
    \tsr_reg[3]_0 ,
    \tsr_reg[4]_0 ,
    \tsr_reg[5]_0 ,
    \tsr_reg[6]_0 ,
    out,
    \tsr_reg[7]_0 ,
    \tsr_reg[7]_1 ,
    \INFERRED_GEN.cnt_i_reg[2] ,
    sin,
    freeze);
  output tx_empty;
  output tx_fifo_rd_en_int;
  output tsr_loaded;
  output [0:0]\FSM_sequential_transmit_state_reg[3]_0 ;
  output sout;
  output \Lcr_reg[0] ;
  output Tx_fifo_rd_en_reg_0;
  output rx_sin;
  input bus2ip_reset_int_core;
  input s_axi_aclk;
  input p_0_in;
  input [6:0]Q;
  input [0:0]Pmod_out_pin2_o;
  input \FSM_sequential_transmit_state_reg[0]_0 ;
  input \tsr_reg[0]_0 ;
  input \tsr_reg[1]_0 ;
  input \tsr_reg[2]_0 ;
  input \tsr_reg[3]_0 ;
  input \tsr_reg[4]_0 ;
  input \tsr_reg[5]_0 ;
  input \tsr_reg[6]_0 ;
  input [0:0]out;
  input \tsr_reg[7]_0 ;
  input [0:0]\tsr_reg[7]_1 ;
  input [0:0]\INFERRED_GEN.cnt_i_reg[2] ;
  input sin;
  input freeze;

  wire \FSM_sequential_transmit_state[0]_i_3_n_0 ;
  wire \FSM_sequential_transmit_state[0]_i_4_n_0 ;
  wire \FSM_sequential_transmit_state[0]_i_5_n_0 ;
  wire \FSM_sequential_transmit_state[0]_i_6_n_0 ;
  wire \FSM_sequential_transmit_state[3]_i_3_n_0 ;
  wire \FSM_sequential_transmit_state[3]_i_5_n_0 ;
  wire \FSM_sequential_transmit_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_transmit_state_reg[3]_0 ;
  wire [0:0]\INFERRED_GEN.cnt_i_reg[2] ;
  wire \Lcr_reg[0] ;
  wire [0:0]Pmod_out_pin2_o;
  wire [6:0]Q;
  wire Sout0;
  wire Sout_i_1_n_0;
  wire Sout_i_2_n_0;
  wire Sout_i_3_n_0;
  wire Tsr_loaded_i_1_n_0;
  wire Tx_empty0;
  wire Tx_fifo_rd_en_reg_0;
  wire bus2ip_reset_int_core;
  wire clk1x;
  wire clk1x_i_1__0_n_0;
  wire clk2x;
  wire clk2x0;
  wire [2:1]clkdiv;
  wire \clkdiv[0]_i_1__0_n_0 ;
  wire \clkdiv[3]_i_1_n_0 ;
  wire \clkdiv[3]_i_2_n_0 ;
  wire [3:0]clkdiv_reg;
  wire freeze;
  wire [6:0]in12;
  wire [3:0]next_state;
  wire [0:0]out;
  wire p_0_in;
  wire rx_sin;
  wire s_axi_aclk;
  wire sin;
  wire sout;
  wire [2:0]transmit_state;
  wire transmitting_n;
  wire transmitting_n_com;
  wire \tsr[7]_i_2_n_0 ;
  wire \tsr[7]_i_3_n_0 ;
  wire [7:0]tsr_com;
  wire tsr_loaded;
  wire \tsr_reg[0]_0 ;
  wire \tsr_reg[1]_0 ;
  wire \tsr_reg[2]_0 ;
  wire \tsr_reg[3]_0 ;
  wire \tsr_reg[4]_0 ;
  wire \tsr_reg[5]_0 ;
  wire \tsr_reg[6]_0 ;
  wire \tsr_reg[7]_0 ;
  wire [0:0]\tsr_reg[7]_1 ;
  wire \tsr_reg_n_0_[0] ;
  wire tx_empty;
  wire tx_fifo_rd_en_com;
  wire tx_fifo_rd_en_int;
  wire tx_parity;
  wire tx_parity_com;
  wire tx_parity_i_2_n_0;
  wire tx_parity_i_3_n_0;
  wire tx_parity_i_4_n_0;
  wire tx_sout;

  LUT5 #(
    .INIT(32'hFFFF22A0)) 
    \FSM_sequential_transmit_state[0]_i_1 
       (.I0(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I1(\FSM_sequential_transmit_state_reg[0]_0 ),
        .I2(\FSM_sequential_transmit_state[0]_i_3_n_0 ),
        .I3(transmit_state[2]),
        .I4(\FSM_sequential_transmit_state[0]_i_4_n_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'h030303F3F7F7F7F7)) 
    \FSM_sequential_transmit_state[0]_i_3 
       (.I0(\FSM_sequential_transmit_state[0]_i_5_n_0 ),
        .I1(Q[3]),
        .I2(transmit_state[1]),
        .I3(\FSM_sequential_transmit_state_reg[0]_0 ),
        .I4(Q[2]),
        .I5(transmit_state[0]),
        .O(\FSM_sequential_transmit_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0503010005030103)) 
    \FSM_sequential_transmit_state[0]_i_4 
       (.I0(\FSM_sequential_transmit_state[0]_i_6_n_0 ),
        .I1(transmit_state[0]),
        .I2(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I3(transmit_state[2]),
        .I4(transmit_state[1]),
        .I5(\FSM_sequential_transmit_state_reg[0]_0 ),
        .O(\FSM_sequential_transmit_state[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_transmit_state[0]_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FSM_sequential_transmit_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hC8CC0008)) 
    \FSM_sequential_transmit_state[0]_i_6 
       (.I0(Q[3]),
        .I1(transmit_state[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(transmit_state[0]),
        .O(\FSM_sequential_transmit_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0770477007720770)) 
    \FSM_sequential_transmit_state[1]_i_1 
       (.I0(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I1(transmit_state[2]),
        .I2(transmit_state[0]),
        .I3(transmit_state[1]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'h00332233F3000000)) 
    \FSM_sequential_transmit_state[2]_i_1 
       (.I0(\Lcr_reg[0] ),
        .I1(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I2(Q[2]),
        .I3(transmit_state[1]),
        .I4(transmit_state[0]),
        .I5(transmit_state[2]),
        .O(next_state[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_transmit_state[3]_i_1 
       (.I0(clk1x),
        .I1(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(Sout0));
  LUT6 #(
    .INIT(64'h0000C4C4FF3F0000)) 
    \FSM_sequential_transmit_state[3]_i_2 
       (.I0(\Lcr_reg[0] ),
        .I1(transmit_state[1]),
        .I2(transmit_state[0]),
        .I3(Q[2]),
        .I4(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I5(transmit_state[2]),
        .O(next_state[3]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \FSM_sequential_transmit_state[3]_i_3 
       (.I0(\Lcr_reg[0] ),
        .I1(Q[2]),
        .I2(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I3(clk2x),
        .I4(transmit_state[2]),
        .I5(\FSM_sequential_transmit_state[3]_i_5_n_0 ),
        .O(\FSM_sequential_transmit_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_transmit_state[3]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\Lcr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_transmit_state[3]_i_5 
       (.I0(transmit_state[0]),
        .I1(transmit_state[1]),
        .O(\FSM_sequential_transmit_state[3]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[0]),
        .Q(transmit_state[0]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[1]),
        .Q(transmit_state[1]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[2]),
        .Q(transmit_state[2]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "data_bit3:0100,data_bit2:0011,data_bit1:0010,stop_bit2:1100,stop_bit1:1011,parity_bit:1010,start_bit:0001,idle:0000,data_bit6:0111,data_bit8:1001,data_bit5:0110,data_bit7:1000,data_bit4:0101" *) 
  FDRE \FSM_sequential_transmit_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(next_state[3]),
        .Q(\FSM_sequential_transmit_state_reg[3]_0 ),
        .R(bus2ip_reset_int_core));
  LUT3 #(
    .INIT(8'h08)) 
    \INFERRED_GEN.cnt_i[2]_i_2 
       (.I0(tx_fifo_rd_en_int),
        .I1(\tsr_reg[7]_0 ),
        .I2(\INFERRED_GEN.cnt_i_reg[2] ),
        .O(Tx_fifo_rd_en_reg_0));
  LUT2 #(
    .INIT(4'h1)) 
    Sout_i_1
       (.I0(Q[6]),
        .I1(Sout_i_2_n_0),
        .O(Sout_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFF03333557333F0)) 
    Sout_i_2
       (.I0(Sout_i_3_n_0),
        .I1(\tsr_reg_n_0_[0] ),
        .I2(transmit_state[0]),
        .I3(transmit_state[1]),
        .I4(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I5(transmit_state[2]),
        .O(Sout_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFF5C)) 
    Sout_i_3
       (.I0(Q[4]),
        .I1(tx_parity),
        .I2(Q[5]),
        .I3(transmit_state[0]),
        .O(Sout_i_3_n_0));
  FDSE Sout_reg
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(Sout_i_1_n_0),
        .Q(tx_sout),
        .S(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    Tsr_loaded_i_1
       (.I0(Sout0),
        .I1(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I2(transmit_state[2]),
        .I3(transmit_state[1]),
        .I4(transmit_state[0]),
        .I5(bus2ip_reset_int_core),
        .O(Tsr_loaded_i_1_n_0));
  FDRE Tsr_loaded_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tsr_loaded_i_1_n_0),
        .Q(tsr_loaded),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    Tx_empty_i_1
       (.I0(clk1x),
        .I1(transmitting_n),
        .O(Tx_empty0));
  FDSE Tx_empty_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Tx_empty0),
        .Q(tx_empty),
        .S(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    Tx_fifo_rd_en_i_1
       (.I0(clk1x),
        .I1(transmit_state[0]),
        .I2(transmit_state[1]),
        .I3(transmit_state[2]),
        .I4(\FSM_sequential_transmit_state_reg[3]_0 ),
        .O(tx_fifo_rd_en_com));
  FDRE Tx_fifo_rd_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_fifo_rd_en_com),
        .Q(tx_fifo_rd_en_int),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    clk1x_i_1__0
       (.I0(clkdiv_reg[3]),
        .I1(clkdiv_reg[2]),
        .I2(clkdiv_reg[1]),
        .I3(clkdiv_reg[0]),
        .I4(p_0_in),
        .O(clk1x_i_1__0_n_0));
  FDRE clk1x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk1x_i_1__0_n_0),
        .Q(clk1x),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    clk2x_i_1
       (.I0(clkdiv_reg[3]),
        .I1(clkdiv_reg[2]),
        .I2(clkdiv_reg[1]),
        .I3(clkdiv_reg[0]),
        .I4(p_0_in),
        .O(clk2x0));
  FDRE clk2x_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clk2x0),
        .Q(clk2x),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \clkdiv[0]_i_1__0 
       (.I0(clkdiv_reg[0]),
        .I1(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(\clkdiv[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \clkdiv[1]_i_1 
       (.I0(clkdiv_reg[1]),
        .I1(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .I2(clkdiv_reg[0]),
        .O(clkdiv[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \clkdiv[2]_i_1 
       (.I0(clkdiv_reg[2]),
        .I1(clkdiv_reg[0]),
        .I2(clkdiv_reg[1]),
        .I3(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .O(clkdiv[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \clkdiv[3]_i_1 
       (.I0(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .I1(p_0_in),
        .O(\clkdiv[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h56666666)) 
    \clkdiv[3]_i_2 
       (.I0(clkdiv_reg[3]),
        .I1(\FSM_sequential_transmit_state[3]_i_3_n_0 ),
        .I2(clkdiv_reg[2]),
        .I3(clkdiv_reg[1]),
        .I4(clkdiv_reg[0]),
        .O(\clkdiv[3]_i_2_n_0 ));
  FDRE \clkdiv_reg[0] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(\clkdiv[0]_i_1__0_n_0 ),
        .Q(clkdiv_reg[0]),
        .R(bus2ip_reset_int_core));
  FDRE \clkdiv_reg[1] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(clkdiv[1]),
        .Q(clkdiv_reg[1]),
        .R(bus2ip_reset_int_core));
  FDRE \clkdiv_reg[2] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(clkdiv[2]),
        .Q(clkdiv_reg[2]),
        .R(bus2ip_reset_int_core));
  FDRE \clkdiv_reg[3] 
       (.C(s_axi_aclk),
        .CE(\clkdiv[3]_i_1_n_0 ),
        .D(\clkdiv[3]_i_2_n_0 ),
        .Q(clkdiv_reg[3]),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFFAC)) 
    sin_d1_i_2
       (.I0(tx_sout),
        .I1(sin),
        .I2(Pmod_out_pin2_o),
        .I3(freeze),
        .O(rx_sin));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h54)) 
    sout_INST_0
       (.I0(Q[6]),
        .I1(tx_sout),
        .I2(Pmod_out_pin2_o),
        .O(sout));
  LUT6 #(
    .INIT(64'h0C0000C308000003)) 
    transmitting_n_i_1
       (.I0(Q[2]),
        .I1(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I2(transmit_state[2]),
        .I3(transmit_state[1]),
        .I4(transmit_state[0]),
        .I5(\FSM_sequential_transmit_state_reg[0]_0 ),
        .O(transmitting_n_com));
  FDRE transmitting_n_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(transmitting_n_com),
        .Q(transmitting_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h3A3AEBEB3A3A28EB)) 
    \tsr[0]_i_1 
       (.I0(in12[0]),
        .I1(transmit_state[2]),
        .I2(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I3(transmit_state[0]),
        .I4(transmit_state[1]),
        .I5(\tsr_reg[0]_0 ),
        .O(tsr_com[0]));
  LUT6 #(
    .INIT(64'h3A3AEBEB3A3A28EB)) 
    \tsr[1]_i_1 
       (.I0(in12[1]),
        .I1(transmit_state[2]),
        .I2(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I3(transmit_state[0]),
        .I4(transmit_state[1]),
        .I5(\tsr_reg[1]_0 ),
        .O(tsr_com[1]));
  LUT6 #(
    .INIT(64'h3A3AEBEB3A3A28EB)) 
    \tsr[2]_i_1 
       (.I0(in12[2]),
        .I1(transmit_state[2]),
        .I2(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I3(transmit_state[0]),
        .I4(transmit_state[1]),
        .I5(\tsr_reg[2]_0 ),
        .O(tsr_com[2]));
  LUT6 #(
    .INIT(64'h3A3AEBEB3A3A28EB)) 
    \tsr[3]_i_1 
       (.I0(in12[3]),
        .I1(transmit_state[2]),
        .I2(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I3(transmit_state[0]),
        .I4(transmit_state[1]),
        .I5(\tsr_reg[3]_0 ),
        .O(tsr_com[3]));
  LUT6 #(
    .INIT(64'h3A3AEBEB3A3A28EB)) 
    \tsr[4]_i_1 
       (.I0(in12[4]),
        .I1(transmit_state[2]),
        .I2(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I3(transmit_state[0]),
        .I4(transmit_state[1]),
        .I5(\tsr_reg[4]_0 ),
        .O(tsr_com[4]));
  LUT6 #(
    .INIT(64'h3A3AEBEB3A3A28EB)) 
    \tsr[5]_i_1 
       (.I0(in12[5]),
        .I1(transmit_state[2]),
        .I2(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I3(transmit_state[0]),
        .I4(transmit_state[1]),
        .I5(\tsr_reg[5]_0 ),
        .O(tsr_com[5]));
  LUT6 #(
    .INIT(64'h3A3AEBEB3A3A28EB)) 
    \tsr[6]_i_1 
       (.I0(in12[6]),
        .I1(transmit_state[2]),
        .I2(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I3(transmit_state[0]),
        .I4(transmit_state[1]),
        .I5(\tsr_reg[6]_0 ),
        .O(tsr_com[6]));
  LUT6 #(
    .INIT(64'h454045404540FFFF)) 
    \tsr[7]_i_1 
       (.I0(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I1(out),
        .I2(\tsr_reg[7]_0 ),
        .I3(\tsr_reg[7]_1 ),
        .I4(\tsr[7]_i_2_n_0 ),
        .I5(\tsr[7]_i_3_n_0 ),
        .O(tsr_com[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \tsr[7]_i_2 
       (.I0(transmit_state[1]),
        .I1(transmit_state[0]),
        .I2(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I3(transmit_state[2]),
        .O(\tsr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \tsr[7]_i_3 
       (.I0(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I1(transmit_state[2]),
        .I2(transmit_state[1]),
        .O(\tsr[7]_i_3_n_0 ));
  FDSE \tsr_reg[0] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[0]),
        .Q(\tsr_reg_n_0_[0] ),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[1] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[1]),
        .Q(in12[0]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[2] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[2]),
        .Q(in12[1]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[3] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[3]),
        .Q(in12[2]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[4] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[4]),
        .Q(in12[3]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[5] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[5]),
        .Q(in12[4]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[6] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[6]),
        .Q(in12[5]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_reg[7] 
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tsr_com[7]),
        .Q(in12[6]),
        .S(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h11111111111F1F11)) 
    tx_parity_i_1
       (.I0(tx_parity_i_2_n_0),
        .I1(Q[4]),
        .I2(tx_parity_i_3_n_0),
        .I3(\tsr_reg_n_0_[0] ),
        .I4(tx_parity),
        .I5(tx_parity_i_4_n_0),
        .O(tx_parity_com));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    tx_parity_i_2
       (.I0(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I1(transmit_state[2]),
        .I2(transmit_state[1]),
        .I3(transmit_state[0]),
        .O(tx_parity_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h01)) 
    tx_parity_i_3
       (.I0(transmit_state[1]),
        .I1(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I2(transmit_state[2]),
        .O(tx_parity_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    tx_parity_i_4
       (.I0(\FSM_sequential_transmit_state_reg[3]_0 ),
        .I1(transmit_state[2]),
        .I2(transmit_state[1]),
        .O(tx_parity_i_4_n_0));
  FDRE tx_parity_reg
       (.C(s_axi_aclk),
        .CE(Sout0),
        .D(tx_parity_com),
        .Q(tx_parity),
        .R(bus2ip_reset_int_core));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_fifo_block
   (Q,
    FIFO_Full_reg,
    out,
    SS,
    s_axi_aclk,
    tx_fifo_rd_en_int,
    FIFO_Full_reg_0,
    tx_fifo_wr_en_d,
    \INFERRED_GEN.cnt_i_reg[2] ,
    txrdyn,
    data3,
    p_2_in50_in,
    \tsr_reg[7] );
  output [0:0]Q;
  output FIFO_Full_reg;
  output [7:0]out;
  input [0:0]SS;
  input s_axi_aclk;
  input tx_fifo_rd_en_int;
  input FIFO_Full_reg_0;
  input tx_fifo_wr_en_d;
  input \INFERRED_GEN.cnt_i_reg[2] ;
  input txrdyn;
  input [0:0]data3;
  input p_2_in50_in;
  input [7:0]\tsr_reg[7] ;

  wire FIFO_Full_reg;
  wire FIFO_Full_reg_0;
  wire \INFERRED_GEN.cnt_i_reg[2] ;
  wire [0:0]Q;
  wire [0:0]SS;
  wire [0:0]data3;
  wire [7:0]out;
  wire p_2_in50_in;
  wire s_axi_aclk;
  wire [7:0]\tsr_reg[7] ;
  wire tx_fifo_rd_en_int;
  wire tx_fifo_wr_en_d;
  wire txrdyn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f srl_fifo_rbu_f_i1
       (.FIFO_Full_reg_0(FIFO_Full_reg),
        .FIFO_Full_reg_1(FIFO_Full_reg_0),
        .\INFERRED_GEN.cnt_i_reg[2] (\INFERRED_GEN.cnt_i_reg[2] ),
        .Q(Q),
        .SS(SS),
        .data3(data3),
        .out(out),
        .p_2_in50_in(p_2_in50_in),
        .s_axi_aclk(s_axi_aclk),
        .\tsr_reg[7] (\tsr_reg[7] ),
        .tx_fifo_rd_en_int(tx_fifo_rd_en_int),
        .tx_fifo_wr_en_d(tx_fifo_wr_en_d),
        .txrdyn(txrdyn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart16550
   (baudoutn,
    ip2intc_irpt,
    ddis,
    txrdyn,
    rxrdyn,
    sout,
    Q,
    rtsn,
    dtrn,
    out1n,
    out2n,
    s_axi_aclk,
    bus2ip_reset_int_core,
    Rd,
    Wr,
    ctsn,
    dsrn,
    rin,
    dcdn,
    ce_out_i,
    s_axi_wdata,
    \addr_d_reg[2]_0 ,
    freeze,
    sin);
  output baudoutn;
  output ip2intc_irpt;
  output ddis;
  output txrdyn;
  output rxrdyn;
  output sout;
  output [7:0]Q;
  output rtsn;
  output dtrn;
  output out1n;
  output out2n;
  input s_axi_aclk;
  input bus2ip_reset_int_core;
  input Rd;
  input Wr;
  input ctsn;
  input dsrn;
  input rin;
  input dcdn;
  input ce_out_i;
  input [7:0]s_axi_wdata;
  input [2:0]\addr_d_reg[2]_0 ;
  input freeze;
  input sin;

  wire D2;
  wire Ddis_i_1_n_0;
  wire \Dout[0]_i_2_n_0 ;
  wire \Dout[0]_i_3_n_0 ;
  wire \Dout[0]_i_4_n_0 ;
  wire \Dout[1]_i_2_n_0 ;
  wire \Dout[1]_i_3_n_0 ;
  wire \Dout[1]_i_4_n_0 ;
  wire \Dout[2]_i_2_n_0 ;
  wire \Dout[2]_i_3_n_0 ;
  wire \Dout[2]_i_4_n_0 ;
  wire \Dout[3]_i_2_n_0 ;
  wire \Dout[3]_i_3_n_0 ;
  wire \Dout[3]_i_4_n_0 ;
  wire \Dout[3]_i_5_n_0 ;
  wire \Dout[3]_i_7_n_0 ;
  wire \Dout[4]_i_2_n_0 ;
  wire \Dout[4]_i_3_n_0 ;
  wire \Dout[4]_i_4_n_0 ;
  wire \Dout[5]_i_2_n_0 ;
  wire \Dout[5]_i_3_n_0 ;
  wire \Dout[5]_i_4_n_0 ;
  wire \Dout[6]_i_2_n_0 ;
  wire \Dout[6]_i_3_n_0 ;
  wire \Dout[6]_i_4_n_0 ;
  wire \Dout[7]_i_10_n_0 ;
  wire \Dout[7]_i_3_n_0 ;
  wire \Dout[7]_i_4_n_0 ;
  wire \Dout[7]_i_5_n_0 ;
  wire \Dout[7]_i_6_n_0 ;
  wire \Dout[7]_i_7_n_0 ;
  wire \Dout[7]_i_8_n_0 ;
  wire \Dout[7]_i_9_n_0 ;
  wire \GENERATING_FIFOS.fcr[0]_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr[1]_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr[2]_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr[3]_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr[6]_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr[7]_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr[7]_i_2_n_0 ;
  wire \GENERATING_FIFOS.fcr_0_prev_i_1_n_0 ;
  wire \GENERATING_FIFOS.fcr_reg_n_0_[0] ;
  wire \GENERATING_FIFOS.fcr_reg_n_0_[1] ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[0]_i_1_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[1]_i_1_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[2]_i_1_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_3_n_0 ;
  wire \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_i_2_n_0 ;
  wire [3:0]\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_10 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_11 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_12 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_13 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_14 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_15 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_16 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_17 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_2 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_21 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_4 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_5 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_6 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_7 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_8 ;
  wire \GENERATING_FIFOS.rx_fifo_block_1_n_9 ;
  wire \GENERATING_FIFOS.rx_fifo_rst_i_1_n_0 ;
  wire \GENERATING_FIFOS.tx_fifo_block_1_n_1 ;
  wire \GENERATING_FIFOS.tx_fifo_wr_en_d_i_1_n_0 ;
  wire \GENERATING_FIFOS.tx_fifo_wr_en_d_i_2_n_0 ;
  wire Intr0;
  wire [0:3]L;
  wire Lcr0;
  wire \Lcr_reg_n_0_[0] ;
  wire \Lcr_reg_n_0_[1] ;
  wire \Lcr_reg_n_0_[2] ;
  wire \Lcr_reg_n_0_[4] ;
  wire \Lcr_reg_n_0_[5] ;
  wire \Lcr_reg_n_0_[6] ;
  wire \Lcr_reg_n_0_[7] ;
  wire [7:0]Q;
  wire [7:0]Rbr;
  wire Rd;
  wire Rx_error_in_fifo;
  wire [7:0]Thr;
  wire Thr0;
  wire Wr;
  wire [2:0]\addr_d_reg[2]_0 ;
  wire [15:0]baudCounter;
  wire baudCounter1;
  wire \baudCounter[0]_i_1_n_0 ;
  wire \baudCounter[10]_i_1_n_0 ;
  wire \baudCounter[11]_i_1_n_0 ;
  wire \baudCounter[12]_i_1_n_0 ;
  wire \baudCounter[13]_i_1_n_0 ;
  wire \baudCounter[14]_i_1_n_0 ;
  wire \baudCounter[15]_i_1_n_0 ;
  wire \baudCounter[1]_i_1_n_0 ;
  wire \baudCounter[2]_i_1_n_0 ;
  wire \baudCounter[3]_i_1_n_0 ;
  wire \baudCounter[4]_i_1_n_0 ;
  wire \baudCounter[5]_i_1_n_0 ;
  wire \baudCounter[6]_i_1_n_0 ;
  wire \baudCounter[7]_i_1_n_0 ;
  wire \baudCounter[8]_i_1_n_0 ;
  wire \baudCounter[9]_i_1_n_0 ;
  wire baud_counter_loaded;
  wire baud_counter_loaded_i_2_n_0;
  wire baud_counter_loaded_i_3_n_0;
  wire baud_counter_loaded_i_4_n_0;
  wire baud_counter_loaded_i_5_n_0;
  wire baudoutN_int_i;
  wire baudoutN_int_i_i_1_n_0;
  wire baudoutN_int_i_i_2_n_0;
  wire baudoutn;
  wire bus2ip_reset_int_core;
  wire ce_out_i;
  wire chipSelect;
  wire [15:0]clockDiv;
  wire ctsN_d;
  wire ctsn;
  wire \d_d_reg_n_0_[0] ;
  wire \d_d_reg_n_0_[1] ;
  wire \d_d_reg_n_0_[2] ;
  wire \d_d_reg_n_0_[3] ;
  wire \d_d_reg_n_0_[5] ;
  wire [7:3]data3;
  wire dcdN_d;
  wire dcdn;
  wire ddis;
  wire divisor_latch_loaded;
  wire divisor_latch_loaded_i_1_n_0;
  wire dlab_i_1_n_0;
  wire dll0;
  wire dlm0;
  wire dsrN_d;
  wire dsrn;
  wire dtrn;
  wire fcr_0_prev;
  wire freeze;
  wire [3:0]ier;
  wire ier1;
  wire ier1_d;
  wire \iir[0]_i_2_n_0 ;
  wire \iir[3]_i_2_n_0 ;
  wire \iir[3]_i_5_n_0 ;
  wire \iir[3]_i_6_n_0 ;
  wire \iir[3]_i_8_n_0 ;
  wire \iir_reg_n_0_[0] ;
  wire \iir_reg_n_0_[1] ;
  wire \iir_reg_n_0_[2] ;
  wire \iir_reg_n_0_[3] ;
  wire \iir_reg_n_0_[7] ;
  wire ip2intc_irpt;
  wire load_baudlower;
  wire load_baudupper;
  wire lsr2_rst;
  wire lsr2_set;
  wire lsr3_set;
  wire lsr4_set;
  wire lsr5_d;
  wire \lsr[1]_i_3_n_0 ;
  wire \lsr[2]_i_1_n_0 ;
  wire \lsr[2]_i_4_n_0 ;
  wire \lsr[3]_i_1_n_0 ;
  wire \lsr[4]_i_1_n_0 ;
  wire \lsr[7]_i_1_n_0 ;
  wire \lsr[7]_i_2_n_0 ;
  wire \lsr[7]_i_3_n_0 ;
  wire lsr_reg;
  wire lsr_reg0;
  wire \lsr_reg_n_0_[0] ;
  wire \lsr_reg_n_0_[1] ;
  wire \lsr_reg_n_0_[7] ;
  wire mcr0;
  wire mcr4_d;
  wire \mcr_reg_n_0_[0] ;
  wire \mcr_reg_n_0_[2] ;
  wire \mcr_reg_n_0_[3] ;
  wire [15:1]minusOp;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire \modem_prev_val[0]_i_1_n_0 ;
  wire \modem_prev_val[1]_i_1_n_0 ;
  wire \modem_prev_val[2]_i_1_n_0 ;
  wire \modem_prev_val[3]_i_1_n_0 ;
  wire \modem_prev_val_reg_n_0_[0] ;
  wire \modem_prev_val_reg_n_0_[1] ;
  wire msr1;
  wire \msr[0]_i_2_n_0 ;
  wire \msr[1]_i_1_n_0 ;
  wire \msr[2]_i_1_n_0 ;
  wire \msr[3]_i_1_n_0 ;
  wire \msr[4]_i_1_n_0 ;
  wire \msr[5]_i_1_n_0 ;
  wire \msr[6]_i_1_n_0 ;
  wire \msr[7]_i_1_n_0 ;
  wire msr_reg;
  wire msr_reg0;
  wire \msr_reg_n_0_[0] ;
  wire \msr_reg_n_0_[5] ;
  wire \msr_reg_n_0_[6] ;
  wire \msr_reg_n_0_[7] ;
  wire out1n;
  wire out2n;
  wire p_0_in;
  wire p_0_in37_in;
  wire p_0_in38_in;
  wire p_0_in39_in;
  wire p_0_in42_in;
  wire p_0_in4_in;
  wire p_0_in8_in;
  wire p_0_in_0;
  wire p_14_out;
  wire p_1_in3_in;
  wire p_1_in43_in;
  wire p_1_in6_in;
  wire p_1_out;
  wire [6:5]p_2_in;
  wire p_2_in44_in;
  wire p_2_in50_in;
  wire p_3_in;
  wire p_5_in;
  wire p_5_out;
  wire p_92_in;
  wire rd_d;
  wire riN_d;
  wire rin;
  wire rtsn;
  wire rx16550_1_n_12;
  wire rx16550_1_n_13;
  wire rx16550_1_n_14;
  wire rx16550_1_n_15;
  wire rx16550_1_n_16;
  wire rx16550_1_n_17;
  wire rx_error_in_fifo_cnt_dn;
  wire rx_error_in_fifo_cnt_up;
  wire \rx_fifo_control_1/Rx_error_in_fifo0 ;
  wire \rx_fifo_control_1/character_counter_rst ;
  wire [10:0]rx_fifo_data_in;
  wire rx_fifo_empty;
  wire rx_fifo_full;
  wire rx_fifo_rd_en;
  wire rx_fifo_rd_en_d;
  wire rx_fifo_rd_en_d1;
  wire rx_fifo_rst;
  wire rx_fifo_wr_en_i;
  wire rx_sin;
  wire rxrdyN_int_i_2_n_0;
  wire rxrdyn;
  wire s_axi_aclk;
  wire [7:0]s_axi_wdata;
  wire [7:0]scr;
  wire scr0;
  wire sin;
  wire sout;
  wire thre_iir_set;
  wire thre_iir_set_i_2_n_0;
  wire thre_iir_set_i_3_n_0;
  wire thre_iir_set_i_5_n_0;
  wire thre_iir_set_i_6_n_0;
  wire thre_iir_set_i_7_n_0;
  wire [3:3]transmit_state;
  wire [7:7]tsr_int;
  wire tsr_loaded;
  wire tx16550_1_n_5;
  wire tx16550_1_n_6;
  wire tx_empty;
  wire [7:0]tx_fifo_data_out;
  wire tx_fifo_empty;
  wire tx_fifo_rd_en_int;
  wire tx_fifo_rst;
  wire tx_fifo_wr_en_d;
  wire txrdyn;
  wire wr_d;
  wire writing_thr;
  wire xuart_tx_load_sm_1_n_0;
  wire xuart_tx_load_sm_1_n_1;
  wire xuart_tx_load_sm_1_n_10;
  wire xuart_tx_load_sm_1_n_2;
  wire xuart_tx_load_sm_1_n_4;
  wire xuart_tx_load_sm_1_n_5;
  wire xuart_tx_load_sm_1_n_6;
  wire xuart_tx_load_sm_1_n_7;
  wire xuart_tx_load_sm_1_n_8;
  wire xuart_tx_load_sm_1_n_9;
  wire \NLW_NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_S_UNCONNECTED ;
  wire [3:2]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h7)) 
    Ddis_i_1
       (.I0(chipSelect),
        .I1(rd_d),
        .O(Ddis_i_1_n_0));
  FDRE Ddis_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Ddis_i_1_n_0),
        .Q(ddis),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF0C0C0CAEAE0C0C)) 
    \Dout[0]_i_2 
       (.I0(\iir_reg_n_0_[0] ),
        .I1(\Lcr_reg_n_0_[0] ),
        .I2(\Dout[7]_i_6_n_0 ),
        .I3(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I4(\Dout[7]_i_7_n_0 ),
        .I5(L[0]),
        .O(\Dout[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00C0F0A000C000A0)) 
    \Dout[0]_i_3 
       (.I0(\mcr_reg_n_0_[0] ),
        .I1(\lsr_reg_n_0_[0] ),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[3]),
        .I5(\msr_reg_n_0_[0] ),
        .O(\Dout[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000C000800000008)) 
    \Dout[0]_i_4 
       (.I0(clockDiv[0]),
        .I1(L[0]),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[3]),
        .I5(clockDiv[8]),
        .O(\Dout[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C0C0CAEAE0C0C)) 
    \Dout[1]_i_2 
       (.I0(\iir_reg_n_0_[1] ),
        .I1(\Lcr_reg_n_0_[1] ),
        .I2(\Dout[7]_i_6_n_0 ),
        .I3(\GENERATING_FIFOS.fcr_reg_n_0_[1] ),
        .I4(\Dout[7]_i_7_n_0 ),
        .I5(L[0]),
        .O(\Dout[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00C0F0A000C000A0)) 
    \Dout[1]_i_3 
       (.I0(p_0_in_0),
        .I1(\lsr_reg_n_0_[1] ),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[3]),
        .I5(p_0_in37_in),
        .O(\Dout[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000C000800000008)) 
    \Dout[1]_i_4 
       (.I0(clockDiv[1]),
        .I1(L[0]),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[3]),
        .I5(clockDiv[9]),
        .O(\Dout[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C0C0CAEAE0C0C)) 
    \Dout[2]_i_2 
       (.I0(\iir_reg_n_0_[2] ),
        .I1(\Lcr_reg_n_0_[2] ),
        .I2(\Dout[7]_i_6_n_0 ),
        .I3(p_0_in4_in),
        .I4(\Dout[7]_i_7_n_0 ),
        .I5(L[0]),
        .O(\Dout[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00C0F0A000C000A0)) 
    \Dout[2]_i_3 
       (.I0(\mcr_reg_n_0_[2] ),
        .I1(p_0_in42_in),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[3]),
        .I5(p_0_in38_in),
        .O(\Dout[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000C000800000008)) 
    \Dout[2]_i_4 
       (.I0(clockDiv[2]),
        .I1(L[0]),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[3]),
        .I5(clockDiv[10]),
        .O(\Dout[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C0C0CAEAE0C0C)) 
    \Dout[3]_i_2 
       (.I0(\iir_reg_n_0_[3] ),
        .I1(p_5_in),
        .I2(\Dout[7]_i_6_n_0 ),
        .I3(data3[3]),
        .I4(\Dout[7]_i_7_n_0 ),
        .I5(L[0]),
        .O(\Dout[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00C0F0A000C000A0)) 
    \Dout[3]_i_3 
       (.I0(\mcr_reg_n_0_[3] ),
        .I1(p_1_in43_in),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[3]),
        .I5(p_0_in39_in),
        .O(\Dout[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000C000800000008)) 
    \Dout[3]_i_4 
       (.I0(clockDiv[3]),
        .I1(L[0]),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[3]),
        .I5(clockDiv[11]),
        .O(\Dout[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \Dout[3]_i_5 
       (.I0(L[1]),
        .I1(L[2]),
        .I2(L[3]),
        .O(\Dout[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \Dout[3]_i_7 
       (.I0(L[2]),
        .I1(L[1]),
        .I2(L[0]),
        .I3(L[3]),
        .O(\Dout[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \Dout[4]_i_2 
       (.I0(\Dout[7]_i_6_n_0 ),
        .I1(\Lcr_reg_n_0_[4] ),
        .I2(\Dout[3]_i_5_n_0 ),
        .I3(scr[4]),
        .I4(\Dout[4]_i_3_n_0 ),
        .I5(\Dout[4]_i_4_n_0 ),
        .O(\Dout[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000B000000080)) 
    \Dout[4]_i_3 
       (.I0(clockDiv[12]),
        .I1(L[3]),
        .I2(L[0]),
        .I3(L[2]),
        .I4(L[1]),
        .I5(clockDiv[4]),
        .O(\Dout[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F00CA000000CA00)) 
    \Dout[4]_i_4 
       (.I0(p_0_in8_in),
        .I1(msr_reg),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[3]),
        .I5(p_2_in44_in),
        .O(\Dout[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \Dout[5]_i_2 
       (.I0(\Dout[7]_i_6_n_0 ),
        .I1(\Lcr_reg_n_0_[5] ),
        .I2(\Dout[3]_i_5_n_0 ),
        .I3(scr[5]),
        .I4(\Dout[5]_i_3_n_0 ),
        .I5(\Dout[5]_i_4_n_0 ),
        .O(\Dout[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000C000800000008)) 
    \Dout[5]_i_3 
       (.I0(clockDiv[5]),
        .I1(L[0]),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[3]),
        .I5(clockDiv[13]),
        .O(\Dout[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h2C002000)) 
    \Dout[5]_i_4 
       (.I0(\msr_reg_n_0_[5] ),
        .I1(L[3]),
        .I2(L[2]),
        .I3(L[1]),
        .I4(p_2_in50_in),
        .O(\Dout[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C0C0CAEAE0C0C)) 
    \Dout[6]_i_2 
       (.I0(\iir_reg_n_0_[7] ),
        .I1(\Lcr_reg_n_0_[6] ),
        .I2(\Dout[7]_i_6_n_0 ),
        .I3(data3[6]),
        .I4(\Dout[7]_i_7_n_0 ),
        .I5(L[0]),
        .O(\Dout[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08C00800)) 
    \Dout[6]_i_3 
       (.I0(lsr_reg),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[3]),
        .I4(\msr_reg_n_0_[6] ),
        .I5(\Dout[6]_i_4_n_0 ),
        .O(\Dout[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \Dout[6]_i_4 
       (.I0(\Dout[3]_i_5_n_0 ),
        .I1(scr[6]),
        .I2(clockDiv[14]),
        .I3(\Dout[7]_i_9_n_0 ),
        .I4(clockDiv[6]),
        .I5(\Dout[7]_i_10_n_0 ),
        .O(\Dout[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Dout[7]_i_1 
       (.I0(rd_d),
        .I1(chipSelect),
        .O(p_92_in));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \Dout[7]_i_10 
       (.I0(L[3]),
        .I1(L[0]),
        .I2(L[2]),
        .I3(L[1]),
        .O(\Dout[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Dout[7]_i_3 
       (.I0(L[3]),
        .I1(L[2]),
        .I2(L[1]),
        .I3(L[0]),
        .O(\Dout[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF2FF2222F2222222)) 
    \Dout[7]_i_4 
       (.I0(\Lcr_reg_n_0_[7] ),
        .I1(\Dout[7]_i_6_n_0 ),
        .I2(data3[7]),
        .I3(L[0]),
        .I4(\Dout[7]_i_7_n_0 ),
        .I5(\iir_reg_n_0_[7] ),
        .O(\Dout[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08C00800)) 
    \Dout[7]_i_5 
       (.I0(\lsr_reg_n_0_[7] ),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[3]),
        .I4(\msr_reg_n_0_[7] ),
        .I5(\Dout[7]_i_8_n_0 ),
        .O(\Dout[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \Dout[7]_i_6 
       (.I0(L[2]),
        .I1(L[1]),
        .I2(L[3]),
        .O(\Dout[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \Dout[7]_i_7 
       (.I0(L[3]),
        .I1(L[2]),
        .I2(L[1]),
        .O(\Dout[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \Dout[7]_i_8 
       (.I0(\Dout[3]_i_5_n_0 ),
        .I1(scr[7]),
        .I2(clockDiv[15]),
        .I3(\Dout[7]_i_9_n_0 ),
        .I4(clockDiv[7]),
        .I5(\Dout[7]_i_10_n_0 ),
        .O(\Dout[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \Dout[7]_i_9 
       (.I0(L[0]),
        .I1(L[2]),
        .I2(L[1]),
        .I3(L[3]),
        .O(\Dout[7]_i_9_n_0 ));
  FDRE \Dout_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_92_in),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_17 ),
        .Q(Q[0]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_92_in),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_16 ),
        .Q(Q[1]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_92_in),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_15 ),
        .Q(Q[2]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_92_in),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_14 ),
        .Q(Q[3]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_92_in),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_13 ),
        .Q(Q[4]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_92_in),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_12 ),
        .Q(Q[5]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_92_in),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_11 ),
        .Q(Q[6]),
        .R(bus2ip_reset_int_core));
  FDRE \Dout_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_92_in),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_10 ),
        .Q(Q[7]),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \GENERATING_FIFOS.fcr[0]_i_1 
       (.I0(\d_d_reg_n_0_[0] ),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[3]),
        .I4(\GENERATING_FIFOS.tx_fifo_wr_en_d_i_2_n_0 ),
        .I5(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .O(\GENERATING_FIFOS.fcr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GENERATING_FIFOS.fcr[1]_i_1 
       (.I0(\d_d_reg_n_0_[1] ),
        .I1(\GENERATING_FIFOS.fcr[7]_i_2_n_0 ),
        .I2(bus2ip_reset_int_core),
        .O(\GENERATING_FIFOS.fcr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GENERATING_FIFOS.fcr[2]_i_1 
       (.I0(\d_d_reg_n_0_[2] ),
        .I1(\GENERATING_FIFOS.fcr[7]_i_2_n_0 ),
        .I2(bus2ip_reset_int_core),
        .O(\GENERATING_FIFOS.fcr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GENERATING_FIFOS.fcr[3]_i_1 
       (.I0(\d_d_reg_n_0_[3] ),
        .I1(\GENERATING_FIFOS.fcr[7]_i_2_n_0 ),
        .I2(data3[3]),
        .O(\GENERATING_FIFOS.fcr[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \GENERATING_FIFOS.fcr[6]_i_1 
       (.I0(p_2_in[5]),
        .I1(\GENERATING_FIFOS.fcr[7]_i_2_n_0 ),
        .I2(data3[6]),
        .O(\GENERATING_FIFOS.fcr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GENERATING_FIFOS.fcr[7]_i_1 
       (.I0(p_2_in[6]),
        .I1(\GENERATING_FIFOS.fcr[7]_i_2_n_0 ),
        .I2(data3[7]),
        .O(\GENERATING_FIFOS.fcr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \GENERATING_FIFOS.fcr[7]_i_2 
       (.I0(chipSelect),
        .I1(wr_d),
        .I2(L[3]),
        .I3(L[2]),
        .I4(L[1]),
        .I5(fcr_0_prev),
        .O(\GENERATING_FIFOS.fcr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \GENERATING_FIFOS.fcr_0_prev_i_1 
       (.I0(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[3]),
        .I4(\GENERATING_FIFOS.tx_fifo_wr_en_d_i_2_n_0 ),
        .I5(fcr_0_prev),
        .O(\GENERATING_FIFOS.fcr_0_prev_i_1_n_0 ));
  FDRE \GENERATING_FIFOS.fcr_0_prev_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr_0_prev_i_1_n_0 ),
        .Q(fcr_0_prev),
        .R(bus2ip_reset_int_core));
  FDRE \GENERATING_FIFOS.fcr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr[0]_i_1_n_0 ),
        .Q(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .R(bus2ip_reset_int_core));
  FDRE \GENERATING_FIFOS.fcr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr[1]_i_1_n_0 ),
        .Q(\GENERATING_FIFOS.fcr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \GENERATING_FIFOS.fcr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr[2]_i_1_n_0 ),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \GENERATING_FIFOS.fcr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr[3]_i_1_n_0 ),
        .Q(data3[3]),
        .R(bus2ip_reset_int_core));
  FDRE \GENERATING_FIFOS.fcr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr[6]_i_1_n_0 ),
        .Q(data3[6]),
        .R(bus2ip_reset_int_core));
  FDRE \GENERATING_FIFOS.fcr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr[7]_i_1_n_0 ),
        .Q(data3[7]),
        .R(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[0]_i_1 
       (.I0(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hD5AAAA55)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[1]_i_1 
       (.I0(rx_error_in_fifo_cnt_up),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .I2(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I4(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hE6CCCC99)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[2]_i_1 
       (.I0(rx_error_in_fifo_cnt_up),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .I2(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I4(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(rx_fifo_rst),
        .O(p_1_out));
  LUT6 #(
    .INIT(64'hBFFFFFFFAAAAAAA8)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2 
       (.I0(rx_error_in_fifo_cnt_dn),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .I2(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I4(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .I5(rx_error_in_fifo_cnt_up),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFFE8001)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_3 
       (.I0(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I2(rx_error_in_fifo_cnt_up),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .I4(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_i_2 
       (.I0(\lsr[7]_i_3_n_0 ),
        .I1(p_92_in),
        .I2(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I4(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I5(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .O(\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_i_2_n_0 ));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_9 ),
        .Q(rx_error_in_fifo_cnt_dn),
        .R(bus2ip_reset_int_core));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ),
        .D(\GENERATING_FIFOS.rx_error_in_fifo_cnt[0]_i_1_n_0 ),
        .Q(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .R(p_1_out));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ),
        .D(\GENERATING_FIFOS.rx_error_in_fifo_cnt[1]_i_1_n_0 ),
        .Q(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .R(p_1_out));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ),
        .D(\GENERATING_FIFOS.rx_error_in_fifo_cnt[2]_i_1_n_0 ),
        .Q(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .R(p_1_out));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_2_n_0 ),
        .D(\GENERATING_FIFOS.rx_error_in_fifo_cnt[3]_i_3_n_0 ),
        .Q(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .R(p_1_out));
  FDRE \GENERATING_FIFOS.rx_error_in_fifo_cnt_up_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rx_error_in_fifo),
        .Q(rx_error_in_fifo_cnt_up),
        .R(bus2ip_reset_int_core));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_fifo_block \GENERATING_FIFOS.rx_fifo_block_1 
       (.D({\GENERATING_FIFOS.rx_fifo_block_1_n_10 ,\GENERATING_FIFOS.rx_fifo_block_1_n_11 ,\GENERATING_FIFOS.rx_fifo_block_1_n_12 ,\GENERATING_FIFOS.rx_fifo_block_1_n_13 ,\GENERATING_FIFOS.rx_fifo_block_1_n_14 ,\GENERATING_FIFOS.rx_fifo_block_1_n_15 ,\GENERATING_FIFOS.rx_fifo_block_1_n_16 ,\GENERATING_FIFOS.rx_fifo_block_1_n_17 }),
        .\Dout_reg[0] (\Dout[0]_i_2_n_0 ),
        .\Dout_reg[0]_0 (\Dout[0]_i_3_n_0 ),
        .\Dout_reg[0]_1 (\Dout[0]_i_4_n_0 ),
        .\Dout_reg[1] (\Dout[1]_i_2_n_0 ),
        .\Dout_reg[1]_0 (\Dout[1]_i_3_n_0 ),
        .\Dout_reg[1]_1 (\Dout[1]_i_4_n_0 ),
        .\Dout_reg[1]_2 (\Dout[3]_i_5_n_0 ),
        .\Dout_reg[2] (\Dout[2]_i_2_n_0 ),
        .\Dout_reg[2]_0 (\Dout[2]_i_3_n_0 ),
        .\Dout_reg[2]_1 (\Dout[2]_i_4_n_0 ),
        .\Dout_reg[3] (ier),
        .\Dout_reg[3]_0 (scr[3:0]),
        .\Dout_reg[3]_1 (\Dout[3]_i_2_n_0 ),
        .\Dout_reg[3]_2 (\Dout[3]_i_3_n_0 ),
        .\Dout_reg[3]_3 (\Dout[3]_i_4_n_0 ),
        .\Dout_reg[3]_4 (\Dout[3]_i_7_n_0 ),
        .\Dout_reg[4] (\Dout[4]_i_2_n_0 ),
        .\Dout_reg[5] (\Dout[5]_i_2_n_0 ),
        .\Dout_reg[6] (\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .\Dout_reg[6]_0 (\Dout[7]_i_3_n_0 ),
        .\Dout_reg[6]_1 (\Dout[6]_i_2_n_0 ),
        .\Dout_reg[6]_2 (\Dout[6]_i_3_n_0 ),
        .\Dout_reg[7] (Rbr),
        .\Dout_reg[7]_0 (\Dout[7]_i_4_n_0 ),
        .\Dout_reg[7]_1 (\Dout[7]_i_5_n_0 ),
        .\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_reg (\GENERATING_FIFOS.rx_error_in_fifo_cnt_dn_i_2_n_0 ),
        .\GENERATING_FIFOS.rx_fifo_rd_en_d_reg (\GENERATING_FIFOS.rx_fifo_block_1_n_9 ),
        .\INFERRED_GEN.cnt_i_reg[4] (\GENERATING_FIFOS.rx_fifo_block_1_n_2 ),
        .Q(rx_fifo_empty),
        .Rx_error_in_fifo(Rx_error_in_fifo),
        .Rx_error_in_fifo0(\rx_fifo_control_1/Rx_error_in_fifo0 ),
        .SR(\rx_fifo_control_1/character_counter_rst ),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_reset_int_core_reg(\GENERATING_FIFOS.rx_fifo_block_1_n_5 ),
        .bus2ip_reset_int_core_reg_0(\GENERATING_FIFOS.rx_fifo_block_1_n_8 ),
        .chipSelect(chipSelect),
        .data3(data3[7:6]),
        .\iir_reg[0] (\iir[0]_i_2_n_0 ),
        .\iir_reg[0]_0 (\lsr_reg_n_0_[1] ),
        .\iir_reg[3] (\iir[3]_i_2_n_0 ),
        .\iir_reg[3]_0 (\iir[3]_i_6_n_0 ),
        .\iir_reg[3]_1 (\iir_reg_n_0_[1] ),
        .\iir_reg[3]_2 (\iir_reg_n_0_[2] ),
        .\iir_reg[3]_3 (\iir[3]_i_5_n_0 ),
        .lsr2_rst(lsr2_rst),
        .lsr2_rst_reg(\lsr[1]_i_3_n_0 ),
        .lsr2_set(lsr2_set),
        .lsr3_set(lsr3_set),
        .lsr4_set(lsr4_set),
        .lsr5_d(lsr5_d),
        .\lsr_reg[0] (\GENERATING_FIFOS.rx_fifo_block_1_n_21 ),
        .\lsr_reg[2] (p_5_in),
        .\lsr_reg[5] (\GENERATING_FIFOS.rx_fifo_block_1_n_7 ),
        .p_0_in(p_0_in),
        .p_0_in42_in(p_0_in42_in),
        .p_1_in43_in(p_1_in43_in),
        .p_2_in44_in(p_2_in44_in),
        .p_2_in50_in(p_2_in50_in),
        .rx_fifo_data_in(rx_fifo_data_in),
        .rx_fifo_full(rx_fifo_full),
        .rx_fifo_rd_en_d(rx_fifo_rd_en_d),
        .rx_fifo_rd_en_d1(rx_fifo_rd_en_d1),
        .rx_fifo_rst(rx_fifo_rst),
        .rx_fifo_wr_en_i(rx_fifo_wr_en_i),
        .rxrdyN_int_reg(\lsr_reg_n_0_[0] ),
        .rxrdyN_int_reg_0(rxrdyN_int_i_2_n_0),
        .s_axi_aclk(s_axi_aclk),
        .thre_iir_set(thre_iir_set),
        .thre_iir_set_i_4(\iir_reg_n_0_[0] ),
        .thre_iir_set_i_4_0(\iir_reg_n_0_[3] ),
        .thre_iir_set_i_4_1(\iir[3]_i_8_n_0 ),
        .thre_iir_set_reg(\GENERATING_FIFOS.rx_fifo_block_1_n_4 ),
        .thre_iir_set_reg_0(\GENERATING_FIFOS.rx_fifo_block_1_n_6 ),
        .thre_iir_set_reg_1(thre_iir_set_i_2_n_0),
        .thre_iir_set_reg_2(thre_iir_set_i_3_n_0),
        .thre_iir_set_reg_3(thre_iir_set_i_6_n_0),
        .thre_iir_set_reg_4(thre_iir_set_i_7_n_0),
        .wr_d(wr_d),
        .writing_thr(writing_thr));
  FDRE \GENERATING_FIFOS.rx_fifo_rd_en_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_rd_en_d),
        .Q(rx_fifo_rd_en_d1),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \GENERATING_FIFOS.rx_fifo_rd_en_d_i_1 
       (.I0(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I1(p_92_in),
        .I2(L[3]),
        .I3(L[2]),
        .I4(L[1]),
        .I5(L[0]),
        .O(rx_fifo_rd_en));
  FDRE \GENERATING_FIFOS.rx_fifo_rd_en_d_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_fifo_rd_en),
        .Q(rx_fifo_rd_en_d),
        .R(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'hFFFFAEEA)) 
    \GENERATING_FIFOS.rx_fifo_rst_i_1 
       (.I0(\GENERATING_FIFOS.fcr_reg_n_0_[1] ),
        .I1(p_14_out),
        .I2(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I3(fcr_0_prev),
        .I4(bus2ip_reset_int_core),
        .O(\GENERATING_FIFOS.rx_fifo_rst_i_1_n_0 ));
  FDRE \GENERATING_FIFOS.rx_fifo_rst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_rst_i_1_n_0 ),
        .Q(rx_fifo_rst),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_fifo_block \GENERATING_FIFOS.tx_fifo_block_1 
       (.FIFO_Full_reg(\GENERATING_FIFOS.tx_fifo_block_1_n_1 ),
        .FIFO_Full_reg_0(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .\INFERRED_GEN.cnt_i_reg[2] (tx16550_1_n_6),
        .Q(tx_fifo_empty),
        .SS(tx_fifo_rst),
        .data3(data3[3]),
        .out(tx_fifo_data_out),
        .p_2_in50_in(p_2_in50_in),
        .s_axi_aclk(s_axi_aclk),
        .\tsr_reg[7] (Thr),
        .tx_fifo_rd_en_int(tx_fifo_rd_en_int),
        .tx_fifo_wr_en_d(tx_fifo_wr_en_d),
        .txrdyn(txrdyn));
  LUT5 #(
    .INIT(32'hFFFFAEEA)) 
    \GENERATING_FIFOS.tx_fifo_rst_i_1 
       (.I0(p_0_in4_in),
        .I1(p_14_out),
        .I2(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I3(fcr_0_prev),
        .I4(bus2ip_reset_int_core),
        .O(p_5_out));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \GENERATING_FIFOS.tx_fifo_rst_i_2 
       (.I0(L[1]),
        .I1(L[2]),
        .I2(L[3]),
        .I3(wr_d),
        .I4(chipSelect),
        .O(p_14_out));
  FDRE \GENERATING_FIFOS.tx_fifo_rst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_5_out),
        .Q(tx_fifo_rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \GENERATING_FIFOS.tx_fifo_wr_en_d_i_1 
       (.I0(L[3]),
        .I1(L[2]),
        .I2(L[1]),
        .I3(L[0]),
        .I4(\GENERATING_FIFOS.tx_fifo_wr_en_d_i_2_n_0 ),
        .I5(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .O(\GENERATING_FIFOS.tx_fifo_wr_en_d_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \GENERATING_FIFOS.tx_fifo_wr_en_d_i_2 
       (.I0(chipSelect),
        .I1(wr_d),
        .O(\GENERATING_FIFOS.tx_fifo_wr_en_d_i_2_n_0 ));
  FDRE \GENERATING_FIFOS.tx_fifo_wr_en_d_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.tx_fifo_wr_en_d_i_1_n_0 ),
        .Q(tx_fifo_wr_en_d),
        .R(bus2ip_reset_int_core));
  LUT2 #(
    .INIT(4'h1)) 
    Intr_i_1
       (.I0(freeze),
        .I1(\iir_reg_n_0_[0] ),
        .O(Intr0));
  FDRE Intr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Intr0),
        .Q(ip2intc_irpt),
        .R(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'h00800000)) 
    \Lcr[7]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[3]),
        .I3(L[1]),
        .I4(L[2]),
        .O(Lcr0));
  FDSE \Lcr_reg[0] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(\Lcr_reg_n_0_[0] ),
        .S(bus2ip_reset_int_core));
  FDSE \Lcr_reg[1] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(\Lcr_reg_n_0_[1] ),
        .S(bus2ip_reset_int_core));
  FDRE \Lcr_reg[2] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(\Lcr_reg_n_0_[2] ),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[3] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(p_5_in),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[4] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(p_3_in),
        .Q(\Lcr_reg_n_0_[4] ),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[5] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(\Lcr_reg_n_0_[5] ),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[6] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(p_2_in[5]),
        .Q(\Lcr_reg_n_0_[6] ),
        .R(bus2ip_reset_int_core));
  FDRE \Lcr_reg[7] 
       (.C(s_axi_aclk),
        .CE(Lcr0),
        .D(p_2_in[6]),
        .Q(\Lcr_reg_n_0_[7] ),
        .R(bus2ip_reset_int_core));
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "FALSE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D1(p_0_in),
        .D2(D2),
        .Q(baudoutn),
        .R(bus2ip_reset_int_core),
        .S(\NLW_NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_S_UNCONNECTED ));
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    \NO_EXTERNAL_XIN.ODDR2_GEN.BAUD_FF_i_2 
       (.I0(rx16550_1_n_17),
        .I1(rx16550_1_n_16),
        .I2(rx16550_1_n_15),
        .I3(rx16550_1_n_14),
        .I4(baudoutN_int_i),
        .O(D2));
  FDSE \Thr_reg[0] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(Thr[0]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[1] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(Thr[1]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[2] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(Thr[2]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[3] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(Thr[3]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[4] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(p_3_in),
        .Q(Thr[4]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[5] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(Thr[5]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[6] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(p_2_in[5]),
        .Q(Thr[6]),
        .S(bus2ip_reset_int_core));
  FDSE \Thr_reg[7] 
       (.C(s_axi_aclk),
        .CE(Thr0),
        .D(p_2_in[6]),
        .Q(Thr[7]),
        .S(bus2ip_reset_int_core));
  FDRE \addr_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\addr_d_reg[2]_0 [0]),
        .Q(L[3]),
        .R(bus2ip_reset_int_core));
  FDRE \addr_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\addr_d_reg[2]_0 [1]),
        .Q(L[2]),
        .R(bus2ip_reset_int_core));
  FDRE \addr_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\addr_d_reg[2]_0 [2]),
        .Q(L[1]),
        .R(bus2ip_reset_int_core));
  LUT4 #(
    .INIT(16'hE0F1)) 
    \baudCounter[0]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[0]),
        .I3(baudCounter[0]),
        .O(\baudCounter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[10]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[10]),
        .I3(minusOp[10]),
        .O(\baudCounter[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[11]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[11]),
        .I3(minusOp[11]),
        .O(\baudCounter[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[12]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[12]),
        .I3(minusOp[12]),
        .O(\baudCounter[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[13]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[13]),
        .I3(minusOp[13]),
        .O(\baudCounter[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[14]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[14]),
        .I3(minusOp[14]),
        .O(\baudCounter[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[15]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[15]),
        .I3(minusOp[15]),
        .O(\baudCounter[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[1]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[1]),
        .I3(minusOp[1]),
        .O(\baudCounter[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[2]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[2]),
        .I3(minusOp[2]),
        .O(\baudCounter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[3]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[3]),
        .I3(minusOp[3]),
        .O(\baudCounter[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[4]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[4]),
        .I3(minusOp[4]),
        .O(\baudCounter[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[5]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[5]),
        .I3(minusOp[5]),
        .O(\baudCounter[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[6]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[6]),
        .I3(minusOp[6]),
        .O(\baudCounter[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[7]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[7]),
        .I3(minusOp[7]),
        .O(\baudCounter[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[8]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[8]),
        .I3(minusOp[8]),
        .O(\baudCounter[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF1E0)) 
    \baudCounter[9]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(baudCounter1),
        .I2(clockDiv[9]),
        .I3(minusOp[9]),
        .O(\baudCounter[9]_i_1_n_0 ));
  FDRE \baudCounter_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[0]_i_1_n_0 ),
        .Q(baudCounter[0]),
        .R(1'b0));
  FDRE \baudCounter_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[10]_i_1_n_0 ),
        .Q(baudCounter[10]),
        .R(1'b0));
  FDRE \baudCounter_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[11]_i_1_n_0 ),
        .Q(baudCounter[11]),
        .R(1'b0));
  FDRE \baudCounter_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[12]_i_1_n_0 ),
        .Q(baudCounter[12]),
        .R(1'b0));
  FDRE \baudCounter_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[13]_i_1_n_0 ),
        .Q(baudCounter[13]),
        .R(1'b0));
  FDRE \baudCounter_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[14]_i_1_n_0 ),
        .Q(baudCounter[14]),
        .R(1'b0));
  FDRE \baudCounter_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[15]_i_1_n_0 ),
        .Q(baudCounter[15]),
        .R(1'b0));
  FDRE \baudCounter_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[1]_i_1_n_0 ),
        .Q(baudCounter[1]),
        .R(1'b0));
  FDRE \baudCounter_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[2]_i_1_n_0 ),
        .Q(baudCounter[2]),
        .R(1'b0));
  FDRE \baudCounter_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[3]_i_1_n_0 ),
        .Q(baudCounter[3]),
        .R(1'b0));
  FDRE \baudCounter_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[4]_i_1_n_0 ),
        .Q(baudCounter[4]),
        .R(1'b0));
  FDRE \baudCounter_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[5]_i_1_n_0 ),
        .Q(baudCounter[5]),
        .R(1'b0));
  FDRE \baudCounter_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[6]_i_1_n_0 ),
        .Q(baudCounter[6]),
        .R(1'b0));
  FDRE \baudCounter_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[7]_i_1_n_0 ),
        .Q(baudCounter[7]),
        .R(1'b0));
  FDRE \baudCounter_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[8]_i_1_n_0 ),
        .Q(baudCounter[8]),
        .R(1'b0));
  FDRE \baudCounter_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\baudCounter[9]_i_1_n_0 ),
        .Q(baudCounter[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    baud_counter_loaded_i_1
       (.I0(divisor_latch_loaded),
        .I1(baud_counter_loaded_i_2_n_0),
        .I2(baud_counter_loaded_i_3_n_0),
        .I3(baud_counter_loaded_i_4_n_0),
        .I4(baud_counter_loaded_i_5_n_0),
        .O(baudCounter1));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    baud_counter_loaded_i_2
       (.I0(baudCounter[7]),
        .I1(baudCounter[1]),
        .I2(baudCounter[3]),
        .I3(baudCounter[5]),
        .O(baud_counter_loaded_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    baud_counter_loaded_i_3
       (.I0(baudCounter[10]),
        .I1(baudCounter[4]),
        .I2(baudCounter[0]),
        .I3(baudCounter[6]),
        .O(baud_counter_loaded_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    baud_counter_loaded_i_4
       (.I0(baudCounter[15]),
        .I1(baudCounter[14]),
        .I2(baudCounter[11]),
        .I3(baudCounter[2]),
        .O(baud_counter_loaded_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    baud_counter_loaded_i_5
       (.I0(baudCounter[13]),
        .I1(baudCounter[9]),
        .I2(baudCounter[12]),
        .I3(baudCounter[8]),
        .O(baud_counter_loaded_i_5_n_0));
  FDRE baud_counter_loaded_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(baudCounter1),
        .Q(baud_counter_loaded),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    baudoutN_int_i_i_1
       (.I0(baud_counter_loaded_i_5_n_0),
        .I1(baudCounter[15]),
        .I2(baudCounter[14]),
        .I3(baudCounter[11]),
        .I4(baudCounter[2]),
        .I5(baudoutN_int_i_i_2_n_0),
        .O(baudoutN_int_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    baudoutN_int_i_i_2
       (.I0(baudCounter[5]),
        .I1(baudCounter[3]),
        .I2(baudCounter[1]),
        .I3(baudCounter[7]),
        .I4(baud_counter_loaded_i_3_n_0),
        .O(baudoutN_int_i_i_2_n_0));
  FDRE baudoutN_int_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(baudoutN_int_i_i_1_n_0),
        .Q(baudoutN_int_i),
        .R(1'b0));
  FDRE chipSelect_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ce_out_i),
        .Q(chipSelect),
        .R(bus2ip_reset_int_core));
  FDRE ctsN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ctsn),
        .Q(ctsN_d),
        .R(1'b0));
  FDRE \d_d_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[0]),
        .Q(\d_d_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \d_d_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[1]),
        .Q(\d_d_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \d_d_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[2]),
        .Q(\d_d_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \d_d_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[3]),
        .Q(\d_d_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \d_d_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[4]),
        .Q(p_3_in),
        .R(1'b0));
  FDRE \d_d_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[5]),
        .Q(\d_d_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \d_d_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[6]),
        .Q(p_2_in[5]),
        .R(1'b0));
  FDRE \d_d_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wdata[7]),
        .Q(p_2_in[6]),
        .R(1'b0));
  FDRE dcdN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dcdn),
        .Q(dcdN_d),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00005554)) 
    divisor_latch_loaded_i_1
       (.I0(bus2ip_reset_int_core),
        .I1(load_baudupper),
        .I2(load_baudlower),
        .I3(divisor_latch_loaded),
        .I4(baud_counter_loaded),
        .O(divisor_latch_loaded_i_1_n_0));
  FDRE divisor_latch_loaded_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(divisor_latch_loaded_i_1_n_0),
        .Q(divisor_latch_loaded),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    dlab_i_1
       (.I0(L[0]),
        .I1(\GENERATING_FIFOS.tx_fifo_wr_en_d_i_2_n_0 ),
        .I2(L[3]),
        .I3(L[1]),
        .I4(L[2]),
        .I5(\Lcr_reg_n_0_[7] ),
        .O(dlab_i_1_n_0));
  FDRE dlab_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dlab_i_1_n_0),
        .Q(L[0]),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \dll[7]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[0]),
        .I5(L[3]),
        .O(dll0));
  FDSE \dll_reg[0] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(clockDiv[0]),
        .S(bus2ip_reset_int_core));
  FDSE \dll_reg[1] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(clockDiv[1]),
        .S(bus2ip_reset_int_core));
  FDRE \dll_reg[2] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(clockDiv[2]),
        .R(bus2ip_reset_int_core));
  FDSE \dll_reg[3] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(clockDiv[3]),
        .S(bus2ip_reset_int_core));
  FDRE \dll_reg[4] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(p_3_in),
        .Q(clockDiv[4]),
        .R(bus2ip_reset_int_core));
  FDRE \dll_reg[5] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(clockDiv[5]),
        .R(bus2ip_reset_int_core));
  FDRE \dll_reg[6] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(p_2_in[5]),
        .Q(clockDiv[6]),
        .R(bus2ip_reset_int_core));
  FDSE \dll_reg[7] 
       (.C(s_axi_aclk),
        .CE(dll0),
        .D(p_2_in[6]),
        .Q(clockDiv[7]),
        .S(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \dlm[7]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[3]),
        .I3(L[1]),
        .I4(L[2]),
        .I5(L[0]),
        .O(dlm0));
  FDRE \dlm_reg[0] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(clockDiv[8]),
        .R(bus2ip_reset_int_core));
  FDSE \dlm_reg[1] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(clockDiv[9]),
        .S(bus2ip_reset_int_core));
  FDRE \dlm_reg[2] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(clockDiv[10]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[3] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(clockDiv[11]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[4] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(p_3_in),
        .Q(clockDiv[12]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[5] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(clockDiv[13]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[6] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(p_2_in[5]),
        .Q(clockDiv[14]),
        .R(bus2ip_reset_int_core));
  FDRE \dlm_reg[7] 
       (.C(s_axi_aclk),
        .CE(dlm0),
        .D(p_2_in[6]),
        .Q(clockDiv[15]),
        .R(bus2ip_reset_int_core));
  FDRE dsrN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dsrn),
        .Q(dsrN_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'hB)) 
    dtrn_INST_0
       (.I0(p_0_in8_in),
        .I1(\mcr_reg_n_0_[0] ),
        .O(dtrn));
  FDRE ier1_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ier[1]),
        .Q(ier1_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \ier[3]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[3]),
        .I3(L[0]),
        .I4(L[1]),
        .I5(L[2]),
        .O(ier1));
  FDRE \ier_reg[0] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[0] ),
        .Q(ier[0]),
        .R(bus2ip_reset_int_core));
  FDRE \ier_reg[1] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[1] ),
        .Q(ier[1]),
        .R(bus2ip_reset_int_core));
  FDRE \ier_reg[2] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[2] ),
        .Q(ier[2]),
        .R(bus2ip_reset_int_core));
  FDRE \ier_reg[3] 
       (.C(s_axi_aclk),
        .CE(ier1),
        .D(\d_d_reg_n_0_[3] ),
        .Q(ier[3]),
        .R(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \iir[0]_i_2 
       (.I0(ier[3]),
        .I1(\msr_reg_n_0_[0] ),
        .I2(p_0_in37_in),
        .I3(p_0_in38_in),
        .I4(p_0_in39_in),
        .O(\iir[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \iir[3]_i_2 
       (.I0(ier[2]),
        .I1(p_0_in42_in),
        .I2(\lsr_reg_n_0_[1] ),
        .I3(p_1_in43_in),
        .I4(p_2_in44_in),
        .O(\iir[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \iir[3]_i_5 
       (.I0(\iir_reg_n_0_[0] ),
        .I1(\iir_reg_n_0_[3] ),
        .O(\iir[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \iir[3]_i_6 
       (.I0(chipSelect),
        .I1(rd_d),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[3]),
        .O(\iir[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \iir[3]_i_8 
       (.I0(L[0]),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[3]),
        .I4(chipSelect),
        .I5(rd_d),
        .O(\iir[3]_i_8_n_0 ));
  FDRE \iir_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_6 ),
        .Q(\iir_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \iir_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_4 ),
        .Q(\iir_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \iir_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_5 ),
        .Q(\iir_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \iir_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_8 ),
        .Q(\iir_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \iir_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .Q(\iir_reg_n_0_[7] ),
        .R(1'b0));
  FDRE load_baudlower_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dll0),
        .Q(load_baudlower),
        .R(1'b0));
  FDRE load_baudupper_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dlm0),
        .Q(load_baudupper),
        .R(1'b0));
  FDRE lsr2_rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_2 ),
        .Q(lsr2_rst),
        .R(bus2ip_reset_int_core));
  FDRE lsr5_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_2_in50_in),
        .Q(lsr5_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \lsr[1]_i_3 
       (.I0(chipSelect),
        .I1(rd_d),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[3]),
        .O(\lsr[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \lsr[2]_i_1 
       (.I0(p_0_in42_in),
        .I1(lsr2_set),
        .I2(lsr_reg0),
        .I3(\d_d_reg_n_0_[2] ),
        .I4(\lsr[2]_i_4_n_0 ),
        .I5(lsr2_rst),
        .O(\lsr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \lsr[2]_i_3 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[3]),
        .O(lsr_reg0));
  LUT6 #(
    .INIT(64'h5155555555555555)) 
    \lsr[2]_i_4 
       (.I0(bus2ip_reset_int_core),
        .I1(L[3]),
        .I2(L[2]),
        .I3(L[1]),
        .I4(rd_d),
        .I5(chipSelect),
        .O(\lsr[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \lsr[3]_i_1 
       (.I0(p_1_in43_in),
        .I1(lsr3_set),
        .I2(lsr_reg0),
        .I3(\d_d_reg_n_0_[3] ),
        .I4(\lsr[2]_i_4_n_0 ),
        .I5(lsr2_rst),
        .O(\lsr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FECE0000)) 
    \lsr[4]_i_1 
       (.I0(p_2_in44_in),
        .I1(lsr4_set),
        .I2(lsr_reg0),
        .I3(p_3_in),
        .I4(\lsr[2]_i_4_n_0 ),
        .I5(lsr2_rst),
        .O(\lsr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h11110111)) 
    \lsr[7]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(\lsr[7]_i_2_n_0 ),
        .I2(chipSelect),
        .I3(rd_d),
        .I4(\lsr[7]_i_3_n_0 ),
        .O(\lsr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \lsr[7]_i_2 
       (.I0(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [1]),
        .I1(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [3]),
        .I2(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [2]),
        .I3(\GENERATING_FIFOS.rx_error_in_fifo_cnt_reg [0]),
        .I4(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .O(\lsr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \lsr[7]_i_3 
       (.I0(L[3]),
        .I1(L[2]),
        .I2(L[1]),
        .O(\lsr[7]_i_3_n_0 ));
  FDRE \lsr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx16550_1_n_12),
        .Q(\lsr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \lsr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx16550_1_n_13),
        .Q(\lsr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \lsr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr[2]_i_1_n_0 ),
        .Q(p_0_in42_in),
        .R(1'b0));
  FDRE \lsr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr[3]_i_1_n_0 ),
        .Q(p_1_in43_in),
        .R(1'b0));
  FDRE \lsr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr[4]_i_1_n_0 ),
        .Q(p_2_in44_in),
        .R(1'b0));
  FDRE \lsr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(xuart_tx_load_sm_1_n_10),
        .Q(p_2_in50_in),
        .R(1'b0));
  FDRE \lsr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(xuart_tx_load_sm_1_n_0),
        .Q(lsr_reg),
        .R(1'b0));
  FDRE \lsr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\lsr[7]_i_1_n_0 ),
        .Q(\lsr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE mcr4_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in8_in),
        .Q(mcr4_d),
        .R(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mcr[4]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[1]),
        .I3(L[2]),
        .I4(L[3]),
        .O(mcr0));
  FDRE \mcr_reg[0] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(\mcr_reg_n_0_[0] ),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[1] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(p_0_in_0),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[2] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(\mcr_reg_n_0_[2] ),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[3] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(\mcr_reg_n_0_[3] ),
        .R(bus2ip_reset_int_core));
  FDRE \mcr_reg[4] 
       (.C(s_axi_aclk),
        .CE(mcr0),
        .D(p_3_in),
        .Q(p_0_in8_in),
        .R(bus2ip_reset_int_core));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(baudCounter[0]),
        .DI(baudCounter[4:1]),
        .O(minusOp[4:1]),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(baudCounter[8:5]),
        .O(minusOp[8:5]),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(baudCounter[8]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(baudCounter[7]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(baudCounter[6]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(baudCounter[5]),
        .O(minusOp_carry__0_i_4_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(baudCounter[12:9]),
        .O(minusOp[12:9]),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(baudCounter[12]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(baudCounter[11]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(baudCounter[10]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(baudCounter[9]),
        .O(minusOp_carry__1_i_4_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({NLW_minusOp_carry__2_CO_UNCONNECTED[3:2],minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,baudCounter[14:13]}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3],minusOp[15:13]}),
        .S({1'b0,minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(baudCounter[15]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(baudCounter[14]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(baudCounter[13]),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(baudCounter[4]),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(baudCounter[3]),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(baudCounter[2]),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(baudCounter[1]),
        .O(minusOp_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[0]_i_1 
       (.I0(ctsN_d),
        .I1(bus2ip_reset_int_core),
        .I2(msr_reg),
        .O(\modem_prev_val[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[1]_i_1 
       (.I0(dsrN_d),
        .I1(bus2ip_reset_int_core),
        .I2(\msr_reg_n_0_[5] ),
        .O(\modem_prev_val[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[2]_i_1 
       (.I0(riN_d),
        .I1(bus2ip_reset_int_core),
        .I2(\msr_reg_n_0_[6] ),
        .O(\modem_prev_val[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \modem_prev_val[3]_i_1 
       (.I0(dcdN_d),
        .I1(bus2ip_reset_int_core),
        .I2(\msr_reg_n_0_[7] ),
        .O(\modem_prev_val[3]_i_1_n_0 ));
  FDRE \modem_prev_val_reg[0] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[0]_i_1_n_0 ),
        .Q(\modem_prev_val_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \modem_prev_val_reg[1] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[1]_i_1_n_0 ),
        .Q(\modem_prev_val_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \modem_prev_val_reg[2] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[2]_i_1_n_0 ),
        .Q(p_1_in3_in),
        .R(1'b0));
  FDRE \modem_prev_val_reg[3] 
       (.C(s_axi_aclk),
        .CE(msr_reg0),
        .D(\modem_prev_val[3]_i_1_n_0 ),
        .Q(p_1_in6_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    \msr[0]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(L[3]),
        .I2(L[1]),
        .I3(L[2]),
        .I4(rd_d),
        .I5(chipSelect),
        .O(msr_reg0));
  LUT5 #(
    .INIT(32'hB8BFBFB8)) 
    \msr[0]_i_2 
       (.I0(\d_d_reg_n_0_[0] ),
        .I1(msr1),
        .I2(\msr_reg_n_0_[0] ),
        .I3(\modem_prev_val_reg_n_0_[0] ),
        .I4(msr_reg),
        .O(\msr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \msr[0]_i_3 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[2]),
        .I3(L[1]),
        .I4(L[3]),
        .O(msr1));
  LUT5 #(
    .INIT(32'hB8BFBFB8)) 
    \msr[1]_i_1 
       (.I0(\d_d_reg_n_0_[1] ),
        .I1(msr1),
        .I2(p_0_in37_in),
        .I3(\modem_prev_val_reg_n_0_[1] ),
        .I4(\msr_reg_n_0_[5] ),
        .O(\msr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BFBFB8)) 
    \msr[2]_i_1 
       (.I0(\d_d_reg_n_0_[2] ),
        .I1(msr1),
        .I2(p_0_in38_in),
        .I3(p_1_in3_in),
        .I4(\msr_reg_n_0_[6] ),
        .O(\msr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BFBFB8)) 
    \msr[3]_i_1 
       (.I0(\d_d_reg_n_0_[3] ),
        .I1(msr1),
        .I2(p_0_in39_in),
        .I3(p_1_in6_in),
        .I4(\msr_reg_n_0_[7] ),
        .O(\msr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h45404040EFEAEFEF)) 
    \msr[4]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(p_3_in),
        .I2(msr1),
        .I3(p_0_in_0),
        .I4(p_0_in8_in),
        .I5(ctsN_d),
        .O(\msr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h45404040EFEAEFEF)) 
    \msr[5]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(\d_d_reg_n_0_[5] ),
        .I2(msr1),
        .I3(\mcr_reg_n_0_[0] ),
        .I4(p_0_in8_in),
        .I5(dsrN_d),
        .O(\msr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h45404040EFEAEFEF)) 
    \msr[6]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(\d_d_reg_n_0_[5] ),
        .I2(msr1),
        .I3(\mcr_reg_n_0_[2] ),
        .I4(p_0_in8_in),
        .I5(riN_d),
        .O(\msr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h45404040EFEAEFEF)) 
    \msr[7]_i_1 
       (.I0(bus2ip_reset_int_core),
        .I1(\d_d_reg_n_0_[5] ),
        .I2(msr1),
        .I3(\mcr_reg_n_0_[3] ),
        .I4(p_0_in8_in),
        .I5(dcdN_d),
        .O(\msr[7]_i_1_n_0 ));
  FDRE \msr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[0]_i_2_n_0 ),
        .Q(\msr_reg_n_0_[0] ),
        .R(msr_reg0));
  FDRE \msr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[1]_i_1_n_0 ),
        .Q(p_0_in37_in),
        .R(msr_reg0));
  FDRE \msr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[2]_i_1_n_0 ),
        .Q(p_0_in38_in),
        .R(msr_reg0));
  FDRE \msr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[3]_i_1_n_0 ),
        .Q(p_0_in39_in),
        .R(msr_reg0));
  FDRE \msr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[4]_i_1_n_0 ),
        .Q(msr_reg),
        .R(1'b0));
  FDRE \msr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[5]_i_1_n_0 ),
        .Q(\msr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \msr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[6]_i_1_n_0 ),
        .Q(\msr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \msr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\msr[7]_i_1_n_0 ),
        .Q(\msr_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hB)) 
    out1n_INST_0
       (.I0(p_0_in8_in),
        .I1(\mcr_reg_n_0_[2] ),
        .O(out1n));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hB)) 
    out2n_INST_0
       (.I0(p_0_in8_in),
        .I1(\mcr_reg_n_0_[3] ),
        .O(out2n));
  FDRE rd_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Rd),
        .Q(rd_d),
        .R(1'b0));
  FDRE riN_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rin),
        .Q(riN_d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'hB)) 
    rtsn_INST_0
       (.I0(p_0_in8_in),
        .I1(p_0_in_0),
        .O(rtsn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx16550 rx16550_1
       (.Q({\d_d_reg_n_0_[1] ,\d_d_reg_n_0_[0] }),
        .\Rbr_reg[7]_0 (Rbr),
        .Rx_error_in_fifo0(\rx_fifo_control_1/Rx_error_in_fifo0 ),
        .SR(\rx_fifo_control_1/character_counter_rst ),
        .baudoutN_int_i(baudoutN_int_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_reset_int_core_reg(rx16550_1_n_12),
        .\clkdiv_reg[0]_0 (tx16550_1_n_5),
        .clockDiv(clockDiv),
        .\dll_reg[3] (rx16550_1_n_15),
        .\dlm_reg[4] (rx16550_1_n_17),
        .\dlm_reg[6] (rx16550_1_n_14),
        .\dlm_reg[7] (rx16550_1_n_16),
        .lsr_reg0(lsr_reg0),
        .\lsr_reg[0] (\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .\lsr_reg[0]_0 (rx_fifo_empty),
        .\lsr_reg[0]_1 (\lsr_reg_n_0_[0] ),
        .\lsr_reg[0]_2 (\Dout[7]_i_3_n_0 ),
        .\lsr_reg[1] (rx16550_1_n_13),
        .\lsr_reg[1]_0 (\lsr_reg_n_0_[1] ),
        .\lsr_reg[1]_1 (\lsr[1]_i_3_n_0 ),
        .mcr4_d(mcr4_d),
        .p_0_in(p_0_in),
        .p_92_in(p_92_in),
        .parity_error_d_reg_0({\Lcr_reg_n_0_[5] ,\Lcr_reg_n_0_[4] ,p_5_in,\Lcr_reg_n_0_[2] ,\Lcr_reg_n_0_[1] ,\Lcr_reg_n_0_[0] }),
        .resynch_clkdiv_frame_d_reg_0(p_0_in8_in),
        .rx_fifo_data_in(rx_fifo_data_in),
        .rx_fifo_full(rx_fifo_full),
        .rx_fifo_rd_en_d(rx_fifo_rd_en_d),
        .rx_fifo_rst(rx_fifo_rst),
        .rx_fifo_wr_en_i(rx_fifo_wr_en_i),
        .rx_sin(rx_sin),
        .s_axi_aclk(s_axi_aclk));
  LUT3 #(
    .INIT(8'h7F)) 
    rxrdyN_int_i_2
       (.I0(data3[3]),
        .I1(\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .I2(rxrdyn),
        .O(rxrdyN_int_i_2_n_0));
  FDSE rxrdyN_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_21 ),
        .Q(rxrdyn),
        .S(bus2ip_reset_int_core));
  LUT5 #(
    .INIT(32'h80000000)) 
    \scr[7]_i_1 
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[3]),
        .I3(L[2]),
        .I4(L[1]),
        .O(scr0));
  FDRE \scr_reg[0] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[0] ),
        .Q(scr[0]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[1] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[1] ),
        .Q(scr[1]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[2] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[2] ),
        .Q(scr[2]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[3] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[3] ),
        .Q(scr[3]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[4] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(p_3_in),
        .Q(scr[4]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[5] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(\d_d_reg_n_0_[5] ),
        .Q(scr[5]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[6] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(p_2_in[5]),
        .Q(scr[6]),
        .R(bus2ip_reset_int_core));
  FDRE \scr_reg[7] 
       (.C(s_axi_aclk),
        .CE(scr0),
        .D(p_2_in[6]),
        .Q(scr[7]),
        .R(bus2ip_reset_int_core));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    thre_iir_set_i_2
       (.I0(thre_iir_set_i_5_n_0),
        .I1(\iir_reg_n_0_[1] ),
        .I2(\iir_reg_n_0_[2] ),
        .I3(\iir_reg_n_0_[3] ),
        .I4(\iir_reg_n_0_[0] ),
        .I5(p_92_in),
        .O(thre_iir_set_i_2_n_0));
  LUT4 #(
    .INIT(16'hBAAA)) 
    thre_iir_set_i_3
       (.I0(bus2ip_reset_int_core),
        .I1(ier1_d),
        .I2(p_2_in50_in),
        .I3(ier[1]),
        .O(thre_iir_set_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    thre_iir_set_i_5
       (.I0(L[0]),
        .I1(L[1]),
        .I2(L[2]),
        .I3(L[3]),
        .O(thre_iir_set_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    thre_iir_set_i_6
       (.I0(\iir_reg_n_0_[2] ),
        .I1(\iir_reg_n_0_[3] ),
        .I2(\iir_reg_n_0_[0] ),
        .O(thre_iir_set_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    thre_iir_set_i_7
       (.I0(\iir_reg_n_0_[2] ),
        .I1(\iir_reg_n_0_[0] ),
        .I2(\iir_reg_n_0_[3] ),
        .I3(\lsr[7]_i_3_n_0 ),
        .I4(rd_d),
        .I5(chipSelect),
        .O(thre_iir_set_i_7_n_0));
  FDRE thre_iir_set_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.rx_fifo_block_1_n_7 ),
        .Q(thre_iir_set),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx16550 tx16550_1
       (.\FSM_sequential_transmit_state_reg[0]_0 (xuart_tx_load_sm_1_n_1),
        .\FSM_sequential_transmit_state_reg[3]_0 (transmit_state),
        .\INFERRED_GEN.cnt_i_reg[2] (tx_fifo_empty),
        .\Lcr_reg[0] (tx16550_1_n_5),
        .Pmod_out_pin2_o(p_0_in8_in),
        .Q({\Lcr_reg_n_0_[6] ,\Lcr_reg_n_0_[5] ,\Lcr_reg_n_0_[4] ,p_5_in,\Lcr_reg_n_0_[2] ,\Lcr_reg_n_0_[1] ,\Lcr_reg_n_0_[0] }),
        .Tx_fifo_rd_en_reg_0(tx16550_1_n_6),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .freeze(freeze),
        .out(tx_fifo_data_out[7]),
        .p_0_in(p_0_in),
        .rx_sin(rx_sin),
        .s_axi_aclk(s_axi_aclk),
        .sin(sin),
        .sout(sout),
        .tsr_loaded(tsr_loaded),
        .\tsr_reg[0]_0 (xuart_tx_load_sm_1_n_9),
        .\tsr_reg[1]_0 (xuart_tx_load_sm_1_n_8),
        .\tsr_reg[2]_0 (xuart_tx_load_sm_1_n_7),
        .\tsr_reg[3]_0 (xuart_tx_load_sm_1_n_6),
        .\tsr_reg[4]_0 (xuart_tx_load_sm_1_n_5),
        .\tsr_reg[5]_0 (xuart_tx_load_sm_1_n_4),
        .\tsr_reg[6]_0 (xuart_tx_load_sm_1_n_2),
        .\tsr_reg[7]_0 (\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .\tsr_reg[7]_1 (tsr_int),
        .tx_empty(tx_empty),
        .tx_fifo_rd_en_int(tx_fifo_rd_en_int));
  FDRE txrdyN_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GENERATING_FIFOS.tx_fifo_block_1_n_1 ),
        .Q(txrdyn),
        .R(bus2ip_reset_int_core));
  FDRE wr_d_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Wr),
        .Q(wr_d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    writing_thr_i_1
       (.I0(wr_d),
        .I1(chipSelect),
        .I2(L[0]),
        .I3(L[1]),
        .I4(L[2]),
        .I5(L[3]),
        .O(Thr0));
  FDRE writing_thr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Thr0),
        .Q(writing_thr),
        .R(bus2ip_reset_int_core));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xuart_tx_load_sm xuart_tx_load_sm_1
       (.Q(p_2_in[5]),
        .Thre_reg_0(xuart_tx_load_sm_1_n_10),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .chipSelect(chipSelect),
        .freeze(freeze),
        .lsr_reg(lsr_reg),
        .\lsr_reg[5] (xuart_tx_load_sm_1_n_0),
        .\lsr_reg[5]_0 (xuart_tx_load_sm_1_n_1),
        .\lsr_reg[5]_1 (tx_fifo_empty),
        .\lsr_reg[6] (\lsr[7]_i_3_n_0 ),
        .\lsr_reg[6]_0 (\GENERATING_FIFOS.fcr_reg_n_0_[0] ),
        .out(tx_fifo_data_out[6:0]),
        .p_2_in50_in(p_2_in50_in),
        .s_axi_aclk(s_axi_aclk),
        .\tsr_int_reg[0]_0 (xuart_tx_load_sm_1_n_9),
        .\tsr_int_reg[1]_0 (xuart_tx_load_sm_1_n_8),
        .\tsr_int_reg[2]_0 (xuart_tx_load_sm_1_n_7),
        .\tsr_int_reg[3]_0 (xuart_tx_load_sm_1_n_6),
        .\tsr_int_reg[4]_0 (xuart_tx_load_sm_1_n_5),
        .\tsr_int_reg[5]_0 (xuart_tx_load_sm_1_n_4),
        .\tsr_int_reg[6]_0 (xuart_tx_load_sm_1_n_2),
        .\tsr_int_reg[7]_0 (tsr_int),
        .\tsr_int_reg[7]_1 (Thr),
        .tsr_loaded(tsr_loaded),
        .\tsr_reg[6] (transmit_state),
        .tx_empty(tx_empty),
        .wr_d(wr_d),
        .writing_thr(writing_thr));
endmodule

(* CHECK_LICENSE_TYPE = "ugv_PmodGPS_0_0,PmodGPS,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "PmodGPS,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (AXI_LITE_GPIO_araddr,
    AXI_LITE_GPIO_arready,
    AXI_LITE_GPIO_arvalid,
    AXI_LITE_GPIO_awaddr,
    AXI_LITE_GPIO_awready,
    AXI_LITE_GPIO_awvalid,
    AXI_LITE_GPIO_bready,
    AXI_LITE_GPIO_bresp,
    AXI_LITE_GPIO_bvalid,
    AXI_LITE_GPIO_rdata,
    AXI_LITE_GPIO_rready,
    AXI_LITE_GPIO_rresp,
    AXI_LITE_GPIO_rvalid,
    AXI_LITE_GPIO_wdata,
    AXI_LITE_GPIO_wready,
    AXI_LITE_GPIO_wstrb,
    AXI_LITE_GPIO_wvalid,
    AXI_LITE_UART_araddr,
    AXI_LITE_UART_arready,
    AXI_LITE_UART_arvalid,
    AXI_LITE_UART_awaddr,
    AXI_LITE_UART_awready,
    AXI_LITE_UART_awvalid,
    AXI_LITE_UART_bready,
    AXI_LITE_UART_bresp,
    AXI_LITE_UART_bvalid,
    AXI_LITE_UART_rdata,
    AXI_LITE_UART_rready,
    AXI_LITE_UART_rresp,
    AXI_LITE_UART_rvalid,
    AXI_LITE_UART_wdata,
    AXI_LITE_UART_wready,
    AXI_LITE_UART_wstrb,
    AXI_LITE_UART_wvalid,
    Pmod_out_pin10_i,
    Pmod_out_pin10_o,
    Pmod_out_pin10_t,
    Pmod_out_pin1_i,
    Pmod_out_pin1_o,
    Pmod_out_pin1_t,
    Pmod_out_pin2_i,
    Pmod_out_pin2_o,
    Pmod_out_pin2_t,
    Pmod_out_pin3_i,
    Pmod_out_pin3_o,
    Pmod_out_pin3_t,
    Pmod_out_pin4_i,
    Pmod_out_pin4_o,
    Pmod_out_pin4_t,
    Pmod_out_pin7_i,
    Pmod_out_pin7_o,
    Pmod_out_pin7_t,
    Pmod_out_pin8_i,
    Pmod_out_pin8_o,
    Pmod_out_pin8_t,
    Pmod_out_pin9_i,
    Pmod_out_pin9_o,
    Pmod_out_pin9_t,
    gps_uart_interrupt,
    s_axi_aclk,
    s_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO ARADDR" *) input [8:0]AXI_LITE_GPIO_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO ARREADY" *) output AXI_LITE_GPIO_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO ARVALID" *) input AXI_LITE_GPIO_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO AWADDR" *) input [8:0]AXI_LITE_GPIO_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO AWREADY" *) output AXI_LITE_GPIO_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO AWVALID" *) input AXI_LITE_GPIO_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO BREADY" *) input AXI_LITE_GPIO_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO BRESP" *) output [1:0]AXI_LITE_GPIO_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO BVALID" *) output AXI_LITE_GPIO_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO RDATA" *) output [31:0]AXI_LITE_GPIO_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO RREADY" *) input AXI_LITE_GPIO_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO RRESP" *) output [1:0]AXI_LITE_GPIO_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO RVALID" *) output AXI_LITE_GPIO_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO WDATA" *) input [31:0]AXI_LITE_GPIO_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO WREADY" *) output AXI_LITE_GPIO_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO WSTRB" *) input [3:0]AXI_LITE_GPIO_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_GPIO WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE_GPIO, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ugv_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input AXI_LITE_GPIO_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART ARADDR" *) input [12:0]AXI_LITE_UART_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART ARREADY" *) output AXI_LITE_UART_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART ARVALID" *) input AXI_LITE_UART_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART AWADDR" *) input [12:0]AXI_LITE_UART_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART AWREADY" *) output AXI_LITE_UART_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART AWVALID" *) input AXI_LITE_UART_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART BREADY" *) input AXI_LITE_UART_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART BRESP" *) output [1:0]AXI_LITE_UART_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART BVALID" *) output AXI_LITE_UART_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART RDATA" *) output [31:0]AXI_LITE_UART_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART RREADY" *) input AXI_LITE_UART_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART RRESP" *) output [1:0]AXI_LITE_UART_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART RVALID" *) output AXI_LITE_UART_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART WDATA" *) input [31:0]AXI_LITE_UART_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART WREADY" *) output AXI_LITE_UART_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART WSTRB" *) input [3:0]AXI_LITE_UART_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_UART WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE_UART, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ugv_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input AXI_LITE_UART_wvalid;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_I" *) input Pmod_out_pin10_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_O" *) output Pmod_out_pin10_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_T" *) output Pmod_out_pin10_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_I" *) input Pmod_out_pin1_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_O" *) output Pmod_out_pin1_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_T" *) output Pmod_out_pin1_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_I" *) input Pmod_out_pin2_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_O" *) output Pmod_out_pin2_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_T" *) output Pmod_out_pin2_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_I" *) input Pmod_out_pin3_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_O" *) output Pmod_out_pin3_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_T" *) output Pmod_out_pin3_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_I" *) input Pmod_out_pin4_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_O" *) output Pmod_out_pin4_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_T" *) output Pmod_out_pin4_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_I" *) input Pmod_out_pin7_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_O" *) output Pmod_out_pin7_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_T" *) output Pmod_out_pin7_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_I" *) input Pmod_out_pin8_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_O" *) output Pmod_out_pin8_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_T" *) output Pmod_out_pin8_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_I" *) input Pmod_out_pin9_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_O" *) output Pmod_out_pin9_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_T" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Pmod_out, BUSIF.BOARD_INTERFACE Custom, BOARD.ASSOCIATED_PARAM PMOD" *) output Pmod_out_pin9_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.GPS_UART_INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.GPS_UART_INTERRUPT, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output gps_uart_interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF AXI_LITE_UART:AXI_LITE_GPIO, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ugv_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;

  wire [8:0]AXI_LITE_GPIO_araddr;
  wire AXI_LITE_GPIO_arready;
  wire AXI_LITE_GPIO_arvalid;
  wire [8:0]AXI_LITE_GPIO_awaddr;
  wire AXI_LITE_GPIO_awready;
  wire AXI_LITE_GPIO_awvalid;
  wire AXI_LITE_GPIO_bready;
  wire [1:0]AXI_LITE_GPIO_bresp;
  wire AXI_LITE_GPIO_bvalid;
  wire [31:0]AXI_LITE_GPIO_rdata;
  wire AXI_LITE_GPIO_rready;
  wire [1:0]AXI_LITE_GPIO_rresp;
  wire AXI_LITE_GPIO_rvalid;
  wire [31:0]AXI_LITE_GPIO_wdata;
  wire AXI_LITE_GPIO_wready;
  wire [3:0]AXI_LITE_GPIO_wstrb;
  wire AXI_LITE_GPIO_wvalid;
  wire [12:0]AXI_LITE_UART_araddr;
  wire AXI_LITE_UART_arready;
  wire AXI_LITE_UART_arvalid;
  wire [12:0]AXI_LITE_UART_awaddr;
  wire AXI_LITE_UART_awready;
  wire AXI_LITE_UART_awvalid;
  wire AXI_LITE_UART_bready;
  wire [1:0]AXI_LITE_UART_bresp;
  wire AXI_LITE_UART_bvalid;
  wire [31:0]AXI_LITE_UART_rdata;
  wire AXI_LITE_UART_rready;
  wire [1:0]AXI_LITE_UART_rresp;
  wire AXI_LITE_UART_rvalid;
  wire [31:0]AXI_LITE_UART_wdata;
  wire AXI_LITE_UART_wready;
  wire [3:0]AXI_LITE_UART_wstrb;
  wire AXI_LITE_UART_wvalid;
  wire Pmod_out_pin10_i;
  wire Pmod_out_pin10_o;
  wire Pmod_out_pin10_t;
  wire Pmod_out_pin1_i;
  wire Pmod_out_pin1_o;
  wire Pmod_out_pin1_t;
  wire Pmod_out_pin2_i;
  wire Pmod_out_pin2_o;
  wire Pmod_out_pin2_t;
  wire Pmod_out_pin3_i;
  wire Pmod_out_pin3_o;
  wire Pmod_out_pin3_t;
  wire Pmod_out_pin4_i;
  wire Pmod_out_pin4_o;
  wire Pmod_out_pin4_t;
  wire Pmod_out_pin7_i;
  wire Pmod_out_pin7_o;
  wire Pmod_out_pin7_t;
  wire Pmod_out_pin8_i;
  wire Pmod_out_pin8_o;
  wire Pmod_out_pin8_t;
  wire Pmod_out_pin9_i;
  wire Pmod_out_pin9_o;
  wire Pmod_out_pin9_t;
  wire gps_uart_interrupt;
  wire s_axi_aclk;
  wire s_axi_aresetn;

  (* HW_HANDOFF = "PmodGPS.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PmodGPS inst
       (.AXI_LITE_GPIO_araddr(AXI_LITE_GPIO_araddr),
        .AXI_LITE_GPIO_arready(AXI_LITE_GPIO_arready),
        .AXI_LITE_GPIO_arvalid(AXI_LITE_GPIO_arvalid),
        .AXI_LITE_GPIO_awaddr(AXI_LITE_GPIO_awaddr),
        .AXI_LITE_GPIO_awready(AXI_LITE_GPIO_awready),
        .AXI_LITE_GPIO_awvalid(AXI_LITE_GPIO_awvalid),
        .AXI_LITE_GPIO_bready(AXI_LITE_GPIO_bready),
        .AXI_LITE_GPIO_bresp(AXI_LITE_GPIO_bresp),
        .AXI_LITE_GPIO_bvalid(AXI_LITE_GPIO_bvalid),
        .AXI_LITE_GPIO_rdata(AXI_LITE_GPIO_rdata),
        .AXI_LITE_GPIO_rready(AXI_LITE_GPIO_rready),
        .AXI_LITE_GPIO_rresp(AXI_LITE_GPIO_rresp),
        .AXI_LITE_GPIO_rvalid(AXI_LITE_GPIO_rvalid),
        .AXI_LITE_GPIO_wdata(AXI_LITE_GPIO_wdata),
        .AXI_LITE_GPIO_wready(AXI_LITE_GPIO_wready),
        .AXI_LITE_GPIO_wstrb(AXI_LITE_GPIO_wstrb),
        .AXI_LITE_GPIO_wvalid(AXI_LITE_GPIO_wvalid),
        .AXI_LITE_UART_araddr(AXI_LITE_UART_araddr),
        .AXI_LITE_UART_arready(AXI_LITE_UART_arready),
        .AXI_LITE_UART_arvalid(AXI_LITE_UART_arvalid),
        .AXI_LITE_UART_awaddr(AXI_LITE_UART_awaddr),
        .AXI_LITE_UART_awready(AXI_LITE_UART_awready),
        .AXI_LITE_UART_awvalid(AXI_LITE_UART_awvalid),
        .AXI_LITE_UART_bready(AXI_LITE_UART_bready),
        .AXI_LITE_UART_bresp(AXI_LITE_UART_bresp),
        .AXI_LITE_UART_bvalid(AXI_LITE_UART_bvalid),
        .AXI_LITE_UART_rdata(AXI_LITE_UART_rdata),
        .AXI_LITE_UART_rready(AXI_LITE_UART_rready),
        .AXI_LITE_UART_rresp(AXI_LITE_UART_rresp),
        .AXI_LITE_UART_rvalid(AXI_LITE_UART_rvalid),
        .AXI_LITE_UART_wdata(AXI_LITE_UART_wdata),
        .AXI_LITE_UART_wready(AXI_LITE_UART_wready),
        .AXI_LITE_UART_wstrb(AXI_LITE_UART_wstrb),
        .AXI_LITE_UART_wvalid(AXI_LITE_UART_wvalid),
        .Pmod_out_pin10_i(Pmod_out_pin10_i),
        .Pmod_out_pin10_o(Pmod_out_pin10_o),
        .Pmod_out_pin10_t(Pmod_out_pin10_t),
        .Pmod_out_pin1_i(Pmod_out_pin1_i),
        .Pmod_out_pin1_o(Pmod_out_pin1_o),
        .Pmod_out_pin1_t(Pmod_out_pin1_t),
        .Pmod_out_pin2_i(Pmod_out_pin2_i),
        .Pmod_out_pin2_o(Pmod_out_pin2_o),
        .Pmod_out_pin2_t(Pmod_out_pin2_t),
        .Pmod_out_pin3_i(Pmod_out_pin3_i),
        .Pmod_out_pin3_o(Pmod_out_pin3_o),
        .Pmod_out_pin3_t(Pmod_out_pin3_t),
        .Pmod_out_pin4_i(Pmod_out_pin4_i),
        .Pmod_out_pin4_o(Pmod_out_pin4_o),
        .Pmod_out_pin4_t(Pmod_out_pin4_t),
        .Pmod_out_pin7_i(Pmod_out_pin7_i),
        .Pmod_out_pin7_o(Pmod_out_pin7_o),
        .Pmod_out_pin7_t(Pmod_out_pin7_t),
        .Pmod_out_pin8_i(Pmod_out_pin8_i),
        .Pmod_out_pin8_o(Pmod_out_pin8_o),
        .Pmod_out_pin8_t(Pmod_out_pin8_t),
        .Pmod_out_pin9_i(Pmod_out_pin9_i),
        .Pmod_out_pin9_o(Pmod_out_pin9_o),
        .Pmod_out_pin9_t(Pmod_out_pin9_t),
        .gps_uart_interrupt(gps_uart_interrupt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xuart
   (baudoutn,
    ip2intc_irpt,
    ddis,
    txrdyn,
    rxrdyn,
    wrReq_d1,
    s_axi_awready,
    s_axi_arready,
    sout,
    Q,
    rtsn,
    dtrn,
    out1n,
    out2n,
    s_axi_aclk,
    bus2ip_reset_int_core,
    Wr,
    ctsn,
    dsrn,
    rin,
    dcdn,
    bus2ip_wrce_i,
    bus2ip_rdce_i,
    ce_out_i,
    s_axi_wdata,
    \addr_d_reg[2] ,
    freeze,
    sin);
  output baudoutn;
  output ip2intc_irpt;
  output ddis;
  output txrdyn;
  output rxrdyn;
  output wrReq_d1;
  output s_axi_awready;
  output s_axi_arready;
  output sout;
  output [7:0]Q;
  output rtsn;
  output dtrn;
  output out1n;
  output out2n;
  input s_axi_aclk;
  input bus2ip_reset_int_core;
  input Wr;
  input ctsn;
  input dsrn;
  input rin;
  input dcdn;
  input bus2ip_wrce_i;
  input bus2ip_rdce_i;
  input ce_out_i;
  input [7:0]s_axi_wdata;
  input [2:0]\addr_d_reg[2] ;
  input freeze;
  input sin;

  wire [7:0]Q;
  wire Rd;
  wire Wr;
  wire [2:0]\addr_d_reg[2] ;
  wire baudoutn;
  wire bus2ip_rdce_i;
  wire bus2ip_reset_int_core;
  wire bus2ip_wrce_i;
  wire ce_out_i;
  wire ctsn;
  wire dcdn;
  wire ddis;
  wire dsrn;
  wire dtrn;
  wire freeze;
  wire ip2intc_irpt;
  wire out1n;
  wire out2n;
  wire rin;
  wire rtsn;
  wire rxrdyn;
  wire s_axi_aclk;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [7:0]s_axi_wdata;
  wire sin;
  wire sout;
  wire txrdyn;
  wire wrReq_d1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ipic_if IPIC_IF_I_1
       (.Rd(Rd),
        .bus2ip_rdce_i(bus2ip_rdce_i),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .bus2ip_wrce_i(bus2ip_wrce_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_arready(s_axi_arready),
        .s_axi_awready(s_axi_awready),
        .wrReq_d1(wrReq_d1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart16550 UART16550_I_1
       (.Q(Q),
        .Rd(Rd),
        .Wr(Wr),
        .\addr_d_reg[2]_0 (\addr_d_reg[2] ),
        .baudoutn(baudoutn),
        .bus2ip_reset_int_core(bus2ip_reset_int_core),
        .ce_out_i(ce_out_i),
        .ctsn(ctsn),
        .dcdn(dcdn),
        .ddis(ddis),
        .dsrn(dsrn),
        .dtrn(dtrn),
        .freeze(freeze),
        .ip2intc_irpt(ip2intc_irpt),
        .out1n(out1n),
        .out2n(out2n),
        .rin(rin),
        .rtsn(rtsn),
        .rxrdyn(rxrdyn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata),
        .sin(sin),
        .sout(sout),
        .txrdyn(txrdyn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xuart_tx_load_sm
   (\lsr_reg[5] ,
    \lsr_reg[5]_0 ,
    \tsr_int_reg[6]_0 ,
    \tsr_int_reg[7]_0 ,
    \tsr_int_reg[5]_0 ,
    \tsr_int_reg[4]_0 ,
    \tsr_int_reg[3]_0 ,
    \tsr_int_reg[2]_0 ,
    \tsr_int_reg[1]_0 ,
    \tsr_int_reg[0]_0 ,
    Thre_reg_0,
    bus2ip_reset_int_core,
    s_axi_aclk,
    Q,
    \lsr_reg[6] ,
    chipSelect,
    wr_d,
    lsr_reg,
    p_2_in50_in,
    \lsr_reg[6]_0 ,
    tsr_loaded,
    freeze,
    tx_empty,
    writing_thr,
    out,
    \tsr_reg[6] ,
    \lsr_reg[5]_1 ,
    \tsr_int_reg[7]_1 );
  output \lsr_reg[5] ;
  output \lsr_reg[5]_0 ;
  output \tsr_int_reg[6]_0 ;
  output [0:0]\tsr_int_reg[7]_0 ;
  output \tsr_int_reg[5]_0 ;
  output \tsr_int_reg[4]_0 ;
  output \tsr_int_reg[3]_0 ;
  output \tsr_int_reg[2]_0 ;
  output \tsr_int_reg[1]_0 ;
  output \tsr_int_reg[0]_0 ;
  output Thre_reg_0;
  input bus2ip_reset_int_core;
  input s_axi_aclk;
  input [0:0]Q;
  input \lsr_reg[6] ;
  input chipSelect;
  input wr_d;
  input lsr_reg;
  input p_2_in50_in;
  input \lsr_reg[6]_0 ;
  input tsr_loaded;
  input freeze;
  input tx_empty;
  input writing_thr;
  input [6:0]out;
  input [0:0]\tsr_reg[6] ;
  input [0:0]\lsr_reg[5]_1 ;
  input [7:0]\tsr_int_reg[7]_1 ;

  wire [0:0]Q;
  wire Thre;
  wire Thre_reg_0;
  wire Tsre;
  wire bus2ip_reset_int_core;
  wire chipSelect;
  wire [1:0]current_state;
  wire freeze;
  wire \lsr[6]_i_2_n_0 ;
  wire lsr_reg;
  wire lsr_reg027_out;
  wire \lsr_reg[5] ;
  wire \lsr_reg[5]_0 ;
  wire [0:0]\lsr_reg[5]_1 ;
  wire \lsr_reg[6] ;
  wire \lsr_reg[6]_0 ;
  wire [1:0]next_state;
  wire [6:0]out;
  wire p_2_in50_in;
  wire s_axi_aclk;
  wire thre_com;
  wire tsr_com;
  wire [6:0]tsr_int;
  wire \tsr_int_reg[0]_0 ;
  wire \tsr_int_reg[1]_0 ;
  wire \tsr_int_reg[2]_0 ;
  wire \tsr_int_reg[3]_0 ;
  wire \tsr_int_reg[4]_0 ;
  wire \tsr_int_reg[5]_0 ;
  wire \tsr_int_reg[6]_0 ;
  wire [0:0]\tsr_int_reg[7]_0 ;
  wire [7:0]\tsr_int_reg[7]_1 ;
  wire tsr_loaded;
  wire [0:0]\tsr_reg[6] ;
  wire tsre_com;
  wire tx_empty;
  wire wr_d;
  wire writing_thr;

  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(writing_thr),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(tsr_loaded),
        .O(next_state[1]));
  (* FSM_ENCODED_STATES = "full_empty:10,empty_empty:00,full_full:11,empty_full:01" *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(current_state[0]),
        .R(bus2ip_reset_int_core));
  (* FSM_ENCODED_STATES = "full_empty:10,empty_empty:00,full_full:11,empty_full:01" *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(bus2ip_reset_int_core));
  LUT4 #(
    .INIT(16'hFFAC)) 
    \FSM_sequential_transmit_state[0]_i_2 
       (.I0(p_2_in50_in),
        .I1(Tsre),
        .I2(\lsr_reg[6]_0 ),
        .I3(freeze),
        .O(\lsr_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    Thre_i_1
       (.I0(writing_thr),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(thre_com));
  FDSE Thre_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(thre_com),
        .Q(Thre),
        .S(bus2ip_reset_int_core));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    Tsre_i_1
       (.I0(tsr_loaded),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(tsre_com));
  FDSE Tsre_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tsre_com),
        .Q(Tsre),
        .S(bus2ip_reset_int_core));
  LUT3 #(
    .INIT(8'hE2)) 
    \lsr[5]_i_1 
       (.I0(Thre),
        .I1(\lsr_reg[6]_0 ),
        .I2(\lsr_reg[5]_1 ),
        .O(Thre_reg_0));
  LUT6 #(
    .INIT(64'h0080000088808800)) 
    \lsr[6]_i_1 
       (.I0(\lsr[6]_i_2_n_0 ),
        .I1(p_2_in50_in),
        .I2(Thre),
        .I3(\lsr_reg[6]_0 ),
        .I4(Tsre),
        .I5(tsr_loaded),
        .O(\lsr_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFF2000)) 
    \lsr[6]_i_2 
       (.I0(Q),
        .I1(\lsr_reg[6] ),
        .I2(chipSelect),
        .I3(wr_d),
        .I4(lsr_reg027_out),
        .I5(lsr_reg),
        .O(\lsr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0008888)) 
    \lsr[6]_i_3 
       (.I0(Tsre),
        .I1(Thre),
        .I2(tx_empty),
        .I3(p_2_in50_in),
        .I4(\lsr_reg[6]_0 ),
        .I5(bus2ip_reset_int_core),
        .O(lsr_reg027_out));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tsr[0]_i_2 
       (.I0(tsr_int[0]),
        .I1(\lsr_reg[6]_0 ),
        .I2(out[0]),
        .I3(\tsr_reg[6] ),
        .O(\tsr_int_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tsr[1]_i_2 
       (.I0(tsr_int[1]),
        .I1(\lsr_reg[6]_0 ),
        .I2(out[1]),
        .I3(\tsr_reg[6] ),
        .O(\tsr_int_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tsr[2]_i_2 
       (.I0(tsr_int[2]),
        .I1(\lsr_reg[6]_0 ),
        .I2(out[2]),
        .I3(\tsr_reg[6] ),
        .O(\tsr_int_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tsr[3]_i_2 
       (.I0(tsr_int[3]),
        .I1(\lsr_reg[6]_0 ),
        .I2(out[3]),
        .I3(\tsr_reg[6] ),
        .O(\tsr_int_reg[3]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tsr[4]_i_2 
       (.I0(tsr_int[4]),
        .I1(\lsr_reg[6]_0 ),
        .I2(out[4]),
        .I3(\tsr_reg[6] ),
        .O(\tsr_int_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tsr[5]_i_2 
       (.I0(tsr_int[5]),
        .I1(\lsr_reg[6]_0 ),
        .I2(out[5]),
        .I3(\tsr_reg[6] ),
        .O(\tsr_int_reg[5]_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \tsr[6]_i_2 
       (.I0(tsr_int[6]),
        .I1(\lsr_reg[6]_0 ),
        .I2(out[6]),
        .I3(\tsr_reg[6] ),
        .O(\tsr_int_reg[6]_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \tsr_int[7]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(writing_thr),
        .O(tsr_com));
  FDSE \tsr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [0]),
        .Q(tsr_int[0]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [1]),
        .Q(tsr_int[1]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [2]),
        .Q(tsr_int[2]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [3]),
        .Q(tsr_int[3]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [4]),
        .Q(tsr_int[4]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [5]),
        .Q(tsr_int[5]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [6]),
        .Q(tsr_int[6]),
        .S(bus2ip_reset_int_core));
  FDSE \tsr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(tsr_com),
        .D(\tsr_int_reg[7]_1 [7]),
        .Q(\tsr_int_reg[7]_0 ),
        .S(bus2ip_reset_int_core));
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
