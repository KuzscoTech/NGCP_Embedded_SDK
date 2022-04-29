-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Apr 28 19:20:09 2022
-- Host        : LAPTOP-6D15CRP5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ugv_motorPWM_0_1_sim_netlist.vhdl
-- Design      : ugv_motorPWM_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwmGen is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \ma_r_reg[0]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[16]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \axi_rdata_reg[16]_0\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    slv_reg3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwmGen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwmGen is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cnt0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \cnt0_carry__2_n_3\ : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal \cnt1_carry__0_i_1_n_3\ : STD_LOGIC;
  signal \cnt1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt1_carry__0_n_0\ : STD_LOGIC;
  signal \cnt1_carry__0_n_1\ : STD_LOGIC;
  signal \cnt1_carry__0_n_2\ : STD_LOGIC;
  signal \cnt1_carry__0_n_3\ : STD_LOGIC;
  signal \cnt1_carry__1_n_1\ : STD_LOGIC;
  signal \cnt1_carry__1_n_2\ : STD_LOGIC;
  signal \cnt1_carry__1_n_3\ : STD_LOGIC;
  signal cnt1_carry_i_1_n_0 : STD_LOGIC;
  signal cnt1_carry_i_2_n_0 : STD_LOGIC;
  signal cnt1_carry_i_3_n_0 : STD_LOGIC;
  signal cnt1_carry_i_4_n_0 : STD_LOGIC;
  signal cnt1_carry_n_0 : STD_LOGIC;
  signal cnt1_carry_n_1 : STD_LOGIC;
  signal cnt1_carry_n_2 : STD_LOGIC;
  signal cnt1_carry_n_3 : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \cnt1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal cnt2 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \cnt2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnt2_carry__0_n_0\ : STD_LOGIC;
  signal \cnt2_carry__0_n_1\ : STD_LOGIC;
  signal \cnt2_carry__0_n_2\ : STD_LOGIC;
  signal \cnt2_carry__0_n_3\ : STD_LOGIC;
  signal \cnt2_carry__0_n_4\ : STD_LOGIC;
  signal \cnt2_carry__0_n_5\ : STD_LOGIC;
  signal \cnt2_carry__0_n_6\ : STD_LOGIC;
  signal \cnt2_carry__0_n_7\ : STD_LOGIC;
  signal \cnt2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cnt2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cnt2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \cnt2_carry__1_n_0\ : STD_LOGIC;
  signal \cnt2_carry__1_n_1\ : STD_LOGIC;
  signal \cnt2_carry__1_n_2\ : STD_LOGIC;
  signal \cnt2_carry__1_n_3\ : STD_LOGIC;
  signal \cnt2_carry__1_n_4\ : STD_LOGIC;
  signal \cnt2_carry__1_n_5\ : STD_LOGIC;
  signal \cnt2_carry__1_n_6\ : STD_LOGIC;
  signal \cnt2_carry__1_n_7\ : STD_LOGIC;
  signal \cnt2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \cnt2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \cnt2_carry__2_n_0\ : STD_LOGIC;
  signal \cnt2_carry__2_n_2\ : STD_LOGIC;
  signal \cnt2_carry__2_n_3\ : STD_LOGIC;
  signal \cnt2_carry__2_n_5\ : STD_LOGIC;
  signal \cnt2_carry__2_n_6\ : STD_LOGIC;
  signal \cnt2_carry__2_n_7\ : STD_LOGIC;
  signal cnt2_carry_i_1_n_0 : STD_LOGIC;
  signal cnt2_carry_i_2_n_0 : STD_LOGIC;
  signal cnt2_carry_i_3_n_0 : STD_LOGIC;
  signal cnt2_carry_i_4_n_0 : STD_LOGIC;
  signal cnt2_carry_n_0 : STD_LOGIC;
  signal cnt2_carry_n_1 : STD_LOGIC;
  signal cnt2_carry_n_2 : STD_LOGIC;
  signal cnt2_carry_n_3 : STD_LOGIC;
  signal cnt2_carry_n_4 : STD_LOGIC;
  signal cnt2_carry_n_5 : STD_LOGIC;
  signal cnt2_carry_n_6 : STD_LOGIC;
  signal cnt2_carry_n_7 : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \cnt2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal cntReg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal cntReg0 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \cntReg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[10]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[11]_i_10_n_0\ : STD_LOGIC;
  signal \cntReg[11]_i_11_n_0\ : STD_LOGIC;
  signal \cntReg[11]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[11]_i_4_n_0\ : STD_LOGIC;
  signal \cntReg[11]_i_5_n_0\ : STD_LOGIC;
  signal \cntReg[11]_i_6_n_0\ : STD_LOGIC;
  signal \cntReg[11]_i_7_n_0\ : STD_LOGIC;
  signal \cntReg[11]_i_8_n_0\ : STD_LOGIC;
  signal \cntReg[11]_i_9_n_0\ : STD_LOGIC;
  signal \cntReg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[13]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[14]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[15]_i_10_n_0\ : STD_LOGIC;
  signal \cntReg[15]_i_11_n_0\ : STD_LOGIC;
  signal \cntReg[15]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[15]_i_4_n_0\ : STD_LOGIC;
  signal \cntReg[15]_i_5_n_0\ : STD_LOGIC;
  signal \cntReg[15]_i_6_n_0\ : STD_LOGIC;
  signal \cntReg[15]_i_7_n_0\ : STD_LOGIC;
  signal \cntReg[15]_i_8_n_0\ : STD_LOGIC;
  signal \cntReg[15]_i_9_n_0\ : STD_LOGIC;
  signal \cntReg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[16]_i_5_n_0\ : STD_LOGIC;
  signal \cntReg[16]_i_6_n_0\ : STD_LOGIC;
  signal \cntReg[1]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[2]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[3]_i_10_n_0\ : STD_LOGIC;
  signal \cntReg[3]_i_11_n_0\ : STD_LOGIC;
  signal \cntReg[3]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[3]_i_8_n_0\ : STD_LOGIC;
  signal \cntReg[3]_i_9_n_0\ : STD_LOGIC;
  signal \cntReg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[5]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[6]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[7]_i_10_n_0\ : STD_LOGIC;
  signal \cntReg[7]_i_11_n_0\ : STD_LOGIC;
  signal \cntReg[7]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[7]_i_4_n_0\ : STD_LOGIC;
  signal \cntReg[7]_i_5_n_0\ : STD_LOGIC;
  signal \cntReg[7]_i_6_n_0\ : STD_LOGIC;
  signal \cntReg[7]_i_7_n_0\ : STD_LOGIC;
  signal \cntReg[7]_i_8_n_0\ : STD_LOGIC;
  signal \cntReg[7]_i_9_n_0\ : STD_LOGIC;
  signal \cntReg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg[9]_i_1_n_0\ : STD_LOGIC;
  signal \cntReg_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \cntReg_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \cntReg_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \cntReg_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \cntReg_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \cntReg_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \cntReg_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \cntReg_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \cntReg_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \cntReg_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \cntReg_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \cntReg_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \cntReg_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \cntReg_reg[15]_i_3_n_1\ : STD_LOGIC;
  signal \cntReg_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \cntReg_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \cntReg_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \cntReg_reg[3]_i_3_n_1\ : STD_LOGIC;
  signal \cntReg_reg[3]_i_3_n_2\ : STD_LOGIC;
  signal \cntReg_reg[3]_i_3_n_3\ : STD_LOGIC;
  signal \cntReg_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \cntReg_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \cntReg_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \cntReg_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \cntReg_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \cntReg_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \cntReg_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \cntReg_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal cnt_r : STD_LOGIC_VECTOR ( 16 downto 4 );
  signal cnt_r2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cnt_r2__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_n_4\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_n_5\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_n_6\ : STD_LOGIC;
  signal \cnt_r2__0_carry__0_n_7\ : STD_LOGIC;
  signal \cnt_r2__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt_r2__0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt_r2__0_carry__1_n_6\ : STD_LOGIC;
  signal \cnt_r2__0_carry__1_n_7\ : STD_LOGIC;
  signal \cnt_r2__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry_n_0\ : STD_LOGIC;
  signal \cnt_r2__0_carry_n_1\ : STD_LOGIC;
  signal \cnt_r2__0_carry_n_2\ : STD_LOGIC;
  signal \cnt_r2__0_carry_n_3\ : STD_LOGIC;
  signal \cnt_r2__0_carry_n_4\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_n_1\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_n_2\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_n_3\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_n_4\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_n_5\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_n_6\ : STD_LOGIC;
  signal \cnt_r2__30_carry__0_n_7\ : STD_LOGIC;
  signal \cnt_r2__30_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry__1_n_1\ : STD_LOGIC;
  signal \cnt_r2__30_carry__1_n_3\ : STD_LOGIC;
  signal \cnt_r2__30_carry__1_n_6\ : STD_LOGIC;
  signal \cnt_r2__30_carry__1_n_7\ : STD_LOGIC;
  signal \cnt_r2__30_carry_i_1_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry_i_2_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry_i_3_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry_i_4_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry_i_5_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry_i_6_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry_i_7_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry_i_8_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry_n_0\ : STD_LOGIC;
  signal \cnt_r2__30_carry_n_1\ : STD_LOGIC;
  signal \cnt_r2__30_carry_n_2\ : STD_LOGIC;
  signal \cnt_r2__30_carry_n_3\ : STD_LOGIC;
  signal \cnt_r2__30_carry_n_4\ : STD_LOGIC;
  signal \cnt_r2__30_carry_n_5\ : STD_LOGIC;
  signal \cnt_r2__30_carry_n_6\ : STD_LOGIC;
  signal \cnt_r2__30_carry_n_7\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_n_1\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_n_2\ : STD_LOGIC;
  signal \cnt_r2__60_carry__0_n_3\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_n_1\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_n_2\ : STD_LOGIC;
  signal \cnt_r2__60_carry__1_n_3\ : STD_LOGIC;
  signal \cnt_r2__60_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry_i_1_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry_i_2_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry_i_3_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry_i_4_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry_n_0\ : STD_LOGIC;
  signal \cnt_r2__60_carry_n_1\ : STD_LOGIC;
  signal \cnt_r2__60_carry_n_2\ : STD_LOGIC;
  signal \cnt_r2__60_carry_n_3\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \ma_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \ma_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \ma_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \ma_r_reg_n_0_[1]\ : STD_LOGIC;
  signal pulse_out : STD_LOGIC;
  signal pulse_out_i_1_n_0 : STD_LOGIC;
  signal \pwm_en__6\ : STD_LOGIC;
  signal \NLW_cnt0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_cnt1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt1_carry__0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cnt1_carry__0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt1_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_cnt2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cntReg_reg[16]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cntReg_reg[16]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cntReg_reg[16]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cntReg_reg[16]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_r2__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cnt_r2__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_r2__30_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cnt_r2__30_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_r2__60_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_cnt_r2__60_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_r2__60_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cnt_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cntReg[16]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_r2__0_carry__0_i_10\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_r2__0_carry__0_i_11\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_r2__0_carry__0_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_r2__0_carry__0_i_9\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_r2__0_carry_i_8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_r2__30_carry__0_i_10\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_r2__30_carry__0_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_r2__30_carry__0_i_12\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt_r2__30_carry__0_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt_r2__30_carry_i_8\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__0_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__0_i_11\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__0_i_12\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__0_i_13\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__0_i_14\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__0_i_15\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__0_i_16\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__0_i_17\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__0_i_18\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__0_i_19\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__0_i_9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__1_i_10\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__1_i_11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__1_i_12\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__1_i_13\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__1_i_14\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__1_i_15\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__1_i_16\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_r2__60_carry__1_i_9\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ma_r[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of pulse_out_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pwm_reg[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pwm_reg[1]_i_1\ : label is "soft_lutpair2";
begin
  SR(0) <= \^sr\(0);
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
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(0),
      I1 => Q(0),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(0),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(0),
      O => D(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(10),
      I1 => Q(10),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(10),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(10),
      O => D(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(11),
      I1 => Q(11),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(11),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(11),
      O => D(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(12),
      I1 => Q(12),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(12),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(12),
      O => D(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(13),
      I1 => Q(13),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(13),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(13),
      O => D(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(14),
      I1 => Q(14),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(14),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(14),
      O => D(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(15),
      I1 => Q(15),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(15),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(15),
      O => D(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(16),
      I1 => Q(16),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(16),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(16),
      O => D(16)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(1),
      I1 => Q(1),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(1),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(1),
      O => D(1)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(2),
      I1 => Q(2),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(2),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(2),
      O => D(2)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(3),
      I1 => Q(3),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(3),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(3),
      O => D(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(4),
      I1 => Q(4),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(4),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(4),
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(5),
      I1 => Q(5),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(5),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(5),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(6),
      I1 => Q(6),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(6),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(6),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(7),
      I1 => Q(7),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(7),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(7),
      O => D(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(8),
      I1 => Q(8),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(8),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(8),
      O => D(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cntReg(9),
      I1 => Q(9),
      I2 => axi_araddr(0),
      I3 => \axi_rdata_reg[16]\(9),
      I4 => axi_araddr(1),
      I5 => \axi_rdata_reg[16]_0\(9),
      O => D(9)
    );
cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt0_carry_n_0,
      CO(2) => cnt0_carry_n_1,
      CO(1) => cnt0_carry_n_2,
      CO(0) => cnt0_carry_n_3,
      CYINIT => cnt_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(4 downto 1),
      S(3 downto 0) => cnt_reg(4 downto 1)
    );
\cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt0_carry_n_0,
      CO(3) => \cnt0_carry__0_n_0\,
      CO(2) => \cnt0_carry__0_n_1\,
      CO(1) => \cnt0_carry__0_n_2\,
      CO(0) => \cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(8 downto 5),
      S(3 downto 0) => cnt_reg(8 downto 5)
    );
\cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__0_n_0\,
      CO(3) => \cnt0_carry__1_n_0\,
      CO(2) => \cnt0_carry__1_n_1\,
      CO(1) => \cnt0_carry__1_n_2\,
      CO(0) => \cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(12 downto 9),
      S(3 downto 0) => cnt_reg(12 downto 9)
    );
\cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__1_n_0\,
      CO(3) => \NLW_cnt0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \cnt0_carry__2_n_1\,
      CO(1) => \cnt0_carry__2_n_2\,
      CO(0) => \cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt0(16 downto 13),
      S(3 downto 0) => cnt_reg(16 downto 13)
    );
cnt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt1_carry_n_0,
      CO(2) => cnt1_carry_n_1,
      CO(1) => cnt1_carry_n_2,
      CO(0) => cnt1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_cnt1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cnt1_carry_i_1_n_0,
      S(2) => cnt1_carry_i_2_n_0,
      S(1) => cnt1_carry_i_3_n_0,
      S(0) => cnt1_carry_i_4_n_0
    );
\cnt1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt1_carry_n_0,
      CO(3) => \cnt1_carry__0_n_0\,
      CO(2) => \cnt1_carry__0_n_1\,
      CO(1) => \cnt1_carry__0_n_2\,
      CO(0) => \cnt1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt1_carry__0_i_1_n_3\,
      S(2) => \cnt1_carry__0_i_1_n_3\,
      S(1) => \cnt1_carry__0_i_2_n_0\,
      S(0) => \cnt1_carry__0_i_3_n_0\
    );
\cnt1_carry__0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt2_inferred__0/i__carry__2_n_0\,
      CO(3 downto 1) => \NLW_cnt1_carry__0_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \cnt1_carry__0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt1_carry__0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\cnt1_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000090"
    )
        port map (
      I0 => cnt_reg(15),
      I1 => cnt2(15),
      I2 => \cnt1_carry__0_i_1_n_3\,
      I3 => cnt2(16),
      I4 => cnt_reg(16),
      O => \cnt1_carry__0_i_2_n_0\
    );
\cnt1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_reg(12),
      I1 => cnt2(12),
      I2 => cnt2(14),
      I3 => cnt_reg(14),
      I4 => cnt2(13),
      I5 => cnt_reg(13),
      O => \cnt1_carry__0_i_3_n_0\
    );
\cnt1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_carry__0_n_0\,
      CO(3) => \NLW_cnt1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \cnt1_carry__1_n_1\,
      CO(1) => \cnt1_carry__1_n_2\,
      CO(0) => \cnt1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \cnt1_carry__0_i_1_n_3\,
      S(1) => \cnt1_carry__0_i_1_n_3\,
      S(0) => \cnt1_carry__0_i_1_n_3\
    );
cnt1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_reg(9),
      I1 => cnt2(9),
      I2 => cnt2(11),
      I3 => cnt_reg(11),
      I4 => cnt2(10),
      I5 => cnt_reg(10),
      O => cnt1_carry_i_1_n_0
    );
cnt1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => cnt2(6),
      I2 => cnt2(8),
      I3 => cnt_reg(8),
      I4 => cnt2(7),
      I5 => cnt_reg(7),
      O => cnt1_carry_i_2_n_0
    );
cnt1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => cnt2(3),
      I2 => cnt2(5),
      I3 => cnt_reg(5),
      I4 => cnt2(4),
      I5 => cnt_reg(4),
      O => cnt1_carry_i_3_n_0
    );
cnt1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cntReg(0),
      I2 => cnt2(2),
      I3 => cnt_reg(2),
      I4 => cnt2(1),
      I5 => cnt_reg(1),
      O => cnt1_carry_i_4_n_0
    );
\cnt1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt1_inferred__0/i__carry_n_0\,
      CO(2) => \cnt1_inferred__0/i__carry_n_1\,
      CO(1) => \cnt1_inferred__0/i__carry_n_2\,
      CO(0) => \cnt1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_cnt1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\cnt1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_inferred__0/i__carry_n_0\,
      CO(3) => \cnt1_inferred__0/i__carry__0_n_0\,
      CO(2) => \cnt1_inferred__0/i__carry__0_n_1\,
      CO(1) => \cnt1_inferred__0/i__carry__0_n_2\,
      CO(0) => \cnt1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1__0_n_0\,
      DI(2) => \i__carry__0_i_2__0_n_0\,
      DI(1) => \i__carry__0_i_3__0_n_0\,
      DI(0) => \i__carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW_cnt1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\cnt1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_inferred__0/i__carry__0_n_0\,
      CO(3) => \cnt1_inferred__0/i__carry__1_n_0\,
      CO(2) => \cnt1_inferred__0/i__carry__1_n_1\,
      CO(1) => \cnt1_inferred__0/i__carry__1_n_2\,
      CO(0) => \cnt1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry__1_i_1__0_n_0\,
      O(3 downto 0) => \NLW_cnt1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt2_carry__2_n_0\,
      S(2) => \cnt2_carry__2_n_0\,
      S(1) => \cnt2_carry__2_n_0\,
      S(0) => \i__carry__1_i_2__0_n_0\
    );
\cnt1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt1_inferred__0/i__carry__1_n_0\,
      CO(3) => \cnt1_inferred__0/i__carry__2_n_0\,
      CO(2) => \cnt1_inferred__0/i__carry__2_n_1\,
      CO(1) => \cnt1_inferred__0/i__carry__2_n_2\,
      CO(0) => \cnt1_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt1_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt2_carry__2_n_0\,
      S(2) => \cnt2_carry__2_n_0\,
      S(1) => \cnt2_carry__2_n_0\,
      S(0) => \cnt2_carry__2_n_0\
    );
cnt2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt2_carry_n_0,
      CO(2) => cnt2_carry_n_1,
      CO(1) => cnt2_carry_n_2,
      CO(0) => cnt2_carry_n_3,
      CYINIT => Q(16),
      DI(3 downto 0) => Q(20 downto 17),
      O(3) => cnt2_carry_n_4,
      O(2) => cnt2_carry_n_5,
      O(1) => cnt2_carry_n_6,
      O(0) => cnt2_carry_n_7,
      S(3) => cnt2_carry_i_1_n_0,
      S(2) => cnt2_carry_i_2_n_0,
      S(1) => cnt2_carry_i_3_n_0,
      S(0) => cnt2_carry_i_4_n_0
    );
\cnt2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt2_carry_n_0,
      CO(3) => \cnt2_carry__0_n_0\,
      CO(2) => \cnt2_carry__0_n_1\,
      CO(1) => \cnt2_carry__0_n_2\,
      CO(0) => \cnt2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(24 downto 21),
      O(3) => \cnt2_carry__0_n_4\,
      O(2) => \cnt2_carry__0_n_5\,
      O(1) => \cnt2_carry__0_n_6\,
      O(0) => \cnt2_carry__0_n_7\,
      S(3) => \cnt2_carry__0_i_1_n_0\,
      S(2) => \cnt2_carry__0_i_2_n_0\,
      S(1) => \cnt2_carry__0_i_3_n_0\,
      S(0) => \cnt2_carry__0_i_4_n_0\
    );
\cnt2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(24),
      O => \cnt2_carry__0_i_1_n_0\
    );
\cnt2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(23),
      O => \cnt2_carry__0_i_2_n_0\
    );
\cnt2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(22),
      O => \cnt2_carry__0_i_3_n_0\
    );
\cnt2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(21),
      O => \cnt2_carry__0_i_4_n_0\
    );
\cnt2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt2_carry__0_n_0\,
      CO(3) => \cnt2_carry__1_n_0\,
      CO(2) => \cnt2_carry__1_n_1\,
      CO(1) => \cnt2_carry__1_n_2\,
      CO(0) => \cnt2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(28 downto 25),
      O(3) => \cnt2_carry__1_n_4\,
      O(2) => \cnt2_carry__1_n_5\,
      O(1) => \cnt2_carry__1_n_6\,
      O(0) => \cnt2_carry__1_n_7\,
      S(3) => \cnt2_carry__1_i_1_n_0\,
      S(2) => \cnt2_carry__1_i_2_n_0\,
      S(1) => \cnt2_carry__1_i_3_n_0\,
      S(0) => \cnt2_carry__1_i_4_n_0\
    );
\cnt2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(28),
      O => \cnt2_carry__1_i_1_n_0\
    );
\cnt2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(27),
      O => \cnt2_carry__1_i_2_n_0\
    );
\cnt2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(26),
      O => \cnt2_carry__1_i_3_n_0\
    );
\cnt2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(25),
      O => \cnt2_carry__1_i_4_n_0\
    );
\cnt2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt2_carry__1_n_0\,
      CO(3) => \cnt2_carry__2_n_0\,
      CO(2) => \NLW_cnt2_carry__2_CO_UNCONNECTED\(2),
      CO(1) => \cnt2_carry__2_n_2\,
      CO(0) => \cnt2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Q(31 downto 29),
      O(3) => \NLW_cnt2_carry__2_O_UNCONNECTED\(3),
      O(2) => \cnt2_carry__2_n_5\,
      O(1) => \cnt2_carry__2_n_6\,
      O(0) => \cnt2_carry__2_n_7\,
      S(3) => '1',
      S(2) => \cnt2_carry__2_i_1_n_0\,
      S(1) => \cnt2_carry__2_i_2_n_0\,
      S(0) => \cnt2_carry__2_i_3_n_0\
    );
\cnt2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(31),
      O => \cnt2_carry__2_i_1_n_0\
    );
\cnt2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(30),
      O => \cnt2_carry__2_i_2_n_0\
    );
\cnt2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(29),
      O => \cnt2_carry__2_i_3_n_0\
    );
cnt2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(20),
      O => cnt2_carry_i_1_n_0
    );
cnt2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(19),
      O => cnt2_carry_i_2_n_0
    );
cnt2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(18),
      O => cnt2_carry_i_3_n_0
    );
cnt2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(17),
      O => cnt2_carry_i_4_n_0
    );
\cnt2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt2_inferred__0/i__carry_n_0\,
      CO(2) => \cnt2_inferred__0/i__carry_n_1\,
      CO(1) => \cnt2_inferred__0/i__carry_n_2\,
      CO(0) => \cnt2_inferred__0/i__carry_n_3\,
      CYINIT => cntReg(0),
      DI(3 downto 0) => cntReg(4 downto 1),
      O(3 downto 0) => cnt2(4 downto 1),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\cnt2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt2_inferred__0/i__carry_n_0\,
      CO(3) => \cnt2_inferred__0/i__carry__0_n_0\,
      CO(2) => \cnt2_inferred__0/i__carry__0_n_1\,
      CO(1) => \cnt2_inferred__0/i__carry__0_n_2\,
      CO(0) => \cnt2_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cntReg(8 downto 5),
      O(3 downto 0) => cnt2(8 downto 5),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\cnt2_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt2_inferred__0/i__carry__0_n_0\,
      CO(3) => \cnt2_inferred__0/i__carry__1_n_0\,
      CO(2) => \cnt2_inferred__0/i__carry__1_n_1\,
      CO(1) => \cnt2_inferred__0/i__carry__1_n_2\,
      CO(0) => \cnt2_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cntReg(12 downto 9),
      O(3 downto 0) => cnt2(12 downto 9),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\cnt2_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt2_inferred__0/i__carry__1_n_0\,
      CO(3) => \cnt2_inferred__0/i__carry__2_n_0\,
      CO(2) => \cnt2_inferred__0/i__carry__2_n_1\,
      CO(1) => \cnt2_inferred__0/i__carry__2_n_2\,
      CO(0) => \cnt2_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cntReg(16 downto 13),
      O(3 downto 0) => cnt2(16 downto 13),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\cntReg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(0),
      I3 => O(0),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(0),
      O => \cntReg[0]_i_1_n_0\
    );
\cntReg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(10),
      I3 => cnt_r(10),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(10),
      O => \cntReg[10]_i_1_n_0\
    );
\cntReg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(11),
      I3 => cnt_r(11),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(11),
      O => \cntReg[11]_i_1_n_0\
    );
\cntReg[11]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(25),
      I1 => cnt_r(9),
      O => \cntReg[11]_i_10_n_0\
    );
\cntReg[11]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(24),
      I1 => cnt_r(8),
      O => \cntReg[11]_i_11_n_0\
    );
\cntReg[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(11),
      I1 => \pwm_en__6\,
      I2 => cnt_r2(11),
      O => \cntReg[11]_i_4_n_0\
    );
\cntReg[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(10),
      I1 => \pwm_en__6\,
      I2 => cnt_r2(10),
      O => \cntReg[11]_i_5_n_0\
    );
\cntReg[11]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(9),
      I1 => \pwm_en__6\,
      I2 => cnt_r2(9),
      O => \cntReg[11]_i_6_n_0\
    );
\cntReg[11]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(8),
      I1 => \pwm_en__6\,
      I2 => cnt_r2(8),
      O => \cntReg[11]_i_7_n_0\
    );
\cntReg[11]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(27),
      I1 => cnt_r(11),
      O => \cntReg[11]_i_8_n_0\
    );
\cntReg[11]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(26),
      I1 => cnt_r(10),
      O => \cntReg[11]_i_9_n_0\
    );
\cntReg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(12),
      I3 => cnt_r(12),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(12),
      O => \cntReg[12]_i_1_n_0\
    );
\cntReg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(13),
      I3 => cnt_r(13),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(13),
      O => \cntReg[13]_i_1_n_0\
    );
\cntReg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(14),
      I3 => cnt_r(14),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(14),
      O => \cntReg[14]_i_1_n_0\
    );
\cntReg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(15),
      I3 => cnt_r(15),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(15),
      O => \cntReg[15]_i_1_n_0\
    );
\cntReg[15]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(29),
      I1 => cnt_r(13),
      O => \cntReg[15]_i_10_n_0\
    );
\cntReg[15]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(28),
      I1 => cnt_r(12),
      O => \cntReg[15]_i_11_n_0\
    );
\cntReg[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(15),
      I1 => \pwm_en__6\,
      I2 => cnt_r2(15),
      O => \cntReg[15]_i_4_n_0\
    );
\cntReg[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(14),
      I1 => \pwm_en__6\,
      I2 => cnt_r2(14),
      O => \cntReg[15]_i_5_n_0\
    );
\cntReg[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(13),
      I1 => \pwm_en__6\,
      I2 => cnt_r2(13),
      O => \cntReg[15]_i_6_n_0\
    );
\cntReg[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(12),
      I1 => \pwm_en__6\,
      I2 => cnt_r2(12),
      O => \cntReg[15]_i_7_n_0\
    );
\cntReg[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(31),
      I1 => cnt_r(15),
      O => \cntReg[15]_i_8_n_0\
    );
\cntReg[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(30),
      I1 => cnt_r(14),
      O => \cntReg[15]_i_9_n_0\
    );
\cntReg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => cntReg0(16),
      I3 => \axi_rdata_reg[16]_0\(8),
      I4 => cnt_r(16),
      O => \cntReg[16]_i_1_n_0\
    );
\cntReg[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(5),
      I1 => \axi_rdata_reg[16]_0\(4),
      I2 => \axi_rdata_reg[16]_0\(6),
      I3 => \axi_rdata_reg[16]_0\(7),
      I4 => \cntReg[16]_i_5_n_0\,
      O => \pwm_en__6\
    );
\cntReg[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(2),
      I1 => \axi_rdata_reg[16]_0\(3),
      I2 => \axi_rdata_reg[16]_0\(0),
      I3 => \axi_rdata_reg[16]_0\(1),
      O => \cntReg[16]_i_5_n_0\
    );
\cntReg[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_r(16),
      O => \cntReg[16]_i_6_n_0\
    );
\cntReg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(1),
      I3 => O(1),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(1),
      O => \cntReg[1]_i_1_n_0\
    );
\cntReg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(2),
      I3 => O(2),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(2),
      O => \cntReg[2]_i_1_n_0\
    );
\cntReg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(3),
      I3 => O(3),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(3),
      O => \cntReg[3]_i_1_n_0\
    );
\cntReg[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(17),
      I1 => O(1),
      O => \cntReg[3]_i_10_n_0\
    );
\cntReg[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(16),
      I1 => O(0),
      O => \cntReg[3]_i_11_n_0\
    );
\cntReg[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A99A"
    )
        port map (
      I0 => Q(3),
      I1 => \pwm_en__6\,
      I2 => \cnt_r2__0_carry_n_4\,
      I3 => \cnt_r2__30_carry_n_7\,
      O => S(3)
    );
\cntReg[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(2),
      I1 => \pwm_en__6\,
      I2 => cnt_r2(2),
      O => S(2)
    );
\cntReg[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(1),
      I1 => \pwm_en__6\,
      I2 => cnt_r2(1),
      O => S(1)
    );
\cntReg[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(0),
      I1 => \pwm_en__6\,
      I2 => cnt_r2(0),
      O => S(0)
    );
\cntReg[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(19),
      I1 => O(3),
      O => \cntReg[3]_i_8_n_0\
    );
\cntReg[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(18),
      I1 => O(2),
      O => \cntReg[3]_i_9_n_0\
    );
\cntReg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(4),
      I3 => cnt_r(4),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(4),
      O => \cntReg[4]_i_1_n_0\
    );
\cntReg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(5),
      I3 => cnt_r(5),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(5),
      O => \cntReg[5]_i_1_n_0\
    );
\cntReg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(6),
      I3 => cnt_r(6),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(6),
      O => \cntReg[6]_i_1_n_0\
    );
\cntReg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(7),
      I3 => cnt_r(7),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(7),
      O => \cntReg[7]_i_1_n_0\
    );
\cntReg[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(21),
      I1 => cnt_r(5),
      O => \cntReg[7]_i_10_n_0\
    );
\cntReg[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(20),
      I1 => cnt_r(4),
      O => \cntReg[7]_i_11_n_0\
    );
\cntReg[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(7),
      I1 => \pwm_en__6\,
      I2 => cnt_r2(7),
      O => \cntReg[7]_i_4_n_0\
    );
\cntReg[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(6),
      I1 => \pwm_en__6\,
      I2 => cnt_r2(6),
      O => \cntReg[7]_i_5_n_0\
    );
\cntReg[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(5),
      I1 => \pwm_en__6\,
      I2 => cnt_r2(5),
      O => \cntReg[7]_i_6_n_0\
    );
\cntReg[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(4),
      I1 => \pwm_en__6\,
      I2 => cnt_r2(4),
      O => \cntReg[7]_i_7_n_0\
    );
\cntReg[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(23),
      I1 => cnt_r(7),
      O => \cntReg[7]_i_8_n_0\
    );
\cntReg[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(22),
      I1 => cnt_r(6),
      O => \cntReg[7]_i_9_n_0\
    );
\cntReg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(8),
      I3 => cnt_r(8),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(8),
      O => \cntReg[8]_i_1_n_0\
    );
\cntReg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4B0F4F4F4B0B0B0"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => Q(9),
      I3 => cnt_r(9),
      I4 => \axi_rdata_reg[16]_0\(8),
      I5 => cntReg0(9),
      O => \cntReg[9]_i_1_n_0\
    );
\cntReg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[0]_i_1_n_0\,
      Q => cntReg(0)
    );
\cntReg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[10]_i_1_n_0\,
      Q => cntReg(10)
    );
\cntReg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[11]_i_1_n_0\,
      Q => cntReg(11)
    );
\cntReg_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntReg_reg[7]_i_2_n_0\,
      CO(3) => \cntReg_reg[11]_i_2_n_0\,
      CO(2) => \cntReg_reg[11]_i_2_n_1\,
      CO(1) => \cntReg_reg[11]_i_2_n_2\,
      CO(0) => \cntReg_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(11 downto 8),
      O(3 downto 0) => cnt_r(11 downto 8),
      S(3) => \cntReg[11]_i_4_n_0\,
      S(2) => \cntReg[11]_i_5_n_0\,
      S(1) => \cntReg[11]_i_6_n_0\,
      S(0) => \cntReg[11]_i_7_n_0\
    );
\cntReg_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntReg_reg[7]_i_3_n_0\,
      CO(3) => \cntReg_reg[11]_i_3_n_0\,
      CO(2) => \cntReg_reg[11]_i_3_n_1\,
      CO(1) => \cntReg_reg[11]_i_3_n_2\,
      CO(0) => \cntReg_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(27 downto 24),
      O(3 downto 0) => cntReg0(11 downto 8),
      S(3) => \cntReg[11]_i_8_n_0\,
      S(2) => \cntReg[11]_i_9_n_0\,
      S(1) => \cntReg[11]_i_10_n_0\,
      S(0) => \cntReg[11]_i_11_n_0\
    );
\cntReg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[12]_i_1_n_0\,
      Q => cntReg(12)
    );
\cntReg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[13]_i_1_n_0\,
      Q => cntReg(13)
    );
\cntReg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[14]_i_1_n_0\,
      Q => cntReg(14)
    );
\cntReg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[15]_i_1_n_0\,
      Q => cntReg(15)
    );
\cntReg_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntReg_reg[11]_i_2_n_0\,
      CO(3) => \cntReg_reg[15]_i_2_n_0\,
      CO(2) => \cntReg_reg[15]_i_2_n_1\,
      CO(1) => \cntReg_reg[15]_i_2_n_2\,
      CO(0) => \cntReg_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(15 downto 12),
      O(3 downto 0) => cnt_r(15 downto 12),
      S(3) => \cntReg[15]_i_4_n_0\,
      S(2) => \cntReg[15]_i_5_n_0\,
      S(1) => \cntReg[15]_i_6_n_0\,
      S(0) => \cntReg[15]_i_7_n_0\
    );
\cntReg_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntReg_reg[11]_i_3_n_0\,
      CO(3) => \cntReg_reg[15]_i_3_n_0\,
      CO(2) => \cntReg_reg[15]_i_3_n_1\,
      CO(1) => \cntReg_reg[15]_i_3_n_2\,
      CO(0) => \cntReg_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(31 downto 28),
      O(3 downto 0) => cntReg0(15 downto 12),
      S(3) => \cntReg[15]_i_8_n_0\,
      S(2) => \cntReg[15]_i_9_n_0\,
      S(1) => \cntReg[15]_i_10_n_0\,
      S(0) => \cntReg[15]_i_11_n_0\
    );
\cntReg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[16]_i_1_n_0\,
      Q => cntReg(16)
    );
\cntReg_reg[16]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntReg_reg[15]_i_3_n_0\,
      CO(3 downto 0) => \NLW_cntReg_reg[16]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_cntReg_reg[16]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => cntReg0(16),
      S(3 downto 1) => B"000",
      S(0) => \cntReg[16]_i_6_n_0\
    );
\cntReg_reg[16]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntReg_reg[15]_i_2_n_0\,
      CO(3 downto 1) => \NLW_cntReg_reg[16]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => cnt_r(16),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cntReg_reg[16]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\cntReg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[1]_i_1_n_0\,
      Q => cntReg(1)
    );
\cntReg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[2]_i_1_n_0\,
      Q => cntReg(2)
    );
\cntReg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[3]_i_1_n_0\,
      Q => cntReg(3)
    );
\cntReg_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cntReg_reg[3]_i_3_n_0\,
      CO(2) => \cntReg_reg[3]_i_3_n_1\,
      CO(1) => \cntReg_reg[3]_i_3_n_2\,
      CO(0) => \cntReg_reg[3]_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => Q(19 downto 16),
      O(3 downto 0) => cntReg0(3 downto 0),
      S(3) => \cntReg[3]_i_8_n_0\,
      S(2) => \cntReg[3]_i_9_n_0\,
      S(1) => \cntReg[3]_i_10_n_0\,
      S(0) => \cntReg[3]_i_11_n_0\
    );
\cntReg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[4]_i_1_n_0\,
      Q => cntReg(4)
    );
\cntReg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[5]_i_1_n_0\,
      Q => cntReg(5)
    );
\cntReg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[6]_i_1_n_0\,
      Q => cntReg(6)
    );
\cntReg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[7]_i_1_n_0\,
      Q => cntReg(7)
    );
\cntReg_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => CO(0),
      CO(3) => \cntReg_reg[7]_i_2_n_0\,
      CO(2) => \cntReg_reg[7]_i_2_n_1\,
      CO(1) => \cntReg_reg[7]_i_2_n_2\,
      CO(0) => \cntReg_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => cnt_r(7 downto 4),
      S(3) => \cntReg[7]_i_4_n_0\,
      S(2) => \cntReg[7]_i_5_n_0\,
      S(1) => \cntReg[7]_i_6_n_0\,
      S(0) => \cntReg[7]_i_7_n_0\
    );
\cntReg_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cntReg_reg[3]_i_3_n_0\,
      CO(3) => \cntReg_reg[7]_i_3_n_0\,
      CO(2) => \cntReg_reg[7]_i_3_n_1\,
      CO(1) => \cntReg_reg[7]_i_3_n_2\,
      CO(0) => \cntReg_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(23 downto 20),
      O(3 downto 0) => cntReg0(7 downto 4),
      S(3) => \cntReg[7]_i_8_n_0\,
      S(2) => \cntReg[7]_i_9_n_0\,
      S(1) => \cntReg[7]_i_10_n_0\,
      S(0) => \cntReg[7]_i_11_n_0\
    );
\cntReg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[8]_i_1_n_0\,
      Q => cntReg(8)
    );
\cntReg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cntReg[9]_i_1_n_0\,
      Q => cntReg(9)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(3),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[0]_i_3_n_0\
    );
\cnt[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(2),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[0]_i_4_n_0\
    );
\cnt[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(1),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[0]_i_5_n_0\
    );
\cnt[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => \cnt1_inferred__0/i__carry__2_n_0\,
      I1 => cnt_reg(0),
      I2 => \cnt1_carry__1_n_1\,
      O => \cnt[0]_i_6_n_0\
    );
\cnt[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(15),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(15),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[12]_i_2_n_0\
    );
\cnt[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(14),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(14),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[12]_i_3_n_0\
    );
\cnt[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(13),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(13),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[12]_i_4_n_0\
    );
\cnt[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(12),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(12),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[12]_i_5_n_0\
    );
\cnt[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(16),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(16),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[16]_i_2_n_0\
    );
\cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(7),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(7),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[4]_i_2_n_0\
    );
\cnt[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(6),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[4]_i_3_n_0\
    );
\cnt[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(5),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(5),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[4]_i_4_n_0\
    );
\cnt[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(4),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[4]_i_5_n_0\
    );
\cnt[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(11),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(11),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[8]_i_2_n_0\
    );
\cnt[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(10),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(10),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[8]_i_3_n_0\
    );
\cnt[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(9),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(9),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[8]_i_4_n_0\
    );
\cnt[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => cnt_reg(8),
      I1 => \cnt1_carry__1_n_1\,
      I2 => cnt0(8),
      I3 => \cnt1_inferred__0/i__carry__2_n_0\,
      O => \cnt[8]_i_5_n_0\
    );
\cnt_r2__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_r2__0_carry_n_0\,
      CO(2) => \cnt_r2__0_carry_n_1\,
      CO(1) => \cnt_r2__0_carry_n_2\,
      CO(0) => \cnt_r2__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_r2__0_carry_i_1_n_0\,
      DI(2) => \cnt_r2__0_carry_i_2_n_0\,
      DI(1) => \cnt_r2__0_carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \cnt_r2__0_carry_n_4\,
      O(2 downto 0) => cnt_r2(2 downto 0),
      S(3) => \cnt_r2__0_carry_i_4_n_0\,
      S(2) => \cnt_r2__0_carry_i_5_n_0\,
      S(1) => \cnt_r2__0_carry_i_6_n_0\,
      S(0) => \cnt_r2__0_carry_i_7_n_0\
    );
\cnt_r2__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_r2__0_carry_n_0\,
      CO(3) => \cnt_r2__0_carry__0_n_0\,
      CO(2) => \cnt_r2__0_carry__0_n_1\,
      CO(1) => \cnt_r2__0_carry__0_n_2\,
      CO(0) => \cnt_r2__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_r2__0_carry__0_i_1_n_0\,
      DI(2) => \cnt_r2__0_carry__0_i_2_n_0\,
      DI(1) => \cnt_r2__0_carry__0_i_3_n_0\,
      DI(0) => \cnt_r2__0_carry__0_i_4_n_0\,
      O(3) => \cnt_r2__0_carry__0_n_4\,
      O(2) => \cnt_r2__0_carry__0_n_5\,
      O(1) => \cnt_r2__0_carry__0_n_6\,
      O(0) => \cnt_r2__0_carry__0_n_7\,
      S(3) => \cnt_r2__0_carry__0_i_5_n_0\,
      S(2) => \cnt_r2__0_carry__0_i_6_n_0\,
      S(1) => \cnt_r2__0_carry__0_i_7_n_0\,
      S(0) => \cnt_r2__0_carry__0_i_8_n_0\
    );
\cnt_r2__0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(2),
      I1 => \axi_rdata_reg[16]\(4),
      I2 => \axi_rdata_reg[16]_0\(1),
      I3 => \axi_rdata_reg[16]\(5),
      I4 => \axi_rdata_reg[16]_0\(0),
      I5 => \axi_rdata_reg[16]\(6),
      O => \cnt_r2__0_carry__0_i_1_n_0\
    );
\cnt_r2__0_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(4),
      I1 => \axi_rdata_reg[16]_0\(2),
      O => \cnt_r2__0_carry__0_i_10_n_0\
    );
\cnt_r2__0_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(3),
      I1 => \axi_rdata_reg[16]_0\(2),
      O => \cnt_r2__0_carry__0_i_11_n_0\
    );
\cnt_r2__0_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(2),
      I1 => \axi_rdata_reg[16]_0\(2),
      O => \cnt_r2__0_carry__0_i_12_n_0\
    );
\cnt_r2__0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(2),
      I1 => \axi_rdata_reg[16]\(3),
      I2 => \axi_rdata_reg[16]_0\(1),
      I3 => \axi_rdata_reg[16]\(4),
      I4 => \axi_rdata_reg[16]_0\(0),
      I5 => \axi_rdata_reg[16]\(5),
      O => \cnt_r2__0_carry__0_i_2_n_0\
    );
\cnt_r2__0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(2),
      I1 => \axi_rdata_reg[16]\(2),
      I2 => \axi_rdata_reg[16]_0\(1),
      I3 => \axi_rdata_reg[16]\(3),
      I4 => \axi_rdata_reg[16]_0\(0),
      I5 => \axi_rdata_reg[16]\(4),
      O => \cnt_r2__0_carry__0_i_3_n_0\
    );
\cnt_r2__0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(2),
      I1 => \axi_rdata_reg[16]\(1),
      I2 => \axi_rdata_reg[16]_0\(1),
      I3 => \axi_rdata_reg[16]\(2),
      I4 => \axi_rdata_reg[16]_0\(0),
      I5 => \axi_rdata_reg[16]\(3),
      O => \cnt_r2__0_carry__0_i_4_n_0\
    );
\cnt_r2__0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A956A956A95"
    )
        port map (
      I0 => \cnt_r2__0_carry__0_i_1_n_0\,
      I1 => \axi_rdata_reg[16]_0\(1),
      I2 => \axi_rdata_reg[16]\(6),
      I3 => \cnt_r2__0_carry__0_i_9_n_0\,
      I4 => \axi_rdata_reg[16]\(7),
      I5 => \axi_rdata_reg[16]_0\(0),
      O => \cnt_r2__0_carry__0_i_5_n_0\
    );
\cnt_r2__0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A956A956A95"
    )
        port map (
      I0 => \cnt_r2__0_carry__0_i_2_n_0\,
      I1 => \axi_rdata_reg[16]_0\(1),
      I2 => \axi_rdata_reg[16]\(5),
      I3 => \cnt_r2__0_carry__0_i_10_n_0\,
      I4 => \axi_rdata_reg[16]\(6),
      I5 => \axi_rdata_reg[16]_0\(0),
      O => \cnt_r2__0_carry__0_i_6_n_0\
    );
\cnt_r2__0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A956A956A95"
    )
        port map (
      I0 => \cnt_r2__0_carry__0_i_3_n_0\,
      I1 => \axi_rdata_reg[16]_0\(1),
      I2 => \axi_rdata_reg[16]\(4),
      I3 => \cnt_r2__0_carry__0_i_11_n_0\,
      I4 => \axi_rdata_reg[16]\(5),
      I5 => \axi_rdata_reg[16]_0\(0),
      O => \cnt_r2__0_carry__0_i_7_n_0\
    );
\cnt_r2__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A956A956A95"
    )
        port map (
      I0 => \cnt_r2__0_carry__0_i_4_n_0\,
      I1 => \axi_rdata_reg[16]_0\(1),
      I2 => \axi_rdata_reg[16]\(3),
      I3 => \cnt_r2__0_carry__0_i_12_n_0\,
      I4 => \axi_rdata_reg[16]\(4),
      I5 => \axi_rdata_reg[16]_0\(0),
      O => \cnt_r2__0_carry__0_i_8_n_0\
    );
\cnt_r2__0_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(5),
      I1 => \axi_rdata_reg[16]_0\(2),
      O => \cnt_r2__0_carry__0_i_9_n_0\
    );
\cnt_r2__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_r2__0_carry__0_n_0\,
      CO(3) => \NLW_cnt_r2__0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_r2__0_carry__1_n_1\,
      CO(1) => \NLW_cnt_r2__0_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \cnt_r2__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \cnt_r2__0_carry__1_i_1_n_0\,
      DI(0) => \cnt_r2__0_carry__1_i_2_n_0\,
      O(3 downto 2) => \NLW_cnt_r2__0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \cnt_r2__0_carry__1_n_6\,
      O(0) => \cnt_r2__0_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \cnt_r2__0_carry__1_i_3_n_0\,
      S(0) => \cnt_r2__0_carry__1_i_4_n_0\
    );
\cnt_r2__0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(2),
      I1 => \axi_rdata_reg[16]\(6),
      I2 => \axi_rdata_reg[16]_0\(1),
      I3 => \axi_rdata_reg[16]\(7),
      O => \cnt_r2__0_carry__1_i_1_n_0\
    );
\cnt_r2__0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(2),
      I1 => \axi_rdata_reg[16]\(5),
      I2 => \axi_rdata_reg[16]_0\(1),
      I3 => \axi_rdata_reg[16]\(6),
      I4 => \axi_rdata_reg[16]_0\(0),
      I5 => \axi_rdata_reg[16]\(7),
      O => \cnt_r2__0_carry__1_i_2_n_0\
    );
\cnt_r2__0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(1),
      I1 => \axi_rdata_reg[16]\(6),
      I2 => \axi_rdata_reg[16]_0\(2),
      I3 => \axi_rdata_reg[16]\(7),
      O => \cnt_r2__0_carry__1_i_3_n_0\
    );
\cnt_r2__0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E75F30007800F000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(0),
      I1 => \axi_rdata_reg[16]\(5),
      I2 => \axi_rdata_reg[16]\(6),
      I3 => \axi_rdata_reg[16]_0\(2),
      I4 => \axi_rdata_reg[16]\(7),
      I5 => \axi_rdata_reg[16]_0\(1),
      O => \cnt_r2__0_carry__1_i_4_n_0\
    );
\cnt_r2__0_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(1),
      I1 => \axi_rdata_reg[16]\(2),
      I2 => \axi_rdata_reg[16]_0\(2),
      I3 => \axi_rdata_reg[16]\(1),
      I4 => \axi_rdata_reg[16]\(3),
      I5 => \axi_rdata_reg[16]_0\(0),
      O => \cnt_r2__0_carry_i_1_n_0\
    );
\cnt_r2__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(1),
      I1 => \axi_rdata_reg[16]\(1),
      I2 => \axi_rdata_reg[16]_0\(2),
      I3 => \axi_rdata_reg[16]\(0),
      O => \cnt_r2__0_carry_i_2_n_0\
    );
\cnt_r2__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(0),
      I1 => \axi_rdata_reg[16]\(1),
      O => \cnt_r2__0_carry_i_3_n_0\
    );
\cnt_r2__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99C369C399339933"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(2),
      I1 => \cnt_r2__0_carry_i_8_n_0\,
      I2 => \axi_rdata_reg[16]\(1),
      I3 => \axi_rdata_reg[16]_0\(1),
      I4 => \axi_rdata_reg[16]\(0),
      I5 => \axi_rdata_reg[16]_0\(2),
      O => \cnt_r2__0_carry_i_4_n_0\
    );
\cnt_r2__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(0),
      I1 => \axi_rdata_reg[16]_0\(2),
      I2 => \axi_rdata_reg[16]\(1),
      I3 => \axi_rdata_reg[16]_0\(1),
      I4 => \axi_rdata_reg[16]_0\(0),
      I5 => \axi_rdata_reg[16]\(2),
      O => \cnt_r2__0_carry_i_5_n_0\
    );
\cnt_r2__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(0),
      I1 => \axi_rdata_reg[16]\(1),
      I2 => \axi_rdata_reg[16]_0\(1),
      I3 => \axi_rdata_reg[16]\(0),
      O => \cnt_r2__0_carry_i_6_n_0\
    );
\cnt_r2__0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(0),
      I1 => \axi_rdata_reg[16]_0\(0),
      O => \cnt_r2__0_carry_i_7_n_0\
    );
\cnt_r2__0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(3),
      I1 => \axi_rdata_reg[16]_0\(0),
      O => \cnt_r2__0_carry_i_8_n_0\
    );
\cnt_r2__30_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_r2__30_carry_n_0\,
      CO(2) => \cnt_r2__30_carry_n_1\,
      CO(1) => \cnt_r2__30_carry_n_2\,
      CO(0) => \cnt_r2__30_carry_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_r2__30_carry_i_1_n_0\,
      DI(2) => \cnt_r2__30_carry_i_2_n_0\,
      DI(1) => \cnt_r2__30_carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \cnt_r2__30_carry_n_4\,
      O(2) => \cnt_r2__30_carry_n_5\,
      O(1) => \cnt_r2__30_carry_n_6\,
      O(0) => \cnt_r2__30_carry_n_7\,
      S(3) => \cnt_r2__30_carry_i_4_n_0\,
      S(2) => \cnt_r2__30_carry_i_5_n_0\,
      S(1) => \cnt_r2__30_carry_i_6_n_0\,
      S(0) => \cnt_r2__30_carry_i_7_n_0\
    );
\cnt_r2__30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_r2__30_carry_n_0\,
      CO(3) => \cnt_r2__30_carry__0_n_0\,
      CO(2) => \cnt_r2__30_carry__0_n_1\,
      CO(1) => \cnt_r2__30_carry__0_n_2\,
      CO(0) => \cnt_r2__30_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_r2__30_carry__0_i_1_n_0\,
      DI(2) => \cnt_r2__30_carry__0_i_2_n_0\,
      DI(1) => \cnt_r2__30_carry__0_i_3_n_0\,
      DI(0) => \cnt_r2__30_carry__0_i_4_n_0\,
      O(3) => \cnt_r2__30_carry__0_n_4\,
      O(2) => \cnt_r2__30_carry__0_n_5\,
      O(1) => \cnt_r2__30_carry__0_n_6\,
      O(0) => \cnt_r2__30_carry__0_n_7\,
      S(3) => \cnt_r2__30_carry__0_i_5_n_0\,
      S(2) => \cnt_r2__30_carry__0_i_6_n_0\,
      S(1) => \cnt_r2__30_carry__0_i_7_n_0\,
      S(0) => \cnt_r2__30_carry__0_i_8_n_0\
    );
\cnt_r2__30_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(5),
      I1 => \axi_rdata_reg[16]\(4),
      I2 => \axi_rdata_reg[16]_0\(4),
      I3 => \axi_rdata_reg[16]\(5),
      I4 => \axi_rdata_reg[16]_0\(3),
      I5 => \axi_rdata_reg[16]\(6),
      O => \cnt_r2__30_carry__0_i_1_n_0\
    );
\cnt_r2__30_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(4),
      I1 => \axi_rdata_reg[16]_0\(5),
      O => \cnt_r2__30_carry__0_i_10_n_0\
    );
\cnt_r2__30_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(3),
      I1 => \axi_rdata_reg[16]_0\(5),
      O => \cnt_r2__30_carry__0_i_11_n_0\
    );
\cnt_r2__30_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(2),
      I1 => \axi_rdata_reg[16]_0\(5),
      O => \cnt_r2__30_carry__0_i_12_n_0\
    );
\cnt_r2__30_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(5),
      I1 => \axi_rdata_reg[16]\(3),
      I2 => \axi_rdata_reg[16]_0\(4),
      I3 => \axi_rdata_reg[16]\(4),
      I4 => \axi_rdata_reg[16]_0\(3),
      I5 => \axi_rdata_reg[16]\(5),
      O => \cnt_r2__30_carry__0_i_2_n_0\
    );
\cnt_r2__30_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(5),
      I1 => \axi_rdata_reg[16]\(2),
      I2 => \axi_rdata_reg[16]_0\(4),
      I3 => \axi_rdata_reg[16]\(3),
      I4 => \axi_rdata_reg[16]_0\(3),
      I5 => \axi_rdata_reg[16]\(4),
      O => \cnt_r2__30_carry__0_i_3_n_0\
    );
\cnt_r2__30_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(5),
      I1 => \axi_rdata_reg[16]\(1),
      I2 => \axi_rdata_reg[16]_0\(4),
      I3 => \axi_rdata_reg[16]\(2),
      I4 => \axi_rdata_reg[16]_0\(3),
      I5 => \axi_rdata_reg[16]\(3),
      O => \cnt_r2__30_carry__0_i_4_n_0\
    );
\cnt_r2__30_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A956A956A95"
    )
        port map (
      I0 => \cnt_r2__30_carry__0_i_1_n_0\,
      I1 => \axi_rdata_reg[16]_0\(4),
      I2 => \axi_rdata_reg[16]\(6),
      I3 => \cnt_r2__30_carry__0_i_9_n_0\,
      I4 => \axi_rdata_reg[16]\(7),
      I5 => \axi_rdata_reg[16]_0\(3),
      O => \cnt_r2__30_carry__0_i_5_n_0\
    );
\cnt_r2__30_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A956A956A95"
    )
        port map (
      I0 => \cnt_r2__30_carry__0_i_2_n_0\,
      I1 => \axi_rdata_reg[16]_0\(4),
      I2 => \axi_rdata_reg[16]\(5),
      I3 => \cnt_r2__30_carry__0_i_10_n_0\,
      I4 => \axi_rdata_reg[16]\(6),
      I5 => \axi_rdata_reg[16]_0\(3),
      O => \cnt_r2__30_carry__0_i_6_n_0\
    );
\cnt_r2__30_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A956A956A95"
    )
        port map (
      I0 => \cnt_r2__30_carry__0_i_3_n_0\,
      I1 => \axi_rdata_reg[16]_0\(4),
      I2 => \axi_rdata_reg[16]\(4),
      I3 => \cnt_r2__30_carry__0_i_11_n_0\,
      I4 => \axi_rdata_reg[16]\(5),
      I5 => \axi_rdata_reg[16]_0\(3),
      O => \cnt_r2__30_carry__0_i_7_n_0\
    );
\cnt_r2__30_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A956A956A95"
    )
        port map (
      I0 => \cnt_r2__30_carry__0_i_4_n_0\,
      I1 => \axi_rdata_reg[16]_0\(4),
      I2 => \axi_rdata_reg[16]\(3),
      I3 => \cnt_r2__30_carry__0_i_12_n_0\,
      I4 => \axi_rdata_reg[16]\(4),
      I5 => \axi_rdata_reg[16]_0\(3),
      O => \cnt_r2__30_carry__0_i_8_n_0\
    );
\cnt_r2__30_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(5),
      I1 => \axi_rdata_reg[16]_0\(5),
      O => \cnt_r2__30_carry__0_i_9_n_0\
    );
\cnt_r2__30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_r2__30_carry__0_n_0\,
      CO(3) => \NLW_cnt_r2__30_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_r2__30_carry__1_n_1\,
      CO(1) => \NLW_cnt_r2__30_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \cnt_r2__30_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \cnt_r2__30_carry__1_i_1_n_0\,
      DI(0) => \cnt_r2__30_carry__1_i_2_n_0\,
      O(3 downto 2) => \NLW_cnt_r2__30_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \cnt_r2__30_carry__1_n_6\,
      O(0) => \cnt_r2__30_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \cnt_r2__30_carry__1_i_3_n_0\,
      S(0) => \cnt_r2__30_carry__1_i_4_n_0\
    );
\cnt_r2__30_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(5),
      I1 => \axi_rdata_reg[16]\(6),
      I2 => \axi_rdata_reg[16]_0\(4),
      I3 => \axi_rdata_reg[16]\(7),
      O => \cnt_r2__30_carry__1_i_1_n_0\
    );
\cnt_r2__30_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(5),
      I1 => \axi_rdata_reg[16]\(5),
      I2 => \axi_rdata_reg[16]_0\(4),
      I3 => \axi_rdata_reg[16]\(6),
      I4 => \axi_rdata_reg[16]_0\(3),
      I5 => \axi_rdata_reg[16]\(7),
      O => \cnt_r2__30_carry__1_i_2_n_0\
    );
\cnt_r2__30_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(4),
      I1 => \axi_rdata_reg[16]\(6),
      I2 => \axi_rdata_reg[16]_0\(5),
      I3 => \axi_rdata_reg[16]\(7),
      O => \cnt_r2__30_carry__1_i_3_n_0\
    );
\cnt_r2__30_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E75F30007800F000"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(3),
      I1 => \axi_rdata_reg[16]\(5),
      I2 => \axi_rdata_reg[16]\(6),
      I3 => \axi_rdata_reg[16]_0\(5),
      I4 => \axi_rdata_reg[16]\(7),
      I5 => \axi_rdata_reg[16]_0\(4),
      O => \cnt_r2__30_carry__1_i_4_n_0\
    );
\cnt_r2__30_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(4),
      I1 => \axi_rdata_reg[16]\(2),
      I2 => \axi_rdata_reg[16]_0\(5),
      I3 => \axi_rdata_reg[16]\(1),
      I4 => \axi_rdata_reg[16]\(3),
      I5 => \axi_rdata_reg[16]_0\(3),
      O => \cnt_r2__30_carry_i_1_n_0\
    );
\cnt_r2__30_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(4),
      I1 => \axi_rdata_reg[16]\(1),
      I2 => \axi_rdata_reg[16]_0\(5),
      I3 => \axi_rdata_reg[16]\(0),
      O => \cnt_r2__30_carry_i_2_n_0\
    );
\cnt_r2__30_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(3),
      I1 => \axi_rdata_reg[16]\(1),
      O => \cnt_r2__30_carry_i_3_n_0\
    );
\cnt_r2__30_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99C369C399339933"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(2),
      I1 => \cnt_r2__30_carry_i_8_n_0\,
      I2 => \axi_rdata_reg[16]\(1),
      I3 => \axi_rdata_reg[16]_0\(4),
      I4 => \axi_rdata_reg[16]\(0),
      I5 => \axi_rdata_reg[16]_0\(5),
      O => \cnt_r2__30_carry_i_4_n_0\
    );
\cnt_r2__30_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(0),
      I1 => \axi_rdata_reg[16]_0\(5),
      I2 => \axi_rdata_reg[16]\(1),
      I3 => \axi_rdata_reg[16]_0\(4),
      I4 => \axi_rdata_reg[16]_0\(3),
      I5 => \axi_rdata_reg[16]\(2),
      O => \cnt_r2__30_carry_i_5_n_0\
    );
\cnt_r2__30_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(3),
      I1 => \axi_rdata_reg[16]\(1),
      I2 => \axi_rdata_reg[16]_0\(4),
      I3 => \axi_rdata_reg[16]\(0),
      O => \cnt_r2__30_carry_i_6_n_0\
    );
\cnt_r2__30_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(0),
      I1 => \axi_rdata_reg[16]_0\(3),
      O => \cnt_r2__30_carry_i_7_n_0\
    );
\cnt_r2__30_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(3),
      I1 => \axi_rdata_reg[16]_0\(3),
      O => \cnt_r2__30_carry_i_8_n_0\
    );
\cnt_r2__60_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_r2__60_carry_n_0\,
      CO(2) => \cnt_r2__60_carry_n_1\,
      CO(1) => \cnt_r2__60_carry_n_2\,
      CO(0) => \cnt_r2__60_carry_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_r2__60_carry_i_1_n_0\,
      DI(2) => \cnt_r2__0_carry__0_n_6\,
      DI(1) => \cnt_r2__0_carry__0_n_7\,
      DI(0) => \cnt_r2__0_carry_n_4\,
      O(3 downto 1) => cnt_r2(6 downto 4),
      O(0) => \NLW_cnt_r2__60_carry_O_UNCONNECTED\(0),
      S(3) => \cnt_r2__60_carry_i_2_n_0\,
      S(2) => \cnt_r2__60_carry_i_3_n_0\,
      S(1) => \cnt_r2__60_carry_i_4_n_0\,
      S(0) => cnt_r2(3)
    );
\cnt_r2__60_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_r2__60_carry_n_0\,
      CO(3) => \cnt_r2__60_carry__0_n_0\,
      CO(2) => \cnt_r2__60_carry__0_n_1\,
      CO(1) => \cnt_r2__60_carry__0_n_2\,
      CO(0) => \cnt_r2__60_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_r2__60_carry__0_i_1_n_0\,
      DI(2) => \cnt_r2__60_carry__0_i_2_n_0\,
      DI(1) => \cnt_r2__60_carry__0_i_3_n_0\,
      DI(0) => \cnt_r2__60_carry__0_i_4_n_0\,
      O(3 downto 0) => cnt_r2(10 downto 7),
      S(3) => \cnt_r2__60_carry__0_i_5_n_0\,
      S(2) => \cnt_r2__60_carry__0_i_6_n_0\,
      S(1) => \cnt_r2__60_carry__0_i_7_n_0\,
      S(0) => \cnt_r2__60_carry__0_i_8_n_0\
    );
\cnt_r2__60_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F08"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(6),
      I1 => \axi_rdata_reg[16]\(3),
      I2 => \cnt_r2__60_carry__0_i_9_n_0\,
      I3 => \cnt_r2__60_carry__0_i_10_n_0\,
      O => \cnt_r2__60_carry__0_i_1_n_0\
    );
\cnt_r2__60_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => \cnt_r2__30_carry__0_n_6\,
      I1 => \cnt_r2__0_carry__1_n_7\,
      I2 => \axi_rdata_reg[16]_0\(7),
      I3 => \axi_rdata_reg[16]\(1),
      O => \cnt_r2__60_carry__0_i_10_n_0\
    );
\cnt_r2__60_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(7),
      I1 => \axi_rdata_reg[16]\(1),
      I2 => \cnt_r2__30_carry__0_n_6\,
      I3 => \cnt_r2__0_carry__1_n_7\,
      O => \cnt_r2__60_carry__0_i_11_n_0\
    );
\cnt_r2__60_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(3),
      I1 => \axi_rdata_reg[16]_0\(6),
      O => \cnt_r2__60_carry__0_i_12_n_0\
    );
\cnt_r2__60_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(7),
      I1 => \axi_rdata_reg[16]\(3),
      I2 => \cnt_r2__30_carry__0_n_4\,
      I3 => \cnt_r2__0_carry__1_n_1\,
      O => \cnt_r2__60_carry__0_i_13_n_0\
    );
\cnt_r2__60_carry__0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(4),
      I1 => \axi_rdata_reg[16]_0\(6),
      O => \cnt_r2__60_carry__0_i_14_n_0\
    );
\cnt_r2__60_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => \cnt_r2__30_carry__0_n_5\,
      I1 => \cnt_r2__0_carry__1_n_6\,
      I2 => \axi_rdata_reg[16]_0\(7),
      I3 => \axi_rdata_reg[16]\(2),
      O => \cnt_r2__60_carry__0_i_15_n_0\
    );
\cnt_r2__60_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \cnt_r2__0_carry__0_n_5\,
      I1 => \cnt_r2__30_carry_n_4\,
      I2 => \axi_rdata_reg[16]_0\(6),
      I3 => \axi_rdata_reg[16]\(1),
      O => \cnt_r2__60_carry__0_i_16_n_0\
    );
\cnt_r2__60_carry__0_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(2),
      I1 => \axi_rdata_reg[16]_0\(6),
      O => \cnt_r2__60_carry__0_i_17_n_0\
    );
\cnt_r2__60_carry__0_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(0),
      I1 => \axi_rdata_reg[16]_0\(7),
      O => \cnt_r2__60_carry__0_i_18_n_0\
    );
\cnt_r2__60_carry__0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(7),
      I1 => \axi_rdata_reg[16]\(0),
      I2 => \cnt_r2__30_carry__0_n_7\,
      I3 => \cnt_r2__0_carry__0_n_4\,
      O => \cnt_r2__60_carry__0_i_19_n_0\
    );
\cnt_r2__60_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A08080808080808"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(6),
      I1 => \axi_rdata_reg[16]\(2),
      I2 => \cnt_r2__60_carry__0_i_11_n_0\,
      I3 => \axi_rdata_reg[16]\(1),
      I4 => \cnt_r2__30_carry_n_4\,
      I5 => \cnt_r2__0_carry__0_n_5\,
      O => \cnt_r2__60_carry__0_i_2_n_0\
    );
\cnt_r2__60_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5995959595959595"
    )
        port map (
      I0 => \cnt_r2__60_carry__0_i_11_n_0\,
      I1 => \axi_rdata_reg[16]_0\(6),
      I2 => \axi_rdata_reg[16]\(2),
      I3 => \cnt_r2__0_carry__0_n_5\,
      I4 => \cnt_r2__30_carry_n_4\,
      I5 => \axi_rdata_reg[16]\(1),
      O => \cnt_r2__60_carry__0_i_3_n_0\
    );
\cnt_r2__60_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \cnt_r2__0_carry__0_n_4\,
      I1 => \cnt_r2__30_carry__0_n_7\,
      I2 => \axi_rdata_reg[16]\(0),
      I3 => \axi_rdata_reg[16]_0\(7),
      O => \cnt_r2__60_carry__0_i_4_n_0\
    );
\cnt_r2__60_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \cnt_r2__60_carry__0_i_10_n_0\,
      I1 => \cnt_r2__60_carry__0_i_9_n_0\,
      I2 => \cnt_r2__60_carry__0_i_12_n_0\,
      I3 => \cnt_r2__60_carry__0_i_13_n_0\,
      I4 => \cnt_r2__60_carry__0_i_14_n_0\,
      I5 => \cnt_r2__60_carry__0_i_15_n_0\,
      O => \cnt_r2__60_carry__0_i_5_n_0\
    );
\cnt_r2__60_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \cnt_r2__60_carry__0_i_16_n_0\,
      I1 => \cnt_r2__60_carry__0_i_11_n_0\,
      I2 => \cnt_r2__60_carry__0_i_17_n_0\,
      I3 => \cnt_r2__60_carry__0_i_9_n_0\,
      I4 => \cnt_r2__60_carry__0_i_12_n_0\,
      I5 => \cnt_r2__60_carry__0_i_10_n_0\,
      O => \cnt_r2__60_carry__0_i_6_n_0\
    );
\cnt_r2__60_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969966996699696"
    )
        port map (
      I0 => \cnt_r2__60_carry__0_i_11_n_0\,
      I1 => \cnt_r2__60_carry__0_i_17_n_0\,
      I2 => \cnt_r2__60_carry__0_i_16_n_0\,
      I3 => \cnt_r2__60_carry__0_i_18_n_0\,
      I4 => \cnt_r2__0_carry__0_n_4\,
      I5 => \cnt_r2__30_carry__0_n_7\,
      O => \cnt_r2__60_carry__0_i_7_n_0\
    );
\cnt_r2__60_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A959595"
    )
        port map (
      I0 => \cnt_r2__60_carry__0_i_19_n_0\,
      I1 => \axi_rdata_reg[16]\(1),
      I2 => \axi_rdata_reg[16]_0\(6),
      I3 => \cnt_r2__30_carry_n_4\,
      I4 => \cnt_r2__0_carry__0_n_5\,
      O => \cnt_r2__60_carry__0_i_8_n_0\
    );
\cnt_r2__60_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(7),
      I1 => \axi_rdata_reg[16]\(2),
      I2 => \cnt_r2__30_carry__0_n_5\,
      I3 => \cnt_r2__0_carry__1_n_6\,
      O => \cnt_r2__60_carry__0_i_9_n_0\
    );
\cnt_r2__60_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_r2__60_carry__0_n_0\,
      CO(3) => \cnt_r2__60_carry__1_n_0\,
      CO(2) => \cnt_r2__60_carry__1_n_1\,
      CO(1) => \cnt_r2__60_carry__1_n_2\,
      CO(0) => \cnt_r2__60_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_r2__60_carry__1_i_1_n_0\,
      DI(2) => \cnt_r2__60_carry__1_i_2_n_0\,
      DI(1) => \cnt_r2__60_carry__1_i_3_n_0\,
      DI(0) => \cnt_r2__60_carry__1_i_4_n_0\,
      O(3 downto 0) => cnt_r2(14 downto 11),
      S(3) => \cnt_r2__60_carry__1_i_5_n_0\,
      S(2) => \cnt_r2__60_carry__1_i_6_n_0\,
      S(1) => \cnt_r2__60_carry__1_i_7_n_0\,
      S(0) => \cnt_r2__60_carry__1_i_8_n_0\
    );
\cnt_r2__60_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7D44144414441444"
    )
        port map (
      I0 => \cnt_r2__60_carry__1_i_9_n_0\,
      I1 => \cnt_r2__30_carry__1_n_1\,
      I2 => \axi_rdata_reg[16]\(6),
      I3 => \axi_rdata_reg[16]_0\(7),
      I4 => \cnt_r2__30_carry__1_n_6\,
      I5 => \axi_rdata_reg[16]\(5),
      O => \cnt_r2__60_carry__1_i_1_n_0\
    );
\cnt_r2__60_carry__1_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(6),
      I1 => \axi_rdata_reg[16]_0\(6),
      O => \cnt_r2__60_carry__1_i_10_n_0\
    );
\cnt_r2__60_carry__1_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => \cnt_r2__30_carry__0_n_4\,
      I1 => \cnt_r2__0_carry__1_n_1\,
      I2 => \axi_rdata_reg[16]_0\(7),
      I3 => \axi_rdata_reg[16]\(3),
      O => \cnt_r2__60_carry__1_i_11_n_0\
    );
\cnt_r2__60_carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(7),
      I1 => \axi_rdata_reg[16]\(5),
      I2 => \cnt_r2__30_carry__1_n_6\,
      O => \cnt_r2__60_carry__1_i_12_n_0\
    );
\cnt_r2__60_carry__1_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(7),
      I1 => \axi_rdata_reg[16]\(6),
      I2 => \cnt_r2__30_carry__1_n_1\,
      O => \cnt_r2__60_carry__1_i_13_n_0\
    );
\cnt_r2__60_carry__1_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(5),
      I1 => \axi_rdata_reg[16]_0\(6),
      O => \cnt_r2__60_carry__1_i_14_n_0\
    );
\cnt_r2__60_carry__1_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A959595"
    )
        port map (
      I0 => \cnt_r2__30_carry__1_n_6\,
      I1 => \axi_rdata_reg[16]\(5),
      I2 => \axi_rdata_reg[16]_0\(7),
      I3 => \axi_rdata_reg[16]_0\(6),
      I4 => \axi_rdata_reg[16]\(6),
      O => \cnt_r2__60_carry__1_i_15_n_0\
    );
\cnt_r2__60_carry__1_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(7),
      I1 => \axi_rdata_reg[16]\(4),
      I2 => \cnt_r2__30_carry__1_n_7\,
      O => \cnt_r2__60_carry__1_i_16_n_0\
    );
\cnt_r2__60_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7D44144414441444"
    )
        port map (
      I0 => \cnt_r2__60_carry__1_i_10_n_0\,
      I1 => \cnt_r2__30_carry__1_n_6\,
      I2 => \axi_rdata_reg[16]\(5),
      I3 => \axi_rdata_reg[16]_0\(7),
      I4 => \cnt_r2__30_carry__1_n_7\,
      I5 => \axi_rdata_reg[16]\(4),
      O => \cnt_r2__60_carry__1_i_2_n_0\
    );
\cnt_r2__60_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FF8F8F808808080"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(6),
      I1 => \axi_rdata_reg[16]\(5),
      I2 => \cnt_r2__30_carry__1_n_7\,
      I3 => \axi_rdata_reg[16]\(4),
      I4 => \axi_rdata_reg[16]_0\(7),
      I5 => \cnt_r2__60_carry__1_i_11_n_0\,
      O => \cnt_r2__60_carry__1_i_3_n_0\
    );
\cnt_r2__60_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F08"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(6),
      I1 => \axi_rdata_reg[16]\(4),
      I2 => \cnt_r2__60_carry__0_i_13_n_0\,
      I3 => \cnt_r2__60_carry__0_i_15_n_0\,
      O => \cnt_r2__60_carry__1_i_4_n_0\
    );
\cnt_r2__60_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FD525D52540B040"
    )
        port map (
      I0 => \cnt_r2__60_carry__1_i_12_n_0\,
      I1 => \axi_rdata_reg[16]_0\(6),
      I2 => \axi_rdata_reg[16]\(7),
      I3 => \axi_rdata_reg[16]_0\(7),
      I4 => \axi_rdata_reg[16]\(6),
      I5 => \cnt_r2__30_carry__1_n_1\,
      O => \cnt_r2__60_carry__1_i_5_n_0\
    );
\cnt_r2__60_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999666"
    )
        port map (
      I0 => \cnt_r2__60_carry__1_i_2_n_0\,
      I1 => \cnt_r2__60_carry__1_i_13_n_0\,
      I2 => \axi_rdata_reg[16]_0\(6),
      I3 => \axi_rdata_reg[16]\(7),
      I4 => \cnt_r2__60_carry__1_i_12_n_0\,
      O => \cnt_r2__60_carry__1_i_6_n_0\
    );
\cnt_r2__60_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2B4B4B4B42D2D2D"
    )
        port map (
      I0 => \cnt_r2__60_carry__1_i_11_n_0\,
      I1 => \cnt_r2__60_carry__1_i_14_n_0\,
      I2 => \cnt_r2__60_carry__1_i_15_n_0\,
      I3 => \axi_rdata_reg[16]_0\(7),
      I4 => \axi_rdata_reg[16]\(4),
      I5 => \cnt_r2__30_carry__1_n_7\,
      O => \cnt_r2__60_carry__1_i_7_n_0\
    );
\cnt_r2__60_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \cnt_r2__60_carry__0_i_15_n_0\,
      I1 => \cnt_r2__60_carry__0_i_13_n_0\,
      I2 => \cnt_r2__60_carry__0_i_14_n_0\,
      I3 => \cnt_r2__60_carry__1_i_16_n_0\,
      I4 => \cnt_r2__60_carry__1_i_14_n_0\,
      I5 => \cnt_r2__60_carry__1_i_11_n_0\,
      O => \cnt_r2__60_carry__1_i_8_n_0\
    );
\cnt_r2__60_carry__1_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(7),
      I1 => \axi_rdata_reg[16]_0\(6),
      O => \cnt_r2__60_carry__1_i_9_n_0\
    );
\cnt_r2__60_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_r2__60_carry__1_n_0\,
      CO(3 downto 0) => \NLW_cnt_r2__60_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_cnt_r2__60_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => cnt_r2(15),
      S(3 downto 1) => B"000",
      S(0) => \cnt_r2__60_carry__2_i_1_n_0\
    );
\cnt_r2__60_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \axi_rdata_reg[16]\(7),
      I1 => \cnt_r2__30_carry__1_n_1\,
      I2 => \axi_rdata_reg[16]\(6),
      I3 => \axi_rdata_reg[16]_0\(7),
      O => \cnt_r2__60_carry__2_i_1_n_0\
    );
\cnt_r2__60_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_r2__0_carry__0_n_5\,
      I1 => \cnt_r2__30_carry_n_4\,
      O => \cnt_r2__60_carry_i_1_n_0\
    );
\cnt_r2__60_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \cnt_r2__30_carry_n_4\,
      I1 => \cnt_r2__0_carry__0_n_5\,
      I2 => \axi_rdata_reg[16]_0\(6),
      I3 => \axi_rdata_reg[16]\(0),
      O => \cnt_r2__60_carry_i_2_n_0\
    );
\cnt_r2__60_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_r2__0_carry__0_n_6\,
      I1 => \cnt_r2__30_carry_n_5\,
      O => \cnt_r2__60_carry_i_3_n_0\
    );
\cnt_r2__60_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_r2__0_carry__0_n_7\,
      I1 => \cnt_r2__30_carry_n_6\,
      O => \cnt_r2__60_carry_i_4_n_0\
    );
\cnt_r2__60_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_r2__0_carry_n_4\,
      I1 => \cnt_r2__30_carry_n_7\,
      O => cnt_r2(3)
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[0]_i_2_n_7\,
      Q => cnt_reg(0)
    );
\cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[0]_i_2_n_0\,
      CO(2) => \cnt_reg[0]_i_2_n_1\,
      CO(1) => \cnt_reg[0]_i_2_n_2\,
      CO(0) => \cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \cnt1_carry__1_n_1\,
      O(3) => \cnt_reg[0]_i_2_n_4\,
      O(2) => \cnt_reg[0]_i_2_n_5\,
      O(1) => \cnt_reg[0]_i_2_n_6\,
      O(0) => \cnt_reg[0]_i_2_n_7\,
      S(3) => \cnt[0]_i_3_n_0\,
      S(2) => \cnt[0]_i_4_n_0\,
      S(1) => \cnt[0]_i_5_n_0\,
      S(0) => \cnt[0]_i_6_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[8]_i_1_n_5\,
      Q => cnt_reg(10)
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[8]_i_1_n_4\,
      Q => cnt_reg(11)
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[12]_i_1_n_7\,
      Q => cnt_reg(12)
    );
\cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_1_n_0\,
      CO(3) => \cnt_reg[12]_i_1_n_0\,
      CO(2) => \cnt_reg[12]_i_1_n_1\,
      CO(1) => \cnt_reg[12]_i_1_n_2\,
      CO(0) => \cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[12]_i_1_n_4\,
      O(2) => \cnt_reg[12]_i_1_n_5\,
      O(1) => \cnt_reg[12]_i_1_n_6\,
      O(0) => \cnt_reg[12]_i_1_n_7\,
      S(3) => \cnt[12]_i_2_n_0\,
      S(2) => \cnt[12]_i_3_n_0\,
      S(1) => \cnt[12]_i_4_n_0\,
      S(0) => \cnt[12]_i_5_n_0\
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[12]_i_1_n_6\,
      Q => cnt_reg(13)
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[12]_i_1_n_5\,
      Q => cnt_reg(14)
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[12]_i_1_n_4\,
      Q => cnt_reg(15)
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[16]_i_1_n_7\,
      Q => cnt_reg(16)
    );
\cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_cnt_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_cnt_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \cnt_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \cnt[16]_i_2_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[0]_i_2_n_6\,
      Q => cnt_reg(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[0]_i_2_n_5\,
      Q => cnt_reg(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[0]_i_2_n_4\,
      Q => cnt_reg(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[4]_i_1_n_7\,
      Q => cnt_reg(4)
    );
\cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_2_n_0\,
      CO(3) => \cnt_reg[4]_i_1_n_0\,
      CO(2) => \cnt_reg[4]_i_1_n_1\,
      CO(1) => \cnt_reg[4]_i_1_n_2\,
      CO(0) => \cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_1_n_4\,
      O(2) => \cnt_reg[4]_i_1_n_5\,
      O(1) => \cnt_reg[4]_i_1_n_6\,
      O(0) => \cnt_reg[4]_i_1_n_7\,
      S(3) => \cnt[4]_i_2_n_0\,
      S(2) => \cnt[4]_i_3_n_0\,
      S(1) => \cnt[4]_i_4_n_0\,
      S(0) => \cnt[4]_i_5_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[4]_i_1_n_6\,
      Q => cnt_reg(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[4]_i_1_n_5\,
      Q => cnt_reg(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[4]_i_1_n_4\,
      Q => cnt_reg(7)
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[8]_i_1_n_7\,
      Q => cnt_reg(8)
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_1_n_0\,
      CO(3) => \cnt_reg[8]_i_1_n_0\,
      CO(2) => \cnt_reg[8]_i_1_n_1\,
      CO(1) => \cnt_reg[8]_i_1_n_2\,
      CO(0) => \cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[8]_i_1_n_4\,
      O(2) => \cnt_reg[8]_i_1_n_5\,
      O(1) => \cnt_reg[8]_i_1_n_6\,
      O(0) => \cnt_reg[8]_i_1_n_7\,
      S(3) => \cnt[8]_i_2_n_0\,
      S(2) => \cnt[8]_i_3_n_0\,
      S(1) => \cnt[8]_i_4_n_0\,
      S(0) => \cnt[8]_i_5_n_0\
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \cnt[0]_i_1_n_0\,
      CLR => \^sr\(0),
      D => \cnt_reg[8]_i_1_n_6\,
      Q => cnt_reg(9)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cnt_reg(14),
      I1 => \cnt2_carry__2_n_6\,
      I2 => \cnt2_carry__2_n_5\,
      I3 => cnt_reg(15),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(7),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cnt_reg(12),
      I1 => \cnt2_carry__1_n_4\,
      I2 => \cnt2_carry__2_n_7\,
      I3 => cnt_reg(13),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(6),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cnt_reg(10),
      I1 => \cnt2_carry__1_n_6\,
      I2 => \cnt2_carry__1_n_5\,
      I3 => cnt_reg(11),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(5),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cnt_reg(8),
      I1 => \cnt2_carry__0_n_4\,
      I2 => \cnt2_carry__1_n_7\,
      I3 => cnt_reg(9),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(14),
      I1 => \cnt2_carry__2_n_6\,
      I2 => cnt_reg(15),
      I3 => \cnt2_carry__2_n_5\,
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(12),
      I1 => \cnt2_carry__1_n_4\,
      I2 => cnt_reg(13),
      I3 => \cnt2_carry__2_n_7\,
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(10),
      I1 => \cnt2_carry__1_n_6\,
      I2 => cnt_reg(11),
      I3 => \cnt2_carry__1_n_5\,
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(8),
      I1 => \cnt2_carry__0_n_4\,
      I2 => cnt_reg(9),
      I3 => \cnt2_carry__1_n_7\,
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(12),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_reg(16),
      I1 => \cnt2_carry__2_n_0\,
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(11),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => cnt_reg(16),
      I1 => \cnt2_carry__2_n_0\,
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(10),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(9),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(16),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(15),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(14),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(13),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(4),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => \cnt2_carry__0_n_6\,
      I2 => \cnt2_carry__0_n_5\,
      I3 => cnt_reg(7),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt2_carry_n_4,
      I2 => \cnt2_carry__0_n_7\,
      I3 => cnt_reg(5),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt2_carry_n_6,
      I2 => cnt2_carry_n_5,
      I3 => cnt_reg(3),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cntReg(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F08"
    )
        port map (
      I0 => Q(16),
      I1 => cnt_reg(0),
      I2 => cnt2_carry_n_7,
      I3 => cnt_reg(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => \cnt2_carry__0_n_6\,
      I2 => cnt_reg(7),
      I3 => \cnt2_carry__0_n_5\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt2_carry_n_4,
      I2 => cnt_reg(5),
      I3 => \cnt2_carry__0_n_7\,
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt2_carry_n_6,
      I2 => cnt_reg(3),
      I3 => cnt2_carry_n_5,
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => Q(16),
      I2 => cnt_reg(1),
      I3 => cnt2_carry_n_7,
      O => \i__carry_i_8_n_0\
    );
\ma_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => pulse_out,
      O => \ma_r[0]_i_1_n_0\
    );
\ma_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => pulse_out,
      O => \ma_r[1]_i_1_n_0\
    );
\ma_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \ma_r[0]_i_1_n_0\,
      Q => \ma_r_reg_n_0_[0]\
    );
\ma_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \ma_r[1]_i_1_n_0\,
      Q => \ma_r_reg_n_0_[1]\
    );
pulse_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44044400"
    )
        port map (
      I0 => \pwm_en__6\,
      I1 => \axi_rdata_reg[16]_0\(9),
      I2 => \cnt1_inferred__0/i__carry__2_n_0\,
      I3 => \cnt1_carry__1_n_1\,
      I4 => pulse_out,
      O => pulse_out_i_1_n_0
    );
pulse_out_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => pulse_out_i_1_n_0,
      Q => pulse_out
    );
\pwm_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \ma_r_reg_n_0_[1]\,
      I1 => \axi_rdata_reg[16]_0\(8),
      I2 => slv_reg3(0),
      I3 => \axi_rdata_reg[16]_0\(9),
      I4 => \ma_r_reg_n_0_[0]\,
      O => \ma_r_reg[0]_0\(0)
    );
\pwm_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \ma_r_reg_n_0_[0]\,
      I1 => \axi_rdata_reg[16]_0\(8),
      I2 => slv_reg3(0),
      I3 => \axi_rdata_reg[16]_0\(9),
      I4 => \ma_r_reg_n_0_[1]\,
      O => \ma_r_reg[0]_0\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorPWM_v1_0_S00_AXI is
  port (
    pwm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    right_motor_en : out STD_LOGIC;
    left_motor_en : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorPWM_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorPWM_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \cntReg_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \cntReg_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \cntReg_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \cntReg_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal cnt_r : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal period : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pwm_i_n_0 : STD_LOGIC;
  signal pwm_i_n_18 : STD_LOGIC;
  signal pwm_i_n_19 : STD_LOGIC;
  signal pwm_i_n_20 : STD_LOGIC;
  signal pwm_i_n_21 : STD_LOGIC;
  signal pwm_i_n_22 : STD_LOGIC;
  signal pwm_i_n_23 : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \slv_reg3[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of left_motor_en_INST_0 : label is "soft_lutpair17";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \pwm_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \pwm_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of right_motor_en_INST_0 : label is "soft_lutpair17";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF8CCC8CCC8CCC"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
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
      S => pwm_i_n_0
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
      R => pwm_i_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => pwm_i_n_0
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
      R => pwm_i_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => \^s_axi_awready\,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => pwm_i_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => pwm_i_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => pwm_i_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
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
      R => pwm_i_n_0
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => period(1),
      I1 => axi_araddr(2),
      I2 => \slv_reg2_reg_n_0_[17]\,
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[17]\,
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => period(2),
      I1 => axi_araddr(2),
      I2 => \slv_reg2_reg_n_0_[18]\,
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[18]\,
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => period(3),
      I1 => axi_araddr(2),
      I2 => \slv_reg2_reg_n_0_[19]\,
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[19]\,
      O => reg_data_out(19)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => period(4),
      I1 => axi_araddr(2),
      I2 => \slv_reg2_reg_n_0_[20]\,
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[20]\,
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => period(5),
      I1 => axi_araddr(2),
      I2 => \slv_reg2_reg_n_0_[21]\,
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[21]\,
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => period(6),
      I1 => axi_araddr(2),
      I2 => \slv_reg2_reg_n_0_[22]\,
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[22]\,
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => period(7),
      I1 => axi_araddr(2),
      I2 => \slv_reg2_reg_n_0_[23]\,
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[23]\,
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => period(8),
      I1 => axi_araddr(2),
      I2 => \slv_reg2_reg_n_0_[24]\,
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[24]\,
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => period(9),
      I1 => axi_araddr(2),
      I2 => \slv_reg2_reg_n_0_[25]\,
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[25]\,
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => period(10),
      I1 => axi_araddr(2),
      I2 => \slv_reg2_reg_n_0_[26]\,
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[26]\,
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => period(11),
      I1 => axi_araddr(2),
      I2 => \slv_reg2_reg_n_0_[27]\,
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[27]\,
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => period(12),
      I1 => axi_araddr(2),
      I2 => \slv_reg2_reg_n_0_[28]\,
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[28]\,
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => period(13),
      I1 => axi_araddr(2),
      I2 => \slv_reg2_reg_n_0_[29]\,
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[29]\,
      O => reg_data_out(29)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => period(14),
      I1 => axi_araddr(2),
      I2 => \slv_reg2_reg_n_0_[30]\,
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[30]\,
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => period(15),
      I1 => axi_araddr(2),
      I2 => \slv_reg2_reg_n_0_[31]\,
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[31]\,
      O => reg_data_out(31)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => pwm_i_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => pwm_i_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => pwm_i_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => pwm_i_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => pwm_i_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => pwm_i_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => pwm_i_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => pwm_i_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => pwm_i_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => pwm_i_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => pwm_i_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => pwm_i_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => pwm_i_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => pwm_i_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => pwm_i_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => pwm_i_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => pwm_i_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => pwm_i_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => pwm_i_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => pwm_i_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => pwm_i_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => pwm_i_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => pwm_i_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => pwm_i_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => pwm_i_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => pwm_i_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => pwm_i_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => pwm_i_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => pwm_i_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => pwm_i_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => pwm_i_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => pwm_i_n_0
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
      R => pwm_i_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => pwm_i_n_0
    );
\cntReg_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cntReg_reg[3]_i_2_n_0\,
      CO(2) => \cntReg_reg[3]_i_2_n_1\,
      CO(1) => \cntReg_reg[3]_i_2_n_2\,
      CO(0) => \cntReg_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \slv_reg1_reg_n_0_[3]\,
      DI(2) => \slv_reg1_reg_n_0_[2]\,
      DI(1) => \slv_reg1_reg_n_0_[1]\,
      DI(0) => \slv_reg1_reg_n_0_[0]\,
      O(3 downto 0) => cnt_r(3 downto 0),
      S(3) => pwm_i_n_20,
      S(2) => pwm_i_n_21,
      S(1) => pwm_i_n_22,
      S(0) => pwm_i_n_23
    );
left_motor_en_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => p_2_in,
      I2 => slv_reg3(0),
      I3 => p_0_in_0,
      O => left_motor_en
    );
pwm_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwmGen
     port map (
      CO(0) => \cntReg_reg[3]_i_2_n_0\,
      D(16 downto 0) => reg_data_out(16 downto 0),
      O(3 downto 0) => cnt_r(3 downto 0),
      Q(31 downto 16) => period(15 downto 0),
      Q(15) => \slv_reg1_reg_n_0_[15]\,
      Q(14) => \slv_reg1_reg_n_0_[14]\,
      Q(13) => \slv_reg1_reg_n_0_[13]\,
      Q(12) => \slv_reg1_reg_n_0_[12]\,
      Q(11) => \slv_reg1_reg_n_0_[11]\,
      Q(10) => \slv_reg1_reg_n_0_[10]\,
      Q(9) => \slv_reg1_reg_n_0_[9]\,
      Q(8) => \slv_reg1_reg_n_0_[8]\,
      Q(7) => \slv_reg1_reg_n_0_[7]\,
      Q(6) => \slv_reg1_reg_n_0_[6]\,
      Q(5) => \slv_reg1_reg_n_0_[5]\,
      Q(4) => \slv_reg1_reg_n_0_[4]\,
      Q(3) => \slv_reg1_reg_n_0_[3]\,
      Q(2) => \slv_reg1_reg_n_0_[2]\,
      Q(1) => \slv_reg1_reg_n_0_[1]\,
      Q(0) => \slv_reg1_reg_n_0_[0]\,
      S(3) => pwm_i_n_20,
      S(2) => pwm_i_n_21,
      S(1) => pwm_i_n_22,
      S(0) => pwm_i_n_23,
      SR(0) => pwm_i_n_0,
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      \axi_rdata_reg[16]\(16) => \slv_reg2_reg_n_0_[16]\,
      \axi_rdata_reg[16]\(15) => \slv_reg2_reg_n_0_[15]\,
      \axi_rdata_reg[16]\(14) => \slv_reg2_reg_n_0_[14]\,
      \axi_rdata_reg[16]\(13) => \slv_reg2_reg_n_0_[13]\,
      \axi_rdata_reg[16]\(12) => \slv_reg2_reg_n_0_[12]\,
      \axi_rdata_reg[16]\(11) => \slv_reg2_reg_n_0_[11]\,
      \axi_rdata_reg[16]\(10) => \slv_reg2_reg_n_0_[10]\,
      \axi_rdata_reg[16]\(9) => \slv_reg2_reg_n_0_[9]\,
      \axi_rdata_reg[16]\(8) => \slv_reg2_reg_n_0_[8]\,
      \axi_rdata_reg[16]\(7) => \slv_reg2_reg_n_0_[7]\,
      \axi_rdata_reg[16]\(6) => \slv_reg2_reg_n_0_[6]\,
      \axi_rdata_reg[16]\(5) => \slv_reg2_reg_n_0_[5]\,
      \axi_rdata_reg[16]\(4) => \slv_reg2_reg_n_0_[4]\,
      \axi_rdata_reg[16]\(3) => \slv_reg2_reg_n_0_[3]\,
      \axi_rdata_reg[16]\(2) => \slv_reg2_reg_n_0_[2]\,
      \axi_rdata_reg[16]\(1) => \slv_reg2_reg_n_0_[1]\,
      \axi_rdata_reg[16]\(0) => \slv_reg2_reg_n_0_[0]\,
      \axi_rdata_reg[16]_0\(16) => \slv_reg0_reg_n_0_[16]\,
      \axi_rdata_reg[16]_0\(15) => \slv_reg0_reg_n_0_[15]\,
      \axi_rdata_reg[16]_0\(14) => \slv_reg0_reg_n_0_[14]\,
      \axi_rdata_reg[16]_0\(13) => \slv_reg0_reg_n_0_[13]\,
      \axi_rdata_reg[16]_0\(12) => \slv_reg0_reg_n_0_[12]\,
      \axi_rdata_reg[16]_0\(11) => \slv_reg0_reg_n_0_[11]\,
      \axi_rdata_reg[16]_0\(10) => \slv_reg0_reg_n_0_[10]\,
      \axi_rdata_reg[16]_0\(9) => p_2_in,
      \axi_rdata_reg[16]_0\(8) => p_0_in_0,
      \axi_rdata_reg[16]_0\(7) => \slv_reg0_reg_n_0_[7]\,
      \axi_rdata_reg[16]_0\(6) => \slv_reg0_reg_n_0_[6]\,
      \axi_rdata_reg[16]_0\(5) => \slv_reg0_reg_n_0_[5]\,
      \axi_rdata_reg[16]_0\(4) => \slv_reg0_reg_n_0_[4]\,
      \axi_rdata_reg[16]_0\(3) => \slv_reg0_reg_n_0_[3]\,
      \axi_rdata_reg[16]_0\(2) => \slv_reg0_reg_n_0_[2]\,
      \axi_rdata_reg[16]_0\(1) => \slv_reg0_reg_n_0_[1]\,
      \axi_rdata_reg[16]_0\(0) => \slv_reg0_reg_n_0_[0]\,
      \ma_r_reg[0]_0\(1) => pwm_i_n_18,
      \ma_r_reg[0]_0\(0) => pwm_i_n_19,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      slv_reg3(0) => slv_reg3(0)
    );
\pwm_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pwm_i_n_19,
      G => s00_axi_aresetn,
      GE => '1',
      Q => pwm(0)
    );
\pwm_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => pwm_i_n_18,
      G => s00_axi_aresetn,
      GE => '1',
      Q => pwm(1)
    );
right_motor_en_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => p_2_in,
      I2 => p_0_in_0,
      I3 => slv_reg3(0),
      O => right_motor_en
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => pwm_i_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => p_0_in_0,
      R => pwm_i_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => p_2_in,
      R => pwm_i_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg1_reg_n_0_[0]\,
      R => pwm_i_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => pwm_i_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => pwm_i_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => pwm_i_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => pwm_i_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => pwm_i_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => pwm_i_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => period(0),
      R => pwm_i_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => period(1),
      R => pwm_i_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => period(2),
      R => pwm_i_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => period(3),
      R => pwm_i_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg1_reg_n_0_[1]\,
      R => pwm_i_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => period(4),
      R => pwm_i_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => period(5),
      R => pwm_i_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => period(6),
      R => pwm_i_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => period(7),
      R => pwm_i_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => period(8),
      R => pwm_i_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => period(9),
      R => pwm_i_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => period(10),
      R => pwm_i_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => period(11),
      R => pwm_i_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => period(12),
      R => pwm_i_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => period(13),
      R => pwm_i_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => pwm_i_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => period(14),
      R => pwm_i_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => period(15),
      R => pwm_i_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg1_reg_n_0_[3]\,
      R => pwm_i_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg1_reg_n_0_[4]\,
      R => pwm_i_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg1_reg_n_0_[5]\,
      R => pwm_i_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg1_reg_n_0_[6]\,
      R => pwm_i_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg1_reg_n_0_[7]\,
      R => pwm_i_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => pwm_i_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => pwm_i_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg2_reg_n_0_[0]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg2_reg_n_0_[10]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg2_reg_n_0_[11]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg2_reg_n_0_[12]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg2_reg_n_0_[13]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg2_reg_n_0_[14]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg2_reg_n_0_[15]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg2_reg_n_0_[16]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg2_reg_n_0_[17]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg2_reg_n_0_[18]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg2_reg_n_0_[19]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg2_reg_n_0_[1]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg2_reg_n_0_[20]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg2_reg_n_0_[21]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg2_reg_n_0_[22]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg2_reg_n_0_[23]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg2_reg_n_0_[24]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg2_reg_n_0_[25]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg2_reg_n_0_[26]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg2_reg_n_0_[27]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg2_reg_n_0_[28]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg2_reg_n_0_[29]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg2_reg_n_0_[2]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg2_reg_n_0_[30]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg2_reg_n_0_[31]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg2_reg_n_0_[3]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg2_reg_n_0_[4]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg2_reg_n_0_[5]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg2_reg_n_0_[6]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg2_reg_n_0_[7]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg2_reg_n_0_[8]\,
      R => pwm_i_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg2_reg_n_0_[9]\,
      R => pwm_i_n_0
    );
\slv_reg3[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg_wren__2\,
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => slv_reg3(0),
      O => \slv_reg3[0]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg3[0]_i_1_n_0\,
      Q => slv_reg3(0),
      R => pwm_i_n_0
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorPWM_v1_0 is
  port (
    pwm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    right_motor_en : out STD_LOGIC;
    left_motor_en : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorPWM_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorPWM_v1_0 is
begin
motorPWM_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorPWM_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      left_motor_en => left_motor_en,
      pwm(1 downto 0) => pwm(1 downto 0),
      right_motor_en => right_motor_en,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    right_motor_en : out STD_LOGIC;
    left_motor_en : out STD_LOGIC;
    pwm : out STD_LOGIC_VECTOR ( 1 downto 0 );
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ugv_motorPWM_0_1,motorPWM_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "motorPWM_v1_0,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motorPWM_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      left_motor_en => left_motor_en,
      pwm(1 downto 0) => pwm(1 downto 0),
      right_motor_en => right_motor_en,
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
