-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Apr 28 16:50:12 2022
-- Host        : LAPTOP-6D15CRP5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top ugv_motorEncoder_1_0 -prefix
--               ugv_motorEncoder_1_0_ ugv_motorEncoder_0_1_sim_netlist.vhdl
-- Design      : ugv_motorEncoder_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ugv_motorEncoder_1_0_QEI is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    chA : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    chB : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    dir : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end ugv_motorEncoder_1_0_QEI;

architecture STRUCTURE of ugv_motorEncoder_1_0_QEI is
  signal RPM : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \RPM0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \RPM0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \RPM0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \RPM0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \RPM0_carry__0_n_0\ : STD_LOGIC;
  signal \RPM0_carry__0_n_1\ : STD_LOGIC;
  signal \RPM0_carry__0_n_2\ : STD_LOGIC;
  signal \RPM0_carry__0_n_3\ : STD_LOGIC;
  signal \RPM0_carry__0_n_4\ : STD_LOGIC;
  signal \RPM0_carry__0_n_5\ : STD_LOGIC;
  signal \RPM0_carry__0_n_6\ : STD_LOGIC;
  signal \RPM0_carry__0_n_7\ : STD_LOGIC;
  signal \RPM0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \RPM0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \RPM0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \RPM0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \RPM0_carry__1_n_0\ : STD_LOGIC;
  signal \RPM0_carry__1_n_1\ : STD_LOGIC;
  signal \RPM0_carry__1_n_2\ : STD_LOGIC;
  signal \RPM0_carry__1_n_3\ : STD_LOGIC;
  signal \RPM0_carry__1_n_4\ : STD_LOGIC;
  signal \RPM0_carry__1_n_5\ : STD_LOGIC;
  signal \RPM0_carry__1_n_6\ : STD_LOGIC;
  signal \RPM0_carry__1_n_7\ : STD_LOGIC;
  signal \RPM0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \RPM0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \RPM0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \RPM0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \RPM0_carry__2_n_0\ : STD_LOGIC;
  signal \RPM0_carry__2_n_1\ : STD_LOGIC;
  signal \RPM0_carry__2_n_2\ : STD_LOGIC;
  signal \RPM0_carry__2_n_3\ : STD_LOGIC;
  signal \RPM0_carry__2_n_4\ : STD_LOGIC;
  signal \RPM0_carry__2_n_5\ : STD_LOGIC;
  signal \RPM0_carry__2_n_6\ : STD_LOGIC;
  signal \RPM0_carry__2_n_7\ : STD_LOGIC;
  signal \RPM0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \RPM0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \RPM0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \RPM0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \RPM0_carry__3_n_0\ : STD_LOGIC;
  signal \RPM0_carry__3_n_1\ : STD_LOGIC;
  signal \RPM0_carry__3_n_2\ : STD_LOGIC;
  signal \RPM0_carry__3_n_3\ : STD_LOGIC;
  signal \RPM0_carry__3_n_4\ : STD_LOGIC;
  signal \RPM0_carry__3_n_5\ : STD_LOGIC;
  signal \RPM0_carry__3_n_6\ : STD_LOGIC;
  signal \RPM0_carry__3_n_7\ : STD_LOGIC;
  signal \RPM0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \RPM0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \RPM0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \RPM0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \RPM0_carry__4_n_0\ : STD_LOGIC;
  signal \RPM0_carry__4_n_1\ : STD_LOGIC;
  signal \RPM0_carry__4_n_2\ : STD_LOGIC;
  signal \RPM0_carry__4_n_3\ : STD_LOGIC;
  signal \RPM0_carry__4_n_4\ : STD_LOGIC;
  signal \RPM0_carry__4_n_5\ : STD_LOGIC;
  signal \RPM0_carry__4_n_6\ : STD_LOGIC;
  signal \RPM0_carry__4_n_7\ : STD_LOGIC;
  signal \RPM0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \RPM0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \RPM0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \RPM0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \RPM0_carry__5_n_0\ : STD_LOGIC;
  signal \RPM0_carry__5_n_1\ : STD_LOGIC;
  signal \RPM0_carry__5_n_2\ : STD_LOGIC;
  signal \RPM0_carry__5_n_3\ : STD_LOGIC;
  signal \RPM0_carry__5_n_4\ : STD_LOGIC;
  signal \RPM0_carry__5_n_5\ : STD_LOGIC;
  signal \RPM0_carry__5_n_6\ : STD_LOGIC;
  signal \RPM0_carry__5_n_7\ : STD_LOGIC;
  signal \RPM0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \RPM0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \RPM0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \RPM0_carry__6_n_2\ : STD_LOGIC;
  signal \RPM0_carry__6_n_3\ : STD_LOGIC;
  signal \RPM0_carry__6_n_5\ : STD_LOGIC;
  signal \RPM0_carry__6_n_6\ : STD_LOGIC;
  signal \RPM0_carry__6_n_7\ : STD_LOGIC;
  signal RPM0_carry_i_1_n_0 : STD_LOGIC;
  signal RPM0_carry_i_2_n_0 : STD_LOGIC;
  signal RPM0_carry_i_3_n_0 : STD_LOGIC;
  signal RPM0_carry_n_0 : STD_LOGIC;
  signal RPM0_carry_n_1 : STD_LOGIC;
  signal RPM0_carry_n_2 : STD_LOGIC;
  signal RPM0_carry_n_3 : STD_LOGIC;
  signal RPM0_carry_n_4 : STD_LOGIC;
  signal RPM0_carry_n_5 : STD_LOGIC;
  signal RPM0_carry_n_6 : STD_LOGIC;
  signal RPM0_carry_n_7 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal nxt_position : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \nxt_position0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__0_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__0_n_1\ : STD_LOGIC;
  signal \nxt_position0_carry__0_n_2\ : STD_LOGIC;
  signal \nxt_position0_carry__0_n_3\ : STD_LOGIC;
  signal \nxt_position0_carry__0_n_4\ : STD_LOGIC;
  signal \nxt_position0_carry__0_n_5\ : STD_LOGIC;
  signal \nxt_position0_carry__0_n_6\ : STD_LOGIC;
  signal \nxt_position0_carry__0_n_7\ : STD_LOGIC;
  signal \nxt_position0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__1_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__1_n_1\ : STD_LOGIC;
  signal \nxt_position0_carry__1_n_2\ : STD_LOGIC;
  signal \nxt_position0_carry__1_n_3\ : STD_LOGIC;
  signal \nxt_position0_carry__1_n_4\ : STD_LOGIC;
  signal \nxt_position0_carry__1_n_5\ : STD_LOGIC;
  signal \nxt_position0_carry__1_n_6\ : STD_LOGIC;
  signal \nxt_position0_carry__1_n_7\ : STD_LOGIC;
  signal \nxt_position0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__2_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__2_n_1\ : STD_LOGIC;
  signal \nxt_position0_carry__2_n_2\ : STD_LOGIC;
  signal \nxt_position0_carry__2_n_3\ : STD_LOGIC;
  signal \nxt_position0_carry__2_n_4\ : STD_LOGIC;
  signal \nxt_position0_carry__2_n_5\ : STD_LOGIC;
  signal \nxt_position0_carry__2_n_6\ : STD_LOGIC;
  signal \nxt_position0_carry__2_n_7\ : STD_LOGIC;
  signal \nxt_position0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__3_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__3_n_1\ : STD_LOGIC;
  signal \nxt_position0_carry__3_n_2\ : STD_LOGIC;
  signal \nxt_position0_carry__3_n_3\ : STD_LOGIC;
  signal \nxt_position0_carry__3_n_4\ : STD_LOGIC;
  signal \nxt_position0_carry__3_n_5\ : STD_LOGIC;
  signal \nxt_position0_carry__3_n_6\ : STD_LOGIC;
  signal \nxt_position0_carry__3_n_7\ : STD_LOGIC;
  signal \nxt_position0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__4_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__4_n_1\ : STD_LOGIC;
  signal \nxt_position0_carry__4_n_2\ : STD_LOGIC;
  signal \nxt_position0_carry__4_n_3\ : STD_LOGIC;
  signal \nxt_position0_carry__4_n_4\ : STD_LOGIC;
  signal \nxt_position0_carry__4_n_5\ : STD_LOGIC;
  signal \nxt_position0_carry__4_n_6\ : STD_LOGIC;
  signal \nxt_position0_carry__4_n_7\ : STD_LOGIC;
  signal \nxt_position0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__5_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__5_n_1\ : STD_LOGIC;
  signal \nxt_position0_carry__5_n_2\ : STD_LOGIC;
  signal \nxt_position0_carry__5_n_3\ : STD_LOGIC;
  signal \nxt_position0_carry__5_n_4\ : STD_LOGIC;
  signal \nxt_position0_carry__5_n_5\ : STD_LOGIC;
  signal \nxt_position0_carry__5_n_6\ : STD_LOGIC;
  signal \nxt_position0_carry__5_n_7\ : STD_LOGIC;
  signal \nxt_position0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \nxt_position0_carry__6_n_2\ : STD_LOGIC;
  signal \nxt_position0_carry__6_n_3\ : STD_LOGIC;
  signal \nxt_position0_carry__6_n_5\ : STD_LOGIC;
  signal \nxt_position0_carry__6_n_6\ : STD_LOGIC;
  signal \nxt_position0_carry__6_n_7\ : STD_LOGIC;
  signal nxt_position0_carry_i_1_n_0 : STD_LOGIC;
  signal nxt_position0_carry_i_2_n_0 : STD_LOGIC;
  signal nxt_position0_carry_i_3_n_0 : STD_LOGIC;
  signal nxt_position0_carry_i_4_n_0 : STD_LOGIC;
  signal nxt_position0_carry_n_0 : STD_LOGIC;
  signal nxt_position0_carry_n_1 : STD_LOGIC;
  signal nxt_position0_carry_n_2 : STD_LOGIC;
  signal nxt_position0_carry_n_3 : STD_LOGIC;
  signal nxt_position0_carry_n_4 : STD_LOGIC;
  signal nxt_position0_carry_n_5 : STD_LOGIC;
  signal nxt_position0_carry_n_6 : STD_LOGIC;
  signal nxt_position0_carry_n_7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal past_pulse_A : STD_LOGIC;
  signal past_pulse_B : STD_LOGIC;
  signal posPulseAdjCount : STD_LOGIC;
  signal \posPulseAdjCount[0]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseAdjCount[1]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseAdjCount[2]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseAdjCount[3]_i_2_n_0\ : STD_LOGIC;
  signal \posPulseAdjCount_reg_n_0_[0]\ : STD_LOGIC;
  signal \posPulseAdjCount_reg_n_0_[1]\ : STD_LOGIC;
  signal \posPulseAdjCount_reg_n_0_[2]\ : STD_LOGIC;
  signal \posPulseAdjCount_reg_n_0_[3]\ : STD_LOGIC;
  signal posPulseCount : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal posPulseCount00_out : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__0_n_0\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__1_n_0\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__1_n_1\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__1_n_2\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__1_n_3\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__2_n_0\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__2_n_1\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__2_n_2\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__2_n_3\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__3_n_0\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__3_n_1\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__3_n_2\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__3_n_3\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__4_n_0\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__4_n_1\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__4_n_2\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__4_n_3\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__5_n_0\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__5_n_1\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__5_n_2\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__5_n_3\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__6_n_2\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry__6_n_3\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \posPulseCount0_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \posPulseCountAdj__0\ : STD_LOGIC;
  signal \posPulseCount[0]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[10]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[11]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[12]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[13]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[14]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[15]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[16]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[17]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[18]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[19]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[1]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[20]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[21]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[22]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[23]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[24]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[25]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[26]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[27]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[28]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[29]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[2]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[30]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[31]_i_10_n_0\ : STD_LOGIC;
  signal \posPulseCount[31]_i_11_n_0\ : STD_LOGIC;
  signal \posPulseCount[31]_i_12_n_0\ : STD_LOGIC;
  signal \posPulseCount[31]_i_2_n_0\ : STD_LOGIC;
  signal \posPulseCount[31]_i_3_n_0\ : STD_LOGIC;
  signal \posPulseCount[31]_i_4_n_0\ : STD_LOGIC;
  signal \posPulseCount[31]_i_5_n_0\ : STD_LOGIC;
  signal \posPulseCount[31]_i_6_n_0\ : STD_LOGIC;
  signal \posPulseCount[31]_i_7_n_0\ : STD_LOGIC;
  signal \posPulseCount[31]_i_8_n_0\ : STD_LOGIC;
  signal \posPulseCount[31]_i_9_n_0\ : STD_LOGIC;
  signal \posPulseCount[3]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[4]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[5]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[6]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[7]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[8]_i_1_n_0\ : STD_LOGIC;
  signal \posPulseCount[9]_i_1_n_0\ : STD_LOGIC;
  signal posPulseCount_1 : STD_LOGIC;
  signal position : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \position[31]_i_10_n_0\ : STD_LOGIC;
  signal \position[31]_i_11_n_0\ : STD_LOGIC;
  signal \position[31]_i_3_n_0\ : STD_LOGIC;
  signal \position[31]_i_4_n_0\ : STD_LOGIC;
  signal \position[31]_i_5_n_0\ : STD_LOGIC;
  signal \position[31]_i_6_n_0\ : STD_LOGIC;
  signal \position[31]_i_7_n_0\ : STD_LOGIC;
  signal \position[31]_i_8_n_0\ : STD_LOGIC;
  signal \position[31]_i_9_n_0\ : STD_LOGIC;
  signal \position_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \position_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \position_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \position_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \position_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \position_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \position_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \position_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \position_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \position_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \position_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \position_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \position_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \position_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \position_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \position_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \position_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \position_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \position_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \position_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \position_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \position_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \position_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \position_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \position_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \position_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \position_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \position_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \position_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \position_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal present_pulse_A : STD_LOGIC;
  signal present_pulse_B : STD_LOGIC;
  signal q1_chA : STD_LOGIC;
  signal q1_chB : STD_LOGIC;
  signal rev_cnt : STD_LOGIC;
  signal \rev_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \rev_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal rev_cnt_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \rev_cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \rev_cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \rev_cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \rev_cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \rev_cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \rev_cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \rev_cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \rev_cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \rev_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \rev_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \rev_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \rev_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \rev_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \rev_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \rev_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \rev_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \rev_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \rev_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \rev_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \rev_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \rev_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \rev_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \rev_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \rev_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \rev_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \rev_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \rev_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \rev_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \rev_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \rev_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \rev_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \rev_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \rev_cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \rev_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \rev_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \rev_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \rev_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \rev_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \rev_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \rev_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \rev_cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \rev_cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \rev_cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \rev_cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \rev_cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \rev_cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \rev_cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \rev_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rev_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \rev_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \rev_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \rev_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \rev_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \rev_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \rev_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \rev_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rev_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \rev_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \rev_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \rev_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \rev_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \rev_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \rev_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \rev_cnt_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal sync_chA : STD_LOGIC;
  signal sync_chB : STD_LOGIC;
  signal timer : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \timer[31]_i_10_n_0\ : STD_LOGIC;
  signal \timer[31]_i_2_n_0\ : STD_LOGIC;
  signal \timer[31]_i_3_n_0\ : STD_LOGIC;
  signal \timer[31]_i_4_n_0\ : STD_LOGIC;
  signal \timer[31]_i_5_n_0\ : STD_LOGIC;
  signal \timer[31]_i_7_n_0\ : STD_LOGIC;
  signal \timer[31]_i_8_n_0\ : STD_LOGIC;
  signal \timer[31]_i_9_n_0\ : STD_LOGIC;
  signal timer_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \timer_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \timer_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \timer_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \timer_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \timer_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \timer_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \timer_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \timer_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \timer_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \timer_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \timer_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \timer_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \timer_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \timer_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \timer_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \timer_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \timer_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \timer_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \timer_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \timer_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \timer_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \timer_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \timer_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal \timer_reg[20]_i_2_n_7\ : STD_LOGIC;
  signal \timer_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \timer_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \timer_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \timer_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \timer_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \timer_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \timer_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \timer_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \timer_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \timer_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \timer_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \timer_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \timer_reg[28]_i_2_n_4\ : STD_LOGIC;
  signal \timer_reg[28]_i_2_n_5\ : STD_LOGIC;
  signal \timer_reg[28]_i_2_n_6\ : STD_LOGIC;
  signal \timer_reg[28]_i_2_n_7\ : STD_LOGIC;
  signal \timer_reg[31]_i_6_n_2\ : STD_LOGIC;
  signal \timer_reg[31]_i_6_n_3\ : STD_LOGIC;
  signal \timer_reg[31]_i_6_n_5\ : STD_LOGIC;
  signal \timer_reg[31]_i_6_n_6\ : STD_LOGIC;
  signal \timer_reg[31]_i_6_n_7\ : STD_LOGIC;
  signal \timer_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \timer_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \timer_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \timer_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \timer_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \timer_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \timer_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \timer_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \timer_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \timer_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \timer_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \timer_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \timer_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \timer_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \timer_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \timer_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \NLW_RPM0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_RPM0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_nxt_position0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_nxt_position0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_posPulseCount0_inferred__2/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_posPulseCount0_inferred__2/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_position_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_position_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rev_cnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_timer_reg[31]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_timer_reg[31]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \posPulseAdjCount[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \posPulseAdjCount[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \posPulseAdjCount[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of posPulseCountAdj : label is "soft_lutpair1";
begin
  SR(0) <= \^sr\(0);
RPM0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => RPM0_carry_n_0,
      CO(2) => RPM0_carry_n_1,
      CO(1) => RPM0_carry_n_2,
      CO(0) => RPM0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => \rev_cnt_reg__0\(4 downto 2),
      DI(0) => '0',
      O(3) => RPM0_carry_n_4,
      O(2) => RPM0_carry_n_5,
      O(1) => RPM0_carry_n_6,
      O(0) => RPM0_carry_n_7,
      S(3) => RPM0_carry_i_1_n_0,
      S(2) => RPM0_carry_i_2_n_0,
      S(1) => RPM0_carry_i_3_n_0,
      S(0) => \rev_cnt_reg__0\(1)
    );
\RPM0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => RPM0_carry_n_0,
      CO(3) => \RPM0_carry__0_n_0\,
      CO(2) => \RPM0_carry__0_n_1\,
      CO(1) => \RPM0_carry__0_n_2\,
      CO(0) => \RPM0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \rev_cnt_reg__0\(8 downto 5),
      O(3) => \RPM0_carry__0_n_4\,
      O(2) => \RPM0_carry__0_n_5\,
      O(1) => \RPM0_carry__0_n_6\,
      O(0) => \RPM0_carry__0_n_7\,
      S(3) => \RPM0_carry__0_i_1_n_0\,
      S(2) => \RPM0_carry__0_i_2_n_0\,
      S(1) => \RPM0_carry__0_i_3_n_0\,
      S(0) => \RPM0_carry__0_i_4_n_0\
    );
\RPM0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(8),
      I1 => \rev_cnt_reg__0\(6),
      O => \RPM0_carry__0_i_1_n_0\
    );
\RPM0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(7),
      I1 => \rev_cnt_reg__0\(5),
      O => \RPM0_carry__0_i_2_n_0\
    );
\RPM0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(6),
      I1 => \rev_cnt_reg__0\(4),
      O => \RPM0_carry__0_i_3_n_0\
    );
\RPM0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(5),
      I1 => \rev_cnt_reg__0\(3),
      O => \RPM0_carry__0_i_4_n_0\
    );
\RPM0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \RPM0_carry__0_n_0\,
      CO(3) => \RPM0_carry__1_n_0\,
      CO(2) => \RPM0_carry__1_n_1\,
      CO(1) => \RPM0_carry__1_n_2\,
      CO(0) => \RPM0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \rev_cnt_reg__0\(12 downto 9),
      O(3) => \RPM0_carry__1_n_4\,
      O(2) => \RPM0_carry__1_n_5\,
      O(1) => \RPM0_carry__1_n_6\,
      O(0) => \RPM0_carry__1_n_7\,
      S(3) => \RPM0_carry__1_i_1_n_0\,
      S(2) => \RPM0_carry__1_i_2_n_0\,
      S(1) => \RPM0_carry__1_i_3_n_0\,
      S(0) => \RPM0_carry__1_i_4_n_0\
    );
\RPM0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(12),
      I1 => \rev_cnt_reg__0\(10),
      O => \RPM0_carry__1_i_1_n_0\
    );
\RPM0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(11),
      I1 => \rev_cnt_reg__0\(9),
      O => \RPM0_carry__1_i_2_n_0\
    );
\RPM0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(10),
      I1 => \rev_cnt_reg__0\(8),
      O => \RPM0_carry__1_i_3_n_0\
    );
\RPM0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(9),
      I1 => \rev_cnt_reg__0\(7),
      O => \RPM0_carry__1_i_4_n_0\
    );
\RPM0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \RPM0_carry__1_n_0\,
      CO(3) => \RPM0_carry__2_n_0\,
      CO(2) => \RPM0_carry__2_n_1\,
      CO(1) => \RPM0_carry__2_n_2\,
      CO(0) => \RPM0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \rev_cnt_reg__0\(16 downto 13),
      O(3) => \RPM0_carry__2_n_4\,
      O(2) => \RPM0_carry__2_n_5\,
      O(1) => \RPM0_carry__2_n_6\,
      O(0) => \RPM0_carry__2_n_7\,
      S(3) => \RPM0_carry__2_i_1_n_0\,
      S(2) => \RPM0_carry__2_i_2_n_0\,
      S(1) => \RPM0_carry__2_i_3_n_0\,
      S(0) => \RPM0_carry__2_i_4_n_0\
    );
\RPM0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(16),
      I1 => \rev_cnt_reg__0\(14),
      O => \RPM0_carry__2_i_1_n_0\
    );
\RPM0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(15),
      I1 => \rev_cnt_reg__0\(13),
      O => \RPM0_carry__2_i_2_n_0\
    );
\RPM0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(14),
      I1 => \rev_cnt_reg__0\(12),
      O => \RPM0_carry__2_i_3_n_0\
    );
\RPM0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(13),
      I1 => \rev_cnt_reg__0\(11),
      O => \RPM0_carry__2_i_4_n_0\
    );
\RPM0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \RPM0_carry__2_n_0\,
      CO(3) => \RPM0_carry__3_n_0\,
      CO(2) => \RPM0_carry__3_n_1\,
      CO(1) => \RPM0_carry__3_n_2\,
      CO(0) => \RPM0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \rev_cnt_reg__0\(20 downto 17),
      O(3) => \RPM0_carry__3_n_4\,
      O(2) => \RPM0_carry__3_n_5\,
      O(1) => \RPM0_carry__3_n_6\,
      O(0) => \RPM0_carry__3_n_7\,
      S(3) => \RPM0_carry__3_i_1_n_0\,
      S(2) => \RPM0_carry__3_i_2_n_0\,
      S(1) => \RPM0_carry__3_i_3_n_0\,
      S(0) => \RPM0_carry__3_i_4_n_0\
    );
\RPM0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(20),
      I1 => \rev_cnt_reg__0\(18),
      O => \RPM0_carry__3_i_1_n_0\
    );
\RPM0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(19),
      I1 => \rev_cnt_reg__0\(17),
      O => \RPM0_carry__3_i_2_n_0\
    );
\RPM0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(18),
      I1 => \rev_cnt_reg__0\(16),
      O => \RPM0_carry__3_i_3_n_0\
    );
\RPM0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(17),
      I1 => \rev_cnt_reg__0\(15),
      O => \RPM0_carry__3_i_4_n_0\
    );
\RPM0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \RPM0_carry__3_n_0\,
      CO(3) => \RPM0_carry__4_n_0\,
      CO(2) => \RPM0_carry__4_n_1\,
      CO(1) => \RPM0_carry__4_n_2\,
      CO(0) => \RPM0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \rev_cnt_reg__0\(24 downto 21),
      O(3) => \RPM0_carry__4_n_4\,
      O(2) => \RPM0_carry__4_n_5\,
      O(1) => \RPM0_carry__4_n_6\,
      O(0) => \RPM0_carry__4_n_7\,
      S(3) => \RPM0_carry__4_i_1_n_0\,
      S(2) => \RPM0_carry__4_i_2_n_0\,
      S(1) => \RPM0_carry__4_i_3_n_0\,
      S(0) => \RPM0_carry__4_i_4_n_0\
    );
\RPM0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(24),
      I1 => \rev_cnt_reg__0\(22),
      O => \RPM0_carry__4_i_1_n_0\
    );
\RPM0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(23),
      I1 => \rev_cnt_reg__0\(21),
      O => \RPM0_carry__4_i_2_n_0\
    );
\RPM0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(22),
      I1 => \rev_cnt_reg__0\(20),
      O => \RPM0_carry__4_i_3_n_0\
    );
\RPM0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(21),
      I1 => \rev_cnt_reg__0\(19),
      O => \RPM0_carry__4_i_4_n_0\
    );
\RPM0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \RPM0_carry__4_n_0\,
      CO(3) => \RPM0_carry__5_n_0\,
      CO(2) => \RPM0_carry__5_n_1\,
      CO(1) => \RPM0_carry__5_n_2\,
      CO(0) => \RPM0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \rev_cnt_reg__0\(28 downto 25),
      O(3) => \RPM0_carry__5_n_4\,
      O(2) => \RPM0_carry__5_n_5\,
      O(1) => \RPM0_carry__5_n_6\,
      O(0) => \RPM0_carry__5_n_7\,
      S(3) => \RPM0_carry__5_i_1_n_0\,
      S(2) => \RPM0_carry__5_i_2_n_0\,
      S(1) => \RPM0_carry__5_i_3_n_0\,
      S(0) => \RPM0_carry__5_i_4_n_0\
    );
\RPM0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(28),
      I1 => \rev_cnt_reg__0\(26),
      O => \RPM0_carry__5_i_1_n_0\
    );
\RPM0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(27),
      I1 => \rev_cnt_reg__0\(25),
      O => \RPM0_carry__5_i_2_n_0\
    );
\RPM0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(26),
      I1 => \rev_cnt_reg__0\(24),
      O => \RPM0_carry__5_i_3_n_0\
    );
\RPM0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(25),
      I1 => \rev_cnt_reg__0\(23),
      O => \RPM0_carry__5_i_4_n_0\
    );
\RPM0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \RPM0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_RPM0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \RPM0_carry__6_n_2\,
      CO(0) => \RPM0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \rev_cnt_reg__0\(30 downto 29),
      O(3) => \NLW_RPM0_carry__6_O_UNCONNECTED\(3),
      O(2) => \RPM0_carry__6_n_5\,
      O(1) => \RPM0_carry__6_n_6\,
      O(0) => \RPM0_carry__6_n_7\,
      S(3) => '0',
      S(2) => \RPM0_carry__6_i_1_n_0\,
      S(1) => \RPM0_carry__6_i_2_n_0\,
      S(0) => \RPM0_carry__6_i_3_n_0\
    );
\RPM0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(31),
      I1 => \rev_cnt_reg__0\(29),
      O => \RPM0_carry__6_i_1_n_0\
    );
\RPM0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(30),
      I1 => \rev_cnt_reg__0\(28),
      O => \RPM0_carry__6_i_2_n_0\
    );
\RPM0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(29),
      I1 => \rev_cnt_reg__0\(27),
      O => \RPM0_carry__6_i_3_n_0\
    );
RPM0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(4),
      I1 => \rev_cnt_reg__0\(2),
      O => RPM0_carry_i_1_n_0
    );
RPM0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(3),
      I1 => \rev_cnt_reg__0\(1),
      O => RPM0_carry_i_2_n_0
    );
RPM0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rev_cnt_reg__0\(2),
      I1 => rev_cnt_reg(0),
      O => RPM0_carry_i_3_n_0
    );
\RPM[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      O => rev_cnt
    );
\RPM_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => rev_cnt_reg(0),
      Q => RPM(0),
      R => \^sr\(0)
    );
\RPM_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__1_n_6\,
      Q => RPM(10),
      R => \^sr\(0)
    );
\RPM_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__1_n_5\,
      Q => RPM(11),
      R => \^sr\(0)
    );
\RPM_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__1_n_4\,
      Q => RPM(12),
      R => \^sr\(0)
    );
\RPM_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__2_n_7\,
      Q => RPM(13),
      R => \^sr\(0)
    );
\RPM_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__2_n_6\,
      Q => RPM(14),
      R => \^sr\(0)
    );
\RPM_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__2_n_5\,
      Q => RPM(15),
      R => \^sr\(0)
    );
\RPM_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__2_n_4\,
      Q => RPM(16),
      R => \^sr\(0)
    );
\RPM_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__3_n_7\,
      Q => RPM(17),
      R => \^sr\(0)
    );
\RPM_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__3_n_6\,
      Q => RPM(18),
      R => \^sr\(0)
    );
\RPM_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__3_n_5\,
      Q => RPM(19),
      R => \^sr\(0)
    );
\RPM_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => RPM0_carry_n_7,
      Q => RPM(1),
      R => \^sr\(0)
    );
\RPM_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__3_n_4\,
      Q => RPM(20),
      R => \^sr\(0)
    );
\RPM_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__4_n_7\,
      Q => RPM(21),
      R => \^sr\(0)
    );
\RPM_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__4_n_6\,
      Q => RPM(22),
      R => \^sr\(0)
    );
\RPM_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__4_n_5\,
      Q => RPM(23),
      R => \^sr\(0)
    );
\RPM_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__4_n_4\,
      Q => RPM(24),
      R => \^sr\(0)
    );
\RPM_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__5_n_7\,
      Q => RPM(25),
      R => \^sr\(0)
    );
\RPM_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__5_n_6\,
      Q => RPM(26),
      R => \^sr\(0)
    );
\RPM_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__5_n_5\,
      Q => RPM(27),
      R => \^sr\(0)
    );
\RPM_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__5_n_4\,
      Q => RPM(28),
      R => \^sr\(0)
    );
\RPM_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__6_n_7\,
      Q => RPM(29),
      R => \^sr\(0)
    );
\RPM_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => RPM0_carry_n_6,
      Q => RPM(2),
      R => \^sr\(0)
    );
\RPM_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__6_n_6\,
      Q => RPM(30),
      R => \^sr\(0)
    );
\RPM_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__6_n_5\,
      Q => RPM(31),
      R => \^sr\(0)
    );
\RPM_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => RPM0_carry_n_5,
      Q => RPM(3),
      R => \^sr\(0)
    );
\RPM_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => RPM0_carry_n_4,
      Q => RPM(4),
      R => \^sr\(0)
    );
\RPM_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__0_n_7\,
      Q => RPM(5),
      R => \^sr\(0)
    );
\RPM_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__0_n_6\,
      Q => RPM(6),
      R => \^sr\(0)
    );
\RPM_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__0_n_5\,
      Q => RPM(7),
      R => \^sr\(0)
    );
\RPM_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__0_n_4\,
      Q => RPM(8),
      R => \^sr\(0)
    );
\RPM_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rev_cnt,
      D => \RPM0_carry__1_n_7\,
      Q => RPM(9),
      R => \^sr\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AAAAF0F0CCCC"
    )
        port map (
      I0 => position(0),
      I1 => dir,
      I2 => RPM(0),
      I3 => Q(0),
      I4 => axi_araddr(0),
      I5 => axi_araddr(1),
      O => D(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(10),
      I1 => RPM(10),
      I2 => Q(10),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(11),
      I1 => RPM(11),
      I2 => Q(11),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(12),
      I1 => RPM(12),
      I2 => Q(12),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(13),
      I1 => RPM(13),
      I2 => Q(13),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(14),
      I1 => RPM(14),
      I2 => Q(14),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(15),
      I1 => RPM(15),
      I2 => Q(15),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(16),
      I1 => RPM(16),
      I2 => Q(16),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(17),
      I1 => RPM(17),
      I2 => Q(17),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(18),
      I1 => RPM(18),
      I2 => Q(18),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(19),
      I1 => RPM(19),
      I2 => Q(19),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(1),
      I1 => RPM(1),
      I2 => Q(1),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(20),
      I1 => RPM(20),
      I2 => Q(20),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(21),
      I1 => RPM(21),
      I2 => Q(21),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(22),
      I1 => RPM(22),
      I2 => Q(22),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(23),
      I1 => RPM(23),
      I2 => Q(23),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(24),
      I1 => RPM(24),
      I2 => Q(24),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(25),
      I1 => RPM(25),
      I2 => Q(25),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(26),
      I1 => RPM(26),
      I2 => Q(26),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(27),
      I1 => RPM(27),
      I2 => Q(27),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(28),
      I1 => RPM(28),
      I2 => Q(28),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(29),
      I1 => RPM(29),
      I2 => Q(29),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(2),
      I1 => RPM(2),
      I2 => Q(2),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(30),
      I1 => RPM(30),
      I2 => Q(30),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(31),
      I1 => RPM(31),
      I2 => Q(31),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(3),
      I1 => RPM(3),
      I2 => Q(3),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(4),
      I1 => RPM(4),
      I2 => Q(4),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(5),
      I1 => RPM(5),
      I2 => Q(5),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(6),
      I1 => RPM(6),
      I2 => Q(6),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(7),
      I1 => RPM(7),
      I2 => Q(7),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(8),
      I1 => RPM(8),
      I2 => Q(8),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACC00"
    )
        port map (
      I0 => position(9),
      I1 => RPM(9),
      I2 => Q(9),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => D(9)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(7),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(6),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(5),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(12),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(11),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(10),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(9),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(16),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(15),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(14),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(13),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(20),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(19),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(18),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(17),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(24),
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(23),
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(22),
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(21),
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(28),
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(27),
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(26),
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(25),
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(31),
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(30),
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(29),
      O => \i__carry__6_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(4),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => posPulseCount(1),
      O => \i__carry_i_4_n_0\
    );
nxt_position0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => nxt_position0_carry_n_0,
      CO(2) => nxt_position0_carry_n_1,
      CO(1) => nxt_position0_carry_n_2,
      CO(0) => nxt_position0_carry_n_3,
      CYINIT => position(0),
      DI(3 downto 0) => position(4 downto 1),
      O(3) => nxt_position0_carry_n_4,
      O(2) => nxt_position0_carry_n_5,
      O(1) => nxt_position0_carry_n_6,
      O(0) => nxt_position0_carry_n_7,
      S(3) => nxt_position0_carry_i_1_n_0,
      S(2) => nxt_position0_carry_i_2_n_0,
      S(1) => nxt_position0_carry_i_3_n_0,
      S(0) => nxt_position0_carry_i_4_n_0
    );
\nxt_position0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => nxt_position0_carry_n_0,
      CO(3) => \nxt_position0_carry__0_n_0\,
      CO(2) => \nxt_position0_carry__0_n_1\,
      CO(1) => \nxt_position0_carry__0_n_2\,
      CO(0) => \nxt_position0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => position(8 downto 5),
      O(3) => \nxt_position0_carry__0_n_4\,
      O(2) => \nxt_position0_carry__0_n_5\,
      O(1) => \nxt_position0_carry__0_n_6\,
      O(0) => \nxt_position0_carry__0_n_7\,
      S(3) => \nxt_position0_carry__0_i_1_n_0\,
      S(2) => \nxt_position0_carry__0_i_2_n_0\,
      S(1) => \nxt_position0_carry__0_i_3_n_0\,
      S(0) => \nxt_position0_carry__0_i_4_n_0\
    );
\nxt_position0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(8),
      O => \nxt_position0_carry__0_i_1_n_0\
    );
\nxt_position0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(7),
      O => \nxt_position0_carry__0_i_2_n_0\
    );
\nxt_position0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(6),
      O => \nxt_position0_carry__0_i_3_n_0\
    );
\nxt_position0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(5),
      O => \nxt_position0_carry__0_i_4_n_0\
    );
\nxt_position0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \nxt_position0_carry__0_n_0\,
      CO(3) => \nxt_position0_carry__1_n_0\,
      CO(2) => \nxt_position0_carry__1_n_1\,
      CO(1) => \nxt_position0_carry__1_n_2\,
      CO(0) => \nxt_position0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => position(12 downto 9),
      O(3) => \nxt_position0_carry__1_n_4\,
      O(2) => \nxt_position0_carry__1_n_5\,
      O(1) => \nxt_position0_carry__1_n_6\,
      O(0) => \nxt_position0_carry__1_n_7\,
      S(3) => \nxt_position0_carry__1_i_1_n_0\,
      S(2) => \nxt_position0_carry__1_i_2_n_0\,
      S(1) => \nxt_position0_carry__1_i_3_n_0\,
      S(0) => \nxt_position0_carry__1_i_4_n_0\
    );
\nxt_position0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(12),
      O => \nxt_position0_carry__1_i_1_n_0\
    );
\nxt_position0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(11),
      O => \nxt_position0_carry__1_i_2_n_0\
    );
\nxt_position0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(10),
      O => \nxt_position0_carry__1_i_3_n_0\
    );
\nxt_position0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(9),
      O => \nxt_position0_carry__1_i_4_n_0\
    );
\nxt_position0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \nxt_position0_carry__1_n_0\,
      CO(3) => \nxt_position0_carry__2_n_0\,
      CO(2) => \nxt_position0_carry__2_n_1\,
      CO(1) => \nxt_position0_carry__2_n_2\,
      CO(0) => \nxt_position0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => position(16 downto 13),
      O(3) => \nxt_position0_carry__2_n_4\,
      O(2) => \nxt_position0_carry__2_n_5\,
      O(1) => \nxt_position0_carry__2_n_6\,
      O(0) => \nxt_position0_carry__2_n_7\,
      S(3) => \nxt_position0_carry__2_i_1_n_0\,
      S(2) => \nxt_position0_carry__2_i_2_n_0\,
      S(1) => \nxt_position0_carry__2_i_3_n_0\,
      S(0) => \nxt_position0_carry__2_i_4_n_0\
    );
\nxt_position0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(16),
      O => \nxt_position0_carry__2_i_1_n_0\
    );
\nxt_position0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(15),
      O => \nxt_position0_carry__2_i_2_n_0\
    );
\nxt_position0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(14),
      O => \nxt_position0_carry__2_i_3_n_0\
    );
\nxt_position0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(13),
      O => \nxt_position0_carry__2_i_4_n_0\
    );
\nxt_position0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \nxt_position0_carry__2_n_0\,
      CO(3) => \nxt_position0_carry__3_n_0\,
      CO(2) => \nxt_position0_carry__3_n_1\,
      CO(1) => \nxt_position0_carry__3_n_2\,
      CO(0) => \nxt_position0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => position(20 downto 17),
      O(3) => \nxt_position0_carry__3_n_4\,
      O(2) => \nxt_position0_carry__3_n_5\,
      O(1) => \nxt_position0_carry__3_n_6\,
      O(0) => \nxt_position0_carry__3_n_7\,
      S(3) => \nxt_position0_carry__3_i_1_n_0\,
      S(2) => \nxt_position0_carry__3_i_2_n_0\,
      S(1) => \nxt_position0_carry__3_i_3_n_0\,
      S(0) => \nxt_position0_carry__3_i_4_n_0\
    );
\nxt_position0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(20),
      O => \nxt_position0_carry__3_i_1_n_0\
    );
\nxt_position0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(19),
      O => \nxt_position0_carry__3_i_2_n_0\
    );
\nxt_position0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(18),
      O => \nxt_position0_carry__3_i_3_n_0\
    );
\nxt_position0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(17),
      O => \nxt_position0_carry__3_i_4_n_0\
    );
\nxt_position0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \nxt_position0_carry__3_n_0\,
      CO(3) => \nxt_position0_carry__4_n_0\,
      CO(2) => \nxt_position0_carry__4_n_1\,
      CO(1) => \nxt_position0_carry__4_n_2\,
      CO(0) => \nxt_position0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => position(24 downto 21),
      O(3) => \nxt_position0_carry__4_n_4\,
      O(2) => \nxt_position0_carry__4_n_5\,
      O(1) => \nxt_position0_carry__4_n_6\,
      O(0) => \nxt_position0_carry__4_n_7\,
      S(3) => \nxt_position0_carry__4_i_1_n_0\,
      S(2) => \nxt_position0_carry__4_i_2_n_0\,
      S(1) => \nxt_position0_carry__4_i_3_n_0\,
      S(0) => \nxt_position0_carry__4_i_4_n_0\
    );
\nxt_position0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(24),
      O => \nxt_position0_carry__4_i_1_n_0\
    );
\nxt_position0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(23),
      O => \nxt_position0_carry__4_i_2_n_0\
    );
\nxt_position0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(22),
      O => \nxt_position0_carry__4_i_3_n_0\
    );
\nxt_position0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(21),
      O => \nxt_position0_carry__4_i_4_n_0\
    );
\nxt_position0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \nxt_position0_carry__4_n_0\,
      CO(3) => \nxt_position0_carry__5_n_0\,
      CO(2) => \nxt_position0_carry__5_n_1\,
      CO(1) => \nxt_position0_carry__5_n_2\,
      CO(0) => \nxt_position0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => position(28 downto 25),
      O(3) => \nxt_position0_carry__5_n_4\,
      O(2) => \nxt_position0_carry__5_n_5\,
      O(1) => \nxt_position0_carry__5_n_6\,
      O(0) => \nxt_position0_carry__5_n_7\,
      S(3) => \nxt_position0_carry__5_i_1_n_0\,
      S(2) => \nxt_position0_carry__5_i_2_n_0\,
      S(1) => \nxt_position0_carry__5_i_3_n_0\,
      S(0) => \nxt_position0_carry__5_i_4_n_0\
    );
\nxt_position0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(28),
      O => \nxt_position0_carry__5_i_1_n_0\
    );
\nxt_position0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(27),
      O => \nxt_position0_carry__5_i_2_n_0\
    );
\nxt_position0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(26),
      O => \nxt_position0_carry__5_i_3_n_0\
    );
\nxt_position0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(25),
      O => \nxt_position0_carry__5_i_4_n_0\
    );
\nxt_position0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \nxt_position0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_nxt_position0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \nxt_position0_carry__6_n_2\,
      CO(0) => \nxt_position0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => position(30 downto 29),
      O(3) => \NLW_nxt_position0_carry__6_O_UNCONNECTED\(3),
      O(2) => \nxt_position0_carry__6_n_5\,
      O(1) => \nxt_position0_carry__6_n_6\,
      O(0) => \nxt_position0_carry__6_n_7\,
      S(3) => '0',
      S(2) => \nxt_position0_carry__6_i_1_n_0\,
      S(1) => \nxt_position0_carry__6_i_2_n_0\,
      S(0) => \nxt_position0_carry__6_i_3_n_0\
    );
\nxt_position0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(31),
      O => \nxt_position0_carry__6_i_1_n_0\
    );
\nxt_position0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(30),
      O => \nxt_position0_carry__6_i_2_n_0\
    );
\nxt_position0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(29),
      O => \nxt_position0_carry__6_i_3_n_0\
    );
nxt_position0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(4),
      O => nxt_position0_carry_i_1_n_0
    );
nxt_position0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(3),
      O => nxt_position0_carry_i_2_n_0
    );
nxt_position0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(2),
      O => nxt_position0_carry_i_3_n_0
    );
nxt_position0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(1),
      O => nxt_position0_carry_i_4_n_0
    );
past_pulse_A_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => present_pulse_A,
      Q => past_pulse_A,
      R => \^sr\(0)
    );
past_pulse_B_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => present_pulse_B,
      Q => past_pulse_B,
      R => \^sr\(0)
    );
\posPulseAdjCount[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => \posPulseAdjCount_reg_n_0_[3]\,
      I1 => \posPulseAdjCount_reg_n_0_[2]\,
      I2 => \posPulseAdjCount_reg_n_0_[1]\,
      I3 => \posPulseAdjCount_reg_n_0_[0]\,
      O => \posPulseAdjCount[0]_i_1_n_0\
    );
\posPulseAdjCount[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"32CC"
    )
        port map (
      I0 => \posPulseAdjCount_reg_n_0_[3]\,
      I1 => \posPulseAdjCount_reg_n_0_[0]\,
      I2 => \posPulseAdjCount_reg_n_0_[2]\,
      I3 => \posPulseAdjCount_reg_n_0_[1]\,
      O => \posPulseAdjCount[1]_i_1_n_0\
    );
\posPulseAdjCount[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => \posPulseAdjCount_reg_n_0_[0]\,
      I1 => \posPulseAdjCount_reg_n_0_[2]\,
      I2 => \posPulseAdjCount_reg_n_0_[1]\,
      O => \posPulseAdjCount[2]_i_1_n_0\
    );
\posPulseAdjCount[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      O => posPulseAdjCount
    );
\posPulseAdjCount[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \posPulseAdjCount_reg_n_0_[3]\,
      I1 => \posPulseAdjCount_reg_n_0_[0]\,
      I2 => \posPulseAdjCount_reg_n_0_[2]\,
      I3 => \posPulseAdjCount_reg_n_0_[1]\,
      O => \posPulseAdjCount[3]_i_2_n_0\
    );
\posPulseAdjCount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => \posPulseAdjCount[0]_i_1_n_0\,
      Q => \posPulseAdjCount_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\posPulseAdjCount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => \posPulseAdjCount[1]_i_1_n_0\,
      Q => \posPulseAdjCount_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\posPulseAdjCount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => \posPulseAdjCount[2]_i_1_n_0\,
      Q => \posPulseAdjCount_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\posPulseAdjCount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => \posPulseAdjCount[3]_i_2_n_0\,
      Q => \posPulseAdjCount_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\posPulseCount0_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \posPulseCount0_inferred__2/i__carry_n_0\,
      CO(2) => \posPulseCount0_inferred__2/i__carry_n_1\,
      CO(1) => \posPulseCount0_inferred__2/i__carry_n_2\,
      CO(0) => \posPulseCount0_inferred__2/i__carry_n_3\,
      CYINIT => posPulseCount(0),
      DI(3 downto 0) => posPulseCount(4 downto 1),
      O(3 downto 0) => data1(4 downto 1),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\posPulseCount0_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \posPulseCount0_inferred__2/i__carry_n_0\,
      CO(3) => \posPulseCount0_inferred__2/i__carry__0_n_0\,
      CO(2) => \posPulseCount0_inferred__2/i__carry__0_n_1\,
      CO(1) => \posPulseCount0_inferred__2/i__carry__0_n_2\,
      CO(0) => \posPulseCount0_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => posPulseCount(8 downto 5),
      O(3 downto 0) => data1(8 downto 5),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\posPulseCount0_inferred__2/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \posPulseCount0_inferred__2/i__carry__0_n_0\,
      CO(3) => \posPulseCount0_inferred__2/i__carry__1_n_0\,
      CO(2) => \posPulseCount0_inferred__2/i__carry__1_n_1\,
      CO(1) => \posPulseCount0_inferred__2/i__carry__1_n_2\,
      CO(0) => \posPulseCount0_inferred__2/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => posPulseCount(12 downto 9),
      O(3 downto 0) => data1(12 downto 9),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\posPulseCount0_inferred__2/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \posPulseCount0_inferred__2/i__carry__1_n_0\,
      CO(3) => \posPulseCount0_inferred__2/i__carry__2_n_0\,
      CO(2) => \posPulseCount0_inferred__2/i__carry__2_n_1\,
      CO(1) => \posPulseCount0_inferred__2/i__carry__2_n_2\,
      CO(0) => \posPulseCount0_inferred__2/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => posPulseCount(16 downto 13),
      O(3 downto 0) => data1(16 downto 13),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\posPulseCount0_inferred__2/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \posPulseCount0_inferred__2/i__carry__2_n_0\,
      CO(3) => \posPulseCount0_inferred__2/i__carry__3_n_0\,
      CO(2) => \posPulseCount0_inferred__2/i__carry__3_n_1\,
      CO(1) => \posPulseCount0_inferred__2/i__carry__3_n_2\,
      CO(0) => \posPulseCount0_inferred__2/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => posPulseCount(20 downto 17),
      O(3 downto 0) => data1(20 downto 17),
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\posPulseCount0_inferred__2/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \posPulseCount0_inferred__2/i__carry__3_n_0\,
      CO(3) => \posPulseCount0_inferred__2/i__carry__4_n_0\,
      CO(2) => \posPulseCount0_inferred__2/i__carry__4_n_1\,
      CO(1) => \posPulseCount0_inferred__2/i__carry__4_n_2\,
      CO(0) => \posPulseCount0_inferred__2/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => posPulseCount(24 downto 21),
      O(3 downto 0) => data1(24 downto 21),
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\posPulseCount0_inferred__2/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \posPulseCount0_inferred__2/i__carry__4_n_0\,
      CO(3) => \posPulseCount0_inferred__2/i__carry__5_n_0\,
      CO(2) => \posPulseCount0_inferred__2/i__carry__5_n_1\,
      CO(1) => \posPulseCount0_inferred__2/i__carry__5_n_2\,
      CO(0) => \posPulseCount0_inferred__2/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => posPulseCount(28 downto 25),
      O(3 downto 0) => data1(28 downto 25),
      S(3) => \i__carry__5_i_1_n_0\,
      S(2) => \i__carry__5_i_2_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\posPulseCount0_inferred__2/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \posPulseCount0_inferred__2/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_posPulseCount0_inferred__2/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \posPulseCount0_inferred__2/i__carry__6_n_2\,
      CO(0) => \posPulseCount0_inferred__2/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => posPulseCount(30 downto 29),
      O(3) => \NLW_posPulseCount0_inferred__2/i__carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data1(31 downto 29),
      S(3) => '0',
      S(2) => \i__carry__6_i_1_n_0\,
      S(1) => \i__carry__6_i_2_n_0\,
      S(0) => \i__carry__6_i_3_n_0\
    );
posPulseCountAdj: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \posPulseAdjCount_reg_n_0_[2]\,
      I1 => \posPulseAdjCount_reg_n_0_[3]\,
      I2 => \posPulseAdjCount_reg_n_0_[1]\,
      I3 => \posPulseAdjCount_reg_n_0_[0]\,
      O => p_0_in
    );
posPulseCountAdj_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => p_0_in,
      Q => \posPulseCountAdj__0\,
      R => \^sr\(0)
    );
\posPulseCount[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FEFF"
    )
        port map (
      I0 => \posPulseCount[31]_i_5_n_0\,
      I1 => \posPulseCount[31]_i_4_n_0\,
      I2 => \posPulseCount[31]_i_3_n_0\,
      I3 => \posPulseCountAdj__0\,
      I4 => posPulseCount(0),
      O => \posPulseCount[0]_i_1_n_0\
    );
\posPulseCount[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(10),
      O => \posPulseCount[10]_i_1_n_0\
    );
\posPulseCount[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(11),
      O => \posPulseCount[11]_i_1_n_0\
    );
\posPulseCount[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(12),
      O => \posPulseCount[12]_i_1_n_0\
    );
\posPulseCount[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(13),
      O => \posPulseCount[13]_i_1_n_0\
    );
\posPulseCount[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(14),
      O => \posPulseCount[14]_i_1_n_0\
    );
\posPulseCount[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(15),
      O => \posPulseCount[15]_i_1_n_0\
    );
\posPulseCount[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(16),
      O => \posPulseCount[16]_i_1_n_0\
    );
\posPulseCount[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(17),
      O => \posPulseCount[17]_i_1_n_0\
    );
\posPulseCount[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(18),
      O => \posPulseCount[18]_i_1_n_0\
    );
\posPulseCount[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(19),
      O => \posPulseCount[19]_i_1_n_0\
    );
\posPulseCount[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(1),
      I1 => \posPulseCount[31]_i_3_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_5_n_0\,
      I4 => posPulseCount(0),
      I5 => \posPulseCountAdj__0\,
      O => \posPulseCount[1]_i_1_n_0\
    );
\posPulseCount[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(20),
      O => \posPulseCount[20]_i_1_n_0\
    );
\posPulseCount[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(21),
      O => \posPulseCount[21]_i_1_n_0\
    );
\posPulseCount[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(22),
      O => \posPulseCount[22]_i_1_n_0\
    );
\posPulseCount[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(23),
      O => \posPulseCount[23]_i_1_n_0\
    );
\posPulseCount[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(24),
      O => \posPulseCount[24]_i_1_n_0\
    );
\posPulseCount[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(25),
      O => \posPulseCount[25]_i_1_n_0\
    );
\posPulseCount[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(26),
      O => \posPulseCount[26]_i_1_n_0\
    );
\posPulseCount[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(27),
      O => \posPulseCount[27]_i_1_n_0\
    );
\posPulseCount[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(28),
      O => \posPulseCount[28]_i_1_n_0\
    );
\posPulseCount[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(29),
      O => \posPulseCount[29]_i_1_n_0\
    );
\posPulseCount[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(2),
      O => \posPulseCount[2]_i_1_n_0\
    );
\posPulseCount[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(30),
      O => \posPulseCount[30]_i_1_n_0\
    );
\posPulseCount[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0001"
    )
        port map (
      I0 => \posPulseCount[31]_i_3_n_0\,
      I1 => \posPulseCount[31]_i_4_n_0\,
      I2 => \posPulseCount[31]_i_5_n_0\,
      I3 => posPulseCount(0),
      I4 => \posPulseCount[31]_i_6_n_0\,
      I5 => \posPulseCount[31]_i_7_n_0\,
      O => posPulseCount_1
    );
\posPulseCount[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => posPulseCount(27),
      I1 => posPulseCount(26),
      I2 => posPulseCount(29),
      I3 => posPulseCount(28),
      O => \posPulseCount[31]_i_10_n_0\
    );
\posPulseCount[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => posPulseCount(7),
      I1 => posPulseCount(6),
      I2 => posPulseCount(9),
      I3 => posPulseCount(8),
      O => \posPulseCount[31]_i_11_n_0\
    );
\posPulseCount[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => posPulseCount(15),
      I1 => posPulseCount(14),
      I2 => posPulseCount(17),
      I3 => posPulseCount(16),
      O => \posPulseCount[31]_i_12_n_0\
    );
\posPulseCount[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(31),
      O => \posPulseCount[31]_i_2_n_0\
    );
\posPulseCount[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \posPulseCount[31]_i_8_n_0\,
      I1 => \posPulseCount[31]_i_9_n_0\,
      I2 => posPulseCount(31),
      I3 => posPulseCount(30),
      I4 => posPulseCount(1),
      I5 => \posPulseCount[31]_i_10_n_0\,
      O => \posPulseCount[31]_i_3_n_0\
    );
\posPulseCount[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => posPulseCount(4),
      I1 => posPulseCount(5),
      I2 => posPulseCount(2),
      I3 => posPulseCount(3),
      I4 => \posPulseCount[31]_i_11_n_0\,
      O => \posPulseCount[31]_i_4_n_0\
    );
\posPulseCount[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => posPulseCount(12),
      I1 => posPulseCount(13),
      I2 => posPulseCount(10),
      I3 => posPulseCount(11),
      I4 => \posPulseCount[31]_i_12_n_0\,
      O => \posPulseCount[31]_i_5_n_0\
    );
\posPulseCount[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => past_pulse_A,
      I1 => present_pulse_A,
      O => \posPulseCount[31]_i_6_n_0\
    );
\posPulseCount[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => present_pulse_B,
      I1 => past_pulse_B,
      O => \posPulseCount[31]_i_7_n_0\
    );
\posPulseCount[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => posPulseCount(23),
      I1 => posPulseCount(22),
      I2 => posPulseCount(25),
      I3 => posPulseCount(24),
      O => \posPulseCount[31]_i_8_n_0\
    );
\posPulseCount[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => posPulseCount(19),
      I1 => posPulseCount(18),
      I2 => posPulseCount(21),
      I3 => posPulseCount(20),
      O => \posPulseCount[31]_i_9_n_0\
    );
\posPulseCount[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(3),
      O => \posPulseCount[3]_i_1_n_0\
    );
\posPulseCount[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(4),
      O => \posPulseCount[4]_i_1_n_0\
    );
\posPulseCount[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => data1(5),
      I1 => posPulseCount(0),
      I2 => \posPulseCount[31]_i_5_n_0\,
      I3 => \posPulseCount[31]_i_4_n_0\,
      I4 => \posPulseCount[31]_i_3_n_0\,
      O => \posPulseCount[5]_i_1_n_0\
    );
\posPulseCount[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(6),
      O => \posPulseCount[6]_i_1_n_0\
    );
\posPulseCount[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(7),
      O => \posPulseCount[7]_i_1_n_0\
    );
\posPulseCount[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(8),
      O => \posPulseCount[8]_i_1_n_0\
    );
\posPulseCount[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => posPulseCount(0),
      I1 => \posPulseCount[31]_i_5_n_0\,
      I2 => \posPulseCount[31]_i_4_n_0\,
      I3 => \posPulseCount[31]_i_3_n_0\,
      I4 => data1(9),
      O => \posPulseCount[9]_i_1_n_0\
    );
\posPulseCount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[0]_i_1_n_0\,
      Q => posPulseCount(0),
      R => \^sr\(0)
    );
\posPulseCount_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[10]_i_1_n_0\,
      Q => posPulseCount(10),
      R => \^sr\(0)
    );
\posPulseCount_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[11]_i_1_n_0\,
      Q => posPulseCount(11),
      R => \^sr\(0)
    );
\posPulseCount_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[12]_i_1_n_0\,
      Q => posPulseCount(12),
      R => \^sr\(0)
    );
\posPulseCount_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[13]_i_1_n_0\,
      Q => posPulseCount(13),
      R => \^sr\(0)
    );
\posPulseCount_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[14]_i_1_n_0\,
      Q => posPulseCount(14),
      R => \^sr\(0)
    );
\posPulseCount_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[15]_i_1_n_0\,
      Q => posPulseCount(15),
      R => \^sr\(0)
    );
\posPulseCount_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[16]_i_1_n_0\,
      Q => posPulseCount(16),
      R => \^sr\(0)
    );
\posPulseCount_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[17]_i_1_n_0\,
      Q => posPulseCount(17),
      R => \^sr\(0)
    );
\posPulseCount_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[18]_i_1_n_0\,
      Q => posPulseCount(18),
      R => \^sr\(0)
    );
\posPulseCount_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[19]_i_1_n_0\,
      Q => posPulseCount(19),
      R => \^sr\(0)
    );
\posPulseCount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[1]_i_1_n_0\,
      Q => posPulseCount(1),
      R => \^sr\(0)
    );
\posPulseCount_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[20]_i_1_n_0\,
      Q => posPulseCount(20),
      R => \^sr\(0)
    );
\posPulseCount_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[21]_i_1_n_0\,
      Q => posPulseCount(21),
      R => \^sr\(0)
    );
\posPulseCount_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[22]_i_1_n_0\,
      Q => posPulseCount(22),
      R => \^sr\(0)
    );
\posPulseCount_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[23]_i_1_n_0\,
      Q => posPulseCount(23),
      R => \^sr\(0)
    );
\posPulseCount_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[24]_i_1_n_0\,
      Q => posPulseCount(24),
      R => \^sr\(0)
    );
\posPulseCount_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[25]_i_1_n_0\,
      Q => posPulseCount(25),
      R => \^sr\(0)
    );
\posPulseCount_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[26]_i_1_n_0\,
      Q => posPulseCount(26),
      R => \^sr\(0)
    );
\posPulseCount_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[27]_i_1_n_0\,
      Q => posPulseCount(27),
      R => \^sr\(0)
    );
\posPulseCount_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[28]_i_1_n_0\,
      Q => posPulseCount(28),
      R => \^sr\(0)
    );
\posPulseCount_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[29]_i_1_n_0\,
      Q => posPulseCount(29),
      R => \^sr\(0)
    );
\posPulseCount_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[2]_i_1_n_0\,
      Q => posPulseCount(2),
      R => \^sr\(0)
    );
\posPulseCount_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[30]_i_1_n_0\,
      Q => posPulseCount(30),
      R => \^sr\(0)
    );
\posPulseCount_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[31]_i_2_n_0\,
      Q => posPulseCount(31),
      R => \^sr\(0)
    );
\posPulseCount_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[3]_i_1_n_0\,
      Q => posPulseCount(3),
      R => \^sr\(0)
    );
\posPulseCount_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[4]_i_1_n_0\,
      Q => posPulseCount(4),
      R => \^sr\(0)
    );
\posPulseCount_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[5]_i_1_n_0\,
      Q => posPulseCount(5),
      R => \^sr\(0)
    );
\posPulseCount_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[6]_i_1_n_0\,
      Q => posPulseCount(6),
      R => \^sr\(0)
    );
\posPulseCount_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[7]_i_1_n_0\,
      Q => posPulseCount(7),
      R => \^sr\(0)
    );
\posPulseCount_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[8]_i_1_n_0\,
      Q => posPulseCount(8),
      R => \^sr\(0)
    );
\posPulseCount_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount_1,
      D => \posPulseCount[9]_i_1_n_0\,
      Q => posPulseCount(9),
      R => \^sr\(0)
    );
\position[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => position(0),
      O => nxt_position(0)
    );
\position[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(10),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__1_n_6\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(10)
    );
\position[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(11),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__1_n_5\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(11)
    );
\position[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(12),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__1_n_4\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(12)
    );
\position[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(13),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__2_n_7\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(13)
    );
\position[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(14),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__2_n_6\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(14)
    );
\position[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(15),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__2_n_5\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(15)
    );
\position[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(16),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__2_n_4\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(16)
    );
\position[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(17),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__3_n_7\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(17)
    );
\position[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(18),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__3_n_6\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(18)
    );
\position[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(19),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__3_n_5\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(19)
    );
\position[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F000CCDDCCDD"
    )
        port map (
      I0 => \position[31]_i_5_n_0\,
      I1 => nxt_position0_carry_n_7,
      I2 => data0(1),
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_3_n_0\,
      I5 => dir,
      O => nxt_position(1)
    );
\position[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(20),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__3_n_4\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(20)
    );
\position[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(21),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__4_n_7\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(21)
    );
\position[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(22),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__4_n_6\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(22)
    );
\position[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(23),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__4_n_5\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(23)
    );
\position[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(24),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__4_n_4\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(24)
    );
\position[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(25),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__5_n_7\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(25)
    );
\position[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(26),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__5_n_6\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(26)
    );
\position[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(27),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__5_n_5\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(27)
    );
\position[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(28),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__5_n_4\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(28)
    );
\position[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(29),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__6_n_7\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(29)
    );
\position[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F000CCDDCCDD"
    )
        port map (
      I0 => \position[31]_i_5_n_0\,
      I1 => nxt_position0_carry_n_6,
      I2 => data0(2),
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_3_n_0\,
      I5 => dir,
      O => nxt_position(2)
    );
\position[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(30),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__6_n_6\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(30)
    );
\position[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(31),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__6_n_5\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(31)
    );
\position[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => position(9),
      I1 => position(7),
      I2 => position(11),
      I3 => position(10),
      O => \position[31]_i_10_n_0\
    );
\position[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => position(30),
      I1 => position(31),
      I2 => position(28),
      I3 => position(29),
      I4 => position(4),
      I5 => position(3),
      O => \position[31]_i_11_n_0\
    );
\position[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => position(6),
      I1 => position(8),
      I2 => position(2),
      I3 => position(5),
      I4 => position(1),
      I5 => position(0),
      O => \position[31]_i_3_n_0\
    );
\position[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \position[31]_i_6_n_0\,
      I1 => \position[31]_i_7_n_0\,
      I2 => \position[31]_i_8_n_0\,
      I3 => \position[31]_i_9_n_0\,
      I4 => \position[31]_i_10_n_0\,
      I5 => \position[31]_i_11_n_0\,
      O => \position[31]_i_4_n_0\
    );
\position[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => position(6),
      I1 => position(8),
      I2 => position(2),
      I3 => position(5),
      I4 => position(1),
      I5 => position(0),
      O => \position[31]_i_5_n_0\
    );
\position[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => position(21),
      I1 => position(20),
      I2 => position(23),
      I3 => position(22),
      O => \position[31]_i_6_n_0\
    );
\position[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => position(25),
      I1 => position(24),
      I2 => position(27),
      I3 => position(26),
      O => \position[31]_i_7_n_0\
    );
\position[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => position(13),
      I1 => position(12),
      I2 => position(15),
      I3 => position(14),
      O => \position[31]_i_8_n_0\
    );
\position[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => position(17),
      I1 => position(16),
      I2 => position(19),
      I3 => position(18),
      O => \position[31]_i_9_n_0\
    );
\position[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(3),
      I1 => \position[31]_i_3_n_0\,
      I2 => nxt_position0_carry_n_5,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(3)
    );
\position[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(4),
      I1 => \position[31]_i_3_n_0\,
      I2 => nxt_position0_carry_n_4,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(4)
    );
\position[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F000CCDDCCDD"
    )
        port map (
      I0 => \position[31]_i_5_n_0\,
      I1 => \nxt_position0_carry__0_n_7\,
      I2 => data0(5),
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_3_n_0\,
      I5 => dir,
      O => nxt_position(5)
    );
\position[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F000CCDDCCDD"
    )
        port map (
      I0 => \position[31]_i_5_n_0\,
      I1 => \nxt_position0_carry__0_n_6\,
      I2 => data0(6),
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_3_n_0\,
      I5 => dir,
      O => nxt_position(6)
    );
\position[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(7),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__0_n_5\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(7)
    );
\position[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F000CCDDCCDD"
    )
        port map (
      I0 => \position[31]_i_5_n_0\,
      I1 => \nxt_position0_carry__0_n_4\,
      I2 => data0(8),
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_3_n_0\,
      I5 => dir,
      O => nxt_position(8)
    );
\position[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88AA88F0F0F000"
    )
        port map (
      I0 => data0(9),
      I1 => \position[31]_i_3_n_0\,
      I2 => \nxt_position0_carry__1_n_7\,
      I3 => \position[31]_i_4_n_0\,
      I4 => \position[31]_i_5_n_0\,
      I5 => dir,
      O => nxt_position(9)
    );
\position_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(0),
      Q => position(0),
      S => \^sr\(0)
    );
\position_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(10),
      Q => position(10),
      R => \^sr\(0)
    );
\position_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(11),
      Q => position(11),
      R => \^sr\(0)
    );
\position_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(12),
      Q => position(12),
      R => \^sr\(0)
    );
\position_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_reg[8]_i_2_n_0\,
      CO(3) => \position_reg[12]_i_2_n_0\,
      CO(2) => \position_reg[12]_i_2_n_1\,
      CO(1) => \position_reg[12]_i_2_n_2\,
      CO(0) => \position_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => position(12 downto 9)
    );
\position_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(13),
      Q => position(13),
      R => \^sr\(0)
    );
\position_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(14),
      Q => position(14),
      R => \^sr\(0)
    );
\position_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(15),
      Q => position(15),
      R => \^sr\(0)
    );
\position_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(16),
      Q => position(16),
      R => \^sr\(0)
    );
\position_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_reg[12]_i_2_n_0\,
      CO(3) => \position_reg[16]_i_2_n_0\,
      CO(2) => \position_reg[16]_i_2_n_1\,
      CO(1) => \position_reg[16]_i_2_n_2\,
      CO(0) => \position_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => position(16 downto 13)
    );
\position_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(17),
      Q => position(17),
      R => \^sr\(0)
    );
\position_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(18),
      Q => position(18),
      R => \^sr\(0)
    );
\position_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(19),
      Q => position(19),
      R => \^sr\(0)
    );
\position_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(1),
      Q => position(1),
      S => \^sr\(0)
    );
\position_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(20),
      Q => position(20),
      R => \^sr\(0)
    );
\position_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_reg[16]_i_2_n_0\,
      CO(3) => \position_reg[20]_i_2_n_0\,
      CO(2) => \position_reg[20]_i_2_n_1\,
      CO(1) => \position_reg[20]_i_2_n_2\,
      CO(0) => \position_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => position(20 downto 17)
    );
\position_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(21),
      Q => position(21),
      R => \^sr\(0)
    );
\position_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(22),
      Q => position(22),
      R => \^sr\(0)
    );
\position_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(23),
      Q => position(23),
      R => \^sr\(0)
    );
\position_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(24),
      Q => position(24),
      R => \^sr\(0)
    );
\position_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_reg[20]_i_2_n_0\,
      CO(3) => \position_reg[24]_i_2_n_0\,
      CO(2) => \position_reg[24]_i_2_n_1\,
      CO(1) => \position_reg[24]_i_2_n_2\,
      CO(0) => \position_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => position(24 downto 21)
    );
\position_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(25),
      Q => position(25),
      R => \^sr\(0)
    );
\position_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(26),
      Q => position(26),
      R => \^sr\(0)
    );
\position_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(27),
      Q => position(27),
      R => \^sr\(0)
    );
\position_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(28),
      Q => position(28),
      R => \^sr\(0)
    );
\position_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_reg[24]_i_2_n_0\,
      CO(3) => \position_reg[28]_i_2_n_0\,
      CO(2) => \position_reg[28]_i_2_n_1\,
      CO(1) => \position_reg[28]_i_2_n_2\,
      CO(0) => \position_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => position(28 downto 25)
    );
\position_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(29),
      Q => position(29),
      R => \^sr\(0)
    );
\position_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(2),
      Q => position(2),
      R => \^sr\(0)
    );
\position_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(30),
      Q => position(30),
      R => \^sr\(0)
    );
\position_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(31),
      Q => position(31),
      R => \^sr\(0)
    );
\position_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_position_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \position_reg[31]_i_2_n_2\,
      CO(0) => \position_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_position_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => position(31 downto 29)
    );
\position_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(3),
      Q => position(3),
      R => \^sr\(0)
    );
\position_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(4),
      Q => position(4),
      S => \^sr\(0)
    );
\position_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \position_reg[4]_i_2_n_0\,
      CO(2) => \position_reg[4]_i_2_n_1\,
      CO(1) => \position_reg[4]_i_2_n_2\,
      CO(0) => \position_reg[4]_i_2_n_3\,
      CYINIT => position(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => position(4 downto 1)
    );
\position_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(5),
      Q => position(5),
      S => \^sr\(0)
    );
\position_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(6),
      Q => position(6),
      R => \^sr\(0)
    );
\position_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(7),
      Q => position(7),
      S => \^sr\(0)
    );
\position_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(8),
      Q => position(8),
      R => \^sr\(0)
    );
\position_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \position_reg[4]_i_2_n_0\,
      CO(3) => \position_reg[8]_i_2_n_0\,
      CO(2) => \position_reg[8]_i_2_n_1\,
      CO(1) => \position_reg[8]_i_2_n_2\,
      CO(0) => \position_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => position(8 downto 5)
    );
\position_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseAdjCount,
      D => nxt_position(9),
      Q => position(9),
      R => \^sr\(0)
    );
present_pulse_A_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sync_chA,
      Q => present_pulse_A,
      R => \^sr\(0)
    );
present_pulse_B_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sync_chB,
      Q => present_pulse_B,
      R => \^sr\(0)
    );
q1_chA_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => chA,
      Q => q1_chA,
      R => '0'
    );
q1_chB_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => chB,
      Q => q1_chB,
      R => '0'
    );
\rev_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => s00_axi_aresetn,
      O => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => past_pulse_B,
      I1 => present_pulse_B,
      I2 => present_pulse_A,
      I3 => past_pulse_A,
      O => posPulseCount00_out
    );
\rev_cnt[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rev_cnt_reg(0),
      O => \rev_cnt[0]_i_4_n_0\
    );
\rev_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[0]_i_3_n_7\,
      Q => rev_cnt_reg(0),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rev_cnt_reg[0]_i_3_n_0\,
      CO(2) => \rev_cnt_reg[0]_i_3_n_1\,
      CO(1) => \rev_cnt_reg[0]_i_3_n_2\,
      CO(0) => \rev_cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \rev_cnt_reg[0]_i_3_n_4\,
      O(2) => \rev_cnt_reg[0]_i_3_n_5\,
      O(1) => \rev_cnt_reg[0]_i_3_n_6\,
      O(0) => \rev_cnt_reg[0]_i_3_n_7\,
      S(3 downto 1) => \rev_cnt_reg__0\(3 downto 1),
      S(0) => \rev_cnt[0]_i_4_n_0\
    );
\rev_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[8]_i_1_n_5\,
      Q => \rev_cnt_reg__0\(10),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[8]_i_1_n_4\,
      Q => \rev_cnt_reg__0\(11),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[12]_i_1_n_7\,
      Q => \rev_cnt_reg__0\(12),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rev_cnt_reg[8]_i_1_n_0\,
      CO(3) => \rev_cnt_reg[12]_i_1_n_0\,
      CO(2) => \rev_cnt_reg[12]_i_1_n_1\,
      CO(1) => \rev_cnt_reg[12]_i_1_n_2\,
      CO(0) => \rev_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rev_cnt_reg[12]_i_1_n_4\,
      O(2) => \rev_cnt_reg[12]_i_1_n_5\,
      O(1) => \rev_cnt_reg[12]_i_1_n_6\,
      O(0) => \rev_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => \rev_cnt_reg__0\(15 downto 12)
    );
\rev_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[12]_i_1_n_6\,
      Q => \rev_cnt_reg__0\(13),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[12]_i_1_n_5\,
      Q => \rev_cnt_reg__0\(14),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[12]_i_1_n_4\,
      Q => \rev_cnt_reg__0\(15),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[16]_i_1_n_7\,
      Q => \rev_cnt_reg__0\(16),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rev_cnt_reg[12]_i_1_n_0\,
      CO(3) => \rev_cnt_reg[16]_i_1_n_0\,
      CO(2) => \rev_cnt_reg[16]_i_1_n_1\,
      CO(1) => \rev_cnt_reg[16]_i_1_n_2\,
      CO(0) => \rev_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rev_cnt_reg[16]_i_1_n_4\,
      O(2) => \rev_cnt_reg[16]_i_1_n_5\,
      O(1) => \rev_cnt_reg[16]_i_1_n_6\,
      O(0) => \rev_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => \rev_cnt_reg__0\(19 downto 16)
    );
\rev_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[16]_i_1_n_6\,
      Q => \rev_cnt_reg__0\(17),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[16]_i_1_n_5\,
      Q => \rev_cnt_reg__0\(18),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[16]_i_1_n_4\,
      Q => \rev_cnt_reg__0\(19),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[0]_i_3_n_6\,
      Q => \rev_cnt_reg__0\(1),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[20]_i_1_n_7\,
      Q => \rev_cnt_reg__0\(20),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rev_cnt_reg[16]_i_1_n_0\,
      CO(3) => \rev_cnt_reg[20]_i_1_n_0\,
      CO(2) => \rev_cnt_reg[20]_i_1_n_1\,
      CO(1) => \rev_cnt_reg[20]_i_1_n_2\,
      CO(0) => \rev_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rev_cnt_reg[20]_i_1_n_4\,
      O(2) => \rev_cnt_reg[20]_i_1_n_5\,
      O(1) => \rev_cnt_reg[20]_i_1_n_6\,
      O(0) => \rev_cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => \rev_cnt_reg__0\(23 downto 20)
    );
\rev_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[20]_i_1_n_6\,
      Q => \rev_cnt_reg__0\(21),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[20]_i_1_n_5\,
      Q => \rev_cnt_reg__0\(22),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[20]_i_1_n_4\,
      Q => \rev_cnt_reg__0\(23),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[24]_i_1_n_7\,
      Q => \rev_cnt_reg__0\(24),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rev_cnt_reg[20]_i_1_n_0\,
      CO(3) => \rev_cnt_reg[24]_i_1_n_0\,
      CO(2) => \rev_cnt_reg[24]_i_1_n_1\,
      CO(1) => \rev_cnt_reg[24]_i_1_n_2\,
      CO(0) => \rev_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rev_cnt_reg[24]_i_1_n_4\,
      O(2) => \rev_cnt_reg[24]_i_1_n_5\,
      O(1) => \rev_cnt_reg[24]_i_1_n_6\,
      O(0) => \rev_cnt_reg[24]_i_1_n_7\,
      S(3 downto 0) => \rev_cnt_reg__0\(27 downto 24)
    );
\rev_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[24]_i_1_n_6\,
      Q => \rev_cnt_reg__0\(25),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[24]_i_1_n_5\,
      Q => \rev_cnt_reg__0\(26),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[24]_i_1_n_4\,
      Q => \rev_cnt_reg__0\(27),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[28]_i_1_n_7\,
      Q => \rev_cnt_reg__0\(28),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rev_cnt_reg[24]_i_1_n_0\,
      CO(3) => \NLW_rev_cnt_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \rev_cnt_reg[28]_i_1_n_1\,
      CO(1) => \rev_cnt_reg[28]_i_1_n_2\,
      CO(0) => \rev_cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rev_cnt_reg[28]_i_1_n_4\,
      O(2) => \rev_cnt_reg[28]_i_1_n_5\,
      O(1) => \rev_cnt_reg[28]_i_1_n_6\,
      O(0) => \rev_cnt_reg[28]_i_1_n_7\,
      S(3 downto 0) => \rev_cnt_reg__0\(31 downto 28)
    );
\rev_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[28]_i_1_n_6\,
      Q => \rev_cnt_reg__0\(29),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[0]_i_3_n_5\,
      Q => \rev_cnt_reg__0\(2),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[28]_i_1_n_5\,
      Q => \rev_cnt_reg__0\(30),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[28]_i_1_n_4\,
      Q => \rev_cnt_reg__0\(31),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[0]_i_3_n_4\,
      Q => \rev_cnt_reg__0\(3),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[4]_i_1_n_7\,
      Q => \rev_cnt_reg__0\(4),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rev_cnt_reg[0]_i_3_n_0\,
      CO(3) => \rev_cnt_reg[4]_i_1_n_0\,
      CO(2) => \rev_cnt_reg[4]_i_1_n_1\,
      CO(1) => \rev_cnt_reg[4]_i_1_n_2\,
      CO(0) => \rev_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rev_cnt_reg[4]_i_1_n_4\,
      O(2) => \rev_cnt_reg[4]_i_1_n_5\,
      O(1) => \rev_cnt_reg[4]_i_1_n_6\,
      O(0) => \rev_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => \rev_cnt_reg__0\(7 downto 4)
    );
\rev_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[4]_i_1_n_6\,
      Q => \rev_cnt_reg__0\(5),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[4]_i_1_n_5\,
      Q => \rev_cnt_reg__0\(6),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[4]_i_1_n_4\,
      Q => \rev_cnt_reg__0\(7),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[8]_i_1_n_7\,
      Q => \rev_cnt_reg__0\(8),
      R => \rev_cnt[0]_i_1_n_0\
    );
\rev_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rev_cnt_reg[4]_i_1_n_0\,
      CO(3) => \rev_cnt_reg[8]_i_1_n_0\,
      CO(2) => \rev_cnt_reg[8]_i_1_n_1\,
      CO(1) => \rev_cnt_reg[8]_i_1_n_2\,
      CO(0) => \rev_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rev_cnt_reg[8]_i_1_n_4\,
      O(2) => \rev_cnt_reg[8]_i_1_n_5\,
      O(1) => \rev_cnt_reg[8]_i_1_n_6\,
      O(0) => \rev_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => \rev_cnt_reg__0\(11 downto 8)
    );
\rev_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => posPulseCount00_out,
      D => \rev_cnt_reg[8]_i_1_n_6\,
      Q => \rev_cnt_reg__0\(9),
      R => \rev_cnt[0]_i_1_n_0\
    );
sync_chA_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => q1_chA,
      Q => sync_chA,
      R => '0'
    );
sync_chB_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => q1_chB,
      Q => sync_chB,
      R => '0'
    );
\timer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(0),
      O => timer_0(0)
    );
\timer[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[12]_i_2_n_6\,
      O => timer_0(10)
    );
\timer[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[12]_i_2_n_5\,
      O => timer_0(11)
    );
\timer[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[12]_i_2_n_4\,
      O => timer_0(12)
    );
\timer[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[16]_i_2_n_7\,
      O => timer_0(13)
    );
\timer[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[16]_i_2_n_6\,
      O => timer_0(14)
    );
\timer[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[16]_i_2_n_5\,
      O => timer_0(15)
    );
\timer[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[16]_i_2_n_4\,
      O => timer_0(16)
    );
\timer[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[20]_i_2_n_7\,
      O => timer_0(17)
    );
\timer[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[20]_i_2_n_6\,
      O => timer_0(18)
    );
\timer[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[20]_i_2_n_5\,
      O => timer_0(19)
    );
\timer[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[4]_i_2_n_7\,
      O => timer_0(1)
    );
\timer[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[20]_i_2_n_4\,
      O => timer_0(20)
    );
\timer[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[24]_i_2_n_7\,
      O => timer_0(21)
    );
\timer[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[24]_i_2_n_6\,
      O => timer_0(22)
    );
\timer[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[24]_i_2_n_5\,
      O => timer_0(23)
    );
\timer[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[24]_i_2_n_4\,
      O => timer_0(24)
    );
\timer[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[28]_i_2_n_7\,
      O => timer_0(25)
    );
\timer[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[28]_i_2_n_6\,
      O => timer_0(26)
    );
\timer[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[28]_i_2_n_5\,
      O => timer_0(27)
    );
\timer[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[28]_i_2_n_4\,
      O => timer_0(28)
    );
\timer[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[31]_i_6_n_7\,
      O => timer_0(29)
    );
\timer[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[4]_i_2_n_6\,
      O => timer_0(2)
    );
\timer[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[31]_i_6_n_6\,
      O => timer_0(30)
    );
\timer[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[31]_i_6_n_5\,
      O => timer_0(31)
    );
\timer[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => timer(12),
      I1 => timer(13),
      I2 => timer(15),
      I3 => timer(14),
      O => \timer[31]_i_10_n_0\
    );
\timer[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => timer(18),
      I1 => timer(19),
      I2 => timer(16),
      I3 => timer(17),
      I4 => \timer[31]_i_7_n_0\,
      O => \timer[31]_i_2_n_0\
    );
\timer[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => timer(26),
      I1 => timer(27),
      I2 => timer(24),
      I3 => timer(25),
      I4 => \timer[31]_i_8_n_0\,
      O => \timer[31]_i_3_n_0\
    );
\timer[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => timer(2),
      I1 => timer(3),
      I2 => timer(0),
      I3 => timer(1),
      I4 => \timer[31]_i_9_n_0\,
      O => \timer[31]_i_4_n_0\
    );
\timer[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => timer(11),
      I1 => timer(10),
      I2 => timer(8),
      I3 => timer(9),
      I4 => \timer[31]_i_10_n_0\,
      O => \timer[31]_i_5_n_0\
    );
\timer[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => timer(20),
      I1 => timer(21),
      I2 => timer(23),
      I3 => timer(22),
      O => \timer[31]_i_7_n_0\
    );
\timer[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer(29),
      I1 => timer(28),
      I2 => timer(31),
      I3 => timer(30),
      O => \timer[31]_i_8_n_0\
    );
\timer[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => timer(5),
      I1 => timer(4),
      I2 => timer(6),
      I3 => timer(7),
      O => \timer[31]_i_9_n_0\
    );
\timer[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[4]_i_2_n_5\,
      O => timer_0(3)
    );
\timer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[4]_i_2_n_4\,
      O => timer_0(4)
    );
\timer[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[8]_i_2_n_7\,
      O => timer_0(5)
    );
\timer[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[8]_i_2_n_6\,
      O => timer_0(6)
    );
\timer[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[8]_i_2_n_5\,
      O => timer_0(7)
    );
\timer[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[8]_i_2_n_4\,
      O => timer_0(8)
    );
\timer[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \timer[31]_i_2_n_0\,
      I1 => \timer[31]_i_3_n_0\,
      I2 => \timer[31]_i_4_n_0\,
      I3 => \timer[31]_i_5_n_0\,
      I4 => \timer_reg[12]_i_2_n_7\,
      O => timer_0(9)
    );
\timer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(0),
      Q => timer(0),
      R => \^sr\(0)
    );
\timer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(10),
      Q => timer(10),
      R => \^sr\(0)
    );
\timer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(11),
      Q => timer(11),
      R => \^sr\(0)
    );
\timer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(12),
      Q => timer(12),
      R => \^sr\(0)
    );
\timer_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[8]_i_2_n_0\,
      CO(3) => \timer_reg[12]_i_2_n_0\,
      CO(2) => \timer_reg[12]_i_2_n_1\,
      CO(1) => \timer_reg[12]_i_2_n_2\,
      CO(0) => \timer_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[12]_i_2_n_4\,
      O(2) => \timer_reg[12]_i_2_n_5\,
      O(1) => \timer_reg[12]_i_2_n_6\,
      O(0) => \timer_reg[12]_i_2_n_7\,
      S(3 downto 0) => timer(12 downto 9)
    );
\timer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(13),
      Q => timer(13),
      R => \^sr\(0)
    );
\timer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(14),
      Q => timer(14),
      R => \^sr\(0)
    );
\timer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(15),
      Q => timer(15),
      R => \^sr\(0)
    );
\timer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(16),
      Q => timer(16),
      R => \^sr\(0)
    );
\timer_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[12]_i_2_n_0\,
      CO(3) => \timer_reg[16]_i_2_n_0\,
      CO(2) => \timer_reg[16]_i_2_n_1\,
      CO(1) => \timer_reg[16]_i_2_n_2\,
      CO(0) => \timer_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[16]_i_2_n_4\,
      O(2) => \timer_reg[16]_i_2_n_5\,
      O(1) => \timer_reg[16]_i_2_n_6\,
      O(0) => \timer_reg[16]_i_2_n_7\,
      S(3 downto 0) => timer(16 downto 13)
    );
\timer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(17),
      Q => timer(17),
      R => \^sr\(0)
    );
\timer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(18),
      Q => timer(18),
      R => \^sr\(0)
    );
\timer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(19),
      Q => timer(19),
      R => \^sr\(0)
    );
\timer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(1),
      Q => timer(1),
      R => \^sr\(0)
    );
\timer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(20),
      Q => timer(20),
      R => \^sr\(0)
    );
\timer_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[16]_i_2_n_0\,
      CO(3) => \timer_reg[20]_i_2_n_0\,
      CO(2) => \timer_reg[20]_i_2_n_1\,
      CO(1) => \timer_reg[20]_i_2_n_2\,
      CO(0) => \timer_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[20]_i_2_n_4\,
      O(2) => \timer_reg[20]_i_2_n_5\,
      O(1) => \timer_reg[20]_i_2_n_6\,
      O(0) => \timer_reg[20]_i_2_n_7\,
      S(3 downto 0) => timer(20 downto 17)
    );
\timer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(21),
      Q => timer(21),
      R => \^sr\(0)
    );
\timer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(22),
      Q => timer(22),
      R => \^sr\(0)
    );
\timer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(23),
      Q => timer(23),
      R => \^sr\(0)
    );
\timer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(24),
      Q => timer(24),
      R => \^sr\(0)
    );
\timer_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[20]_i_2_n_0\,
      CO(3) => \timer_reg[24]_i_2_n_0\,
      CO(2) => \timer_reg[24]_i_2_n_1\,
      CO(1) => \timer_reg[24]_i_2_n_2\,
      CO(0) => \timer_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[24]_i_2_n_4\,
      O(2) => \timer_reg[24]_i_2_n_5\,
      O(1) => \timer_reg[24]_i_2_n_6\,
      O(0) => \timer_reg[24]_i_2_n_7\,
      S(3 downto 0) => timer(24 downto 21)
    );
\timer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(25),
      Q => timer(25),
      R => \^sr\(0)
    );
\timer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(26),
      Q => timer(26),
      R => \^sr\(0)
    );
\timer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(27),
      Q => timer(27),
      R => \^sr\(0)
    );
\timer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(28),
      Q => timer(28),
      R => \^sr\(0)
    );
\timer_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[24]_i_2_n_0\,
      CO(3) => \timer_reg[28]_i_2_n_0\,
      CO(2) => \timer_reg[28]_i_2_n_1\,
      CO(1) => \timer_reg[28]_i_2_n_2\,
      CO(0) => \timer_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[28]_i_2_n_4\,
      O(2) => \timer_reg[28]_i_2_n_5\,
      O(1) => \timer_reg[28]_i_2_n_6\,
      O(0) => \timer_reg[28]_i_2_n_7\,
      S(3 downto 0) => timer(28 downto 25)
    );
\timer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(29),
      Q => timer(29),
      R => \^sr\(0)
    );
\timer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(2),
      Q => timer(2),
      R => \^sr\(0)
    );
\timer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(30),
      Q => timer(30),
      R => \^sr\(0)
    );
\timer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(31),
      Q => timer(31),
      R => \^sr\(0)
    );
\timer_reg[31]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_timer_reg[31]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \timer_reg[31]_i_6_n_2\,
      CO(0) => \timer_reg[31]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_timer_reg[31]_i_6_O_UNCONNECTED\(3),
      O(2) => \timer_reg[31]_i_6_n_5\,
      O(1) => \timer_reg[31]_i_6_n_6\,
      O(0) => \timer_reg[31]_i_6_n_7\,
      S(3) => '0',
      S(2 downto 0) => timer(31 downto 29)
    );
\timer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(3),
      Q => timer(3),
      R => \^sr\(0)
    );
\timer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(4),
      Q => timer(4),
      R => \^sr\(0)
    );
\timer_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \timer_reg[4]_i_2_n_0\,
      CO(2) => \timer_reg[4]_i_2_n_1\,
      CO(1) => \timer_reg[4]_i_2_n_2\,
      CO(0) => \timer_reg[4]_i_2_n_3\,
      CYINIT => timer(0),
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[4]_i_2_n_4\,
      O(2) => \timer_reg[4]_i_2_n_5\,
      O(1) => \timer_reg[4]_i_2_n_6\,
      O(0) => \timer_reg[4]_i_2_n_7\,
      S(3 downto 0) => timer(4 downto 1)
    );
\timer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(5),
      Q => timer(5),
      R => \^sr\(0)
    );
\timer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(6),
      Q => timer(6),
      R => \^sr\(0)
    );
\timer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(7),
      Q => timer(7),
      R => \^sr\(0)
    );
\timer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(8),
      Q => timer(8),
      R => \^sr\(0)
    );
\timer_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[4]_i_2_n_0\,
      CO(3) => \timer_reg[8]_i_2_n_0\,
      CO(2) => \timer_reg[8]_i_2_n_1\,
      CO(1) => \timer_reg[8]_i_2_n_2\,
      CO(0) => \timer_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[8]_i_2_n_4\,
      O(2) => \timer_reg[8]_i_2_n_5\,
      O(1) => \timer_reg[8]_i_2_n_6\,
      O(0) => \timer_reg[8]_i_2_n_7\,
      S(3 downto 0) => timer(8 downto 5)
    );
\timer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => timer_0(9),
      Q => timer(9),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ugv_motorEncoder_1_0_direction is
  port (
    dir : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    chB : in STD_LOGIC;
    chA : in STD_LOGIC
  );
end ugv_motorEncoder_1_0_direction;

architecture STRUCTURE of ugv_motorEncoder_1_0_direction is
  signal \chA_delayed_reg_n_0_[0]\ : STD_LOGIC;
  signal \chB_delayed_reg_n_0_[0]\ : STD_LOGIC;
  signal \^dir\ : STD_LOGIC;
  signal dir_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
begin
  dir <= \^dir\;
\chA_delayed_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => chA,
      Q => \chA_delayed_reg_n_0_[0]\,
      R => '0'
    );
\chA_delayed_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \chA_delayed_reg_n_0_[0]\,
      Q => p_1_in,
      R => '0'
    );
\chA_delayed_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in,
      Q => p_0_in,
      R => '0'
    );
\chB_delayed_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => chB,
      Q => \chB_delayed_reg_n_0_[0]\,
      R => '0'
    );
\chB_delayed_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \chB_delayed_reg_n_0_[0]\,
      Q => p_2_in,
      R => '0'
    );
\chB_delayed_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_2_in,
      Q => p_3_in,
      R => '0'
    );
dir_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE7D2814"
    )
        port map (
      I0 => p_2_in,
      I1 => p_1_in,
      I2 => p_3_in,
      I3 => p_0_in,
      I4 => \^dir\,
      O => dir_i_1_n_0
    );
dir_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => dir_i_1_n_0,
      Q => \^dir\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ugv_motorEncoder_1_0_motorEncoder_v1_0_S00_AXI is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    chB : in STD_LOGIC;
    chA : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end ugv_motorEncoder_1_0_motorEncoder_v1_0_S00_AXI;

architecture STRUCTURE of ugv_motorEncoder_1_0_motorEncoder_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal dir : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal qei_i_n_0 : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg3[31]_i_2\ : label is "soft_lutpair3";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => qei_i_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => qei_i_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => qei_i_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => qei_i_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => qei_i_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => qei_i_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => qei_i_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => qei_i_n_0
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => qei_i_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => qei_i_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => qei_i_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => qei_i_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => qei_i_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => qei_i_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => qei_i_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => qei_i_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => qei_i_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => qei_i_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => qei_i_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => qei_i_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => qei_i_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => qei_i_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => qei_i_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => qei_i_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => qei_i_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => qei_i_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => qei_i_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => qei_i_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => qei_i_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => qei_i_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => qei_i_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => qei_i_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => qei_i_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => qei_i_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => qei_i_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => qei_i_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => qei_i_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => qei_i_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => qei_i_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => qei_i_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => qei_i_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => qei_i_n_0
    );
dir_i: entity work.ugv_motorEncoder_1_0_direction
     port map (
      chA => chA,
      chB => chB,
      dir => dir,
      s00_axi_aclk => s00_axi_aclk
    );
qei_i: entity work.ugv_motorEncoder_1_0_QEI
     port map (
      D(31 downto 0) => reg_data_out(31 downto 0),
      Q(31 downto 0) => slv_reg3(31 downto 0),
      SR(0) => qei_i_n_0,
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      chA => chA,
      chB => chB,
      dir => dir,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => qei_i_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => qei_i_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => qei_i_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => qei_i_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => qei_i_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => qei_i_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => qei_i_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => qei_i_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => qei_i_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => qei_i_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => qei_i_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => qei_i_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => qei_i_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => qei_i_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => qei_i_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => qei_i_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => qei_i_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => qei_i_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => qei_i_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => qei_i_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => qei_i_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => qei_i_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => qei_i_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => qei_i_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => qei_i_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => qei_i_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => qei_i_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => qei_i_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => qei_i_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => qei_i_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => qei_i_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => qei_i_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ugv_motorEncoder_1_0_motorEncoder_v1_0 is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    chB : in STD_LOGIC;
    chA : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end ugv_motorEncoder_1_0_motorEncoder_v1_0;

architecture STRUCTURE of ugv_motorEncoder_1_0_motorEncoder_v1_0 is
begin
motorEncoder_v1_0_S00_AXI_inst: entity work.ugv_motorEncoder_1_0_motorEncoder_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      chA => chA,
      chB => chB,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ugv_motorEncoder_1_0 is
  port (
    chA : in STD_LOGIC;
    chB : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ugv_motorEncoder_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ugv_motorEncoder_1_0 : entity is "ugv_motorEncoder_0_1,motorEncoder_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ugv_motorEncoder_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ugv_motorEncoder_1_0 : entity is "motorEncoder_v1_0,Vivado 2019.1";
end ugv_motorEncoder_1_0;

architecture STRUCTURE of ugv_motorEncoder_1_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ugv_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN ugv_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.ugv_motorEncoder_1_0_motorEncoder_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      chA => chA,
      chB => chB,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
