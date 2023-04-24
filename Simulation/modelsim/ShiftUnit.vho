-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/09/2022 15:24:00"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ShiftUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	C : IN std_logic_vector(63 DOWNTO 0);
	Y : OUT std_logic_vector(63 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	ExtWord : IN std_logic
	);
END ShiftUnit;

-- Design Ports Information
-- B[6]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[8]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[9]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[10]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[11]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[12]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[13]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[14]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[15]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[16]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[17]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[18]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[19]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[20]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[21]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[22]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[23]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[24]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[25]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[26]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[27]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[28]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[29]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[30]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[31]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[32]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[33]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[34]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[35]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[36]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[37]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[38]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[39]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[40]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[41]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[42]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[43]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[44]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[45]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[46]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[47]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[48]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[49]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[50]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[51]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[52]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[53]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[54]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[55]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[56]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[57]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[58]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[59]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[60]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[61]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[62]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[63]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ExtWord : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[16]~output_o\ : std_logic;
SIGNAL \Y[17]~output_o\ : std_logic;
SIGNAL \Y[18]~output_o\ : std_logic;
SIGNAL \Y[19]~output_o\ : std_logic;
SIGNAL \Y[20]~output_o\ : std_logic;
SIGNAL \Y[21]~output_o\ : std_logic;
SIGNAL \Y[22]~output_o\ : std_logic;
SIGNAL \Y[23]~output_o\ : std_logic;
SIGNAL \Y[24]~output_o\ : std_logic;
SIGNAL \Y[25]~output_o\ : std_logic;
SIGNAL \Y[26]~output_o\ : std_logic;
SIGNAL \Y[27]~output_o\ : std_logic;
SIGNAL \Y[28]~output_o\ : std_logic;
SIGNAL \Y[29]~output_o\ : std_logic;
SIGNAL \Y[30]~output_o\ : std_logic;
SIGNAL \Y[31]~output_o\ : std_logic;
SIGNAL \Y[32]~output_o\ : std_logic;
SIGNAL \Y[33]~output_o\ : std_logic;
SIGNAL \Y[34]~output_o\ : std_logic;
SIGNAL \Y[35]~output_o\ : std_logic;
SIGNAL \Y[36]~output_o\ : std_logic;
SIGNAL \Y[37]~output_o\ : std_logic;
SIGNAL \Y[38]~output_o\ : std_logic;
SIGNAL \Y[39]~output_o\ : std_logic;
SIGNAL \Y[40]~output_o\ : std_logic;
SIGNAL \Y[41]~output_o\ : std_logic;
SIGNAL \Y[42]~output_o\ : std_logic;
SIGNAL \Y[43]~output_o\ : std_logic;
SIGNAL \Y[44]~output_o\ : std_logic;
SIGNAL \Y[45]~output_o\ : std_logic;
SIGNAL \Y[46]~output_o\ : std_logic;
SIGNAL \Y[47]~output_o\ : std_logic;
SIGNAL \Y[48]~output_o\ : std_logic;
SIGNAL \Y[49]~output_o\ : std_logic;
SIGNAL \Y[50]~output_o\ : std_logic;
SIGNAL \Y[51]~output_o\ : std_logic;
SIGNAL \Y[52]~output_o\ : std_logic;
SIGNAL \Y[53]~output_o\ : std_logic;
SIGNAL \Y[54]~output_o\ : std_logic;
SIGNAL \Y[55]~output_o\ : std_logic;
SIGNAL \Y[56]~output_o\ : std_logic;
SIGNAL \Y[57]~output_o\ : std_logic;
SIGNAL \Y[58]~output_o\ : std_logic;
SIGNAL \Y[59]~output_o\ : std_logic;
SIGNAL \Y[60]~output_o\ : std_logic;
SIGNAL \Y[61]~output_o\ : std_logic;
SIGNAL \Y[62]~output_o\ : std_logic;
SIGNAL \Y[63]~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \shiftIn[45]~30_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \shiftIn[61]~29_combout\ : std_logic;
SIGNAL \SRA641|Mux19~14_combout\ : std_logic;
SIGNAL \shiftIn[13]~46_combout\ : std_logic;
SIGNAL \shiftSig[5]~0_combout\ : std_logic;
SIGNAL \shiftIn[29]~45_combout\ : std_logic;
SIGNAL \SRA641|Mux49~2_combout\ : std_logic;
SIGNAL \SRA641|Mux49~3_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \shiftIn[41]~26_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \shiftIn[57]~25_combout\ : std_logic;
SIGNAL \SRA641|Mux19~12_combout\ : std_logic;
SIGNAL \shiftIn[9]~48_combout\ : std_logic;
SIGNAL \shiftIn[25]~47_combout\ : std_logic;
SIGNAL \SRA641|Mux53~2_combout\ : std_logic;
SIGNAL \SRA641|Mux53~3_combout\ : std_logic;
SIGNAL \SRA641|Mux156~67_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \SRA641|Mux123~0_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \shiftIn[7]~39_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \shiftIn[23]~38_combout\ : std_logic;
SIGNAL \SRA641|Mux55~2_combout\ : std_logic;
SIGNAL \shiftIn[55]~19_combout\ : std_logic;
SIGNAL \shiftIn[39]~20_combout\ : std_logic;
SIGNAL \SRA641|Mux19~9_combout\ : std_logic;
SIGNAL \SRA641|Mux55~3_combout\ : std_logic;
SIGNAL \SRA641|Mux123~1_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \shiftIn[51]~23_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \shiftIn[35]~24_combout\ : std_logic;
SIGNAL \SRA641|Mux19~11_combout\ : std_logic;
SIGNAL \SRA641|Mux122~1_combout\ : std_logic;
SIGNAL \shiftIn[3]~37_combout\ : std_logic;
SIGNAL \shiftIn[19]~40_combout\ : std_logic;
SIGNAL \SRA641|Mux122~2_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \shiftIn[59]~21_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \shiftIn[43]~22_combout\ : std_logic;
SIGNAL \SRA641|Mux19~10_combout\ : std_logic;
SIGNAL \shiftIn[11]~36_combout\ : std_logic;
SIGNAL \shiftIn[27]~35_combout\ : std_logic;
SIGNAL \SRA641|Mux51~2_combout\ : std_logic;
SIGNAL \SRA641|Mux51~3_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \shiftIn[15]~34_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \shiftIn[31]~33_combout\ : std_logic;
SIGNAL \SRA641|Mux47~2_combout\ : std_logic;
SIGNAL \shiftIn[47]~18_combout\ : std_logic;
SIGNAL \shiftIn[63]~1_combout\ : std_logic;
SIGNAL \SRA641|Mux19~8_combout\ : std_logic;
SIGNAL \SRA641|Mux47~3_combout\ : std_logic;
SIGNAL \SRA641|Mux122~0_combout\ : std_logic;
SIGNAL \SRA641|Mux122~3_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \shiftIn[49]~27_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \shiftIn[33]~28_combout\ : std_logic;
SIGNAL \SRA641|Mux19~13_combout\ : std_logic;
SIGNAL \shiftIn[1]~42_combout\ : std_logic;
SIGNAL \shiftIn[17]~41_combout\ : std_logic;
SIGNAL \SRA641|Mux156~64_combout\ : std_logic;
SIGNAL \SRA641|Mux156~65_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \shiftIn[53]~31_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \shiftIn[37]~32_combout\ : std_logic;
SIGNAL \SRA641|Mux19~15_combout\ : std_logic;
SIGNAL \shiftIn[21]~43_combout\ : std_logic;
SIGNAL \shiftIn[5]~44_combout\ : std_logic;
SIGNAL \SRA641|Mux57~2_combout\ : std_logic;
SIGNAL \SRA641|Mux57~3_combout\ : std_logic;
SIGNAL \SRA641|Mux156~66_combout\ : std_logic;
SIGNAL \SRA641|Mux156~68_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \shiftIn[2]~55_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \shiftIn[50]~4_combout\ : std_logic;
SIGNAL \shiftIn[34]~5_combout\ : std_logic;
SIGNAL \SRA641|Mux19~1_combout\ : std_logic;
SIGNAL \SRA641|Mux123~3_combout\ : std_logic;
SIGNAL \shiftIn[18]~56_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \shiftIn[38]~9_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \shiftIn[54]~8_combout\ : std_logic;
SIGNAL \SRA641|Mux19~3_combout\ : std_logic;
SIGNAL \shiftIn[6]~54_combout\ : std_logic;
SIGNAL \shiftIn[22]~53_combout\ : std_logic;
SIGNAL \SRA641|Mux56~2_combout\ : std_logic;
SIGNAL \SRA641|Mux56~3_combout\ : std_logic;
SIGNAL \SRA641|Mux123~4_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \shiftIn[58]~2_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \shiftIn[42]~3_combout\ : std_logic;
SIGNAL \SRA641|Mux19~0_combout\ : std_logic;
SIGNAL \shiftIn[26]~51_combout\ : std_logic;
SIGNAL \shiftIn[10]~52_combout\ : std_logic;
SIGNAL \SRA641|Mux52~2_combout\ : std_logic;
SIGNAL \SRA641|Mux52~3_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \shiftIn[30]~49_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \shiftIn[14]~50_combout\ : std_logic;
SIGNAL \SRA641|Mux48~2_combout\ : std_logic;
SIGNAL \shiftIn[62]~6_combout\ : std_logic;
SIGNAL \shiftIn[46]~7_combout\ : std_logic;
SIGNAL \SRA641|Mux19~2_combout\ : std_logic;
SIGNAL \SRA641|Mux48~3_combout\ : std_logic;
SIGNAL \SRA641|Mux123~2_combout\ : std_logic;
SIGNAL \SRA641|Mux123~5_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \shiftIn[0]~0_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \shiftIn[16]~61_combout\ : std_logic;
SIGNAL \SRA641|Mux188~1_combout\ : std_logic;
SIGNAL \shiftIn[32]~13_combout\ : std_logic;
SIGNAL \shiftIn[48]~12_combout\ : std_logic;
SIGNAL \SRA641|Mux19~5_combout\ : std_logic;
SIGNAL \SRA641|Mux188~2_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \shiftIn[40]~17_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \shiftIn[56]~16_combout\ : std_logic;
SIGNAL \SRA641|Mux19~7_combout\ : std_logic;
SIGNAL \shiftIn[24]~62_combout\ : std_logic;
SIGNAL \shiftIn[8]~63_combout\ : std_logic;
SIGNAL \SRA641|Mux54~2_combout\ : std_logic;
SIGNAL \SRA641|Mux54~3_combout\ : std_logic;
SIGNAL \SRA641|Mux188~3_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \shiftIn[28]~57_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \shiftIn[12]~58_combout\ : std_logic;
SIGNAL \SRA641|Mux50~2_combout\ : std_logic;
SIGNAL \shiftIn[60]~14_combout\ : std_logic;
SIGNAL \shiftIn[44]~15_combout\ : std_logic;
SIGNAL \SRA641|Mux19~6_combout\ : std_logic;
SIGNAL \SRA641|Mux50~3_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \shiftIn[20]~59_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \shiftIn[4]~60_combout\ : std_logic;
SIGNAL \SRA641|Mux58~2_combout\ : std_logic;
SIGNAL \shiftIn[36]~11_combout\ : std_logic;
SIGNAL \shiftIn[52]~10_combout\ : std_logic;
SIGNAL \SRA641|Mux19~4_combout\ : std_logic;
SIGNAL \SRA641|Mux58~3_combout\ : std_logic;
SIGNAL \SRA641|Mux188~0_combout\ : std_logic;
SIGNAL \SRA641|Mux188~4_combout\ : std_logic;
SIGNAL \shiftOut~61_combout\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \SRL641|Mux47~0_combout\ : std_logic;
SIGNAL \SLL641|Mux190~92_combout\ : std_logic;
SIGNAL \shiftOut~58_combout\ : std_logic;
SIGNAL \shiftOut~59_combout\ : std_logic;
SIGNAL \SRA641|Mux90~16_combout\ : std_logic;
SIGNAL \SRL641|Mux92~0_combout\ : std_logic;
SIGNAL \SRL641|Mux92~1_combout\ : std_logic;
SIGNAL \SRL641|Mux90~0_combout\ : std_logic;
SIGNAL \SRL641|Mux94~0_combout\ : std_logic;
SIGNAL \SRL641|Mux94~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~59_combout\ : std_logic;
SIGNAL \SRL641|Mux95~0_combout\ : std_logic;
SIGNAL \SRL641|Mux95~1_combout\ : std_logic;
SIGNAL \SRL641|Mux95~2_combout\ : std_logic;
SIGNAL \SRL641|Mux93~0_combout\ : std_logic;
SIGNAL \SRL641|Mux89~0_combout\ : std_logic;
SIGNAL \SRL641|Mux93~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~58_combout\ : std_logic;
SIGNAL \mux1OutUp[32]~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~253_combout\ : std_logic;
SIGNAL \SRA641|Mux156~61_combout\ : std_logic;
SIGNAL \SRA641|Mux90~18_combout\ : std_logic;
SIGNAL \SRA641|Mux156~62_combout\ : std_logic;
SIGNAL \SRA641|Mux90~17_combout\ : std_logic;
SIGNAL \SRA641|Mux156~60_combout\ : std_logic;
SIGNAL \SRA641|Mux156~63_combout\ : std_logic;
SIGNAL \mux1OutUp[32]~1_combout\ : std_logic;
SIGNAL \shiftOut~60_combout\ : std_logic;
SIGNAL \shiftOut~62_combout\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \shiftOut~63_combout\ : std_logic;
SIGNAL \shiftOut~64_combout\ : std_logic;
SIGNAL \SRA641|Mux156~71_combout\ : std_logic;
SIGNAL \SRL641|Mux123~0_combout\ : std_logic;
SIGNAL \SRL641|Mux47~1_combout\ : std_logic;
SIGNAL \SRA641|Mux90~81_combout\ : std_logic;
SIGNAL \SRA641|Mux90~20_combout\ : std_logic;
SIGNAL \SRA641|Mux156~72_combout\ : std_logic;
SIGNAL \SRA641|Mux156~73_combout\ : std_logic;
SIGNAL \SRA641|Mux46~0_combout\ : std_logic;
SIGNAL \SRA641|Mux46~1_combout\ : std_logic;
SIGNAL \SRA641|Mux121~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~254_combout\ : std_logic;
SIGNAL \shiftOut~66_combout\ : std_logic;
SIGNAL \shiftOut~67_combout\ : std_logic;
SIGNAL \SRL641|Mux91~0_combout\ : std_logic;
SIGNAL \SRL641|Mux91~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~69_combout\ : std_logic;
SIGNAL \SRA641|Mux156~70_combout\ : std_logic;
SIGNAL \mux1OutUp[33]~2_combout\ : std_logic;
SIGNAL \mux1OutUp[33]~3_combout\ : std_logic;
SIGNAL \shiftOut~65_combout\ : std_logic;
SIGNAL \shiftOut~68_combout\ : std_logic;
SIGNAL \SRL641|Mux90~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~75_combout\ : std_logic;
SIGNAL \SRA641|Mux156~76_combout\ : std_logic;
SIGNAL \SRA641|Mux90~86_combout\ : std_logic;
SIGNAL \SRA641|Mux156~77_combout\ : std_logic;
SIGNAL \SRL641|Mux90~2_combout\ : std_logic;
SIGNAL \SRA641|Mux156~74_combout\ : std_logic;
SIGNAL \mux1OutUp[34]~4_combout\ : std_logic;
SIGNAL \mux1OutUp[34]~5_combout\ : std_logic;
SIGNAL \shiftOut~69_combout\ : std_logic;
SIGNAL \C[2]~input_o\ : std_logic;
SIGNAL \SRL641|Mux119~0_combout\ : std_logic;
SIGNAL \SLL641|Mux190~17_combout\ : std_logic;
SIGNAL \SRL641|Mux46~0_combout\ : std_logic;
SIGNAL \SRA641|Mux45~0_combout\ : std_logic;
SIGNAL \SRA641|Mux45~1_combout\ : std_logic;
SIGNAL \SRA641|Mux120~0_combout\ : std_logic;
SIGNAL \SRL641|Mux122~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~78_combout\ : std_logic;
SIGNAL \SRA641|Mux156~255_combout\ : std_logic;
SIGNAL \shiftOut~71_combout\ : std_logic;
SIGNAL \SRA641|Mux90~82_combout\ : std_logic;
SIGNAL \SRA641|Mux90~21_combout\ : std_logic;
SIGNAL \SRA641|Mux156~79_combout\ : std_logic;
SIGNAL \SRA641|Mux156~80_combout\ : std_logic;
SIGNAL \shiftOut~72_combout\ : std_logic;
SIGNAL \SLL641|Mux127~4_combout\ : std_logic;
SIGNAL \SLL641|Mux190~16_combout\ : std_logic;
SIGNAL \shiftOut~70_combout\ : std_logic;
SIGNAL \shiftOut~73_combout\ : std_logic;
SIGNAL \shiftOut~74_combout\ : std_logic;
SIGNAL \shiftOut~282_combout\ : std_logic;
SIGNAL \SRL641|Mux89~1_combout\ : std_logic;
SIGNAL \SRL641|Mux89~2_combout\ : std_logic;
SIGNAL \SRA641|Mux156~81_combout\ : std_logic;
SIGNAL \SRA641|Mux156~82_combout\ : std_logic;
SIGNAL \mux1OutUp[35]~6_combout\ : std_logic;
SIGNAL \mux1OutUp[35]~7_combout\ : std_logic;
SIGNAL \SLL641|Mux190~18_combout\ : std_logic;
SIGNAL \SRA641|Mux90~83_combout\ : std_logic;
SIGNAL \SRL641|Mux45~0_combout\ : std_logic;
SIGNAL \SRA641|Mux90~22_combout\ : std_logic;
SIGNAL \SRL641|Mux121~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~83_combout\ : std_logic;
SIGNAL \SRA641|Mux156~84_combout\ : std_logic;
SIGNAL \shiftOut~75_combout\ : std_logic;
SIGNAL \SRA641|Mux44~0_combout\ : std_logic;
SIGNAL \SRA641|Mux44~1_combout\ : std_logic;
SIGNAL \SRA641|Mux119~0_combout\ : std_logic;
SIGNAL \SRA641|Mux121~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~256_combout\ : std_logic;
SIGNAL \shiftOut~76_combout\ : std_logic;
SIGNAL \shiftOut~77_combout\ : std_logic;
SIGNAL \C[3]~input_o\ : std_logic;
SIGNAL \shiftOut~78_combout\ : std_logic;
SIGNAL \shiftOut~283_combout\ : std_logic;
SIGNAL \SLL641|Mux190~19_combout\ : std_logic;
SIGNAL \SLL641|Mux190~97_combout\ : std_logic;
SIGNAL \SRA641|Mux156~86_combout\ : std_logic;
SIGNAL \SRA641|Mux78~0_combout\ : std_logic;
SIGNAL \SRA641|Mux90~23_combout\ : std_logic;
SIGNAL \SRA641|Mux156~87_combout\ : std_logic;
SIGNAL \SRA641|Mux156~88_combout\ : std_logic;
SIGNAL \SRL641|Mux80~0_combout\ : std_logic;
SIGNAL \SRL641|Mux88~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~85_combout\ : std_logic;
SIGNAL \mux1OutUp[36]~8_combout\ : std_logic;
SIGNAL \mux1OutUp[36]~9_combout\ : std_logic;
SIGNAL \shiftOut~79_combout\ : std_logic;
SIGNAL \SRA641|Mux90~84_combout\ : std_logic;
SIGNAL \SRL641|Mux44~0_combout\ : std_logic;
SIGNAL \SRA641|Mux90~24_combout\ : std_logic;
SIGNAL \SRL641|Mux120~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~89_combout\ : std_logic;
SIGNAL \SRA641|Mux156~90_combout\ : std_logic;
SIGNAL \SRA641|Mux43~0_combout\ : std_logic;
SIGNAL \SRA641|Mux43~1_combout\ : std_logic;
SIGNAL \SRA641|Mux118~0_combout\ : std_logic;
SIGNAL \SRA641|Mux120~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~257_combout\ : std_logic;
SIGNAL \shiftOut~80_combout\ : std_logic;
SIGNAL \SLL641|Mux190~20_combout\ : std_logic;
SIGNAL \SLL641|Mux190~93_combout\ : std_logic;
SIGNAL \SLL641|Mux190~22_combout\ : std_logic;
SIGNAL \shiftOut~81_combout\ : std_logic;
SIGNAL \C[4]~input_o\ : std_logic;
SIGNAL \shiftOut~82_combout\ : std_logic;
SIGNAL \shiftOut~284_combout\ : std_logic;
SIGNAL \C[5]~input_o\ : std_logic;
SIGNAL \SRL641|Mux119~1_combout\ : std_logic;
SIGNAL \SRA641|Mux119~1_combout\ : std_logic;
SIGNAL \SRL641|Mux43~0_combout\ : std_logic;
SIGNAL \SRA641|Mux42~0_combout\ : std_logic;
SIGNAL \SRA641|Mux42~1_combout\ : std_logic;
SIGNAL \SRA641|Mux117~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~258_combout\ : std_logic;
SIGNAL \SRA641|Mux90~19_combout\ : std_logic;
SIGNAL \SRA641|Mux90~26_combout\ : std_logic;
SIGNAL \SRA641|Mux90~27_combout\ : std_logic;
SIGNAL \SRA641|Mux156~94_combout\ : std_logic;
SIGNAL \SRA641|Mux156~93_combout\ : std_logic;
SIGNAL \SRA641|Mux156~95_combout\ : std_logic;
SIGNAL \shiftOut~83_combout\ : std_logic;
SIGNAL \shiftOut~84_combout\ : std_logic;
SIGNAL \SLL641|Mux190~23_combout\ : std_logic;
SIGNAL \SLL641|Mux190~24_combout\ : std_logic;
SIGNAL \shiftOut~85_combout\ : std_logic;
SIGNAL \shiftOut~86_combout\ : std_logic;
SIGNAL \SRL641|Mux87~0_combout\ : std_logic;
SIGNAL \SRA641|Mux90~25_combout\ : std_logic;
SIGNAL \SRL641|Mux87~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~91_combout\ : std_logic;
SIGNAL \mux1OutUp[37]~10_combout\ : std_logic;
SIGNAL \SRA641|Mux156~92_combout\ : std_logic;
SIGNAL \mux1OutUp[37]~11_combout\ : std_logic;
SIGNAL \shiftOut~285_combout\ : std_logic;
SIGNAL \SRA641|Mux86~0_combout\ : std_logic;
SIGNAL \SRL641|Mux86~0_combout\ : std_logic;
SIGNAL \SRA641|Mux90~28_combout\ : std_logic;
SIGNAL \SRA641|Mux156~97_combout\ : std_logic;
SIGNAL \SRA641|Mux156~98_combout\ : std_logic;
SIGNAL \SRA641|Mux156~99_combout\ : std_logic;
SIGNAL \SRL641|Mux86~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~96_combout\ : std_logic;
SIGNAL \mux1OutUp[38]~12_combout\ : std_logic;
SIGNAL \mux1OutUp[38]~13_combout\ : std_logic;
SIGNAL \C[6]~input_o\ : std_logic;
SIGNAL \shiftOut~87_combout\ : std_logic;
SIGNAL \SRA641|Mux156~100_combout\ : std_logic;
SIGNAL \SRL641|Mux118~0_combout\ : std_logic;
SIGNAL \SRL641|Mux42~0_combout\ : std_logic;
SIGNAL \SRA641|Mux90~29_combout\ : std_logic;
SIGNAL \SRA641|Mux90~30_combout\ : std_logic;
SIGNAL \SRA641|Mux156~101_combout\ : std_logic;
SIGNAL \SRA641|Mux156~102_combout\ : std_logic;
SIGNAL \SRA641|Mux41~0_combout\ : std_logic;
SIGNAL \SRA641|Mux41~1_combout\ : std_logic;
SIGNAL \SRA641|Mux116~0_combout\ : std_logic;
SIGNAL \SRA641|Mux118~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~259_combout\ : std_logic;
SIGNAL \shiftOut~88_combout\ : std_logic;
SIGNAL \SLL641|Mux190~26_combout\ : std_logic;
SIGNAL \SLL641|Mux190~25_combout\ : std_logic;
SIGNAL \SLL641|Mux190~27_combout\ : std_logic;
SIGNAL \shiftOut~89_combout\ : std_logic;
SIGNAL \shiftOut~90_combout\ : std_logic;
SIGNAL \shiftOut~286_combout\ : std_logic;
SIGNAL \shiftOut~91_combout\ : std_logic;
SIGNAL \SRA641|Mux117~1_combout\ : std_logic;
SIGNAL \SRL641|Mux117~0_combout\ : std_logic;
SIGNAL \SRA641|Mux40~0_combout\ : std_logic;
SIGNAL \SRL641|Mux41~0_combout\ : std_logic;
SIGNAL \SRA641|Mux40~1_combout\ : std_logic;
SIGNAL \SRA641|Mux115~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~260_combout\ : std_logic;
SIGNAL \SRA641|Mux90~32_combout\ : std_logic;
SIGNAL \SRA641|Mux90~33_combout\ : std_logic;
SIGNAL \SRA641|Mux156~105_combout\ : std_logic;
SIGNAL \SRA641|Mux156~106_combout\ : std_logic;
SIGNAL \shiftOut~92_combout\ : std_logic;
SIGNAL \SLL641|Mux190~28_combout\ : std_logic;
SIGNAL \SLL641|Mux190~29_combout\ : std_logic;
SIGNAL \shiftOut~93_combout\ : std_logic;
SIGNAL \C[7]~input_o\ : std_logic;
SIGNAL \shiftOut~94_combout\ : std_logic;
SIGNAL \SRA641|Mux90~31_combout\ : std_logic;
SIGNAL \SRL641|Mux85~0_combout\ : std_logic;
SIGNAL \SRL641|Mux85~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~103_combout\ : std_logic;
SIGNAL \SRA641|Mux156~104_combout\ : std_logic;
SIGNAL \mux1OutUp[39]~14_combout\ : std_logic;
SIGNAL \mux1OutUp[39]~15_combout\ : std_logic;
SIGNAL \shiftOut~287_combout\ : std_logic;
SIGNAL \SRL641|Mux84~0_combout\ : std_logic;
SIGNAL \SRA641|Mux90~34_combout\ : std_logic;
SIGNAL \SRL641|Mux84~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~107_combout\ : std_logic;
SIGNAL \mux1OutUp[40]~16_combout\ : std_logic;
SIGNAL \SRA641|Mux156~109_combout\ : std_logic;
SIGNAL \SRA641|Mux82~1_combout\ : std_logic;
SIGNAL \SRA641|Mux82~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~110_combout\ : std_logic;
SIGNAL \SLL641|Mux190~21_combout\ : std_logic;
SIGNAL \SRA641|Mux156~108_combout\ : std_logic;
SIGNAL \SRA641|Mux156~111_combout\ : std_logic;
SIGNAL \mux1OutUp[40]~17_combout\ : std_logic;
SIGNAL \C[8]~input_o\ : std_logic;
SIGNAL \SLL641|Mux115~0_combout\ : std_logic;
SIGNAL \SLL641|Mux119~0_combout\ : std_logic;
SIGNAL \SLL641|Mux190~94_combout\ : std_logic;
SIGNAL \SLL641|Mux190~30_combout\ : std_logic;
SIGNAL \SRA641|Mux116~1_combout\ : std_logic;
SIGNAL \SRA641|Mux39~0_combout\ : std_logic;
SIGNAL \SRL641|Mux40~0_combout\ : std_logic;
SIGNAL \SRA641|Mux39~1_combout\ : std_logic;
SIGNAL \SRA641|Mux114~0_combout\ : std_logic;
SIGNAL \SRL641|Mux116~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~261_combout\ : std_logic;
SIGNAL \shiftOut~95_combout\ : std_logic;
SIGNAL \SRA641|Mux90~35_combout\ : std_logic;
SIGNAL \SRA641|Mux90~36_combout\ : std_logic;
SIGNAL \SRA641|Mux156~112_combout\ : std_logic;
SIGNAL \SRA641|Mux156~113_combout\ : std_logic;
SIGNAL \shiftOut~96_combout\ : std_logic;
SIGNAL \shiftOut~97_combout\ : std_logic;
SIGNAL \shiftOut~98_combout\ : std_logic;
SIGNAL \shiftOut~288_combout\ : std_logic;
SIGNAL \SRL641|Mux83~0_combout\ : std_logic;
SIGNAL \SRL641|Mux83~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~114_combout\ : std_logic;
SIGNAL \mux1OutUp[41]~18_combout\ : std_logic;
SIGNAL \SRA641|Mux156~115_combout\ : std_logic;
SIGNAL \mux1OutUp[41]~19_combout\ : std_logic;
SIGNAL \C[9]~input_o\ : std_logic;
SIGNAL \SLL641|Mux114~0_combout\ : std_logic;
SIGNAL \SLL641|Mux118~0_combout\ : std_logic;
SIGNAL \SLL641|Mux190~31_combout\ : std_logic;
SIGNAL \shiftOut~99_combout\ : std_logic;
SIGNAL \SRA641|Mux113~0_combout\ : std_logic;
SIGNAL \SRL641|Mux39~0_combout\ : std_logic;
SIGNAL \SRA641|Mux38~0_combout\ : std_logic;
SIGNAL \SRA641|Mux38~1_combout\ : std_logic;
SIGNAL \SRA641|Mux113~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~262_combout\ : std_logic;
SIGNAL \SRA641|Mux90~37_combout\ : std_logic;
SIGNAL \SRA641|Mux90~38_combout\ : std_logic;
SIGNAL \SRA641|Mux156~116_combout\ : std_logic;
SIGNAL \SRA641|Mux156~117_combout\ : std_logic;
SIGNAL \shiftOut~100_combout\ : std_logic;
SIGNAL \shiftOut~101_combout\ : std_logic;
SIGNAL \shiftOut~102_combout\ : std_logic;
SIGNAL \shiftOut~289_combout\ : std_logic;
SIGNAL \SLL641|Mux113~0_combout\ : std_logic;
SIGNAL \SLL641|Mux117~0_combout\ : std_logic;
SIGNAL \SLL641|Mux190~95_combout\ : std_logic;
SIGNAL \SLL641|Mux190~32_combout\ : std_logic;
SIGNAL \SRL641|Mux38~0_combout\ : std_logic;
SIGNAL \SRA641|Mux37~0_combout\ : std_logic;
SIGNAL \SRA641|Mux37~1_combout\ : std_logic;
SIGNAL \SRA641|Mux112~0_combout\ : std_logic;
SIGNAL \SRA641|Mux112~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~263_combout\ : std_logic;
SIGNAL \shiftOut~103_combout\ : std_logic;
SIGNAL \SRA641|Mux90~39_combout\ : std_logic;
SIGNAL \SRA641|Mux90~40_combout\ : std_logic;
SIGNAL \SRA641|Mux156~122_combout\ : std_logic;
SIGNAL \SRA641|Mux156~123_combout\ : std_logic;
SIGNAL \shiftOut~104_combout\ : std_logic;
SIGNAL \shiftOut~105_combout\ : std_logic;
SIGNAL \C[10]~input_o\ : std_logic;
SIGNAL \shiftOut~106_combout\ : std_logic;
SIGNAL \SRL641|Mux82~1_combout\ : std_logic;
SIGNAL \SRL641|Mux82~0_combout\ : std_logic;
SIGNAL \SRL641|Mux82~2_combout\ : std_logic;
SIGNAL \SRA641|Mux156~118_combout\ : std_logic;
SIGNAL \mux1OutUp[42]~20_combout\ : std_logic;
SIGNAL \SRA641|Mux156~119_combout\ : std_logic;
SIGNAL \SRA641|Mux156~270_combout\ : std_logic;
SIGNAL \SRA641|Mux156~120_combout\ : std_logic;
SIGNAL \SRA641|Mux156~121_combout\ : std_logic;
SIGNAL \mux1OutUp[42]~21_combout\ : std_logic;
SIGNAL \shiftOut~290_combout\ : std_logic;
SIGNAL \SLL641|Mux112~0_combout\ : std_logic;
SIGNAL \SLL641|Mux116~0_combout\ : std_logic;
SIGNAL \SLL641|Mux190~33_combout\ : std_logic;
SIGNAL \SRA641|Mux156~126_combout\ : std_logic;
SIGNAL \SRL641|Mux37~0_combout\ : std_logic;
SIGNAL \SRA641|Mux90~41_combout\ : std_logic;
SIGNAL \SRA641|Mux90~42_combout\ : std_logic;
SIGNAL \SRA641|Mux156~127_combout\ : std_logic;
SIGNAL \SRA641|Mux36~0_combout\ : std_logic;
SIGNAL \SRA641|Mux36~1_combout\ : std_logic;
SIGNAL \SRA641|Mux111~0_combout\ : std_logic;
SIGNAL \SRA641|Mux111~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~128_combout\ : std_logic;
SIGNAL \shiftOut~107_combout\ : std_logic;
SIGNAL \shiftOut~108_combout\ : std_logic;
SIGNAL \shiftOut~109_combout\ : std_logic;
SIGNAL \C[11]~input_o\ : std_logic;
SIGNAL \shiftOut~110_combout\ : std_logic;
SIGNAL \SRL641|Mux81~0_combout\ : std_logic;
SIGNAL \SRL641|Mux81~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~124_combout\ : std_logic;
SIGNAL \SRA641|Mux156~125_combout\ : std_logic;
SIGNAL \mux1OutUp[43]~22_combout\ : std_logic;
SIGNAL \mux1OutUp[43]~23_combout\ : std_logic;
SIGNAL \shiftOut~291_combout\ : std_logic;
SIGNAL \C[12]~input_o\ : std_logic;
SIGNAL \SRL641|Mux36~0_combout\ : std_logic;
SIGNAL \SRA641|Mux90~44_combout\ : std_logic;
SIGNAL \SRA641|Mux90~45_combout\ : std_logic;
SIGNAL \SRA641|Mux156~134_combout\ : std_logic;
SIGNAL \SRA641|Mux156~135_combout\ : std_logic;
SIGNAL \shiftOut~111_combout\ : std_logic;
SIGNAL \SRA641|Mux110~0_combout\ : std_logic;
SIGNAL \SRA641|Mux35~0_combout\ : std_logic;
SIGNAL \SRA641|Mux35~1_combout\ : std_logic;
SIGNAL \SRA641|Mux110~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~136_combout\ : std_logic;
SIGNAL \shiftOut~112_combout\ : std_logic;
SIGNAL \SLL641|Mux190~96_combout\ : std_logic;
SIGNAL \SLL641|Mux115~1_combout\ : std_logic;
SIGNAL \SLL641|Mux115~2_combout\ : std_logic;
SIGNAL \SLL641|Mux190~34_combout\ : std_logic;
SIGNAL \shiftOut~113_combout\ : std_logic;
SIGNAL \shiftOut~114_combout\ : std_logic;
SIGNAL \SRA641|Mux90~43_combout\ : std_logic;
SIGNAL \SRL641|Mux80~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~129_combout\ : std_logic;
SIGNAL \mux1OutUp[44]~24_combout\ : std_logic;
SIGNAL \SRA641|Mux156~131_combout\ : std_logic;
SIGNAL \SRA641|Mux156~130_combout\ : std_logic;
SIGNAL \SRA641|Mux156~132_combout\ : std_logic;
SIGNAL \SRA641|Mux156~133_combout\ : std_logic;
SIGNAL \mux1OutUp[44]~25_combout\ : std_logic;
SIGNAL \shiftOut~292_combout\ : std_logic;
SIGNAL \SRA641|Mux90~46_combout\ : std_logic;
SIGNAL \SRL641|Mux79~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~137_combout\ : std_logic;
SIGNAL \mux1OutUp[45]~26_combout\ : std_logic;
SIGNAL \SRA641|Mux156~138_combout\ : std_logic;
SIGNAL \mux1OutUp[45]~27_combout\ : std_logic;
SIGNAL \C[13]~input_o\ : std_logic;
SIGNAL \SLL641|Mux114~1_combout\ : std_logic;
SIGNAL \SLL641|Mux114~2_combout\ : std_logic;
SIGNAL \SLL641|Mux190~35_combout\ : std_logic;
SIGNAL \SRA641|Mux156~139_combout\ : std_logic;
SIGNAL \SRL641|Mux35~0_combout\ : std_logic;
SIGNAL \SRA641|Mux90~47_combout\ : std_logic;
SIGNAL \SRA641|Mux90~48_combout\ : std_logic;
SIGNAL \SRA641|Mux156~140_combout\ : std_logic;
SIGNAL \shiftOut~115_combout\ : std_logic;
SIGNAL \SRA641|Mux34~0_combout\ : std_logic;
SIGNAL \SRA641|Mux34~1_combout\ : std_logic;
SIGNAL \SRA641|Mux109~0_combout\ : std_logic;
SIGNAL \SRA641|Mux109~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~141_combout\ : std_logic;
SIGNAL \shiftOut~116_combout\ : std_logic;
SIGNAL \shiftOut~117_combout\ : std_logic;
SIGNAL \shiftOut~118_combout\ : std_logic;
SIGNAL \shiftOut~293_combout\ : std_logic;
SIGNAL \C[14]~input_o\ : std_logic;
SIGNAL \SLL641|Mux113~1_combout\ : std_logic;
SIGNAL \SLL641|Mux113~2_combout\ : std_logic;
SIGNAL \SLL641|Mux190~36_combout\ : std_logic;
SIGNAL \shiftOut~119_combout\ : std_logic;
SIGNAL \SRA641|Mux90~50_combout\ : std_logic;
SIGNAL \SRL641|Mux34~0_combout\ : std_logic;
SIGNAL \SRA641|Mux90~51_combout\ : std_logic;
SIGNAL \SRA641|Mux156~146_combout\ : std_logic;
SIGNAL \SRA641|Mux156~147_combout\ : std_logic;
SIGNAL \SRA641|Mux33~0_combout\ : std_logic;
SIGNAL \SRA641|Mux33~1_combout\ : std_logic;
SIGNAL \SRA641|Mux108~0_combout\ : std_logic;
SIGNAL \SRA641|Mux108~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~148_combout\ : std_logic;
SIGNAL \shiftOut~120_combout\ : std_logic;
SIGNAL \shiftOut~121_combout\ : std_logic;
SIGNAL \shiftOut~122_combout\ : std_logic;
SIGNAL \SRA641|Mux90~49_combout\ : std_logic;
SIGNAL \SRA641|Mux156~142_combout\ : std_logic;
SIGNAL \SRA641|Mux156~144_combout\ : std_logic;
SIGNAL \SRA641|Mux156~145_combout\ : std_logic;
SIGNAL \SRA641|Mux156~143_combout\ : std_logic;
SIGNAL \mux1OutUp[46]~28_combout\ : std_logic;
SIGNAL \mux1OutUp[46]~29_combout\ : std_logic;
SIGNAL \shiftOut~294_combout\ : std_logic;
SIGNAL \SRA641|Mux90~52_combout\ : std_logic;
SIGNAL \SRA641|Mux156~149_combout\ : std_logic;
SIGNAL \SRA641|Mux156~150_combout\ : std_logic;
SIGNAL \SRA641|Mux156~151_combout\ : std_logic;
SIGNAL \mux1OutUp[47]~30_combout\ : std_logic;
SIGNAL \mux1OutUp[47]~31_combout\ : std_logic;
SIGNAL \C[15]~input_o\ : std_logic;
SIGNAL \SRA641|Mux32~0_combout\ : std_logic;
SIGNAL \SRL641|Mux33~0_combout\ : std_logic;
SIGNAL \SRA641|Mux32~1_combout\ : std_logic;
SIGNAL \SRA641|Mux107~0_combout\ : std_logic;
SIGNAL \SRA641|Mux107~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~154_combout\ : std_logic;
SIGNAL \SRA641|Mux90~53_combout\ : std_logic;
SIGNAL \SRA641|Mux90~54_combout\ : std_logic;
SIGNAL \SRA641|Mux156~152_combout\ : std_logic;
SIGNAL \SRA641|Mux156~153_combout\ : std_logic;
SIGNAL \shiftOut~123_combout\ : std_logic;
SIGNAL \shiftOut~124_combout\ : std_logic;
SIGNAL \SLL641|Mux112~1_combout\ : std_logic;
SIGNAL \SLL641|Mux112~2_combout\ : std_logic;
SIGNAL \SLL641|Mux190~37_combout\ : std_logic;
SIGNAL \shiftOut~125_combout\ : std_logic;
SIGNAL \shiftOut~126_combout\ : std_logic;
SIGNAL \shiftOut~295_combout\ : std_logic;
SIGNAL \SRA641|Mux90~55_combout\ : std_logic;
SIGNAL \SRA641|Mux156~156_combout\ : std_logic;
SIGNAL \SRA641|Mux156~155_combout\ : std_logic;
SIGNAL \SRA641|Mux156~157_combout\ : std_logic;
SIGNAL \mux1OutUp[48]~32_combout\ : std_logic;
SIGNAL \SRA641|Mux156~264_combout\ : std_logic;
SIGNAL \SRA641|Mux74~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~158_combout\ : std_logic;
SIGNAL \SRA641|Mux156~159_combout\ : std_logic;
SIGNAL \mux1OutUp[48]~33_combout\ : std_logic;
SIGNAL \shiftOut~127_combout\ : std_logic;
SIGNAL \SRA641|Mux90~56_combout\ : std_logic;
SIGNAL \SRL641|Mux32~0_combout\ : std_logic;
SIGNAL \SRA641|Mux90~57_combout\ : std_logic;
SIGNAL \SRA641|Mux156~160_combout\ : std_logic;
SIGNAL \SRA641|Mux156~161_combout\ : std_logic;
SIGNAL \SRA641|Mux156~252_combout\ : std_logic;
SIGNAL \SRA641|Mux90~58_combout\ : std_logic;
SIGNAL \SRA641|Mux106~0_combout\ : std_logic;
SIGNAL \SRA641|Mux106~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~162_combout\ : std_logic;
SIGNAL \shiftOut~128_combout\ : std_logic;
SIGNAL \SRA641|Mux19~16_combout\ : std_logic;
SIGNAL \SLL641|Mux111~0_combout\ : std_logic;
SIGNAL \SLL641|Mux111~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~38_combout\ : std_logic;
SIGNAL \shiftOut~129_combout\ : std_logic;
SIGNAL \C[16]~input_o\ : std_logic;
SIGNAL \shiftOut~130_combout\ : std_logic;
SIGNAL \shiftOut~296_combout\ : std_logic;
SIGNAL \SRA641|Mux156~163_combout\ : std_logic;
SIGNAL \SRL641|Mux75~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~164_combout\ : std_logic;
SIGNAL \SRA641|Mux156~265_combout\ : std_logic;
SIGNAL \SRA641|Mux156~165_combout\ : std_logic;
SIGNAL \mux1OutUp[49]~34_combout\ : std_logic;
SIGNAL \SRA641|Mux73~0_combout\ : std_logic;
SIGNAL \SRA641|Mux73~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~166_combout\ : std_logic;
SIGNAL \SRA641|Mux156~167_combout\ : std_logic;
SIGNAL \mux1OutUp[49]~35_combout\ : std_logic;
SIGNAL \C[17]~input_o\ : std_logic;
SIGNAL \SRA641|Mux19~17_combout\ : std_logic;
SIGNAL \SLL641|Mux110~0_combout\ : std_logic;
SIGNAL \SLL641|Mux110~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~39_combout\ : std_logic;
SIGNAL \shiftOut~131_combout\ : std_logic;
SIGNAL \SRA641|Mux90~59_combout\ : std_logic;
SIGNAL \SRA641|Mux90~60_combout\ : std_logic;
SIGNAL \SRA641|Mux90~61_combout\ : std_logic;
SIGNAL \SRA641|Mux156~168_combout\ : std_logic;
SIGNAL \SRA641|Mux156~169_combout\ : std_logic;
SIGNAL \SRA641|Mux105~0_combout\ : std_logic;
SIGNAL \SRA641|Mux90~62_combout\ : std_logic;
SIGNAL \SRA641|Mux105~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~170_combout\ : std_logic;
SIGNAL \shiftOut~132_combout\ : std_logic;
SIGNAL \shiftOut~133_combout\ : std_logic;
SIGNAL \shiftOut~134_combout\ : std_logic;
SIGNAL \shiftOut~297_combout\ : std_logic;
SIGNAL \C[18]~input_o\ : std_logic;
SIGNAL \SRA641|Mux90~63_combout\ : std_logic;
SIGNAL \SRA641|Mux90~64_combout\ : std_logic;
SIGNAL \SRA641|Mux90~65_combout\ : std_logic;
SIGNAL \SRA641|Mux156~175_combout\ : std_logic;
SIGNAL \SRA641|Mux156~176_combout\ : std_logic;
SIGNAL \shiftOut~135_combout\ : std_logic;
SIGNAL \SRA641|Mux104~0_combout\ : std_logic;
SIGNAL \SRA641|Mux90~66_combout\ : std_logic;
SIGNAL \SRA641|Mux104~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~177_combout\ : std_logic;
SIGNAL \shiftOut~136_combout\ : std_logic;
SIGNAL \SRA641|Mux19~18_combout\ : std_logic;
SIGNAL \SLL641|Mux109~0_combout\ : std_logic;
SIGNAL \SLL641|Mux109~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~40_combout\ : std_logic;
SIGNAL \shiftOut~137_combout\ : std_logic;
SIGNAL \shiftOut~138_combout\ : std_logic;
SIGNAL \SRA641|Mux156~266_combout\ : std_logic;
SIGNAL \SRL641|Mux74~0_combout\ : std_logic;
SIGNAL \SRA641|Mux74~1_combout\ : std_logic;
SIGNAL \SRA641|Mux72~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~173_combout\ : std_logic;
SIGNAL \SRA641|Mux156~174_combout\ : std_logic;
SIGNAL \SRA641|Mux156~171_combout\ : std_logic;
SIGNAL \SRA641|Mux156~172_combout\ : std_logic;
SIGNAL \mux1OutUp[50]~36_combout\ : std_logic;
SIGNAL \mux1OutUp[50]~37_combout\ : std_logic;
SIGNAL \shiftOut~298_combout\ : std_logic;
SIGNAL \SRL641|Mux73~0_combout\ : std_logic;
SIGNAL \SRA641|Mux71~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~180_combout\ : std_logic;
SIGNAL \SRA641|Mux156~181_combout\ : std_logic;
SIGNAL \SRA641|Mux156~178_combout\ : std_logic;
SIGNAL \SRA641|Mux156~179_combout\ : std_logic;
SIGNAL \mux1OutUp[51]~38_combout\ : std_logic;
SIGNAL \mux1OutUp[51]~39_combout\ : std_logic;
SIGNAL \C[19]~input_o\ : std_logic;
SIGNAL \SRA641|Mux19~19_combout\ : std_logic;
SIGNAL \SLL641|Mux108~0_combout\ : std_logic;
SIGNAL \SLL641|Mux108~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~41_combout\ : std_logic;
SIGNAL \SRA641|Mux90~69_combout\ : std_logic;
SIGNAL \SRA641|Mux90~85_combout\ : std_logic;
SIGNAL \SRA641|Mux103~0_combout\ : std_logic;
SIGNAL \SRA641|Mux103~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~184_combout\ : std_logic;
SIGNAL \shiftOut~139_combout\ : std_logic;
SIGNAL \SRA641|Mux90~67_combout\ : std_logic;
SIGNAL \SRA641|Mux90~68_combout\ : std_logic;
SIGNAL \SRA641|Mux156~182_combout\ : std_logic;
SIGNAL \SRA641|Mux156~183_combout\ : std_logic;
SIGNAL \shiftOut~140_combout\ : std_logic;
SIGNAL \shiftOut~141_combout\ : std_logic;
SIGNAL \shiftOut~142_combout\ : std_logic;
SIGNAL \shiftOut~299_combout\ : std_logic;
SIGNAL \SRA641|Mux156~185_combout\ : std_logic;
SIGNAL \SRA641|Mux156~186_combout\ : std_logic;
SIGNAL \mux1OutUp[52]~40_combout\ : std_logic;
SIGNAL \SRA641|Mux156~187_combout\ : std_logic;
SIGNAL \SRA641|Mux156~188_combout\ : std_logic;
SIGNAL \SRA641|Mux156~267_combout\ : std_logic;
SIGNAL \SRA641|Mux156~189_combout\ : std_logic;
SIGNAL \mux1OutUp[52]~41_combout\ : std_logic;
SIGNAL \C[20]~input_o\ : std_logic;
SIGNAL \SRA641|Mux90~70_combout\ : std_logic;
SIGNAL \SRA641|Mux90~71_combout\ : std_logic;
SIGNAL \SRA641|Mux156~190_combout\ : std_logic;
SIGNAL \SRA641|Mux156~191_combout\ : std_logic;
SIGNAL \shiftOut~143_combout\ : std_logic;
SIGNAL \SRA641|Mux90~72_combout\ : std_logic;
SIGNAL \SRA641|Mux90~73_combout\ : std_logic;
SIGNAL \SRA641|Mux102~4_combout\ : std_logic;
SIGNAL \SRA641|Mux102~2_combout\ : std_logic;
SIGNAL \SRA641|Mux102~3_combout\ : std_logic;
SIGNAL \SRA641|Mux156~192_combout\ : std_logic;
SIGNAL \shiftOut~144_combout\ : std_logic;
SIGNAL \SRA641|Mux19~20_combout\ : std_logic;
SIGNAL \SLL641|Mux107~0_combout\ : std_logic;
SIGNAL \SLL641|Mux107~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~42_combout\ : std_logic;
SIGNAL \shiftOut~145_combout\ : std_logic;
SIGNAL \shiftOut~146_combout\ : std_logic;
SIGNAL \shiftOut~300_combout\ : std_logic;
SIGNAL \SRA641|Mux156~194_combout\ : std_logic;
SIGNAL \SRA641|Mux156~195_combout\ : std_logic;
SIGNAL \SRA641|Mux156~196_combout\ : std_logic;
SIGNAL \SRA641|Mux156~193_combout\ : std_logic;
SIGNAL \mux1OutUp[53]~42_combout\ : std_logic;
SIGNAL \mux1OutUp[53]~43_combout\ : std_logic;
SIGNAL \C[21]~input_o\ : std_logic;
SIGNAL \SRA641|Mux90~74_combout\ : std_logic;
SIGNAL \SRA641|Mux156~197_combout\ : std_logic;
SIGNAL \SRA641|Mux156~198_combout\ : std_logic;
SIGNAL \SRA641|Mux101~0_combout\ : std_logic;
SIGNAL \SRA641|Mux101~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~199_combout\ : std_logic;
SIGNAL \shiftOut~147_combout\ : std_logic;
SIGNAL \shiftOut~148_combout\ : std_logic;
SIGNAL \SRA641|Mux19~21_combout\ : std_logic;
SIGNAL \SLL641|Mux106~0_combout\ : std_logic;
SIGNAL \SLL641|Mux106~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~43_combout\ : std_logic;
SIGNAL \shiftOut~149_combout\ : std_logic;
SIGNAL \shiftOut~150_combout\ : std_logic;
SIGNAL \shiftOut~301_combout\ : std_logic;
SIGNAL \C[22]~input_o\ : std_logic;
SIGNAL \shiftOut~151_combout\ : std_logic;
SIGNAL \SRA641|Mux90~75_combout\ : std_logic;
SIGNAL \SRA641|Mux100~0_combout\ : std_logic;
SIGNAL \SRA641|Mux100~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~205_combout\ : std_logic;
SIGNAL \SRA641|Mux156~203_combout\ : std_logic;
SIGNAL \SRA641|Mux156~204_combout\ : std_logic;
SIGNAL \shiftOut~152_combout\ : std_logic;
SIGNAL \SRA641|Mux19~22_combout\ : std_logic;
SIGNAL \SLL641|Mux105~0_combout\ : std_logic;
SIGNAL \SLL641|Mux105~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~44_combout\ : std_logic;
SIGNAL \shiftOut~153_combout\ : std_logic;
SIGNAL \shiftOut~154_combout\ : std_logic;
SIGNAL \SRA641|Mux156~200_combout\ : std_logic;
SIGNAL \mux1OutUp[54]~44_combout\ : std_logic;
SIGNAL \SRA641|Mux156~201_combout\ : std_logic;
SIGNAL \SRA641|Mux156~202_combout\ : std_logic;
SIGNAL \mux1OutUp[54]~45_combout\ : std_logic;
SIGNAL \shiftOut~302_combout\ : std_logic;
SIGNAL \SRA641|Mux156~206_combout\ : std_logic;
SIGNAL \mux1OutUp[55]~46_combout\ : std_logic;
SIGNAL \SRA641|Mux156~207_combout\ : std_logic;
SIGNAL \mux1OutUp[55]~47_combout\ : std_logic;
SIGNAL \C[23]~input_o\ : std_logic;
SIGNAL \SRA641|Mux90~76_combout\ : std_logic;
SIGNAL \SRA641|Mux99~0_combout\ : std_logic;
SIGNAL \SRA641|Mux99~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~210_combout\ : std_logic;
SIGNAL \SRA641|Mux156~208_combout\ : std_logic;
SIGNAL \SRA641|Mux156~209_combout\ : std_logic;
SIGNAL \shiftOut~155_combout\ : std_logic;
SIGNAL \shiftOut~156_combout\ : std_logic;
SIGNAL \SRA641|Mux19~23_combout\ : std_logic;
SIGNAL \SLL641|Mux104~0_combout\ : std_logic;
SIGNAL \SLL641|Mux104~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~45_combout\ : std_logic;
SIGNAL \shiftOut~157_combout\ : std_logic;
SIGNAL \shiftOut~158_combout\ : std_logic;
SIGNAL \shiftOut~303_combout\ : std_logic;
SIGNAL \C[24]~input_o\ : std_logic;
SIGNAL \SRA641|Mux19~24_combout\ : std_logic;
SIGNAL \SLL641|Mux103~3_combout\ : std_logic;
SIGNAL \SLL641|Mux103~2_combout\ : std_logic;
SIGNAL \SLL641|Mux103~4_combout\ : std_logic;
SIGNAL \SLL641|Mux190~46_combout\ : std_logic;
SIGNAL \SRA641|Mux90~77_combout\ : std_logic;
SIGNAL \SRA641|Mux98~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~216_combout\ : std_logic;
SIGNAL \SRA641|Mux156~214_combout\ : std_logic;
SIGNAL \SRA641|Mux156~215_combout\ : std_logic;
SIGNAL \shiftOut~159_combout\ : std_logic;
SIGNAL \shiftOut~160_combout\ : std_logic;
SIGNAL \shiftOut~161_combout\ : std_logic;
SIGNAL \shiftOut~162_combout\ : std_logic;
SIGNAL \SRA641|Mux156~211_combout\ : std_logic;
SIGNAL \mux1OutUp[56]~48_combout\ : std_logic;
SIGNAL \SRA641|Mux156~212_combout\ : std_logic;
SIGNAL \SRA641|Mux156~213_combout\ : std_logic;
SIGNAL \mux1OutUp[56]~49_combout\ : std_logic;
SIGNAL \shiftOut~304_combout\ : std_logic;
SIGNAL \C[25]~input_o\ : std_logic;
SIGNAL \SLL641|Mux102~0_combout\ : std_logic;
SIGNAL \SRA641|Mux19~25_combout\ : std_logic;
SIGNAL \SLL641|Mux102~1_combout\ : std_logic;
SIGNAL \SLL641|Mux102~2_combout\ : std_logic;
SIGNAL \SLL641|Mux190~47_combout\ : std_logic;
SIGNAL \SRA641|Mux90~78_combout\ : std_logic;
SIGNAL \SRA641|Mux97~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~221_combout\ : std_logic;
SIGNAL \shiftOut~163_combout\ : std_logic;
SIGNAL \SRA641|Mux156~219_combout\ : std_logic;
SIGNAL \SRA641|Mux156~220_combout\ : std_logic;
SIGNAL \shiftOut~164_combout\ : std_logic;
SIGNAL \shiftOut~165_combout\ : std_logic;
SIGNAL \shiftOut~166_combout\ : std_logic;
SIGNAL \SRA641|Mux156~217_combout\ : std_logic;
SIGNAL \mux1OutUp[57]~50_combout\ : std_logic;
SIGNAL \SRA641|Mux156~218_combout\ : std_logic;
SIGNAL \mux1OutUp[57]~51_combout\ : std_logic;
SIGNAL \shiftOut~305_combout\ : std_logic;
SIGNAL \C[26]~input_o\ : std_logic;
SIGNAL \SLL641|Mux101~0_combout\ : std_logic;
SIGNAL \SRA641|Mux19~26_combout\ : std_logic;
SIGNAL \SLL641|Mux101~1_combout\ : std_logic;
SIGNAL \SLL641|Mux101~2_combout\ : std_logic;
SIGNAL \SLL641|Mux103~5_combout\ : std_logic;
SIGNAL \SLL641|Mux190~48_combout\ : std_logic;
SIGNAL \SRA641|Mux156~225_combout\ : std_logic;
SIGNAL \SRA641|Mux90~79_combout\ : std_logic;
SIGNAL \SRA641|Mux156~226_combout\ : std_logic;
SIGNAL \SRA641|Mux96~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~227_combout\ : std_logic;
SIGNAL \shiftOut~167_combout\ : std_logic;
SIGNAL \shiftOut~168_combout\ : std_logic;
SIGNAL \shiftOut~169_combout\ : std_logic;
SIGNAL \shiftOut~170_combout\ : std_logic;
SIGNAL \SRA641|Mux156~222_combout\ : std_logic;
SIGNAL \mux1OutUp[58]~52_combout\ : std_logic;
SIGNAL \SRA641|Mux156~223_combout\ : std_logic;
SIGNAL \SRA641|Mux156~224_combout\ : std_logic;
SIGNAL \mux1OutUp[58]~53_combout\ : std_logic;
SIGNAL \shiftOut~306_combout\ : std_logic;
SIGNAL \C[27]~input_o\ : std_logic;
SIGNAL \SRA641|Mux90~80_combout\ : std_logic;
SIGNAL \SRA641|Mux156~230_combout\ : std_logic;
SIGNAL \SRA641|Mux156~231_combout\ : std_logic;
SIGNAL \SRA641|Mux95~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~232_combout\ : std_logic;
SIGNAL \shiftOut~171_combout\ : std_logic;
SIGNAL \shiftOut~172_combout\ : std_logic;
SIGNAL \SRA641|Mux19~27_combout\ : std_logic;
SIGNAL \SLL641|Mux100~1_combout\ : std_logic;
SIGNAL \SLL641|Mux100~0_combout\ : std_logic;
SIGNAL \SLL641|Mux100~2_combout\ : std_logic;
SIGNAL \SLL641|Mux190~49_combout\ : std_logic;
SIGNAL \shiftOut~173_combout\ : std_logic;
SIGNAL \shiftOut~174_combout\ : std_logic;
SIGNAL \SRA641|Mux156~228_combout\ : std_logic;
SIGNAL \SRA641|Mux156~229_combout\ : std_logic;
SIGNAL \mux1OutUp[59]~54_combout\ : std_logic;
SIGNAL \mux1OutUp[59]~55_combout\ : std_logic;
SIGNAL \shiftOut~307_combout\ : std_logic;
SIGNAL \SRA641|Mux156~234_combout\ : std_logic;
SIGNAL \SRA641|Mux156~235_combout\ : std_logic;
SIGNAL \SRA641|Mux156~233_combout\ : std_logic;
SIGNAL \mux1OutUp[60]~56_combout\ : std_logic;
SIGNAL \mux1OutUp[60]~57_combout\ : std_logic;
SIGNAL \C[28]~input_o\ : std_logic;
SIGNAL \SLL641|Mux190~50_combout\ : std_logic;
SIGNAL \SRA641|Mux19~28_combout\ : std_logic;
SIGNAL \SLL641|Mux99~0_combout\ : std_logic;
SIGNAL \SLL641|Mux99~1_combout\ : std_logic;
SIGNAL \SRA641|Mux156~236_combout\ : std_logic;
SIGNAL \SLL641|Mux190~51_combout\ : std_logic;
SIGNAL \SRA641|Mux156~238_combout\ : std_logic;
SIGNAL \SRA641|Mux156~237_combout\ : std_logic;
SIGNAL \SRA641|Mux156~239_combout\ : std_logic;
SIGNAL \SRA641|Mux156~240_combout\ : std_logic;
SIGNAL \SRA641|Mux156~241_combout\ : std_logic;
SIGNAL \SRA641|Mux156~242_combout\ : std_logic;
SIGNAL \shiftOut~175_combout\ : std_logic;
SIGNAL \shiftOut~176_combout\ : std_logic;
SIGNAL \shiftOut~177_combout\ : std_logic;
SIGNAL \shiftOut~178_combout\ : std_logic;
SIGNAL \shiftOut~308_combout\ : std_logic;
SIGNAL \C[29]~input_o\ : std_logic;
SIGNAL \SRA641|Mux156~268_combout\ : std_logic;
SIGNAL \SRA641|Mux156~248_combout\ : std_logic;
SIGNAL \shiftOut~179_combout\ : std_logic;
SIGNAL \SRA641|Mux156~245_combout\ : std_logic;
SIGNAL \SRA641|Mux156~246_combout\ : std_logic;
SIGNAL \SRA641|Mux156~247_combout\ : std_logic;
SIGNAL \shiftOut~180_combout\ : std_logic;
SIGNAL \SRA641|Mux19~29_combout\ : std_logic;
SIGNAL \SLL641|Mux98~0_combout\ : std_logic;
SIGNAL \SLL641|Mux98~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~52_combout\ : std_logic;
SIGNAL \shiftOut~181_combout\ : std_logic;
SIGNAL \shiftOut~182_combout\ : std_logic;
SIGNAL \SRA641|Mux63~0_combout\ : std_logic;
SIGNAL \SRA641|Mux156~244_combout\ : std_logic;
SIGNAL \SRA641|Mux156~243_combout\ : std_logic;
SIGNAL \mux1OutUp[61]~58_combout\ : std_logic;
SIGNAL \mux1OutUp[61]~59_combout\ : std_logic;
SIGNAL \shiftOut~309_combout\ : std_logic;
SIGNAL \C[30]~input_o\ : std_logic;
SIGNAL \SRA641|Mux156~251_combout\ : std_logic;
SIGNAL \SRA641|Mux156~269_combout\ : std_logic;
SIGNAL \shiftOut~183_combout\ : std_logic;
SIGNAL \SRA641|Mux156~249_combout\ : std_logic;
SIGNAL \SRA641|Mux156~250_combout\ : std_logic;
SIGNAL \shiftOut~184_combout\ : std_logic;
SIGNAL \SRA641|Mux19~30_combout\ : std_logic;
SIGNAL \SLL641|Mux97~0_combout\ : std_logic;
SIGNAL \SLL641|Mux97~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~53_combout\ : std_logic;
SIGNAL \shiftOut~185_combout\ : std_logic;
SIGNAL \shiftOut~186_combout\ : std_logic;
SIGNAL \mux1OutUp[62]~60_combout\ : std_logic;
SIGNAL \mux1OutUp[62]~63_combout\ : std_logic;
SIGNAL \mux1OutUp[62]~64_combout\ : std_logic;
SIGNAL \shiftOut~310_combout\ : std_logic;
SIGNAL \SRA641|Mux19~31_combout\ : std_logic;
SIGNAL \SLL641|Mux96~0_combout\ : std_logic;
SIGNAL \SLL641|Mux96~1_combout\ : std_logic;
SIGNAL \mux2OutLow[31]~0_combout\ : std_logic;
SIGNAL \mux2OutLow[31]~1_combout\ : std_logic;
SIGNAL \C[31]~input_o\ : std_logic;
SIGNAL \mux2OutLow[31]~2_combout\ : std_logic;
SIGNAL \SgnExtUp[0]~0_combout\ : std_logic;
SIGNAL \mux1OutUp[31]~61_combout\ : std_logic;
SIGNAL \mux1OutUp[31]~62_combout\ : std_logic;
SIGNAL \mux2OutUp[0]~0_combout\ : std_logic;
SIGNAL \mux2OutUp[0]~1_combout\ : std_logic;
SIGNAL \shiftOut~187_combout\ : std_logic;
SIGNAL \SLL641|Mux190~55_combout\ : std_logic;
SIGNAL \shiftOut~188_combout\ : std_logic;
SIGNAL \SLL641|Mux31~0_combout\ : std_logic;
SIGNAL \SLL641|Mux31~1_combout\ : std_logic;
SIGNAL \SLL641|Mux95~0_combout\ : std_logic;
SIGNAL \SLL641|Mux95~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~54_combout\ : std_logic;
SIGNAL \C[32]~input_o\ : std_logic;
SIGNAL \shiftOut~189_combout\ : std_logic;
SIGNAL \shiftOut~190_combout\ : std_logic;
SIGNAL \shiftOut~191_combout\ : std_logic;
SIGNAL \C[33]~input_o\ : std_logic;
SIGNAL \SLL641|Mux30~0_combout\ : std_logic;
SIGNAL \SLL641|Mux30~1_combout\ : std_logic;
SIGNAL \SLL641|Mux94~0_combout\ : std_logic;
SIGNAL \SLL641|Mux94~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~56_combout\ : std_logic;
SIGNAL \shiftOut~192_combout\ : std_logic;
SIGNAL \shiftOut~193_combout\ : std_logic;
SIGNAL \shiftOut~194_combout\ : std_logic;
SIGNAL \C[34]~input_o\ : std_logic;
SIGNAL \SLL641|Mux29~0_combout\ : std_logic;
SIGNAL \SLL641|Mux29~1_combout\ : std_logic;
SIGNAL \SLL641|Mux93~0_combout\ : std_logic;
SIGNAL \SLL641|Mux93~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~57_combout\ : std_logic;
SIGNAL \shiftOut~195_combout\ : std_logic;
SIGNAL \shiftOut~196_combout\ : std_logic;
SIGNAL \shiftOut~197_combout\ : std_logic;
SIGNAL \SLL641|Mux28~0_combout\ : std_logic;
SIGNAL \SLL641|Mux28~1_combout\ : std_logic;
SIGNAL \SLL641|Mux92~0_combout\ : std_logic;
SIGNAL \SLL641|Mux92~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~58_combout\ : std_logic;
SIGNAL \C[35]~input_o\ : std_logic;
SIGNAL \shiftOut~198_combout\ : std_logic;
SIGNAL \shiftOut~199_combout\ : std_logic;
SIGNAL \shiftOut~200_combout\ : std_logic;
SIGNAL \SLL641|Mux91~1_combout\ : std_logic;
SIGNAL \SLL641|Mux27~0_combout\ : std_logic;
SIGNAL \SLL641|Mux27~1_combout\ : std_logic;
SIGNAL \SLL641|Mux91~0_combout\ : std_logic;
SIGNAL \SLL641|Mux91~2_combout\ : std_logic;
SIGNAL \SLL641|Mux190~59_combout\ : std_logic;
SIGNAL \C[36]~input_o\ : std_logic;
SIGNAL \shiftOut~201_combout\ : std_logic;
SIGNAL \shiftOut~202_combout\ : std_logic;
SIGNAL \shiftOut~203_combout\ : std_logic;
SIGNAL \C[37]~input_o\ : std_logic;
SIGNAL \SLL641|Mux26~0_combout\ : std_logic;
SIGNAL \SLL641|Mux26~1_combout\ : std_logic;
SIGNAL \SLL641|Mux90~0_combout\ : std_logic;
SIGNAL \SLL641|Mux90~1_combout\ : std_logic;
SIGNAL \SLL641|Mux90~2_combout\ : std_logic;
SIGNAL \SLL641|Mux190~60_combout\ : std_logic;
SIGNAL \shiftOut~204_combout\ : std_logic;
SIGNAL \shiftOut~205_combout\ : std_logic;
SIGNAL \shiftOut~206_combout\ : std_logic;
SIGNAL \SLL641|Mux25~0_combout\ : std_logic;
SIGNAL \SLL641|Mux25~1_combout\ : std_logic;
SIGNAL \SLL641|Mux89~0_combout\ : std_logic;
SIGNAL \SLL641|Mux89~1_combout\ : std_logic;
SIGNAL \SLL641|Mux89~2_combout\ : std_logic;
SIGNAL \SLL641|Mux190~61_combout\ : std_logic;
SIGNAL \C[38]~input_o\ : std_logic;
SIGNAL \shiftOut~207_combout\ : std_logic;
SIGNAL \shiftOut~208_combout\ : std_logic;
SIGNAL \shiftOut~209_combout\ : std_logic;
SIGNAL \C[39]~input_o\ : std_logic;
SIGNAL \SLL641|Mux24~0_combout\ : std_logic;
SIGNAL \SLL641|Mux24~1_combout\ : std_logic;
SIGNAL \SLL641|Mux88~0_combout\ : std_logic;
SIGNAL \SLL641|Mux88~1_combout\ : std_logic;
SIGNAL \SLL641|Mux88~2_combout\ : std_logic;
SIGNAL \SLL641|Mux190~62_combout\ : std_logic;
SIGNAL \shiftOut~210_combout\ : std_logic;
SIGNAL \shiftOut~211_combout\ : std_logic;
SIGNAL \shiftOut~212_combout\ : std_logic;
SIGNAL \SLL641|Mux87~0_combout\ : std_logic;
SIGNAL \SLL641|Mux23~0_combout\ : std_logic;
SIGNAL \SLL641|Mux23~1_combout\ : std_logic;
SIGNAL \SLL641|Mux87~1_combout\ : std_logic;
SIGNAL \SLL641|Mux87~2_combout\ : std_logic;
SIGNAL \SLL641|Mux190~63_combout\ : std_logic;
SIGNAL \C[40]~input_o\ : std_logic;
SIGNAL \shiftOut~213_combout\ : std_logic;
SIGNAL \shiftOut~214_combout\ : std_logic;
SIGNAL \shiftOut~215_combout\ : std_logic;
SIGNAL \SLL641|Mux86~0_combout\ : std_logic;
SIGNAL \SLL641|Mux22~0_combout\ : std_logic;
SIGNAL \SLL641|Mux22~1_combout\ : std_logic;
SIGNAL \SLL641|Mux86~1_combout\ : std_logic;
SIGNAL \SLL641|Mux86~2_combout\ : std_logic;
SIGNAL \SLL641|Mux190~64_combout\ : std_logic;
SIGNAL \C[41]~input_o\ : std_logic;
SIGNAL \shiftOut~216_combout\ : std_logic;
SIGNAL \shiftOut~217_combout\ : std_logic;
SIGNAL \shiftOut~218_combout\ : std_logic;
SIGNAL \SLL641|Mux85~0_combout\ : std_logic;
SIGNAL \SLL641|Mux21~0_combout\ : std_logic;
SIGNAL \SLL641|Mux21~1_combout\ : std_logic;
SIGNAL \SLL641|Mux85~1_combout\ : std_logic;
SIGNAL \SLL641|Mux85~2_combout\ : std_logic;
SIGNAL \SLL641|Mux190~65_combout\ : std_logic;
SIGNAL \C[42]~input_o\ : std_logic;
SIGNAL \shiftOut~219_combout\ : std_logic;
SIGNAL \shiftOut~220_combout\ : std_logic;
SIGNAL \shiftOut~221_combout\ : std_logic;
SIGNAL \C[43]~input_o\ : std_logic;
SIGNAL \SLL641|Mux84~0_combout\ : std_logic;
SIGNAL \SLL641|Mux20~0_combout\ : std_logic;
SIGNAL \SLL641|Mux20~1_combout\ : std_logic;
SIGNAL \SLL641|Mux84~1_combout\ : std_logic;
SIGNAL \SLL641|Mux84~2_combout\ : std_logic;
SIGNAL \SLL641|Mux190~66_combout\ : std_logic;
SIGNAL \shiftOut~222_combout\ : std_logic;
SIGNAL \shiftOut~223_combout\ : std_logic;
SIGNAL \shiftOut~224_combout\ : std_logic;
SIGNAL \SLL641|Mux19~0_combout\ : std_logic;
SIGNAL \SLL641|Mux19~1_combout\ : std_logic;
SIGNAL \SLL641|Mux83~0_combout\ : std_logic;
SIGNAL \SLL641|Mux83~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~67_combout\ : std_logic;
SIGNAL \C[44]~input_o\ : std_logic;
SIGNAL \shiftOut~225_combout\ : std_logic;
SIGNAL \shiftOut~226_combout\ : std_logic;
SIGNAL \shiftOut~227_combout\ : std_logic;
SIGNAL \C[45]~input_o\ : std_logic;
SIGNAL \SLL641|Mux18~0_combout\ : std_logic;
SIGNAL \SLL641|Mux18~1_combout\ : std_logic;
SIGNAL \SLL641|Mux82~0_combout\ : std_logic;
SIGNAL \SLL641|Mux82~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~68_combout\ : std_logic;
SIGNAL \shiftOut~228_combout\ : std_logic;
SIGNAL \shiftOut~229_combout\ : std_logic;
SIGNAL \shiftOut~230_combout\ : std_logic;
SIGNAL \C[46]~input_o\ : std_logic;
SIGNAL \SLL641|Mux17~0_combout\ : std_logic;
SIGNAL \SLL641|Mux17~1_combout\ : std_logic;
SIGNAL \SLL641|Mux81~0_combout\ : std_logic;
SIGNAL \SLL641|Mux81~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~69_combout\ : std_logic;
SIGNAL \shiftOut~231_combout\ : std_logic;
SIGNAL \shiftOut~232_combout\ : std_logic;
SIGNAL \shiftOut~233_combout\ : std_logic;
SIGNAL \SLL641|Mux16~0_combout\ : std_logic;
SIGNAL \SLL641|Mux16~1_combout\ : std_logic;
SIGNAL \SLL641|Mux80~0_combout\ : std_logic;
SIGNAL \SLL641|Mux80~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~70_combout\ : std_logic;
SIGNAL \C[47]~input_o\ : std_logic;
SIGNAL \shiftOut~234_combout\ : std_logic;
SIGNAL \shiftOut~235_combout\ : std_logic;
SIGNAL \shiftOut~236_combout\ : std_logic;
SIGNAL \C[48]~input_o\ : std_logic;
SIGNAL \SLL641|Mux15~2_combout\ : std_logic;
SIGNAL \SLL641|Mux15~3_combout\ : std_logic;
SIGNAL \SLL641|Mux79~0_combout\ : std_logic;
SIGNAL \SLL641|Mux79~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~71_combout\ : std_logic;
SIGNAL \shiftOut~237_combout\ : std_logic;
SIGNAL \shiftOut~238_combout\ : std_logic;
SIGNAL \shiftOut~239_combout\ : std_logic;
SIGNAL \SLL641|Mux14~2_combout\ : std_logic;
SIGNAL \SLL641|Mux14~3_combout\ : std_logic;
SIGNAL \SLL641|Mux78~0_combout\ : std_logic;
SIGNAL \SLL641|Mux78~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~72_combout\ : std_logic;
SIGNAL \C[49]~input_o\ : std_logic;
SIGNAL \shiftOut~240_combout\ : std_logic;
SIGNAL \shiftOut~241_combout\ : std_logic;
SIGNAL \shiftOut~242_combout\ : std_logic;
SIGNAL \C[50]~input_o\ : std_logic;
SIGNAL \SLL641|Mux13~2_combout\ : std_logic;
SIGNAL \SLL641|Mux13~3_combout\ : std_logic;
SIGNAL \SLL641|Mux77~0_combout\ : std_logic;
SIGNAL \SLL641|Mux77~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~73_combout\ : std_logic;
SIGNAL \shiftOut~243_combout\ : std_logic;
SIGNAL \shiftOut~244_combout\ : std_logic;
SIGNAL \shiftOut~245_combout\ : std_logic;
SIGNAL \C[51]~input_o\ : std_logic;
SIGNAL \SLL641|Mux12~2_combout\ : std_logic;
SIGNAL \SLL641|Mux12~3_combout\ : std_logic;
SIGNAL \SLL641|Mux76~0_combout\ : std_logic;
SIGNAL \SLL641|Mux76~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~74_combout\ : std_logic;
SIGNAL \shiftOut~246_combout\ : std_logic;
SIGNAL \shiftOut~247_combout\ : std_logic;
SIGNAL \shiftOut~248_combout\ : std_logic;
SIGNAL \C[52]~input_o\ : std_logic;
SIGNAL \SLL641|Mux11~2_combout\ : std_logic;
SIGNAL \SLL641|Mux11~3_combout\ : std_logic;
SIGNAL \SLL641|Mux75~0_combout\ : std_logic;
SIGNAL \SLL641|Mux75~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~75_combout\ : std_logic;
SIGNAL \shiftOut~249_combout\ : std_logic;
SIGNAL \shiftOut~250_combout\ : std_logic;
SIGNAL \shiftOut~251_combout\ : std_logic;
SIGNAL \C[53]~input_o\ : std_logic;
SIGNAL \SLL641|Mux10~2_combout\ : std_logic;
SIGNAL \SLL641|Mux10~3_combout\ : std_logic;
SIGNAL \SLL641|Mux74~0_combout\ : std_logic;
SIGNAL \SLL641|Mux74~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~76_combout\ : std_logic;
SIGNAL \shiftOut~252_combout\ : std_logic;
SIGNAL \shiftOut~253_combout\ : std_logic;
SIGNAL \shiftOut~254_combout\ : std_logic;
SIGNAL \C[54]~input_o\ : std_logic;
SIGNAL \SLL641|Mux9~2_combout\ : std_logic;
SIGNAL \SLL641|Mux9~3_combout\ : std_logic;
SIGNAL \SLL641|Mux73~0_combout\ : std_logic;
SIGNAL \SLL641|Mux73~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~77_combout\ : std_logic;
SIGNAL \shiftOut~255_combout\ : std_logic;
SIGNAL \shiftOut~256_combout\ : std_logic;
SIGNAL \shiftOut~257_combout\ : std_logic;
SIGNAL \SLL641|Mux8~2_combout\ : std_logic;
SIGNAL \SLL641|Mux8~3_combout\ : std_logic;
SIGNAL \SLL641|Mux72~0_combout\ : std_logic;
SIGNAL \SLL641|Mux72~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~78_combout\ : std_logic;
SIGNAL \C[55]~input_o\ : std_logic;
SIGNAL \shiftOut~258_combout\ : std_logic;
SIGNAL \shiftOut~259_combout\ : std_logic;
SIGNAL \shiftOut~260_combout\ : std_logic;
SIGNAL \C[56]~input_o\ : std_logic;
SIGNAL \SLL641|Mux121~0_combout\ : std_logic;
SIGNAL \SLL641|Mux121~1_combout\ : std_logic;
SIGNAL \SLL641|Mux123~0_combout\ : std_logic;
SIGNAL \SLL641|Mux123~1_combout\ : std_logic;
SIGNAL \SLL641|Mux71~0_combout\ : std_logic;
SIGNAL \SLL641|Mux190~79_combout\ : std_logic;
SIGNAL \shiftOut~261_combout\ : std_logic;
SIGNAL \shiftOut~262_combout\ : std_logic;
SIGNAL \shiftOut~263_combout\ : std_logic;
SIGNAL \C[57]~input_o\ : std_logic;
SIGNAL \SLL641|Mux122~0_combout\ : std_logic;
SIGNAL \SLL641|Mux122~1_combout\ : std_logic;
SIGNAL \SLL641|Mux70~0_combout\ : std_logic;
SIGNAL \SLL641|Mux190~80_combout\ : std_logic;
SIGNAL \shiftOut~264_combout\ : std_logic;
SIGNAL \shiftOut~265_combout\ : std_logic;
SIGNAL \shiftOut~266_combout\ : std_logic;
SIGNAL \C[58]~input_o\ : std_logic;
SIGNAL \SLL641|Mux121~2_combout\ : std_logic;
SIGNAL \SLL641|Mux121~3_combout\ : std_logic;
SIGNAL \SLL641|Mux69~0_combout\ : std_logic;
SIGNAL \SLL641|Mux190~81_combout\ : std_logic;
SIGNAL \shiftOut~267_combout\ : std_logic;
SIGNAL \shiftOut~268_combout\ : std_logic;
SIGNAL \shiftOut~269_combout\ : std_logic;
SIGNAL \C[59]~input_o\ : std_logic;
SIGNAL \SLL641|Mux120~0_combout\ : std_logic;
SIGNAL \SLL641|Mux120~1_combout\ : std_logic;
SIGNAL \SLL641|Mux68~0_combout\ : std_logic;
SIGNAL \SLL641|Mux190~82_combout\ : std_logic;
SIGNAL \shiftOut~270_combout\ : std_logic;
SIGNAL \shiftOut~271_combout\ : std_logic;
SIGNAL \shiftOut~272_combout\ : std_logic;
SIGNAL \C[60]~input_o\ : std_logic;
SIGNAL \SLL641|Mux67~0_combout\ : std_logic;
SIGNAL \SLL641|Mux67~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~83_combout\ : std_logic;
SIGNAL \SLL641|Mux190~84_combout\ : std_logic;
SIGNAL \shiftOut~273_combout\ : std_logic;
SIGNAL \shiftOut~274_combout\ : std_logic;
SIGNAL \shiftOut~275_combout\ : std_logic;
SIGNAL \C[61]~input_o\ : std_logic;
SIGNAL \SLL641|Mux66~0_combout\ : std_logic;
SIGNAL \SLL641|Mux66~1_combout\ : std_logic;
SIGNAL \SLL641|Mux190~85_combout\ : std_logic;
SIGNAL \SLL641|Mux190~86_combout\ : std_logic;
SIGNAL \shiftOut~276_combout\ : std_logic;
SIGNAL \shiftOut~277_combout\ : std_logic;
SIGNAL \shiftOut~278_combout\ : std_logic;
SIGNAL \SLL641|Mux190~87_combout\ : std_logic;
SIGNAL \SLL641|Mux190~88_combout\ : std_logic;
SIGNAL \SLL641|Mux190~89_combout\ : std_logic;
SIGNAL \SLL641|Mux190~90_combout\ : std_logic;
SIGNAL \SLL641|Mux190~91_combout\ : std_logic;
SIGNAL \C[62]~input_o\ : std_logic;
SIGNAL \shiftOut~279_combout\ : std_logic;
SIGNAL \shiftOut~280_combout\ : std_logic;
SIGNAL \shiftOut~281_combout\ : std_logic;
SIGNAL \SLL641|Mux128~1_combout\ : std_logic;
SIGNAL \SLL641|Mux128~2_combout\ : std_logic;
SIGNAL \SLL641|Mux128~3_combout\ : std_logic;
SIGNAL \SLL641|Mux128~4_combout\ : std_logic;
SIGNAL \SLL641|Mux128~0_combout\ : std_logic;
SIGNAL \SLL641|Mux128~5_combout\ : std_logic;
SIGNAL \C[63]~input_o\ : std_logic;
SIGNAL \mux2OutUp[0]~3_combout\ : std_logic;
SIGNAL \mux2OutUp[0]~2_combout\ : std_logic;
SIGNAL \mux2OutUp[0]~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
Y <= ww_Y;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y36_N16
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~62_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~68_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~282_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~283_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~284_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~285_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~286_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~287_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~288_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~289_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~290_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~291_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~292_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~293_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~294_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~295_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~296_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~297_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~298_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~299_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~300_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~301_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~302_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~303_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~304_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~305_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~306_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~307_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~308_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~309_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~310_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux2OutUp[0]~1_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~191_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~194_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~197_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~200_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~203_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~206_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~209_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~212_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~215_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~218_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~221_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~224_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~227_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~230_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~233_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~236_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~239_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~242_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~245_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~248_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~251_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~254_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~257_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~260_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~263_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~266_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~269_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~272_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~275_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~278_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shiftOut~281_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux2OutUp[0]~4_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOIBUF_X58_Y0_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X115_Y40_N1
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X67_Y39_N20
\shiftIn[45]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[45]~30_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[13]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[45]~input_o\)))) # (!\ExtWord~input_o\ & (\A[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[13]~input_o\,
	combout => \shiftIn[45]~30_combout\);

-- Location: IOIBUF_X115_Y34_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X67_Y0_N22
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X67_Y39_N26
\shiftIn[61]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[61]~29_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[29]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[61]~input_o\)))) # (!\ExtWord~input_o\ & (\A[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[29]~input_o\,
	combout => \shiftIn[61]~29_combout\);

-- Location: LCCOMB_X67_Y39_N14
\SRA641|Mux19~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~14_combout\ = (\B[4]~input_o\ & ((\shiftIn[61]~29_combout\))) # (!\B[4]~input_o\ & (\shiftIn[45]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[45]~30_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftIn[61]~29_combout\,
	combout => \SRA641|Mux19~14_combout\);

-- Location: LCCOMB_X67_Y39_N22
\shiftIn[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[13]~46_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[45]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[13]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[13]~input_o\,
	combout => \shiftIn[13]~46_combout\);

-- Location: LCCOMB_X63_Y39_N24
\shiftSig[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftSig[5]~0_combout\ = (\ExtWord~input_o\) # (!\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \shiftSig[5]~0_combout\);

-- Location: LCCOMB_X67_Y39_N28
\shiftIn[29]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[29]~45_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[61]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[29]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[29]~input_o\,
	combout => \shiftIn[29]~45_combout\);

-- Location: LCCOMB_X67_Y39_N0
\SRA641|Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux49~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[29]~45_combout\))) # (!\B[4]~input_o\ & (\shiftIn[13]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[13]~46_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[29]~45_combout\,
	combout => \SRA641|Mux49~2_combout\);

-- Location: LCCOMB_X67_Y39_N10
\SRA641|Mux49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux49~3_combout\ = (\SRA641|Mux49~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA641|Mux19~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SRA641|Mux19~14_combout\,
	datad => \SRA641|Mux49~2_combout\,
	combout => \SRA641|Mux49~3_combout\);

-- Location: IOIBUF_X69_Y73_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X70_Y38_N10
\shiftIn[41]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[41]~26_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[9]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[41]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[41]~input_o\,
	combout => \shiftIn[41]~26_combout\);

-- Location: IOIBUF_X74_Y0_N1
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X70_Y38_N8
\shiftIn[57]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[57]~25_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[25]~input_o\)) # (!\ExtWord~input_o\ & ((\A[57]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[57]~input_o\,
	combout => \shiftIn[57]~25_combout\);

-- Location: LCCOMB_X70_Y38_N4
\SRA641|Mux19~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~12_combout\ = (\B[4]~input_o\ & ((\shiftIn[57]~25_combout\))) # (!\B[4]~input_o\ & (\shiftIn[41]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[41]~26_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[57]~25_combout\,
	combout => \SRA641|Mux19~12_combout\);

-- Location: LCCOMB_X70_Y38_N16
\shiftIn[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[9]~48_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[41]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[9]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[41]~input_o\,
	combout => \shiftIn[9]~48_combout\);

-- Location: LCCOMB_X70_Y38_N6
\shiftIn[25]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[25]~47_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[57]~input_o\))) # (!\ExtWord~input_o\ & (\A[25]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[57]~input_o\,
	combout => \shiftIn[25]~47_combout\);

-- Location: LCCOMB_X70_Y38_N18
\SRA641|Mux53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux53~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[25]~47_combout\))) # (!\B[4]~input_o\ & (\shiftIn[9]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[9]~48_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[25]~47_combout\,
	combout => \SRA641|Mux53~2_combout\);

-- Location: LCCOMB_X70_Y38_N2
\SRA641|Mux53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux53~3_combout\ = (\SRA641|Mux53~2_combout\) # ((!\ExtWord~input_o\ & (\SRA641|Mux19~12_combout\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SRA641|Mux19~12_combout\,
	datac => \B[5]~input_o\,
	datad => \SRA641|Mux53~2_combout\,
	combout => \SRA641|Mux53~3_combout\);

-- Location: LCCOMB_X66_Y42_N2
\SRA641|Mux156~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~67_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux49~3_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux53~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux49~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux53~3_combout\,
	combout => \SRA641|Mux156~67_combout\);

-- Location: IOIBUF_X72_Y73_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X58_Y40_N2
\SRA641|Mux123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux123~0_combout\ = (!\B[2]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[5]~input_o\,
	combout => \SRA641|Mux123~0_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X59_Y42_N20
\shiftIn[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[7]~39_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[39]~input_o\)) # (!\ExtWord~input_o\ & ((\A[7]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[39]~input_o\,
	datad => \A[7]~input_o\,
	combout => \shiftIn[7]~39_combout\);

-- Location: IOIBUF_X54_Y73_N1
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X59_Y42_N18
\shiftIn[23]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[23]~38_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[55]~input_o\)) # (!\ExtWord~input_o\ & ((\A[23]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[55]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[23]~input_o\,
	combout => \shiftIn[23]~38_combout\);

-- Location: LCCOMB_X59_Y42_N14
\SRA641|Mux55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux55~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[23]~38_combout\))) # (!\B[4]~input_o\ & (\shiftIn[7]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \shiftIn[7]~39_combout\,
	datad => \shiftIn[23]~38_combout\,
	combout => \SRA641|Mux55~2_combout\);

-- Location: LCCOMB_X59_Y42_N28
\shiftIn[55]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[55]~19_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[23]~input_o\))) # (!\ExtWord~input_o\ & (\A[55]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[55]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[23]~input_o\,
	combout => \shiftIn[55]~19_combout\);

-- Location: LCCOMB_X59_Y42_N22
\shiftIn[39]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[39]~20_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[7]~input_o\))) # (!\ExtWord~input_o\ & (\A[39]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[39]~input_o\,
	datad => \A[7]~input_o\,
	combout => \shiftIn[39]~20_combout\);

-- Location: LCCOMB_X59_Y42_N16
\SRA641|Mux19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~9_combout\ = (\B[4]~input_o\ & (\shiftIn[55]~19_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[39]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[55]~19_combout\,
	datac => \shiftIn[39]~20_combout\,
	combout => \SRA641|Mux19~9_combout\);

-- Location: LCCOMB_X59_Y43_N24
\SRA641|Mux55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux55~3_combout\ = (\SRA641|Mux55~2_combout\) # ((!\ExtWord~input_o\ & (\SRA641|Mux19~9_combout\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux55~2_combout\,
	datab => \ExtWord~input_o\,
	datac => \SRA641|Mux19~9_combout\,
	datad => \B[5]~input_o\,
	combout => \SRA641|Mux55~3_combout\);

-- Location: LCCOMB_X58_Y40_N12
\SRA641|Mux123~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux123~1_combout\ = (\B[2]~input_o\) # ((\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux123~1_combout\);

-- Location: IOIBUF_X25_Y73_N22
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X59_Y43_N8
\shiftIn[51]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[51]~23_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[19]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[51]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[51]~input_o\,
	combout => \shiftIn[51]~23_combout\);

-- Location: IOIBUF_X52_Y73_N1
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X59_Y43_N10
\shiftIn[35]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[35]~24_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[3]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[35]~input_o\)))) # (!\ExtWord~input_o\ & (\A[35]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \shiftIn[35]~24_combout\);

-- Location: LCCOMB_X59_Y43_N28
\SRA641|Mux19~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~11_combout\ = (\B[4]~input_o\ & (\shiftIn[51]~23_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[35]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \shiftIn[51]~23_combout\,
	datad => \shiftIn[35]~24_combout\,
	combout => \SRA641|Mux19~11_combout\);

-- Location: LCCOMB_X59_Y43_N0
\SRA641|Mux122~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux122~1_combout\ = (\SRA641|Mux123~0_combout\ & (((\SRA641|Mux123~1_combout\)))) # (!\SRA641|Mux123~0_combout\ & ((\SRA641|Mux123~1_combout\ & (\SRA641|Mux55~3_combout\)) # (!\SRA641|Mux123~1_combout\ & ((\SRA641|Mux19~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux123~0_combout\,
	datab => \SRA641|Mux55~3_combout\,
	datac => \SRA641|Mux123~1_combout\,
	datad => \SRA641|Mux19~11_combout\,
	combout => \SRA641|Mux122~1_combout\);

-- Location: LCCOMB_X59_Y43_N30
\shiftIn[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[3]~37_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[35]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[3]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \shiftIn[3]~37_combout\);

-- Location: LCCOMB_X59_Y43_N18
\shiftIn[19]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[19]~40_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[51]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[19]~input_o\)))) # (!\ExtWord~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[51]~input_o\,
	combout => \shiftIn[19]~40_combout\);

-- Location: LCCOMB_X59_Y43_N12
\SRA641|Mux122~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux122~2_combout\ = (\SRA641|Mux123~0_combout\ & ((\SRA641|Mux122~1_combout\ & ((\shiftIn[19]~40_combout\))) # (!\SRA641|Mux122~1_combout\ & (\shiftIn[3]~37_combout\)))) # (!\SRA641|Mux123~0_combout\ & (\SRA641|Mux122~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux123~0_combout\,
	datab => \SRA641|Mux122~1_combout\,
	datac => \shiftIn[3]~37_combout\,
	datad => \shiftIn[19]~40_combout\,
	combout => \SRA641|Mux122~2_combout\);

-- Location: IOIBUF_X0_Y44_N1
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X58_Y39_N18
\shiftIn[59]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[59]~21_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[27]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[59]~input_o\)))) # (!\ExtWord~input_o\ & (\A[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[27]~input_o\,
	combout => \shiftIn[59]~21_combout\);

-- Location: IOIBUF_X38_Y73_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X58_Y39_N20
\shiftIn[43]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[43]~22_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[11]~input_o\)) # (!\ExtWord~input_o\ & ((\A[43]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[43]~input_o\,
	combout => \shiftIn[43]~22_combout\);

-- Location: LCCOMB_X58_Y39_N22
\SRA641|Mux19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~10_combout\ = (\B[4]~input_o\ & (\shiftIn[59]~21_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[43]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[59]~21_combout\,
	datad => \shiftIn[43]~22_combout\,
	combout => \SRA641|Mux19~10_combout\);

-- Location: LCCOMB_X58_Y39_N12
\shiftIn[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[11]~36_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[43]~input_o\))) # (!\ExtWord~input_o\ & (\A[11]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[43]~input_o\,
	combout => \shiftIn[11]~36_combout\);

-- Location: LCCOMB_X58_Y39_N10
\shiftIn[27]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[27]~35_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[59]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[27]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[27]~input_o\,
	combout => \shiftIn[27]~35_combout\);

-- Location: LCCOMB_X58_Y39_N14
\SRA641|Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux51~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[27]~35_combout\))) # (!\B[4]~input_o\ & (\shiftIn[11]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[11]~36_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[27]~35_combout\,
	combout => \SRA641|Mux51~2_combout\);

-- Location: LCCOMB_X63_Y39_N12
\SRA641|Mux51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux51~3_combout\ = (\SRA641|Mux51~2_combout\) # ((!\ExtWord~input_o\ & (\SRA641|Mux19~10_combout\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SRA641|Mux19~10_combout\,
	datac => \B[5]~input_o\,
	datad => \SRA641|Mux51~2_combout\,
	combout => \SRA641|Mux51~3_combout\);

-- Location: IOIBUF_X47_Y73_N15
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X58_Y39_N0
\shiftIn[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[15]~34_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[47]~input_o\)) # (!\ExtWord~input_o\ & ((\A[15]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[47]~input_o\,
	datad => \A[15]~input_o\,
	combout => \shiftIn[15]~34_combout\);

-- Location: IOIBUF_X115_Y35_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X67_Y37_N10
\shiftIn[31]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[31]~33_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[63]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[31]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[63]~input_o\,
	datad => \A[31]~input_o\,
	combout => \shiftIn[31]~33_combout\);

-- Location: LCCOMB_X63_Y40_N30
\SRA641|Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux47~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[31]~33_combout\))) # (!\B[4]~input_o\ & (\shiftIn[15]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[15]~34_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \shiftIn[31]~33_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux47~2_combout\);

-- Location: LCCOMB_X58_Y39_N8
\shiftIn[47]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[47]~18_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[15]~input_o\))) # (!\ExtWord~input_o\ & (\A[47]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[47]~input_o\,
	datad => \A[15]~input_o\,
	combout => \shiftIn[47]~18_combout\);

-- Location: LCCOMB_X67_Y37_N0
\shiftIn[63]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[63]~1_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[31]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[63]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[63]~input_o\,
	datad => \A[31]~input_o\,
	combout => \shiftIn[63]~1_combout\);

-- Location: LCCOMB_X63_Y40_N8
\SRA641|Mux19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~8_combout\ = (\B[4]~input_o\ & ((\shiftIn[63]~1_combout\))) # (!\B[4]~input_o\ & (\shiftIn[47]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[47]~18_combout\,
	datac => \shiftIn[63]~1_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux19~8_combout\);

-- Location: LCCOMB_X63_Y40_N20
\SRA641|Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux47~3_combout\ = (\SRA641|Mux47~2_combout\) # ((!\ExtWord~input_o\ & (\SRA641|Mux19~8_combout\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux47~2_combout\,
	datab => \ExtWord~input_o\,
	datac => \SRA641|Mux19~8_combout\,
	datad => \B[5]~input_o\,
	combout => \SRA641|Mux47~3_combout\);

-- Location: LCCOMB_X62_Y43_N16
\SRA641|Mux122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux122~0_combout\ = (\B[2]~input_o\ & ((\SRA641|Mux47~3_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux51~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux51~3_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux47~3_combout\,
	combout => \SRA641|Mux122~0_combout\);

-- Location: LCCOMB_X65_Y40_N24
\SRA641|Mux122~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux122~3_combout\ = (\B[3]~input_o\ & ((\SRA641|Mux122~0_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux122~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux122~2_combout\,
	datac => \SRA641|Mux122~0_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA641|Mux122~3_combout\);

-- Location: IOIBUF_X85_Y73_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X70_Y40_N16
\shiftIn[49]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[49]~27_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[17]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[49]~input_o\)))) # (!\ExtWord~input_o\ & (\A[49]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \A[17]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \shiftIn[49]~27_combout\);

-- Location: IOIBUF_X115_Y40_N8
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X115_Y49_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X70_Y40_N2
\shiftIn[33]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[33]~28_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[1]~input_o\))) # (!\ExtWord~input_o\ & (\A[33]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[33]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[1]~input_o\,
	combout => \shiftIn[33]~28_combout\);

-- Location: LCCOMB_X70_Y40_N28
\SRA641|Mux19~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~13_combout\ = (\B[4]~input_o\ & (\shiftIn[49]~27_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[33]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[49]~27_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[33]~28_combout\,
	combout => \SRA641|Mux19~13_combout\);

-- Location: LCCOMB_X70_Y40_N8
\shiftIn[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[1]~42_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[33]~input_o\)) # (!\ExtWord~input_o\ & ((\A[1]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[33]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[1]~input_o\,
	combout => \shiftIn[1]~42_combout\);

-- Location: LCCOMB_X70_Y40_N6
\shiftIn[17]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[17]~41_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[49]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[17]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \A[17]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \shiftIn[17]~41_combout\);

-- Location: LCCOMB_X70_Y40_N10
\SRA641|Mux156~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~64_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[17]~41_combout\))) # (!\B[4]~input_o\ & (\shiftIn[1]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[1]~42_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[17]~41_combout\,
	combout => \SRA641|Mux156~64_combout\);

-- Location: LCCOMB_X70_Y40_N12
\SRA641|Mux156~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~65_combout\ = (!\B[2]~input_o\ & ((\SRA641|Mux156~64_combout\) # ((\SRA641|Mux19~13_combout\ & !\shiftSig[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux19~13_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \SRA641|Mux156~64_combout\,
	combout => \SRA641|Mux156~65_combout\);

-- Location: IOIBUF_X69_Y73_N15
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X66_Y41_N24
\shiftIn[53]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[53]~31_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[21]~input_o\))) # (!\ExtWord~input_o\ & (\A[53]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[53]~input_o\,
	datac => \A[21]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \shiftIn[53]~31_combout\);

-- Location: IOIBUF_X74_Y0_N22
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X66_Y41_N10
\shiftIn[37]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[37]~32_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[5]~input_o\))) # (!\ExtWord~input_o\ & (\A[37]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[37]~input_o\,
	datad => \A[5]~input_o\,
	combout => \shiftIn[37]~32_combout\);

-- Location: LCCOMB_X66_Y41_N4
\SRA641|Mux19~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~15_combout\ = (\B[4]~input_o\ & (\shiftIn[53]~31_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[37]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[53]~31_combout\,
	datad => \shiftIn[37]~32_combout\,
	combout => \SRA641|Mux19~15_combout\);

-- Location: LCCOMB_X66_Y41_N22
\shiftIn[21]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[21]~43_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[53]~input_o\)) # (!\ExtWord~input_o\ & ((\A[21]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[53]~input_o\,
	datac => \A[21]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \shiftIn[21]~43_combout\);

-- Location: LCCOMB_X66_Y41_N16
\shiftIn[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[5]~44_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[37]~input_o\)) # (!\ExtWord~input_o\ & ((\A[5]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[37]~input_o\,
	datad => \A[5]~input_o\,
	combout => \shiftIn[5]~44_combout\);

-- Location: LCCOMB_X66_Y41_N18
\SRA641|Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux57~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[21]~43_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[5]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \shiftIn[21]~43_combout\,
	datad => \shiftIn[5]~44_combout\,
	combout => \SRA641|Mux57~2_combout\);

-- Location: LCCOMB_X66_Y41_N12
\SRA641|Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux57~3_combout\ = (\SRA641|Mux57~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA641|Mux19~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SRA641|Mux19~15_combout\,
	datad => \SRA641|Mux57~2_combout\,
	combout => \SRA641|Mux57~3_combout\);

-- Location: LCCOMB_X66_Y42_N8
\SRA641|Mux156~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~66_combout\ = (!\B[3]~input_o\ & ((\SRA641|Mux156~65_combout\) # ((\B[2]~input_o\ & \SRA641|Mux57~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux156~65_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux57~3_combout\,
	combout => \SRA641|Mux156~66_combout\);

-- Location: LCCOMB_X67_Y42_N0
\SRA641|Mux156~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~68_combout\ = (\B[1]~input_o\ & (((\SRA641|Mux122~3_combout\)))) # (!\B[1]~input_o\ & ((\SRA641|Mux156~67_combout\) # ((\SRA641|Mux156~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~67_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux122~3_combout\,
	datad => \SRA641|Mux156~66_combout\,
	combout => \SRA641|Mux156~68_combout\);

-- Location: IOIBUF_X0_Y35_N1
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X57_Y39_N4
\shiftIn[2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[2]~55_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[34]~input_o\)) # (!\ExtWord~input_o\ & ((\A[2]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[34]~input_o\,
	datad => \A[2]~input_o\,
	combout => \shiftIn[2]~55_combout\);

-- Location: IOIBUF_X0_Y43_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X13_Y73_N1
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X59_Y42_N24
\shiftIn[50]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[50]~4_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[18]~input_o\)) # (!\ExtWord~input_o\ & ((\A[50]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[18]~input_o\,
	datad => \A[50]~input_o\,
	combout => \shiftIn[50]~4_combout\);

-- Location: LCCOMB_X57_Y39_N0
\shiftIn[34]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[34]~5_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[2]~input_o\))) # (!\ExtWord~input_o\ & (\A[34]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[34]~input_o\,
	datad => \A[2]~input_o\,
	combout => \shiftIn[34]~5_combout\);

-- Location: LCCOMB_X58_Y40_N8
\SRA641|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~1_combout\ = (\B[4]~input_o\ & (\shiftIn[50]~4_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[34]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[50]~4_combout\,
	datac => \shiftIn[34]~5_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux19~1_combout\);

-- Location: LCCOMB_X58_Y40_N6
\SRA641|Mux123~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux123~3_combout\ = (\SRA641|Mux123~1_combout\ & (((\SRA641|Mux123~0_combout\)))) # (!\SRA641|Mux123~1_combout\ & ((\SRA641|Mux123~0_combout\ & (\shiftIn[2]~55_combout\)) # (!\SRA641|Mux123~0_combout\ & ((\SRA641|Mux19~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[2]~55_combout\,
	datab => \SRA641|Mux19~1_combout\,
	datac => \SRA641|Mux123~1_combout\,
	datad => \SRA641|Mux123~0_combout\,
	combout => \SRA641|Mux123~3_combout\);

-- Location: LCCOMB_X58_Y40_N0
\shiftIn[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[18]~56_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[50]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[18]~input_o\)))) # (!\ExtWord~input_o\ & (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[18]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[50]~input_o\,
	combout => \shiftIn[18]~56_combout\);

-- Location: IOIBUF_X49_Y0_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X57_Y39_N20
\shiftIn[38]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[38]~9_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[6]~input_o\)) # (!\ExtWord~input_o\ & ((\A[38]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[38]~input_o\,
	combout => \shiftIn[38]~9_combout\);

-- Location: IOIBUF_X0_Y46_N15
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X57_Y39_N2
\shiftIn[54]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[54]~8_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[22]~input_o\))) # (!\ExtWord~input_o\ & (\A[54]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[54]~input_o\,
	datad => \A[22]~input_o\,
	combout => \shiftIn[54]~8_combout\);

-- Location: LCCOMB_X61_Y40_N16
\SRA641|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~3_combout\ = (\B[4]~input_o\ & ((\shiftIn[54]~8_combout\))) # (!\B[4]~input_o\ & (\shiftIn[38]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[38]~9_combout\,
	datab => \B[4]~input_o\,
	datad => \shiftIn[54]~8_combout\,
	combout => \SRA641|Mux19~3_combout\);

-- Location: LCCOMB_X57_Y39_N8
\shiftIn[6]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[6]~54_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[38]~input_o\))) # (!\ExtWord~input_o\ & (\A[6]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[38]~input_o\,
	combout => \shiftIn[6]~54_combout\);

-- Location: LCCOMB_X57_Y39_N6
\shiftIn[22]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[22]~53_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[54]~input_o\)) # (!\ExtWord~input_o\ & ((\A[22]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[54]~input_o\,
	datad => \A[22]~input_o\,
	combout => \shiftIn[22]~53_combout\);

-- Location: LCCOMB_X57_Y39_N26
\SRA641|Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux56~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[22]~53_combout\))) # (!\B[4]~input_o\ & (\shiftIn[6]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[6]~54_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[22]~53_combout\,
	combout => \SRA641|Mux56~2_combout\);

-- Location: LCCOMB_X60_Y39_N0
\SRA641|Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux56~3_combout\ = (\SRA641|Mux56~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA641|Mux19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SRA641|Mux19~3_combout\,
	datad => \SRA641|Mux56~2_combout\,
	combout => \SRA641|Mux56~3_combout\);

-- Location: LCCOMB_X58_Y40_N26
\SRA641|Mux123~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux123~4_combout\ = (\SRA641|Mux123~3_combout\ & ((\shiftIn[18]~56_combout\) # ((!\SRA641|Mux123~1_combout\)))) # (!\SRA641|Mux123~3_combout\ & (((\SRA641|Mux123~1_combout\ & \SRA641|Mux56~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux123~3_combout\,
	datab => \shiftIn[18]~56_combout\,
	datac => \SRA641|Mux123~1_combout\,
	datad => \SRA641|Mux56~3_combout\,
	combout => \SRA641|Mux123~4_combout\);

-- Location: IOIBUF_X58_Y0_N8
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X59_Y38_N24
\shiftIn[58]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[58]~2_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[26]~input_o\))) # (!\ExtWord~input_o\ & (\A[58]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[58]~input_o\,
	datad => \A[26]~input_o\,
	combout => \shiftIn[58]~2_combout\);

-- Location: IOIBUF_X42_Y0_N22
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X59_Y38_N10
\shiftIn[42]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[42]~3_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[10]~input_o\))) # (!\ExtWord~input_o\ & (\A[42]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[42]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[10]~input_o\,
	combout => \shiftIn[42]~3_combout\);

-- Location: LCCOMB_X59_Y38_N28
\SRA641|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~0_combout\ = (\B[4]~input_o\ & (\shiftIn[58]~2_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[42]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[58]~2_combout\,
	datad => \shiftIn[42]~3_combout\,
	combout => \SRA641|Mux19~0_combout\);

-- Location: LCCOMB_X59_Y38_N30
\shiftIn[26]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[26]~51_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[58]~input_o\)) # (!\ExtWord~input_o\ & ((\A[26]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[58]~input_o\,
	datad => \A[26]~input_o\,
	combout => \shiftIn[26]~51_combout\);

-- Location: LCCOMB_X59_Y38_N0
\shiftIn[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[10]~52_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[42]~input_o\)) # (!\ExtWord~input_o\ & ((\A[10]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[42]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[10]~input_o\,
	combout => \shiftIn[10]~52_combout\);

-- Location: LCCOMB_X59_Y38_N2
\SRA641|Mux52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux52~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[26]~51_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[10]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \shiftIn[26]~51_combout\,
	datad => \shiftIn[10]~52_combout\,
	combout => \SRA641|Mux52~2_combout\);

-- Location: LCCOMB_X59_Y38_N22
\SRA641|Mux52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux52~3_combout\ = (\SRA641|Mux52~2_combout\) # ((\B[5]~input_o\ & (\SRA641|Mux19~0_combout\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SRA641|Mux19~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRA641|Mux52~2_combout\,
	combout => \SRA641|Mux52~3_combout\);

-- Location: IOIBUF_X49_Y0_N22
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X57_Y37_N30
\shiftIn[30]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[30]~49_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[62]~input_o\))) # (!\ExtWord~input_o\ & (\A[30]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[62]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \shiftIn[30]~49_combout\);

-- Location: IOIBUF_X49_Y0_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X57_Y37_N8
\shiftIn[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[14]~50_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[46]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[14]~input_o\)))) # (!\ExtWord~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[14]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[46]~input_o\,
	combout => \shiftIn[14]~50_combout\);

-- Location: LCCOMB_X57_Y37_N10
\SRA641|Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux48~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[30]~49_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[14]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftIn[30]~49_combout\,
	datad => \shiftIn[14]~50_combout\,
	combout => \SRA641|Mux48~2_combout\);

-- Location: LCCOMB_X57_Y37_N16
\shiftIn[62]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[62]~6_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[30]~input_o\)) # (!\ExtWord~input_o\ & ((\A[62]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[62]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \shiftIn[62]~6_combout\);

-- Location: LCCOMB_X57_Y37_N26
\shiftIn[46]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[46]~7_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[14]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[46]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[14]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[46]~input_o\,
	combout => \shiftIn[46]~7_combout\);

-- Location: LCCOMB_X57_Y37_N4
\SRA641|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~2_combout\ = (\B[4]~input_o\ & (\shiftIn[62]~6_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[46]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[62]~6_combout\,
	datac => \shiftIn[46]~7_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux19~2_combout\);

-- Location: LCCOMB_X60_Y39_N30
\SRA641|Mux48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux48~3_combout\ = (\SRA641|Mux48~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA641|Mux19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SRA641|Mux48~2_combout\,
	datad => \SRA641|Mux19~2_combout\,
	combout => \SRA641|Mux48~3_combout\);

-- Location: LCCOMB_X60_Y39_N24
\SRA641|Mux123~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux123~2_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux48~3_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux52~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux52~3_combout\,
	datac => \SRA641|Mux48~3_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA641|Mux123~2_combout\);

-- Location: LCCOMB_X60_Y39_N10
\SRA641|Mux123~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux123~5_combout\ = (\SRA641|Mux123~2_combout\) # ((!\B[3]~input_o\ & \SRA641|Mux123~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux123~4_combout\,
	datad => \SRA641|Mux123~2_combout\,
	combout => \SRA641|Mux123~5_combout\);

-- Location: IOIBUF_X115_Y30_N1
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X61_Y36_N0
\shiftIn[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[0]~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[32]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[0]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \shiftIn[0]~0_combout\);

-- Location: IOIBUF_X56_Y0_N8
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X61_Y36_N16
\shiftIn[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[16]~61_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[48]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[16]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[16]~input_o\,
	combout => \shiftIn[16]~61_combout\);

-- Location: LCCOMB_X61_Y36_N18
\SRA641|Mux188~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux188~1_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[16]~61_combout\))) # (!\B[4]~input_o\ & (\shiftIn[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[0]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[16]~61_combout\,
	combout => \SRA641|Mux188~1_combout\);

-- Location: LCCOMB_X61_Y36_N20
\shiftIn[32]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[32]~13_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[0]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[32]~input_o\)))) # (!\ExtWord~input_o\ & (\A[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \shiftIn[32]~13_combout\);

-- Location: LCCOMB_X61_Y36_N2
\shiftIn[48]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[48]~12_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[16]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[48]~input_o\)))) # (!\ExtWord~input_o\ & (\A[48]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[16]~input_o\,
	combout => \shiftIn[48]~12_combout\);

-- Location: LCCOMB_X61_Y36_N30
\SRA641|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~5_combout\ = (\B[4]~input_o\ & ((\shiftIn[48]~12_combout\))) # (!\B[4]~input_o\ & (\shiftIn[32]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \shiftIn[32]~13_combout\,
	datad => \shiftIn[48]~12_combout\,
	combout => \SRA641|Mux19~5_combout\);

-- Location: LCCOMB_X61_Y36_N28
\SRA641|Mux188~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux188~2_combout\ = (!\B[3]~input_o\ & ((\SRA641|Mux188~1_combout\) # ((!\shiftSig[5]~0_combout\ & \SRA641|Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \SRA641|Mux188~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~5_combout\,
	combout => \SRA641|Mux188~2_combout\);

-- Location: IOIBUF_X54_Y0_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X58_Y36_N10
\shiftIn[40]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[40]~17_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[8]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[40]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[40]~input_o\,
	combout => \shiftIn[40]~17_combout\);

-- Location: IOIBUF_X85_Y0_N22
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X58_Y36_N8
\shiftIn[56]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[56]~16_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[24]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[56]~input_o\)))) # (!\ExtWord~input_o\ & (\A[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[24]~input_o\,
	combout => \shiftIn[56]~16_combout\);

-- Location: LCCOMB_X58_Y36_N12
\SRA641|Mux19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~7_combout\ = (\B[4]~input_o\ & ((\shiftIn[56]~16_combout\))) # (!\B[4]~input_o\ & (\shiftIn[40]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[40]~17_combout\,
	datab => \shiftIn[56]~16_combout\,
	datac => \B[4]~input_o\,
	combout => \SRA641|Mux19~7_combout\);

-- Location: LCCOMB_X58_Y36_N30
\shiftIn[24]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[24]~62_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[56]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[24]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[24]~input_o\,
	combout => \shiftIn[24]~62_combout\);

-- Location: LCCOMB_X58_Y36_N0
\shiftIn[8]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[8]~63_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[40]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[8]~input_o\)))) # (!\ExtWord~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[40]~input_o\,
	combout => \shiftIn[8]~63_combout\);

-- Location: LCCOMB_X58_Y36_N2
\SRA641|Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux54~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[24]~62_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[8]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[24]~62_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[8]~63_combout\,
	combout => \SRA641|Mux54~2_combout\);

-- Location: LCCOMB_X62_Y36_N28
\SRA641|Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux54~3_combout\ = (\SRA641|Mux54~2_combout\) # ((\B[5]~input_o\ & (\SRA641|Mux19~7_combout\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SRA641|Mux19~7_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRA641|Mux54~2_combout\,
	combout => \SRA641|Mux54~3_combout\);

-- Location: LCCOMB_X60_Y36_N2
\SRA641|Mux188~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux188~3_combout\ = (!\B[2]~input_o\ & ((\SRA641|Mux188~2_combout\) # ((\B[3]~input_o\ & \SRA641|Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux188~2_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux54~3_combout\,
	combout => \SRA641|Mux188~3_combout\);

-- Location: IOIBUF_X49_Y0_N8
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X60_Y37_N20
\shiftIn[28]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[28]~57_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[60]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[28]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[60]~input_o\,
	datad => \A[28]~input_o\,
	combout => \shiftIn[28]~57_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X59_Y42_N0
\shiftIn[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[12]~58_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[44]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[12]~input_o\)))) # (!\ExtWord~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[44]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \shiftIn[12]~58_combout\);

-- Location: LCCOMB_X60_Y37_N22
\SRA641|Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux50~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[28]~57_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[12]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[28]~57_combout\,
	datac => \shiftIn[12]~58_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux50~2_combout\);

-- Location: LCCOMB_X60_Y37_N16
\shiftIn[60]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[60]~14_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[28]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[60]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[60]~input_o\,
	datad => \A[28]~input_o\,
	combout => \shiftIn[60]~14_combout\);

-- Location: LCCOMB_X59_Y42_N2
\shiftIn[44]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[44]~15_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[12]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[44]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[44]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \shiftIn[44]~15_combout\);

-- Location: LCCOMB_X60_Y37_N26
\SRA641|Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~6_combout\ = (\B[4]~input_o\ & (\shiftIn[60]~14_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[44]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[60]~14_combout\,
	datad => \shiftIn[44]~15_combout\,
	combout => \SRA641|Mux19~6_combout\);

-- Location: LCCOMB_X62_Y36_N26
\SRA641|Mux50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux50~3_combout\ = (\SRA641|Mux50~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA641|Mux19~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SRA641|Mux50~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRA641|Mux19~6_combout\,
	combout => \SRA641|Mux50~3_combout\);

-- Location: IOIBUF_X115_Y31_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X61_Y35_N14
\shiftIn[20]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[20]~59_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[52]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[20]~input_o\)))) # (!\ExtWord~input_o\ & (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[20]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[52]~input_o\,
	combout => \shiftIn[20]~59_combout\);

-- Location: IOIBUF_X115_Y32_N1
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X61_Y35_N24
\shiftIn[4]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[4]~60_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[36]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[4]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[36]~input_o\,
	datad => \A[4]~input_o\,
	combout => \shiftIn[4]~60_combout\);

-- Location: LCCOMB_X61_Y35_N26
\SRA641|Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux58~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[20]~59_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[4]~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[20]~59_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[4]~60_combout\,
	combout => \SRA641|Mux58~2_combout\);

-- Location: LCCOMB_X61_Y35_N18
\shiftIn[36]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[36]~11_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[4]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[36]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[36]~input_o\,
	datad => \A[4]~input_o\,
	combout => \shiftIn[36]~11_combout\);

-- Location: LCCOMB_X61_Y35_N16
\shiftIn[52]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftIn[52]~10_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[20]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[52]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[20]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[52]~input_o\,
	combout => \shiftIn[52]~10_combout\);

-- Location: LCCOMB_X61_Y35_N20
\SRA641|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~4_combout\ = (\B[4]~input_o\ & ((\shiftIn[52]~10_combout\))) # (!\B[4]~input_o\ & (\shiftIn[36]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[36]~11_combout\,
	datad => \shiftIn[52]~10_combout\,
	combout => \SRA641|Mux19~4_combout\);

-- Location: LCCOMB_X61_Y35_N2
\SRA641|Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux58~3_combout\ = (\SRA641|Mux58~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA641|Mux19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux58~2_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \SRA641|Mux19~4_combout\,
	combout => \SRA641|Mux58~3_combout\);

-- Location: LCCOMB_X60_Y36_N16
\SRA641|Mux188~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux188~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux50~3_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux58~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux50~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux58~3_combout\,
	combout => \SRA641|Mux188~0_combout\);

-- Location: LCCOMB_X68_Y36_N28
\SRA641|Mux188~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux188~4_combout\ = (\B[1]~input_o\ & (\SRA641|Mux123~5_combout\)) # (!\B[1]~input_o\ & (((\SRA641|Mux188~3_combout\) # (\SRA641|Mux188~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux123~5_combout\,
	datab => \SRA641|Mux188~3_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux188~0_combout\,
	combout => \SRA641|Mux188~4_combout\);

-- Location: LCCOMB_X68_Y36_N30
\shiftOut~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~61_combout\ = (!\ExtWord~input_o\ & ((\B[0]~input_o\ & (\SRA641|Mux156~68_combout\)) # (!\B[0]~input_o\ & ((\SRA641|Mux188~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~68_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRA641|Mux188~4_combout\,
	combout => \shiftOut~61_combout\);

-- Location: IOIBUF_X58_Y0_N15
\C[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LCCOMB_X67_Y39_N16
\SRL641|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux47~0_combout\ = (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	combout => \SRL641|Mux47~0_combout\);

-- Location: LCCOMB_X67_Y40_N16
\SLL641|Mux190~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~92_combout\ = (!\B[1]~input_o\ & (\SRL641|Mux47~0_combout\ & (!\B[3]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL641|Mux47~0_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL641|Mux190~92_combout\);

-- Location: LCCOMB_X67_Y40_N2
\shiftOut~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~58_combout\ = (!\B[0]~input_o\ & (\shiftIn[0]~0_combout\ & (\ShiftFN[0]~input_o\ & \SLL641|Mux190~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \shiftIn[0]~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SLL641|Mux190~92_combout\,
	combout => \shiftOut~58_combout\);

-- Location: LCCOMB_X68_Y36_N16
\shiftOut~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~59_combout\ = (!\ShiftFN[1]~input_o\ & ((\shiftOut~58_combout\) # ((\C[0]~input_o\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \C[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \shiftOut~58_combout\,
	combout => \shiftOut~59_combout\);

-- Location: LCCOMB_X63_Y39_N10
\SRA641|Mux90~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~16_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux19~10_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux19~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux19~10_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~11_combout\,
	combout => \SRA641|Mux90~16_combout\);

-- Location: LCCOMB_X63_Y40_N2
\SRL641|Mux92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux92~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRA641|Mux19~8_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~9_combout\,
	datab => \SRA641|Mux19~8_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRL641|Mux92~0_combout\);

-- Location: LCCOMB_X63_Y40_N12
\SRL641|Mux92~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux92~1_combout\ = (\SRA641|Mux90~16_combout\) # (\SRL641|Mux92~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~16_combout\,
	datad => \SRL641|Mux92~0_combout\,
	combout => \SRL641|Mux92~1_combout\);

-- Location: LCCOMB_X66_Y36_N18
\SRL641|Mux90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux90~0_combout\ = (\B[3]~input_o\ & (\SRA641|Mux19~14_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux19~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux19~14_combout\,
	datac => \SRA641|Mux19~15_combout\,
	combout => \SRL641|Mux90~0_combout\);

-- Location: LCCOMB_X66_Y36_N24
\SRL641|Mux94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux94~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux19~12_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux19~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux19~12_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux19~13_combout\,
	combout => \SRL641|Mux94~0_combout\);

-- Location: LCCOMB_X66_Y36_N4
\SRL641|Mux94~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux94~1_combout\ = (\SRL641|Mux94~0_combout\) # ((\B[2]~input_o\ & \SRL641|Mux90~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL641|Mux90~0_combout\,
	datad => \SRL641|Mux94~0_combout\,
	combout => \SRL641|Mux94~1_combout\);

-- Location: LCCOMB_X65_Y36_N2
\SRA641|Mux156~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~59_combout\ = (\shiftSig[5]~0_combout\ & ((\B[1]~input_o\ & (\SRL641|Mux92~1_combout\)) # (!\B[1]~input_o\ & ((\SRL641|Mux94~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux92~1_combout\,
	datab => \B[1]~input_o\,
	datac => \shiftSig[5]~0_combout\,
	datad => \SRL641|Mux94~1_combout\,
	combout => \SRA641|Mux156~59_combout\);

-- Location: LCCOMB_X62_Y36_N0
\SRL641|Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux95~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux19~4_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux19~5_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~4_combout\,
	combout => \SRL641|Mux95~0_combout\);

-- Location: LCCOMB_X62_Y36_N18
\SRL641|Mux95~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux95~1_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux19~6_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux19~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux19~7_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~6_combout\,
	combout => \SRL641|Mux95~1_combout\);

-- Location: LCCOMB_X62_Y36_N12
\SRL641|Mux95~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux95~2_combout\ = (\SRL641|Mux95~0_combout\) # (\SRL641|Mux95~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL641|Mux95~0_combout\,
	datad => \SRL641|Mux95~1_combout\,
	combout => \SRL641|Mux95~2_combout\);

-- Location: LCCOMB_X65_Y38_N16
\SRL641|Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux93~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRA641|Mux19~0_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~1_combout\,
	datab => \SRA641|Mux19~0_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRL641|Mux93~0_combout\);

-- Location: LCCOMB_X65_Y38_N26
\SRL641|Mux89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux89~0_combout\ = (\B[3]~input_o\ & ((\SRA641|Mux19~2_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~3_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux19~2_combout\,
	combout => \SRL641|Mux89~0_combout\);

-- Location: LCCOMB_X65_Y38_N4
\SRL641|Mux93~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux93~1_combout\ = (\SRL641|Mux93~0_combout\) # ((\SRL641|Mux89~0_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL641|Mux93~0_combout\,
	datac => \SRL641|Mux89~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL641|Mux93~1_combout\);

-- Location: LCCOMB_X65_Y36_N16
\SRA641|Mux156~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~58_combout\ = (\shiftSig[5]~0_combout\ & ((\B[1]~input_o\ & ((\SRL641|Mux93~1_combout\))) # (!\B[1]~input_o\ & (\SRL641|Mux95~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \SRL641|Mux95~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL641|Mux93~1_combout\,
	combout => \SRA641|Mux156~58_combout\);

-- Location: LCCOMB_X65_Y36_N28
\mux1OutUp[32]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[32]~0_combout\ = (\ShiftFN[0]~input_o\ & (\B[0]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & (\SRA641|Mux156~59_combout\)) # (!\B[0]~input_o\ & ((\SRA641|Mux156~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~59_combout\,
	datad => \SRA641|Mux156~58_combout\,
	combout => \mux1OutUp[32]~0_combout\);

-- Location: LCCOMB_X65_Y36_N20
\SRA641|Mux156~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~253_combout\ = (\SRA641|Mux156~58_combout\) # ((\shiftIn[63]~1_combout\ & (!\ExtWord~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \SRA641|Mux156~58_combout\,
	combout => \SRA641|Mux156~253_combout\);

-- Location: LCCOMB_X66_Y36_N6
\SRA641|Mux156~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~61_combout\ = (!\B[1]~input_o\ & ((\SRL641|Mux94~0_combout\) # ((\B[2]~input_o\ & \SRL641|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRL641|Mux90~0_combout\,
	datad => \SRL641|Mux94~0_combout\,
	combout => \SRA641|Mux156~61_combout\);

-- Location: LCCOMB_X63_Y39_N4
\SRA641|Mux90~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~18_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\shiftIn[47]~18_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux19~9_combout\,
	datad => \shiftIn[47]~18_combout\,
	combout => \SRA641|Mux90~18_combout\);

-- Location: LCCOMB_X63_Y39_N30
\SRA641|Mux156~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~62_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux90~18_combout\) # (\SRA641|Mux90~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux90~18_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~16_combout\,
	combout => \SRA641|Mux156~62_combout\);

-- Location: LCCOMB_X67_Y39_N24
\SRA641|Mux90~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~17_combout\ = (\B[2]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRA641|Mux90~17_combout\);

-- Location: LCCOMB_X67_Y39_N18
\SRA641|Mux156~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~60_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux90~17_combout\ & (\SRL641|Mux47~0_combout\)) # (!\SRA641|Mux90~17_combout\ & ((\shiftSig[5]~0_combout\))))) # (!\B[1]~input_o\ & (((\shiftSig[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux47~0_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~17_combout\,
	combout => \SRA641|Mux156~60_combout\);

-- Location: LCCOMB_X68_Y36_N2
\SRA641|Mux156~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~63_combout\ = (\SRA641|Mux156~60_combout\ & (((\SRA641|Mux156~61_combout\) # (\SRA641|Mux156~62_combout\)))) # (!\SRA641|Mux156~60_combout\ & (\shiftIn[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \SRA641|Mux156~61_combout\,
	datac => \SRA641|Mux156~62_combout\,
	datad => \SRA641|Mux156~60_combout\,
	combout => \SRA641|Mux156~63_combout\);

-- Location: LCCOMB_X69_Y36_N8
\mux1OutUp[32]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[32]~1_combout\ = (\ShiftFN[0]~input_o\ & ((\mux1OutUp[32]~0_combout\ & ((\SRA641|Mux156~63_combout\))) # (!\mux1OutUp[32]~0_combout\ & (\SRA641|Mux156~253_combout\)))) # (!\ShiftFN[0]~input_o\ & (\mux1OutUp[32]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \mux1OutUp[32]~0_combout\,
	datac => \SRA641|Mux156~253_combout\,
	datad => \SRA641|Mux156~63_combout\,
	combout => \mux1OutUp[32]~1_combout\);

-- Location: LCCOMB_X69_Y36_N18
\shiftOut~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~60_combout\ = (\mux1OutUp[32]~1_combout\ & \ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1OutUp[32]~1_combout\,
	datac => \ExtWord~input_o\,
	combout => \shiftOut~60_combout\);

-- Location: LCCOMB_X68_Y36_N24
\shiftOut~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~62_combout\ = (\shiftOut~59_combout\) # ((\ShiftFN[1]~input_o\ & ((\shiftOut~61_combout\) # (\shiftOut~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~61_combout\,
	datab => \shiftOut~59_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \shiftOut~60_combout\,
	combout => \shiftOut~62_combout\);

-- Location: IOIBUF_X83_Y0_N1
\C[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: LCCOMB_X67_Y40_N12
\shiftOut~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~63_combout\ = (\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & (\shiftIn[0]~0_combout\)) # (!\B[0]~input_o\ & ((\shiftIn[1]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \shiftIn[0]~0_combout\,
	datac => \shiftIn[1]~42_combout\,
	datad => \B[0]~input_o\,
	combout => \shiftOut~63_combout\);

-- Location: LCCOMB_X67_Y40_N6
\shiftOut~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~64_combout\ = (\C[1]~input_o\ & (((\SLL641|Mux190~92_combout\ & \shiftOut~63_combout\)) # (!\ShiftFN[0]~input_o\))) # (!\C[1]~input_o\ & (\SLL641|Mux190~92_combout\ & ((\shiftOut~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[1]~input_o\,
	datab => \SLL641|Mux190~92_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \shiftOut~63_combout\,
	combout => \shiftOut~64_combout\);

-- Location: LCCOMB_X60_Y39_N12
\SRA641|Mux156~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~71_combout\ = (!\B[1]~input_o\ & ((\SRA641|Mux123~2_combout\) # ((\SRA641|Mux123~4_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux123~2_combout\,
	datac => \SRA641|Mux123~4_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA641|Mux156~71_combout\);

-- Location: LCCOMB_X60_Y36_N12
\SRL641|Mux123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux123~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux54~3_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux58~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux54~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux58~3_combout\,
	combout => \SRL641|Mux123~0_combout\);

-- Location: LCCOMB_X61_Y36_N14
\SRL641|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux47~1_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[32]~13_combout\))) # (!\B[4]~input_o\ & (\shiftIn[16]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[16]~61_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[32]~13_combout\,
	combout => \SRL641|Mux47~1_combout\);

-- Location: LCCOMB_X61_Y36_N4
\SRA641|Mux90~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~81_combout\ = (\B[5]~input_o\ & (!\B[4]~input_o\ & (!\ExtWord~input_o\ & \shiftIn[48]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \shiftIn[48]~12_combout\,
	combout => \SRA641|Mux90~81_combout\);

-- Location: LCCOMB_X60_Y36_N18
\SRA641|Mux90~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~20_combout\ = (\B[2]~input_o\ & (((\SRL641|Mux47~1_combout\) # (\SRA641|Mux90~81_combout\)))) # (!\B[2]~input_o\ & (\SRA641|Mux50~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux50~3_combout\,
	datac => \SRL641|Mux47~1_combout\,
	datad => \SRA641|Mux90~81_combout\,
	combout => \SRA641|Mux90~20_combout\);

-- Location: LCCOMB_X61_Y39_N10
\SRA641|Mux156~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~72_combout\ = (\B[1]~input_o\ & ((\SRL641|Mux123~0_combout\) # ((\B[3]~input_o\ & \SRA641|Mux90~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux123~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~20_combout\,
	combout => \SRA641|Mux156~72_combout\);

-- Location: LCCOMB_X61_Y39_N28
\SRA641|Mux156~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~73_combout\ = (\SRA641|Mux156~71_combout\) # (\SRA641|Mux156~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux156~71_combout\,
	datad => \SRA641|Mux156~72_combout\,
	combout => \SRA641|Mux156~73_combout\);

-- Location: LCCOMB_X61_Y36_N24
\SRA641|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux46~0_combout\ = (!\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[63]~1_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[48]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[48]~12_combout\,
	combout => \SRA641|Mux46~0_combout\);

-- Location: LCCOMB_X60_Y36_N6
\SRA641|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux46~1_combout\ = (\SRA641|Mux46~0_combout\) # (\SRL641|Mux47~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux46~0_combout\,
	datac => \SRL641|Mux47~1_combout\,
	combout => \SRA641|Mux46~1_combout\);

-- Location: LCCOMB_X60_Y36_N24
\SRA641|Mux121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux121~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux46~1_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux50~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux50~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux46~1_combout\,
	combout => \SRA641|Mux121~0_combout\);

-- Location: LCCOMB_X61_Y39_N18
\SRA641|Mux156~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~254_combout\ = (\SRA641|Mux156~71_combout\) # ((\B[1]~input_o\ & ((\SRL641|Mux123~0_combout\) # (\SRA641|Mux121~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux123~0_combout\,
	datab => \SRA641|Mux121~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux156~71_combout\,
	combout => \SRA641|Mux156~254_combout\);

-- Location: LCCOMB_X68_Y36_N12
\shiftOut~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~66_combout\ = (\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~254_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA641|Mux156~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~73_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~254_combout\,
	combout => \shiftOut~66_combout\);

-- Location: LCCOMB_X68_Y36_N14
\shiftOut~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~67_combout\ = (!\ExtWord~input_o\ & ((\shiftOut~66_combout\) # ((!\B[0]~input_o\ & \SRA641|Mux156~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~68_combout\,
	datac => \ExtWord~input_o\,
	datad => \shiftOut~66_combout\,
	combout => \shiftOut~67_combout\);

-- Location: LCCOMB_X62_Y36_N14
\SRL641|Mux91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux91~0_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux19~6_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux19~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~6_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~4_combout\,
	combout => \SRL641|Mux91~0_combout\);

-- Location: LCCOMB_X62_Y36_N16
\SRL641|Mux91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux91~1_combout\ = (\B[2]~input_o\ & ((\SRL641|Mux91~0_combout\ & ((\shiftIn[48]~12_combout\))) # (!\SRL641|Mux91~0_combout\ & (\SRA641|Mux19~7_combout\)))) # (!\B[2]~input_o\ & (\SRL641|Mux91~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL641|Mux91~0_combout\,
	datac => \SRA641|Mux19~7_combout\,
	datad => \shiftIn[48]~12_combout\,
	combout => \SRL641|Mux91~1_combout\);

-- Location: LCCOMB_X68_Y36_N10
\SRA641|Mux156~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~69_combout\ = (\SRA641|Mux156~60_combout\ & ((\B[1]~input_o\ & ((\SRL641|Mux91~1_combout\))) # (!\B[1]~input_o\ & (\SRL641|Mux93~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL641|Mux93~1_combout\,
	datac => \SRL641|Mux91~1_combout\,
	datad => \SRA641|Mux156~60_combout\,
	combout => \SRA641|Mux156~69_combout\);

-- Location: LCCOMB_X68_Y36_N6
\SRA641|Mux156~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~70_combout\ = (\SRA641|Mux156~69_combout\) # ((!\SRA641|Mux156~60_combout\ & \shiftIn[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux156~60_combout\,
	datac => \shiftIn[63]~1_combout\,
	datad => \SRA641|Mux156~69_combout\,
	combout => \SRA641|Mux156~70_combout\);

-- Location: LCCOMB_X68_Y36_N20
\mux1OutUp[33]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[33]~2_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & ((\SRA641|Mux156~69_combout\))) # (!\B[0]~input_o\ & (\SRA641|Mux156~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~59_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRA641|Mux156~69_combout\,
	combout => \mux1OutUp[33]~2_combout\);

-- Location: LCCOMB_X68_Y36_N8
\mux1OutUp[33]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[33]~3_combout\ = (\mux1OutUp[33]~2_combout\ & ((\SRA641|Mux156~70_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[33]~2_combout\ & (((\ShiftFN[0]~input_o\ & \SRA641|Mux156~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~70_combout\,
	datab => \mux1OutUp[33]~2_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~63_combout\,
	combout => \mux1OutUp[33]~3_combout\);

-- Location: LCCOMB_X68_Y36_N18
\shiftOut~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~65_combout\ = (\ExtWord~input_o\ & \mux1OutUp[33]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \mux1OutUp[33]~3_combout\,
	combout => \shiftOut~65_combout\);

-- Location: LCCOMB_X68_Y36_N0
\shiftOut~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~68_combout\ = (\ShiftFN[1]~input_o\ & (((\shiftOut~67_combout\) # (\shiftOut~65_combout\)))) # (!\ShiftFN[1]~input_o\ & (\shiftOut~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~64_combout\,
	datab => \shiftOut~67_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \shiftOut~65_combout\,
	combout => \shiftOut~68_combout\);

-- Location: LCCOMB_X66_Y36_N16
\SRL641|Mux90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux90~1_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\shiftIn[49]~27_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux19~12_combout\,
	datac => \shiftIn[49]~27_combout\,
	datad => \B[2]~input_o\,
	combout => \SRL641|Mux90~1_combout\);

-- Location: LCCOMB_X66_Y36_N12
\SRA641|Mux156~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~75_combout\ = (\B[1]~input_o\ & ((\SRL641|Mux90~1_combout\) # ((!\B[2]~input_o\ & \SRL641|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL641|Mux90~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL641|Mux90~1_combout\,
	combout => \SRA641|Mux156~75_combout\);

-- Location: LCCOMB_X63_Y39_N8
\SRA641|Mux156~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~76_combout\ = (!\B[1]~input_o\ & ((\SRA641|Mux90~18_combout\) # (\SRA641|Mux90~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux90~18_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~16_combout\,
	combout => \SRA641|Mux156~76_combout\);

-- Location: LCCOMB_X67_Y39_N6
\SRA641|Mux90~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~86_combout\ = (\B[5]~input_o\ & (\ExtWord~input_o\ & ((!\SRA641|Mux90~17_combout\) # (!\B[4]~input_o\)))) # (!\B[5]~input_o\ & (((!\SRA641|Mux90~17_combout\) # (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \SRA641|Mux90~17_combout\,
	combout => \SRA641|Mux90~86_combout\);

-- Location: LCCOMB_X67_Y36_N26
\SRA641|Mux156~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~77_combout\ = (\SRA641|Mux90~86_combout\ & ((\SRA641|Mux156~75_combout\) # ((\SRA641|Mux156~76_combout\)))) # (!\SRA641|Mux90~86_combout\ & (((\shiftIn[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~75_combout\,
	datab => \shiftIn[63]~1_combout\,
	datac => \SRA641|Mux156~76_combout\,
	datad => \SRA641|Mux90~86_combout\,
	combout => \SRA641|Mux156~77_combout\);

-- Location: LCCOMB_X66_Y36_N26
\SRL641|Mux90~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux90~2_combout\ = (\SRL641|Mux90~1_combout\) # ((!\B[2]~input_o\ & \SRL641|Mux90~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL641|Mux90~0_combout\,
	datad => \SRL641|Mux90~1_combout\,
	combout => \SRL641|Mux90~2_combout\);

-- Location: LCCOMB_X67_Y36_N24
\SRA641|Mux156~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~74_combout\ = (\SRA641|Mux156~60_combout\ & ((\B[1]~input_o\ & (\SRL641|Mux90~2_combout\)) # (!\B[1]~input_o\ & ((\SRL641|Mux92~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux90~2_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux156~60_combout\,
	datad => \SRL641|Mux92~1_combout\,
	combout => \SRA641|Mux156~74_combout\);

-- Location: LCCOMB_X68_Y36_N26
\mux1OutUp[34]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[34]~4_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & ((\SRA641|Mux156~74_combout\))) # (!\B[0]~input_o\ & (\SRA641|Mux156~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~69_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRA641|Mux156~74_combout\,
	combout => \mux1OutUp[34]~4_combout\);

-- Location: LCCOMB_X67_Y43_N8
\mux1OutUp[34]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[34]~5_combout\ = (\mux1OutUp[34]~4_combout\ & ((\SRA641|Mux156~77_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[34]~4_combout\ & (((\ShiftFN[0]~input_o\ & \SRA641|Mux156~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~77_combout\,
	datab => \mux1OutUp[34]~4_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~70_combout\,
	combout => \mux1OutUp[34]~5_combout\);

-- Location: LCCOMB_X63_Y38_N0
\shiftOut~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~69_combout\ = (!\ShiftFN[1]~input_o\ & ((\B[0]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \shiftOut~69_combout\);

-- Location: IOIBUF_X115_Y50_N8
\C[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(2),
	o => \C[2]~input_o\);

-- Location: LCCOMB_X67_Y40_N8
\SRL641|Mux119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux119~0_combout\ = (!\B[2]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	combout => \SRL641|Mux119~0_combout\);

-- Location: LCCOMB_X67_Y40_N24
\SLL641|Mux190~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~17_combout\ = (!\B[1]~input_o\ & (\SRL641|Mux47~0_combout\ & (\shiftIn[1]~42_combout\ & \SRL641|Mux119~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL641|Mux47~0_combout\,
	datac => \shiftIn[1]~42_combout\,
	datad => \SRL641|Mux119~0_combout\,
	combout => \SLL641|Mux190~17_combout\);

-- Location: LCCOMB_X70_Y40_N14
\SRL641|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux46~0_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[33]~28_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[17]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[33]~28_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[17]~41_combout\,
	combout => \SRL641|Mux46~0_combout\);

-- Location: LCCOMB_X61_Y40_N12
\SRA641|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux45~0_combout\ = (!\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[63]~1_combout\))) # (!\B[4]~input_o\ & (\shiftIn[49]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[49]~27_combout\,
	datab => \shiftIn[63]~1_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux45~0_combout\);

-- Location: LCCOMB_X61_Y40_N14
\SRA641|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux45~1_combout\ = (\SRL641|Mux46~0_combout\) # (\SRA641|Mux45~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux46~0_combout\,
	datad => \SRA641|Mux45~0_combout\,
	combout => \SRA641|Mux45~1_combout\);

-- Location: LCCOMB_X66_Y40_N16
\SRA641|Mux120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux120~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux45~1_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux49~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux45~1_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA641|Mux49~3_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA641|Mux120~0_combout\);

-- Location: LCCOMB_X66_Y42_N12
\SRL641|Mux122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux122~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux53~3_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux57~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux53~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux57~3_combout\,
	combout => \SRL641|Mux122~0_combout\);

-- Location: LCCOMB_X65_Y40_N2
\SRA641|Mux156~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~78_combout\ = (!\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux122~0_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux122~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux122~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux122~2_combout\,
	combout => \SRA641|Mux156~78_combout\);

-- Location: LCCOMB_X66_Y43_N20
\SRA641|Mux156~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~255_combout\ = (\SRA641|Mux156~78_combout\) # ((\B[1]~input_o\ & ((\SRA641|Mux120~0_combout\) # (\SRL641|Mux122~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux120~0_combout\,
	datac => \SRL641|Mux122~0_combout\,
	datad => \SRA641|Mux156~78_combout\,
	combout => \SRA641|Mux156~255_combout\);

-- Location: LCCOMB_X68_Y36_N4
\shiftOut~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~71_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~254_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA641|Mux156~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~73_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~254_combout\,
	combout => \shiftOut~71_combout\);

-- Location: LCCOMB_X61_Y40_N20
\SRA641|Mux90~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~82_combout\ = (\shiftIn[49]~27_combout\ & (!\B[4]~input_o\ & (!\ExtWord~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[49]~27_combout\,
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \SRA641|Mux90~82_combout\);

-- Location: LCCOMB_X66_Y42_N14
\SRA641|Mux90~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~21_combout\ = (\B[2]~input_o\ & ((\SRL641|Mux46~0_combout\) # ((\SRA641|Mux90~82_combout\)))) # (!\B[2]~input_o\ & (((\SRA641|Mux49~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL641|Mux46~0_combout\,
	datac => \SRA641|Mux49~3_combout\,
	datad => \SRA641|Mux90~82_combout\,
	combout => \SRA641|Mux90~21_combout\);

-- Location: LCCOMB_X66_Y42_N0
\SRA641|Mux156~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~79_combout\ = (\B[1]~input_o\ & ((\SRL641|Mux122~0_combout\) # ((\B[3]~input_o\ & \SRA641|Mux90~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux90~21_combout\,
	datad => \SRL641|Mux122~0_combout\,
	combout => \SRA641|Mux156~79_combout\);

-- Location: LCCOMB_X66_Y43_N24
\SRA641|Mux156~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~80_combout\ = (\SRA641|Mux156~78_combout\) # (\SRA641|Mux156~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~78_combout\,
	datad => \SRA641|Mux156~79_combout\,
	combout => \SRA641|Mux156~80_combout\);

-- Location: LCCOMB_X66_Y43_N12
\shiftOut~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~72_combout\ = (\B[0]~input_o\ & ((\shiftOut~71_combout\ & (\SRA641|Mux156~255_combout\)) # (!\shiftOut~71_combout\ & ((\SRA641|Mux156~80_combout\))))) # (!\B[0]~input_o\ & (((\shiftOut~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~255_combout\,
	datac => \shiftOut~71_combout\,
	datad => \SRA641|Mux156~80_combout\,
	combout => \shiftOut~72_combout\);

-- Location: LCCOMB_X67_Y40_N18
\SLL641|Mux127~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux127~4_combout\ = ((\B[3]~input_o\) # (\B[2]~input_o\)) # (!\SRL641|Mux47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL641|Mux47~0_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLL641|Mux127~4_combout\);

-- Location: LCCOMB_X57_Y39_N30
\SLL641|Mux190~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~16_combout\ = (!\SLL641|Mux127~4_combout\ & ((\B[1]~input_o\ & (\shiftIn[0]~0_combout\)) # (!\B[1]~input_o\ & ((\shiftIn[2]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[0]~0_combout\,
	datab => \shiftIn[2]~55_combout\,
	datac => \SLL641|Mux127~4_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL641|Mux190~16_combout\);

-- Location: LCCOMB_X63_Y38_N18
\shiftOut~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~70_combout\ = (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \shiftOut~70_combout\);

-- Location: LCCOMB_X67_Y43_N18
\shiftOut~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~73_combout\ = (\shiftOut~69_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~69_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~16_combout\))) # (!\shiftOut~70_combout\ & (\shiftOut~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~72_combout\,
	datab => \SLL641|Mux190~16_combout\,
	datac => \shiftOut~69_combout\,
	datad => \shiftOut~70_combout\,
	combout => \shiftOut~73_combout\);

-- Location: LCCOMB_X67_Y43_N12
\shiftOut~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~74_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~73_combout\ & ((\SLL641|Mux190~17_combout\))) # (!\shiftOut~73_combout\ & (\C[2]~input_o\)))) # (!\shiftOut~69_combout\ & (((\shiftOut~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \C[2]~input_o\,
	datac => \SLL641|Mux190~17_combout\,
	datad => \shiftOut~73_combout\,
	combout => \shiftOut~74_combout\);

-- Location: LCCOMB_X67_Y43_N28
\shiftOut~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~282_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\mux1OutUp[34]~5_combout\)) # (!\ExtWord~input_o\ & ((\shiftOut~74_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\shiftOut~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \mux1OutUp[34]~5_combout\,
	datad => \shiftOut~74_combout\,
	combout => \shiftOut~282_combout\);

-- Location: LCCOMB_X65_Y38_N6
\SRL641|Mux89~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux89~1_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\shiftIn[50]~4_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux19~0_combout\,
	datac => \B[3]~input_o\,
	datad => \shiftIn[50]~4_combout\,
	combout => \SRL641|Mux89~1_combout\);

-- Location: LCCOMB_X65_Y38_N0
\SRL641|Mux89~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux89~2_combout\ = (\SRL641|Mux89~1_combout\) # ((!\B[2]~input_o\ & \SRL641|Mux89~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SRL641|Mux89~0_combout\,
	datad => \SRL641|Mux89~1_combout\,
	combout => \SRL641|Mux89~2_combout\);

-- Location: LCCOMB_X67_Y36_N12
\SRA641|Mux156~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~81_combout\ = (\SRA641|Mux90~86_combout\ & ((\B[1]~input_o\ & ((\SRL641|Mux89~2_combout\))) # (!\B[1]~input_o\ & (\SRL641|Mux91~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~86_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL641|Mux91~1_combout\,
	datad => \SRL641|Mux89~2_combout\,
	combout => \SRA641|Mux156~81_combout\);

-- Location: LCCOMB_X67_Y36_N22
\SRA641|Mux156~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~82_combout\ = (\SRA641|Mux156~81_combout\) # ((\shiftIn[63]~1_combout\ & !\SRA641|Mux90~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~81_combout\,
	datab => \shiftIn[63]~1_combout\,
	datad => \SRA641|Mux90~86_combout\,
	combout => \SRA641|Mux156~82_combout\);

-- Location: LCCOMB_X68_Y36_N22
\mux1OutUp[35]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[35]~6_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & (\SRA641|Mux156~81_combout\)) # (!\B[0]~input_o\ & ((\SRA641|Mux156~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~81_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRA641|Mux156~74_combout\,
	combout => \mux1OutUp[35]~6_combout\);

-- Location: LCCOMB_X67_Y36_N8
\mux1OutUp[35]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[35]~7_combout\ = (\ShiftFN[0]~input_o\ & ((\mux1OutUp[35]~6_combout\ & (\SRA641|Mux156~82_combout\)) # (!\mux1OutUp[35]~6_combout\ & ((\SRA641|Mux156~77_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\mux1OutUp[35]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~82_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA641|Mux156~77_combout\,
	datad => \mux1OutUp[35]~6_combout\,
	combout => \mux1OutUp[35]~7_combout\);

-- Location: LCCOMB_X65_Y39_N8
\SLL641|Mux190~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~18_combout\ = (!\SLL641|Mux127~4_combout\ & ((\B[1]~input_o\ & ((\shiftIn[1]~42_combout\))) # (!\B[1]~input_o\ & (\shiftIn[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[3]~37_combout\,
	datab => \SLL641|Mux127~4_combout\,
	datac => \B[1]~input_o\,
	datad => \shiftIn[1]~42_combout\,
	combout => \SLL641|Mux190~18_combout\);

-- Location: LCCOMB_X61_Y40_N30
\SRA641|Mux90~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~83_combout\ = (\B[5]~input_o\ & (!\ExtWord~input_o\ & (\shiftIn[50]~4_combout\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \shiftIn[50]~4_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux90~83_combout\);

-- Location: LCCOMB_X58_Y40_N28
\SRL641|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux45~0_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[34]~5_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[18]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \shiftIn[34]~5_combout\,
	datad => \shiftIn[18]~56_combout\,
	combout => \SRL641|Mux45~0_combout\);

-- Location: LCCOMB_X61_Y40_N8
\SRA641|Mux90~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~22_combout\ = (\B[2]~input_o\ & ((\SRA641|Mux90~83_combout\) # ((\SRL641|Mux45~0_combout\)))) # (!\B[2]~input_o\ & (((\SRA641|Mux48~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~83_combout\,
	datab => \SRL641|Mux45~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux48~3_combout\,
	combout => \SRA641|Mux90~22_combout\);

-- Location: LCCOMB_X60_Y39_N22
\SRL641|Mux121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux121~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux52~3_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux56~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux52~3_combout\,
	datac => \SRA641|Mux56~3_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL641|Mux121~0_combout\);

-- Location: LCCOMB_X61_Y39_N30
\SRA641|Mux156~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~83_combout\ = (\B[1]~input_o\ & ((\SRL641|Mux121~0_combout\) # ((\SRA641|Mux90~22_combout\ & \B[3]~input_o\)))) # (!\B[1]~input_o\ & (((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~22_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRL641|Mux121~0_combout\,
	combout => \SRA641|Mux156~83_combout\);

-- Location: LCCOMB_X61_Y39_N16
\SRA641|Mux156~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~84_combout\ = (\B[1]~input_o\ & (((\SRA641|Mux156~83_combout\)))) # (!\B[1]~input_o\ & ((\SRL641|Mux123~0_combout\) # ((\SRA641|Mux156~83_combout\ & \SRA641|Mux90~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux123~0_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux156~83_combout\,
	datad => \SRA641|Mux90~20_combout\,
	combout => \SRA641|Mux156~84_combout\);

-- Location: LCCOMB_X66_Y43_N14
\shiftOut~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~75_combout\ = (\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~255_combout\) # ((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((!\B[0]~input_o\ & \SRA641|Mux156~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~255_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRA641|Mux156~80_combout\,
	combout => \shiftOut~75_combout\);

-- Location: LCCOMB_X61_Y40_N10
\SRA641|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux44~0_combout\ = (!\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[63]~1_combout\))) # (!\B[4]~input_o\ & (\shiftIn[50]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[50]~4_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \shiftIn[63]~1_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux44~0_combout\);

-- Location: LCCOMB_X61_Y40_N28
\SRA641|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux44~1_combout\ = (\SRL641|Mux45~0_combout\) # (\SRA641|Mux44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL641|Mux45~0_combout\,
	datad => \SRA641|Mux44~0_combout\,
	combout => \SRA641|Mux44~1_combout\);

-- Location: LCCOMB_X60_Y38_N0
\SRA641|Mux119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux119~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux44~1_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux48~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRA641|Mux48~3_combout\,
	datad => \SRA641|Mux44~1_combout\,
	combout => \SRA641|Mux119~0_combout\);

-- Location: LCCOMB_X61_Y39_N8
\SRA641|Mux121~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux121~1_combout\ = (\SRA641|Mux121~0_combout\) # (\SRL641|Mux123~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux121~0_combout\,
	datad => \SRL641|Mux123~0_combout\,
	combout => \SRA641|Mux121~1_combout\);

-- Location: LCCOMB_X61_Y39_N20
\SRA641|Mux156~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~256_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux119~0_combout\) # ((\SRL641|Mux121~0_combout\)))) # (!\B[1]~input_o\ & (((\SRA641|Mux121~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux119~0_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux121~1_combout\,
	datad => \SRL641|Mux121~0_combout\,
	combout => \SRA641|Mux156~256_combout\);

-- Location: LCCOMB_X66_Y43_N8
\shiftOut~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~76_combout\ = (\B[0]~input_o\ & ((\shiftOut~75_combout\ & ((\SRA641|Mux156~256_combout\))) # (!\shiftOut~75_combout\ & (\SRA641|Mux156~84_combout\)))) # (!\B[0]~input_o\ & (((\shiftOut~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~84_combout\,
	datab => \B[0]~input_o\,
	datac => \shiftOut~75_combout\,
	datad => \SRA641|Mux156~256_combout\,
	combout => \shiftOut~76_combout\);

-- Location: LCCOMB_X67_Y43_N22
\shiftOut~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~77_combout\ = (\shiftOut~69_combout\ & (\shiftOut~70_combout\)) # (!\shiftOut~69_combout\ & ((\shiftOut~70_combout\ & (\SLL641|Mux190~18_combout\)) # (!\shiftOut~70_combout\ & ((\shiftOut~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \shiftOut~70_combout\,
	datac => \SLL641|Mux190~18_combout\,
	datad => \shiftOut~76_combout\,
	combout => \shiftOut~77_combout\);

-- Location: IOIBUF_X67_Y73_N1
\C[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(3),
	o => \C[3]~input_o\);

-- Location: LCCOMB_X67_Y43_N0
\shiftOut~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~78_combout\ = (\shiftOut~77_combout\ & ((\SLL641|Mux190~16_combout\) # ((!\shiftOut~69_combout\)))) # (!\shiftOut~77_combout\ & (((\shiftOut~69_combout\ & \C[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~77_combout\,
	datab => \SLL641|Mux190~16_combout\,
	datac => \shiftOut~69_combout\,
	datad => \C[3]~input_o\,
	combout => \shiftOut~78_combout\);

-- Location: LCCOMB_X67_Y43_N14
\shiftOut~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~283_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\mux1OutUp[35]~7_combout\)) # (!\ExtWord~input_o\ & ((\shiftOut~78_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\shiftOut~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \mux1OutUp[35]~7_combout\,
	datad => \shiftOut~78_combout\,
	combout => \shiftOut~283_combout\);

-- Location: LCCOMB_X60_Y39_N16
\SLL641|Mux190~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~19_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\) # (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SLL641|Mux190~19_combout\);

-- Location: LCCOMB_X60_Y39_N4
\SLL641|Mux190~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~97_combout\ = (\B[4]~input_o\ & (!\SLL641|Mux190~19_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))) # (!\B[4]~input_o\ & ((\ExtWord~input_o\) # ((!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \SLL641|Mux190~19_combout\,
	combout => \SLL641|Mux190~97_combout\);

-- Location: LCCOMB_X66_Y36_N14
\SRA641|Mux156~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~86_combout\ = (!\B[1]~input_o\ & ((\SRL641|Mux90~1_combout\) # ((!\B[2]~input_o\ & \SRL641|Mux90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRL641|Mux90~0_combout\,
	datad => \SRL641|Mux90~1_combout\,
	combout => \SRA641|Mux156~86_combout\);

-- Location: LCCOMB_X66_Y39_N26
\SRA641|Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux78~0_combout\ = (\B[2]~input_o\ & ((\shiftIn[51]~23_combout\))) # (!\B[2]~input_o\ & (\shiftIn[47]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[47]~18_combout\,
	datac => \B[2]~input_o\,
	datad => \shiftIn[51]~23_combout\,
	combout => \SRA641|Mux78~0_combout\);

-- Location: LCCOMB_X63_Y39_N2
\SRA641|Mux90~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~23_combout\ = (\B[2]~input_o\ & ((\SRA641|Mux19~10_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux19~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SRA641|Mux19~9_combout\,
	datad => \SRA641|Mux19~10_combout\,
	combout => \SRA641|Mux90~23_combout\);

-- Location: LCCOMB_X67_Y38_N2
\SRA641|Mux156~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~87_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux78~0_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux90~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux78~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~23_combout\,
	combout => \SRA641|Mux156~87_combout\);

-- Location: LCCOMB_X66_Y36_N8
\SRA641|Mux156~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~88_combout\ = (\SLL641|Mux190~97_combout\ & ((\SRA641|Mux156~86_combout\) # ((\SRA641|Mux156~87_combout\)))) # (!\SLL641|Mux190~97_combout\ & (((\shiftIn[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~97_combout\,
	datab => \SRA641|Mux156~86_combout\,
	datac => \shiftIn[63]~1_combout\,
	datad => \SRA641|Mux156~87_combout\,
	combout => \SRA641|Mux156~88_combout\);

-- Location: LCCOMB_X66_Y39_N0
\SRL641|Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux80~0_combout\ = (\B[2]~input_o\ & (\shiftIn[51]~23_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux19~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[51]~23_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux19~8_combout\,
	combout => \SRL641|Mux80~0_combout\);

-- Location: LCCOMB_X67_Y38_N8
\SRL641|Mux88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux88~0_combout\ = (\B[3]~input_o\ & ((\SRL641|Mux80~0_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux90~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux90~23_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL641|Mux80~0_combout\,
	combout => \SRL641|Mux88~0_combout\);

-- Location: LCCOMB_X67_Y36_N10
\SRA641|Mux156~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~85_combout\ = (\SRA641|Mux90~86_combout\ & ((\B[1]~input_o\ & ((\SRL641|Mux88~0_combout\))) # (!\B[1]~input_o\ & (\SRL641|Mux90~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux90~2_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL641|Mux88~0_combout\,
	datad => \SRA641|Mux90~86_combout\,
	combout => \SRA641|Mux156~85_combout\);

-- Location: LCCOMB_X67_Y36_N28
\mux1OutUp[36]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[36]~8_combout\ = (\B[0]~input_o\ & ((\SRA641|Mux156~85_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA641|Mux156~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~85_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~81_combout\,
	combout => \mux1OutUp[36]~8_combout\);

-- Location: LCCOMB_X67_Y36_N6
\mux1OutUp[36]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[36]~9_combout\ = (\ShiftFN[0]~input_o\ & ((\mux1OutUp[36]~8_combout\ & (\SRA641|Mux156~88_combout\)) # (!\mux1OutUp[36]~8_combout\ & ((\SRA641|Mux156~82_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\mux1OutUp[36]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~88_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA641|Mux156~82_combout\,
	datad => \mux1OutUp[36]~8_combout\,
	combout => \mux1OutUp[36]~9_combout\);

-- Location: LCCOMB_X66_Y43_N22
\shiftOut~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~79_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRA641|Mux156~256_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~256_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~84_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \shiftOut~79_combout\);

-- Location: LCCOMB_X59_Y43_N2
\SRA641|Mux90~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~84_combout\ = (\shiftIn[51]~23_combout\ & (!\ExtWord~input_o\ & (!\B[4]~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[51]~23_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SRA641|Mux90~84_combout\);

-- Location: LCCOMB_X59_Y43_N6
\SRL641|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux44~0_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[35]~24_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[19]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[35]~24_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[19]~40_combout\,
	combout => \SRL641|Mux44~0_combout\);

-- Location: LCCOMB_X62_Y43_N4
\SRA641|Mux90~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~24_combout\ = (\B[2]~input_o\ & ((\SRA641|Mux90~84_combout\) # ((\SRL641|Mux44~0_combout\)))) # (!\B[2]~input_o\ & (((\SRA641|Mux47~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~84_combout\,
	datab => \SRL641|Mux44~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux47~3_combout\,
	combout => \SRA641|Mux90~24_combout\);

-- Location: LCCOMB_X62_Y43_N2
\SRL641|Mux120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux120~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux51~3_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux55~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux51~3_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux55~3_combout\,
	combout => \SRL641|Mux120~0_combout\);

-- Location: LCCOMB_X66_Y43_N18
\SRA641|Mux156~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~89_combout\ = (\B[1]~input_o\ & ((\SRL641|Mux120~0_combout\) # ((\SRA641|Mux90~24_combout\ & \B[3]~input_o\)))) # (!\B[1]~input_o\ & (((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~24_combout\,
	datab => \SRL641|Mux120~0_combout\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRA641|Mux156~89_combout\);

-- Location: LCCOMB_X66_Y43_N4
\SRA641|Mux156~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~90_combout\ = (\B[1]~input_o\ & (((\SRA641|Mux156~89_combout\)))) # (!\B[1]~input_o\ & ((\SRL641|Mux122~0_combout\) # ((\SRA641|Mux90~21_combout\ & \SRA641|Mux156~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~21_combout\,
	datab => \SRL641|Mux122~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux156~89_combout\,
	combout => \SRA641|Mux156~90_combout\);

-- Location: LCCOMB_X66_Y39_N20
\SRA641|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux43~0_combout\ = (!\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[63]~1_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[51]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[63]~1_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[51]~23_combout\,
	combout => \SRA641|Mux43~0_combout\);

-- Location: LCCOMB_X62_Y43_N22
\SRA641|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux43~1_combout\ = (\SRA641|Mux43~0_combout\) # (\SRL641|Mux44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux43~0_combout\,
	datac => \SRL641|Mux44~0_combout\,
	combout => \SRA641|Mux43~1_combout\);

-- Location: LCCOMB_X62_Y43_N0
\SRA641|Mux118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux118~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux43~1_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux47~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux43~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux47~3_combout\,
	combout => \SRA641|Mux118~0_combout\);

-- Location: LCCOMB_X66_Y43_N10
\SRA641|Mux120~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux120~1_combout\ = (\SRA641|Mux120~0_combout\) # (\SRL641|Mux122~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux120~0_combout\,
	datac => \SRL641|Mux122~0_combout\,
	combout => \SRA641|Mux120~1_combout\);

-- Location: LCCOMB_X66_Y43_N6
\SRA641|Mux156~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~257_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux118~0_combout\) # ((\SRL641|Mux120~0_combout\)))) # (!\B[1]~input_o\ & (((\SRA641|Mux120~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux118~0_combout\,
	datab => \SRL641|Mux120~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux120~1_combout\,
	combout => \SRA641|Mux156~257_combout\);

-- Location: LCCOMB_X66_Y43_N2
\shiftOut~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~80_combout\ = (\shiftOut~79_combout\ & (((\SRA641|Mux156~257_combout\)) # (!\B[0]~input_o\))) # (!\shiftOut~79_combout\ & (\B[0]~input_o\ & (\SRA641|Mux156~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~79_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~90_combout\,
	datad => \SRA641|Mux156~257_combout\,
	combout => \shiftOut~80_combout\);

-- Location: LCCOMB_X57_Y39_N24
\SLL641|Mux190~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~20_combout\ = (\B[2]~input_o\ & (\shiftIn[0]~0_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[4]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[0]~0_combout\,
	datab => \shiftIn[4]~60_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL641|Mux190~20_combout\);

-- Location: LCCOMB_X57_Y39_N14
\SLL641|Mux190~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~93_combout\ = (\B[3]~input_o\) # (((\B[2]~input_o\ & \B[1]~input_o\)) # (!\SRL641|Mux47~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRL641|Mux47~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL641|Mux190~93_combout\);

-- Location: LCCOMB_X57_Y39_N10
\SLL641|Mux190~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~22_combout\ = (!\SLL641|Mux190~93_combout\ & ((\B[1]~input_o\ & ((\shiftIn[2]~55_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux190~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux190~20_combout\,
	datac => \shiftIn[2]~55_combout\,
	datad => \SLL641|Mux190~93_combout\,
	combout => \SLL641|Mux190~22_combout\);

-- Location: LCCOMB_X67_Y43_N26
\shiftOut~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~81_combout\ = (\shiftOut~69_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~69_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~22_combout\))) # (!\shiftOut~70_combout\ & (\shiftOut~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~80_combout\,
	datab => \SLL641|Mux190~22_combout\,
	datac => \shiftOut~69_combout\,
	datad => \shiftOut~70_combout\,
	combout => \shiftOut~81_combout\);

-- Location: IOIBUF_X83_Y73_N8
\C[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(4),
	o => \C[4]~input_o\);

-- Location: LCCOMB_X67_Y43_N20
\shiftOut~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~82_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~81_combout\ & (\SLL641|Mux190~18_combout\)) # (!\shiftOut~81_combout\ & ((\C[4]~input_o\))))) # (!\shiftOut~69_combout\ & (((\shiftOut~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \SLL641|Mux190~18_combout\,
	datac => \shiftOut~81_combout\,
	datad => \C[4]~input_o\,
	combout => \shiftOut~82_combout\);

-- Location: LCCOMB_X67_Y43_N16
\shiftOut~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~284_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\mux1OutUp[36]~9_combout\)) # (!\ExtWord~input_o\ & ((\shiftOut~82_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\shiftOut~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \mux1OutUp[36]~9_combout\,
	datad => \shiftOut~82_combout\,
	combout => \shiftOut~284_combout\);

-- Location: IOIBUF_X74_Y73_N22
\C[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(5),
	o => \C[5]~input_o\);

-- Location: LCCOMB_X60_Y36_N4
\SRL641|Mux119~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux119~1_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux50~3_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux54~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux50~3_combout\,
	combout => \SRL641|Mux119~1_combout\);

-- Location: LCCOMB_X61_Y39_N2
\SRA641|Mux119~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux119~1_combout\ = (\SRA641|Mux119~0_combout\) # (\SRL641|Mux121~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRA641|Mux119~0_combout\,
	datad => \SRL641|Mux121~0_combout\,
	combout => \SRA641|Mux119~1_combout\);

-- Location: LCCOMB_X61_Y35_N4
\SRL641|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux43~0_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[36]~11_combout\))) # (!\B[4]~input_o\ & (\shiftIn[20]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[20]~59_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[36]~11_combout\,
	combout => \SRL641|Mux43~0_combout\);

-- Location: LCCOMB_X61_Y35_N30
\SRA641|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux42~0_combout\ = (!\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[63]~1_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[52]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[63]~1_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[52]~10_combout\,
	combout => \SRA641|Mux42~0_combout\);

-- Location: LCCOMB_X61_Y35_N8
\SRA641|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux42~1_combout\ = (\SRL641|Mux43~0_combout\) # (\SRA641|Mux42~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL641|Mux43~0_combout\,
	datac => \SRA641|Mux42~0_combout\,
	combout => \SRA641|Mux42~1_combout\);

-- Location: LCCOMB_X60_Y36_N14
\SRA641|Mux117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux117~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux42~1_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux46~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux42~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux46~1_combout\,
	combout => \SRA641|Mux117~0_combout\);

-- Location: LCCOMB_X61_Y39_N14
\SRA641|Mux156~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~258_combout\ = (\B[1]~input_o\ & ((\SRL641|Mux119~1_combout\) # ((\SRA641|Mux117~0_combout\)))) # (!\B[1]~input_o\ & (((\SRA641|Mux119~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux119~1_combout\,
	datab => \SRA641|Mux119~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux117~0_combout\,
	combout => \SRA641|Mux156~258_combout\);

-- Location: LCCOMB_X61_Y40_N18
\SRA641|Mux90~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~19_combout\ = (\B[5]~input_o\ & (!\ExtWord~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux90~19_combout\);

-- Location: LCCOMB_X62_Y39_N18
\SRA641|Mux90~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~26_combout\ = (\SRA641|Mux90~19_combout\ & ((\B[2]~input_o\ & (\shiftIn[52]~10_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[48]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[52]~10_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA641|Mux90~19_combout\,
	datad => \shiftIn[48]~12_combout\,
	combout => \SRA641|Mux90~26_combout\);

-- Location: LCCOMB_X62_Y39_N20
\SRA641|Mux90~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~27_combout\ = (\SRA641|Mux90~26_combout\) # ((\B[2]~input_o\ & (\SRL641|Mux43~0_combout\)) # (!\B[2]~input_o\ & ((\SRL641|Mux47~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux43~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL641|Mux47~1_combout\,
	datad => \SRA641|Mux90~26_combout\,
	combout => \SRA641|Mux90~27_combout\);

-- Location: LCCOMB_X61_Y39_N22
\SRA641|Mux156~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~94_combout\ = (\SRL641|Mux119~1_combout\) # ((\B[3]~input_o\ & \SRA641|Mux90~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux119~1_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux90~27_combout\,
	combout => \SRA641|Mux156~94_combout\);

-- Location: LCCOMB_X61_Y39_N4
\SRA641|Mux156~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~93_combout\ = (!\B[1]~input_o\ & ((\SRL641|Mux121~0_combout\) # ((\SRA641|Mux90~22_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~22_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRL641|Mux121~0_combout\,
	combout => \SRA641|Mux156~93_combout\);

-- Location: LCCOMB_X61_Y39_N24
\SRA641|Mux156~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~95_combout\ = (\SRA641|Mux156~93_combout\) # ((\B[1]~input_o\ & \SRA641|Mux156~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux156~94_combout\,
	datad => \SRA641|Mux156~93_combout\,
	combout => \SRA641|Mux156~95_combout\);

-- Location: LCCOMB_X66_Y43_N28
\shiftOut~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~83_combout\ = (\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~257_combout\) # ((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\SRA641|Mux156~90_combout\ & !\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~257_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA641|Mux156~90_combout\,
	datad => \B[0]~input_o\,
	combout => \shiftOut~83_combout\);

-- Location: LCCOMB_X66_Y43_N30
\shiftOut~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~84_combout\ = (\B[0]~input_o\ & ((\shiftOut~83_combout\ & (\SRA641|Mux156~258_combout\)) # (!\shiftOut~83_combout\ & ((\SRA641|Mux156~95_combout\))))) # (!\B[0]~input_o\ & (((\shiftOut~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~258_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~95_combout\,
	datad => \shiftOut~83_combout\,
	combout => \shiftOut~84_combout\);

-- Location: LCCOMB_X65_Y39_N26
\SLL641|Mux190~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~23_combout\ = (\B[2]~input_o\ & ((\shiftIn[1]~42_combout\))) # (!\B[2]~input_o\ & (\shiftIn[5]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftIn[5]~44_combout\,
	datad => \shiftIn[1]~42_combout\,
	combout => \SLL641|Mux190~23_combout\);

-- Location: LCCOMB_X65_Y39_N20
\SLL641|Mux190~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~24_combout\ = (!\SLL641|Mux190~93_combout\ & ((\B[1]~input_o\ & (\shiftIn[3]~37_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux190~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[3]~37_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL641|Mux190~23_combout\,
	datad => \SLL641|Mux190~93_combout\,
	combout => \SLL641|Mux190~24_combout\);

-- Location: LCCOMB_X65_Y42_N0
\shiftOut~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~85_combout\ = (\shiftOut~69_combout\ & (\shiftOut~70_combout\)) # (!\shiftOut~69_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~24_combout\))) # (!\shiftOut~70_combout\ & (\shiftOut~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \shiftOut~70_combout\,
	datac => \shiftOut~84_combout\,
	datad => \SLL641|Mux190~24_combout\,
	combout => \shiftOut~85_combout\);

-- Location: LCCOMB_X67_Y43_N30
\shiftOut~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~86_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~85_combout\ & ((\SLL641|Mux190~22_combout\))) # (!\shiftOut~85_combout\ & (\C[5]~input_o\)))) # (!\shiftOut~69_combout\ & (((\shiftOut~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[5]~input_o\,
	datab => \SLL641|Mux190~22_combout\,
	datac => \shiftOut~69_combout\,
	datad => \shiftOut~85_combout\,
	combout => \shiftOut~86_combout\);

-- Location: LCCOMB_X62_Y36_N10
\SRL641|Mux87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux87~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux19~6_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux19~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux19~7_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~6_combout\,
	combout => \SRL641|Mux87~0_combout\);

-- Location: LCCOMB_X62_Y39_N16
\SRA641|Mux90~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~25_combout\ = (\B[2]~input_o\ & (\shiftIn[52]~10_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[48]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \shiftIn[52]~10_combout\,
	datad => \shiftIn[48]~12_combout\,
	combout => \SRA641|Mux90~25_combout\);

-- Location: LCCOMB_X62_Y36_N20
\SRL641|Mux87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux87~1_combout\ = (\SRL641|Mux87~0_combout\) # ((\B[3]~input_o\ & \SRA641|Mux90~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux87~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~25_combout\,
	combout => \SRL641|Mux87~1_combout\);

-- Location: LCCOMB_X67_Y36_N0
\SRA641|Mux156~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~91_combout\ = (\SLL641|Mux190~97_combout\ & ((\B[1]~input_o\ & (\SRL641|Mux87~1_combout\)) # (!\B[1]~input_o\ & ((\SRL641|Mux89~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux87~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL641|Mux190~97_combout\,
	datad => \SRL641|Mux89~2_combout\,
	combout => \SRA641|Mux156~91_combout\);

-- Location: LCCOMB_X67_Y36_N18
\mux1OutUp[37]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[37]~10_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA641|Mux156~91_combout\)))) # (!\B[0]~input_o\ & (\SRA641|Mux156~85_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~85_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~91_combout\,
	combout => \mux1OutUp[37]~10_combout\);

-- Location: LCCOMB_X67_Y36_N20
\SRA641|Mux156~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~92_combout\ = (\SRA641|Mux156~91_combout\) # ((\shiftIn[63]~1_combout\ & !\SLL641|Mux190~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[63]~1_combout\,
	datac => \SLL641|Mux190~97_combout\,
	datad => \SRA641|Mux156~91_combout\,
	combout => \SRA641|Mux156~92_combout\);

-- Location: LCCOMB_X67_Y36_N14
\mux1OutUp[37]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[37]~11_combout\ = (\mux1OutUp[37]~10_combout\ & (((\SRA641|Mux156~92_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[37]~10_combout\ & (\SRA641|Mux156~88_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~88_combout\,
	datab => \mux1OutUp[37]~10_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~92_combout\,
	combout => \mux1OutUp[37]~11_combout\);

-- Location: LCCOMB_X67_Y43_N2
\shiftOut~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~285_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\mux1OutUp[37]~11_combout\))) # (!\ShiftFN[1]~input_o\ & (\shiftOut~86_combout\)))) # (!\ExtWord~input_o\ & (\shiftOut~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~86_combout\,
	datab => \ExtWord~input_o\,
	datac => \mux1OutUp[37]~11_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \shiftOut~285_combout\);

-- Location: LCCOMB_X70_Y38_N20
\SRA641|Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux86~0_combout\ = (\ExtWord~input_o\ & (((!\B[4]~input_o\)) # (!\B[3]~input_o\))) # (!\ExtWord~input_o\ & (!\B[5]~input_o\ & ((!\B[4]~input_o\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SRA641|Mux86~0_combout\);

-- Location: LCCOMB_X66_Y36_N10
\SRL641|Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux86~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux19~14_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux19~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux19~14_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux19~12_combout\,
	combout => \SRL641|Mux86~0_combout\);

-- Location: LCCOMB_X70_Y40_N24
\SRA641|Mux90~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~28_combout\ = (\B[2]~input_o\ & (\shiftIn[53]~31_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[49]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \shiftIn[53]~31_combout\,
	datad => \shiftIn[49]~27_combout\,
	combout => \SRA641|Mux90~28_combout\);

-- Location: LCCOMB_X67_Y38_N22
\SRA641|Mux156~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~97_combout\ = (\B[1]~input_o\ & ((\SRL641|Mux86~0_combout\) # ((\B[3]~input_o\ & \SRA641|Mux90~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux86~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~28_combout\,
	combout => \SRA641|Mux156~97_combout\);

-- Location: LCCOMB_X67_Y38_N24
\SRA641|Mux156~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~98_combout\ = (!\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux78~0_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux90~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux78~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~23_combout\,
	combout => \SRA641|Mux156~98_combout\);

-- Location: LCCOMB_X67_Y38_N26
\SRA641|Mux156~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~99_combout\ = (\SRA641|Mux86~0_combout\ & (((\SRA641|Mux156~97_combout\) # (\SRA641|Mux156~98_combout\)))) # (!\SRA641|Mux86~0_combout\ & (\shiftIn[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \SRA641|Mux86~0_combout\,
	datac => \SRA641|Mux156~97_combout\,
	datad => \SRA641|Mux156~98_combout\,
	combout => \SRA641|Mux156~99_combout\);

-- Location: LCCOMB_X67_Y38_N20
\SRL641|Mux86~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux86~1_combout\ = (\SRL641|Mux86~0_combout\) # ((\B[3]~input_o\ & \SRA641|Mux90~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux86~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~28_combout\,
	combout => \SRL641|Mux86~1_combout\);

-- Location: LCCOMB_X67_Y36_N16
\SRA641|Mux156~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~96_combout\ = (\SLL641|Mux190~97_combout\ & ((\B[1]~input_o\ & ((\SRL641|Mux86~1_combout\))) # (!\B[1]~input_o\ & (\SRL641|Mux88~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux88~0_combout\,
	datab => \SLL641|Mux190~97_combout\,
	datac => \SRL641|Mux86~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~96_combout\);

-- Location: LCCOMB_X68_Y38_N16
\mux1OutUp[38]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[38]~12_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA641|Mux156~96_combout\)))) # (!\B[0]~input_o\ & (\SRA641|Mux156~91_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~91_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~96_combout\,
	combout => \mux1OutUp[38]~12_combout\);

-- Location: LCCOMB_X67_Y36_N2
\mux1OutUp[38]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[38]~13_combout\ = (\ShiftFN[0]~input_o\ & ((\mux1OutUp[38]~12_combout\ & (\SRA641|Mux156~99_combout\)) # (!\mux1OutUp[38]~12_combout\ & ((\SRA641|Mux156~92_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\mux1OutUp[38]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~99_combout\,
	datab => \SRA641|Mux156~92_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \mux1OutUp[38]~12_combout\,
	combout => \mux1OutUp[38]~13_combout\);

-- Location: IOIBUF_X42_Y73_N1
\C[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(6),
	o => \C[6]~input_o\);

-- Location: LCCOMB_X66_Y43_N26
\shiftOut~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~87_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRA641|Mux156~258_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~95_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~258_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~95_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \shiftOut~87_combout\);

-- Location: LCCOMB_X66_Y43_N16
\SRA641|Mux156~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~100_combout\ = (!\B[1]~input_o\ & ((\SRL641|Mux120~0_combout\) # ((\SRA641|Mux90~24_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~24_combout\,
	datab => \SRL641|Mux120~0_combout\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRA641|Mux156~100_combout\);

-- Location: LCCOMB_X66_Y42_N10
\SRL641|Mux118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux118~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux49~3_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux53~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux49~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux53~3_combout\,
	combout => \SRL641|Mux118~0_combout\);

-- Location: LCCOMB_X66_Y41_N30
\SRL641|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux42~0_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[37]~32_combout\))) # (!\B[4]~input_o\ & (\shiftIn[21]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \shiftIn[21]~43_combout\,
	datad => \shiftIn[37]~32_combout\,
	combout => \SRL641|Mux42~0_combout\);

-- Location: LCCOMB_X66_Y41_N28
\SRA641|Mux90~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~29_combout\ = (\SRA641|Mux90~19_combout\ & ((\B[2]~input_o\ & (\shiftIn[53]~31_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[49]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftIn[53]~31_combout\,
	datac => \SRA641|Mux90~19_combout\,
	datad => \shiftIn[49]~27_combout\,
	combout => \SRA641|Mux90~29_combout\);

-- Location: LCCOMB_X66_Y42_N28
\SRA641|Mux90~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~30_combout\ = (\SRA641|Mux90~29_combout\) # ((\B[2]~input_o\ & ((\SRL641|Mux42~0_combout\))) # (!\B[2]~input_o\ & (\SRL641|Mux46~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL641|Mux46~0_combout\,
	datac => \SRL641|Mux42~0_combout\,
	datad => \SRA641|Mux90~29_combout\,
	combout => \SRA641|Mux90~30_combout\);

-- Location: LCCOMB_X66_Y42_N6
\SRA641|Mux156~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~101_combout\ = (\SRL641|Mux118~0_combout\) # ((\B[3]~input_o\ & \SRA641|Mux90~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRL641|Mux118~0_combout\,
	datad => \SRA641|Mux90~30_combout\,
	combout => \SRA641|Mux156~101_combout\);

-- Location: LCCOMB_X63_Y42_N8
\SRA641|Mux156~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~102_combout\ = (\SRA641|Mux156~100_combout\) # ((\SRA641|Mux156~101_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux156~100_combout\,
	datac => \SRA641|Mux156~101_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~102_combout\);

-- Location: LCCOMB_X66_Y41_N8
\SRA641|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux41~0_combout\ = (!\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[63]~1_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[53]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \shiftIn[53]~31_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux41~0_combout\);

-- Location: LCCOMB_X66_Y40_N10
\SRA641|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux41~1_combout\ = (\SRL641|Mux42~0_combout\) # (\SRA641|Mux41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL641|Mux42~0_combout\,
	datad => \SRA641|Mux41~0_combout\,
	combout => \SRA641|Mux41~1_combout\);

-- Location: LCCOMB_X66_Y40_N28
\SRA641|Mux116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux116~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux41~1_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRA641|Mux45~1_combout\,
	datad => \SRA641|Mux41~1_combout\,
	combout => \SRA641|Mux116~0_combout\);

-- Location: LCCOMB_X66_Y43_N0
\SRA641|Mux118~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux118~1_combout\ = (\SRA641|Mux118~0_combout\) # (\SRL641|Mux120~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux118~0_combout\,
	datac => \SRL641|Mux120~0_combout\,
	combout => \SRA641|Mux118~1_combout\);

-- Location: LCCOMB_X62_Y42_N28
\SRA641|Mux156~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~259_combout\ = (\B[1]~input_o\ & ((\SRL641|Mux118~0_combout\) # ((\SRA641|Mux116~0_combout\)))) # (!\B[1]~input_o\ & (((\SRA641|Mux118~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux118~0_combout\,
	datab => \SRA641|Mux116~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux118~1_combout\,
	combout => \SRA641|Mux156~259_combout\);

-- Location: LCCOMB_X63_Y42_N2
\shiftOut~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~88_combout\ = (\shiftOut~87_combout\ & (((\SRA641|Mux156~259_combout\)) # (!\B[0]~input_o\))) # (!\shiftOut~87_combout\ & (\B[0]~input_o\ & (\SRA641|Mux156~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~87_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~102_combout\,
	datad => \SRA641|Mux156~259_combout\,
	combout => \shiftOut~88_combout\);

-- Location: LCCOMB_X57_Y39_N28
\SLL641|Mux190~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~26_combout\ = (\B[2]~input_o\ & (\shiftIn[2]~55_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[6]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftIn[2]~55_combout\,
	datac => \shiftIn[6]~54_combout\,
	combout => \SLL641|Mux190~26_combout\);

-- Location: LCCOMB_X70_Y38_N22
\SLL641|Mux190~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~25_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL641|Mux190~25_combout\);

-- Location: LCCOMB_X57_Y39_N22
\SLL641|Mux190~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~27_combout\ = (\SLL641|Mux190~25_combout\ & ((\B[1]~input_o\ & ((\SLL641|Mux190~20_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux190~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux190~26_combout\,
	datac => \SLL641|Mux190~25_combout\,
	datad => \SLL641|Mux190~20_combout\,
	combout => \SLL641|Mux190~27_combout\);

-- Location: LCCOMB_X65_Y42_N10
\shiftOut~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~89_combout\ = (\shiftOut~69_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~69_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~27_combout\))) # (!\shiftOut~70_combout\ & (\shiftOut~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \shiftOut~88_combout\,
	datac => \shiftOut~70_combout\,
	datad => \SLL641|Mux190~27_combout\,
	combout => \shiftOut~89_combout\);

-- Location: LCCOMB_X65_Y42_N28
\shiftOut~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~90_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~89_combout\ & (\SLL641|Mux190~24_combout\)) # (!\shiftOut~89_combout\ & ((\C[6]~input_o\))))) # (!\shiftOut~69_combout\ & (((\shiftOut~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \SLL641|Mux190~24_combout\,
	datac => \C[6]~input_o\,
	datad => \shiftOut~89_combout\,
	combout => \shiftOut~90_combout\);

-- Location: LCCOMB_X73_Y41_N0
\shiftOut~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~286_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\mux1OutUp[38]~13_combout\)) # (!\ShiftFN[1]~input_o\ & ((\shiftOut~90_combout\))))) # (!\ExtWord~input_o\ & (((\shiftOut~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \mux1OutUp[38]~13_combout\,
	datad => \shiftOut~90_combout\,
	combout => \shiftOut~286_combout\);

-- Location: LCCOMB_X63_Y42_N6
\shiftOut~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~91_combout\ = (\ShiftFN[0]~input_o\ & ((\B[0]~input_o\) # ((\SRA641|Mux156~259_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\B[0]~input_o\ & (\SRA641|Mux156~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~102_combout\,
	datad => \SRA641|Mux156~259_combout\,
	combout => \shiftOut~91_combout\);

-- Location: LCCOMB_X61_Y39_N26
\SRA641|Mux117~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux117~1_combout\ = (\SRL641|Mux119~1_combout\) # (\SRA641|Mux117~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRL641|Mux119~1_combout\,
	datad => \SRA641|Mux117~0_combout\,
	combout => \SRA641|Mux117~1_combout\);

-- Location: LCCOMB_X60_Y39_N26
\SRL641|Mux117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux117~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux48~3_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux52~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux52~3_combout\,
	datac => \SRA641|Mux48~3_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL641|Mux117~0_combout\);

-- Location: LCCOMB_X61_Y40_N6
\SRA641|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux40~0_combout\ = (!\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[63]~1_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[54]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[63]~1_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[54]~8_combout\,
	combout => \SRA641|Mux40~0_combout\);

-- Location: LCCOMB_X61_Y40_N26
\SRL641|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux41~0_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[38]~9_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[22]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[38]~9_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[22]~53_combout\,
	combout => \SRL641|Mux41~0_combout\);

-- Location: LCCOMB_X61_Y40_N0
\SRA641|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux40~1_combout\ = (\SRA641|Mux40~0_combout\) # (\SRL641|Mux41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux40~0_combout\,
	datac => \SRL641|Mux41~0_combout\,
	combout => \SRA641|Mux40~1_combout\);

-- Location: LCCOMB_X60_Y38_N10
\SRA641|Mux115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux115~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux40~1_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux44~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux40~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux44~1_combout\,
	combout => \SRA641|Mux115~0_combout\);

-- Location: LCCOMB_X63_Y42_N20
\SRA641|Mux156~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~260_combout\ = (\B[1]~input_o\ & (((\SRL641|Mux117~0_combout\) # (\SRA641|Mux115~0_combout\)))) # (!\B[1]~input_o\ & (\SRA641|Mux117~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux117~1_combout\,
	datac => \SRL641|Mux117~0_combout\,
	datad => \SRA641|Mux115~0_combout\,
	combout => \SRA641|Mux156~260_combout\);

-- Location: LCCOMB_X61_Y40_N24
\SRA641|Mux90~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~32_combout\ = (\SRA641|Mux90~19_combout\ & ((\B[2]~input_o\ & ((\shiftIn[54]~8_combout\))) # (!\B[2]~input_o\ & (\shiftIn[50]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[50]~4_combout\,
	datab => \SRA641|Mux90~19_combout\,
	datac => \B[2]~input_o\,
	datad => \shiftIn[54]~8_combout\,
	combout => \SRA641|Mux90~32_combout\);

-- Location: LCCOMB_X61_Y40_N4
\SRA641|Mux90~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~33_combout\ = (\SRA641|Mux90~32_combout\) # ((\B[2]~input_o\ & (\SRL641|Mux41~0_combout\)) # (!\B[2]~input_o\ & ((\SRL641|Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux41~0_combout\,
	datab => \SRL641|Mux45~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux90~32_combout\,
	combout => \SRA641|Mux90~33_combout\);

-- Location: LCCOMB_X61_Y37_N8
\SRA641|Mux156~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~105_combout\ = (\SRL641|Mux117~0_combout\) # ((\B[3]~input_o\ & \SRA641|Mux90~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux117~0_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux90~33_combout\,
	combout => \SRA641|Mux156~105_combout\);

-- Location: LCCOMB_X63_Y42_N12
\SRA641|Mux156~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~106_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux156~105_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux156~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux156~94_combout\,
	datac => \SRA641|Mux156~105_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~106_combout\);

-- Location: LCCOMB_X63_Y42_N16
\shiftOut~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~92_combout\ = (\shiftOut~91_combout\ & ((\SRA641|Mux156~260_combout\) # ((!\B[0]~input_o\)))) # (!\shiftOut~91_combout\ & (((\B[0]~input_o\ & \SRA641|Mux156~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~91_combout\,
	datab => \SRA641|Mux156~260_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA641|Mux156~106_combout\,
	combout => \shiftOut~92_combout\);

-- Location: LCCOMB_X65_Y39_N22
\SLL641|Mux190~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~28_combout\ = (\B[2]~input_o\ & (\shiftIn[3]~37_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[7]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[3]~37_combout\,
	datac => \shiftIn[7]~39_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL641|Mux190~28_combout\);

-- Location: LCCOMB_X65_Y39_N16
\SLL641|Mux190~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~29_combout\ = (\SLL641|Mux190~25_combout\ & ((\B[1]~input_o\ & ((\SLL641|Mux190~23_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux190~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~28_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL641|Mux190~23_combout\,
	datad => \SLL641|Mux190~25_combout\,
	combout => \SLL641|Mux190~29_combout\);

-- Location: LCCOMB_X65_Y42_N6
\shiftOut~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~93_combout\ = (\shiftOut~69_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~69_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~29_combout\))) # (!\shiftOut~70_combout\ & (\shiftOut~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \shiftOut~92_combout\,
	datac => \shiftOut~70_combout\,
	datad => \SLL641|Mux190~29_combout\,
	combout => \shiftOut~93_combout\);

-- Location: IOIBUF_X65_Y73_N22
\C[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(7),
	o => \C[7]~input_o\);

-- Location: LCCOMB_X65_Y42_N8
\shiftOut~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~94_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~93_combout\ & ((\SLL641|Mux190~27_combout\))) # (!\shiftOut~93_combout\ & (\C[7]~input_o\)))) # (!\shiftOut~69_combout\ & (\shiftOut~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \shiftOut~93_combout\,
	datac => \C[7]~input_o\,
	datad => \SLL641|Mux190~27_combout\,
	combout => \shiftOut~94_combout\);

-- Location: LCCOMB_X61_Y40_N22
\SRA641|Mux90~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~31_combout\ = (\B[2]~input_o\ & ((\shiftIn[54]~8_combout\))) # (!\B[2]~input_o\ & (\shiftIn[50]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[50]~4_combout\,
	datac => \B[2]~input_o\,
	datad => \shiftIn[54]~8_combout\,
	combout => \SRA641|Mux90~31_combout\);

-- Location: LCCOMB_X65_Y38_N20
\SRL641|Mux85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux85~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux19~2_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux19~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~2_combout\,
	datab => \SRA641|Mux19~0_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRL641|Mux85~0_combout\);

-- Location: LCCOMB_X65_Y41_N8
\SRL641|Mux85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux85~1_combout\ = (\SRL641|Mux85~0_combout\) # ((\B[3]~input_o\ & \SRA641|Mux90~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux90~31_combout\,
	datad => \SRL641|Mux85~0_combout\,
	combout => \SRL641|Mux85~1_combout\);

-- Location: LCCOMB_X67_Y36_N4
\SRA641|Mux156~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~103_combout\ = (\SRA641|Mux86~0_combout\ & ((\B[1]~input_o\ & ((\SRL641|Mux85~1_combout\))) # (!\B[1]~input_o\ & (\SRL641|Mux87~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux87~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux86~0_combout\,
	datad => \SRL641|Mux85~1_combout\,
	combout => \SRA641|Mux156~103_combout\);

-- Location: LCCOMB_X58_Y38_N8
\SRA641|Mux156~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~104_combout\ = (\SRA641|Mux156~103_combout\) # ((\shiftIn[63]~1_combout\ & !\SRA641|Mux86~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datac => \SRA641|Mux156~103_combout\,
	datad => \SRA641|Mux86~0_combout\,
	combout => \SRA641|Mux156~104_combout\);

-- Location: LCCOMB_X68_Y38_N10
\mux1OutUp[39]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[39]~14_combout\ = (\B[0]~input_o\ & ((\SRA641|Mux156~103_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA641|Mux156~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~103_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~96_combout\,
	combout => \mux1OutUp[39]~14_combout\);

-- Location: LCCOMB_X68_Y38_N4
\mux1OutUp[39]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[39]~15_combout\ = (\ShiftFN[0]~input_o\ & ((\mux1OutUp[39]~14_combout\ & (\SRA641|Mux156~104_combout\)) # (!\mux1OutUp[39]~14_combout\ & ((\SRA641|Mux156~99_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\mux1OutUp[39]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~104_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA641|Mux156~99_combout\,
	datad => \mux1OutUp[39]~14_combout\,
	combout => \mux1OutUp[39]~15_combout\);

-- Location: LCCOMB_X73_Y41_N10
\shiftOut~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~287_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\mux1OutUp[39]~15_combout\))) # (!\ShiftFN[1]~input_o\ & (\shiftOut~94_combout\)))) # (!\ExtWord~input_o\ & (\shiftOut~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \shiftOut~94_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \mux1OutUp[39]~15_combout\,
	combout => \shiftOut~287_combout\);

-- Location: LCCOMB_X66_Y39_N14
\SRL641|Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux84~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux19~8_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux19~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~8_combout\,
	datab => \SRA641|Mux19~10_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRL641|Mux84~0_combout\);

-- Location: LCCOMB_X66_Y39_N16
\SRA641|Mux90~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~34_combout\ = (\B[2]~input_o\ & (\shiftIn[55]~19_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[51]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[55]~19_combout\,
	datac => \B[2]~input_o\,
	datad => \shiftIn[51]~23_combout\,
	combout => \SRA641|Mux90~34_combout\);

-- Location: LCCOMB_X66_Y39_N18
\SRL641|Mux84~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux84~1_combout\ = (\SRL641|Mux84~0_combout\) # ((\B[3]~input_o\ & \SRA641|Mux90~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRL641|Mux84~0_combout\,
	datad => \SRA641|Mux90~34_combout\,
	combout => \SRL641|Mux84~1_combout\);

-- Location: LCCOMB_X67_Y36_N30
\SRA641|Mux156~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~107_combout\ = (\SRA641|Mux86~0_combout\ & ((\B[1]~input_o\ & ((\SRL641|Mux84~1_combout\))) # (!\B[1]~input_o\ & (\SRL641|Mux86~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux86~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux86~0_combout\,
	datad => \SRL641|Mux84~1_combout\,
	combout => \SRA641|Mux156~107_combout\);

-- Location: LCCOMB_X66_Y38_N8
\mux1OutUp[40]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[40]~16_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & ((\SRA641|Mux156~107_combout\))) # (!\B[0]~input_o\ & (\SRA641|Mux156~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~103_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA641|Mux156~107_combout\,
	datad => \B[0]~input_o\,
	combout => \mux1OutUp[40]~16_combout\);

-- Location: LCCOMB_X67_Y38_N4
\SRA641|Mux156~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~109_combout\ = (!\B[1]~input_o\ & ((\SRL641|Mux86~0_combout\) # ((\B[3]~input_o\ & \SRA641|Mux90~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux86~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~28_combout\,
	combout => \SRA641|Mux156~109_combout\);

-- Location: LCCOMB_X66_Y39_N30
\SRA641|Mux82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux82~1_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\shiftIn[51]~23_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux19~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[51]~23_combout\,
	datab => \SRA641|Mux19~10_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRA641|Mux82~1_combout\);

-- Location: LCCOMB_X66_Y39_N12
\SRA641|Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux82~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\shiftIn[55]~19_combout\)) # (!\B[3]~input_o\ & ((\shiftIn[47]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[55]~19_combout\,
	datab => \shiftIn[47]~18_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRA641|Mux82~0_combout\);

-- Location: LCCOMB_X66_Y38_N26
\SRA641|Mux156~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~110_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux82~1_combout\) # (\SRA641|Mux82~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux82~1_combout\,
	datad => \SRA641|Mux82~0_combout\,
	combout => \SRA641|Mux156~110_combout\);

-- Location: LCCOMB_X65_Y38_N18
\SLL641|Mux190~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~21_combout\ = (\B[2]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SLL641|Mux190~21_combout\);

-- Location: LCCOMB_X65_Y38_N22
\SRA641|Mux156~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~108_combout\ = (\SLL641|Mux190~21_combout\ & (((\SRL641|Mux47~0_combout\)))) # (!\SLL641|Mux190~21_combout\ & ((\B[3]~input_o\ & ((\SRL641|Mux47~0_combout\))) # (!\B[3]~input_o\ & (\shiftSig[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~21_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL641|Mux47~0_combout\,
	combout => \SRA641|Mux156~108_combout\);

-- Location: LCCOMB_X66_Y38_N12
\SRA641|Mux156~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~111_combout\ = (\SRA641|Mux156~108_combout\ & ((\SRA641|Mux156~109_combout\) # ((\SRA641|Mux156~110_combout\)))) # (!\SRA641|Mux156~108_combout\ & (((\shiftIn[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~109_combout\,
	datab => \shiftIn[63]~1_combout\,
	datac => \SRA641|Mux156~110_combout\,
	datad => \SRA641|Mux156~108_combout\,
	combout => \SRA641|Mux156~111_combout\);

-- Location: LCCOMB_X66_Y38_N6
\mux1OutUp[40]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[40]~17_combout\ = (\mux1OutUp[40]~16_combout\ & (((\SRA641|Mux156~111_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[40]~16_combout\ & (\SRA641|Mux156~104_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~104_combout\,
	datab => \mux1OutUp[40]~16_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~111_combout\,
	combout => \mux1OutUp[40]~17_combout\);

-- Location: IOIBUF_X91_Y73_N15
\C[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(8),
	o => \C[8]~input_o\);

-- Location: LCCOMB_X58_Y36_N4
\SLL641|Mux115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux115~0_combout\ = (\B[3]~input_o\ & (\shiftIn[0]~0_combout\)) # (!\B[3]~input_o\ & ((\shiftIn[8]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[0]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \shiftIn[8]~63_combout\,
	combout => \SLL641|Mux115~0_combout\);

-- Location: LCCOMB_X58_Y36_N22
\SLL641|Mux119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux119~0_combout\ = (\B[2]~input_o\ & ((\shiftIn[4]~60_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux115~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux115~0_combout\,
	datac => \B[2]~input_o\,
	datad => \shiftIn[4]~60_combout\,
	combout => \SLL641|Mux119~0_combout\);

-- Location: LCCOMB_X60_Y39_N2
\SLL641|Mux190~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~94_combout\ = (!\B[4]~input_o\ & (!\SLL641|Mux190~19_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \SLL641|Mux190~19_combout\,
	combout => \SLL641|Mux190~94_combout\);

-- Location: LCCOMB_X57_Y39_N16
\SLL641|Mux190~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~30_combout\ = (\SLL641|Mux190~94_combout\ & ((\B[1]~input_o\ & ((\SLL641|Mux190~26_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux119~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux119~0_combout\,
	datac => \SLL641|Mux190~94_combout\,
	datad => \SLL641|Mux190~26_combout\,
	combout => \SLL641|Mux190~30_combout\);

-- Location: LCCOMB_X62_Y42_N16
\SRA641|Mux116~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux116~1_combout\ = (\SRA641|Mux116~0_combout\) # (\SRL641|Mux118~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRA641|Mux116~0_combout\,
	datad => \SRL641|Mux118~0_combout\,
	combout => \SRA641|Mux116~1_combout\);

-- Location: LCCOMB_X66_Y39_N10
\SRA641|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux39~0_combout\ = (!\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[63]~1_combout\))) # (!\B[4]~input_o\ & (\shiftIn[55]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftIn[55]~19_combout\,
	datad => \shiftIn[63]~1_combout\,
	combout => \SRA641|Mux39~0_combout\);

-- Location: LCCOMB_X59_Y42_N10
\SRL641|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux40~0_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[39]~20_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[23]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \shiftIn[39]~20_combout\,
	datad => \shiftIn[23]~38_combout\,
	combout => \SRL641|Mux40~0_combout\);

-- Location: LCCOMB_X62_Y43_N12
\SRA641|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux39~1_combout\ = (\SRA641|Mux39~0_combout\) # (\SRL641|Mux40~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux39~0_combout\,
	datad => \SRL641|Mux40~0_combout\,
	combout => \SRA641|Mux39~1_combout\);

-- Location: LCCOMB_X62_Y43_N30
\SRA641|Mux114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux114~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux39~1_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux43~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux39~1_combout\,
	combout => \SRA641|Mux114~0_combout\);

-- Location: LCCOMB_X62_Y43_N10
\SRL641|Mux116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux116~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux47~3_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux51~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux51~3_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux47~3_combout\,
	combout => \SRL641|Mux116~0_combout\);

-- Location: LCCOMB_X62_Y42_N14
\SRA641|Mux156~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~261_combout\ = (\B[1]~input_o\ & (((\SRA641|Mux114~0_combout\) # (\SRL641|Mux116~0_combout\)))) # (!\B[1]~input_o\ & (\SRA641|Mux116~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux116~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux114~0_combout\,
	datad => \SRL641|Mux116~0_combout\,
	combout => \SRA641|Mux156~261_combout\);

-- Location: LCCOMB_X63_Y42_N4
\shiftOut~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~95_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~260_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA641|Mux156~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~106_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~260_combout\,
	combout => \shiftOut~95_combout\);

-- Location: LCCOMB_X66_Y39_N8
\SRA641|Mux90~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~35_combout\ = (\SRA641|Mux90~19_combout\ & ((\B[2]~input_o\ & (\shiftIn[55]~19_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[51]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[55]~19_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA641|Mux90~19_combout\,
	datad => \shiftIn[51]~23_combout\,
	combout => \SRA641|Mux90~35_combout\);

-- Location: LCCOMB_X63_Y41_N16
\SRA641|Mux90~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~36_combout\ = (\SRA641|Mux90~35_combout\) # ((\B[2]~input_o\ & (\SRL641|Mux40~0_combout\)) # (!\B[2]~input_o\ & ((\SRL641|Mux44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~35_combout\,
	datab => \SRL641|Mux40~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL641|Mux44~0_combout\,
	combout => \SRA641|Mux90~36_combout\);

-- Location: LCCOMB_X63_Y41_N10
\SRA641|Mux156~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~112_combout\ = (\SRL641|Mux116~0_combout\) # ((\B[3]~input_o\ & \SRA641|Mux90~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux116~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~36_combout\,
	combout => \SRA641|Mux156~112_combout\);

-- Location: LCCOMB_X63_Y42_N10
\SRA641|Mux156~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~113_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux156~112_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux156~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SRA641|Mux156~101_combout\,
	datad => \SRA641|Mux156~112_combout\,
	combout => \SRA641|Mux156~113_combout\);

-- Location: LCCOMB_X63_Y42_N30
\shiftOut~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~96_combout\ = (\B[0]~input_o\ & ((\shiftOut~95_combout\ & (\SRA641|Mux156~261_combout\)) # (!\shiftOut~95_combout\ & ((\SRA641|Mux156~113_combout\))))) # (!\B[0]~input_o\ & (((\shiftOut~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~261_combout\,
	datab => \B[0]~input_o\,
	datac => \shiftOut~95_combout\,
	datad => \SRA641|Mux156~113_combout\,
	combout => \shiftOut~96_combout\);

-- Location: LCCOMB_X65_Y42_N2
\shiftOut~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~97_combout\ = (\shiftOut~69_combout\ & (\shiftOut~70_combout\)) # (!\shiftOut~69_combout\ & ((\shiftOut~70_combout\ & (\SLL641|Mux190~30_combout\)) # (!\shiftOut~70_combout\ & ((\shiftOut~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \shiftOut~70_combout\,
	datac => \SLL641|Mux190~30_combout\,
	datad => \shiftOut~96_combout\,
	combout => \shiftOut~97_combout\);

-- Location: LCCOMB_X65_Y42_N12
\shiftOut~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~98_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~97_combout\ & (\SLL641|Mux190~29_combout\)) # (!\shiftOut~97_combout\ & ((\C[8]~input_o\))))) # (!\shiftOut~69_combout\ & (((\shiftOut~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \SLL641|Mux190~29_combout\,
	datac => \C[8]~input_o\,
	datad => \shiftOut~97_combout\,
	combout => \shiftOut~98_combout\);

-- Location: LCCOMB_X73_Y41_N28
\shiftOut~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~288_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\mux1OutUp[40]~17_combout\)) # (!\ShiftFN[1]~input_o\ & ((\shiftOut~98_combout\))))) # (!\ExtWord~input_o\ & (((\shiftOut~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \mux1OutUp[40]~17_combout\,
	datad => \shiftOut~98_combout\,
	combout => \shiftOut~288_combout\);

-- Location: LCCOMB_X62_Y39_N30
\SRL641|Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux83~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\) # ((\shiftIn[52]~10_combout\)))) # (!\B[3]~input_o\ & (!\B[2]~input_o\ & ((\SRA641|Mux19~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \shiftIn[52]~10_combout\,
	datad => \SRA641|Mux19~6_combout\,
	combout => \SRL641|Mux83~0_combout\);

-- Location: LCCOMB_X62_Y39_N8
\SRL641|Mux83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux83~1_combout\ = (\B[2]~input_o\ & ((\SRL641|Mux83~0_combout\ & (\shiftIn[56]~16_combout\)) # (!\SRL641|Mux83~0_combout\ & ((\shiftIn[48]~12_combout\))))) # (!\B[2]~input_o\ & (((\SRL641|Mux83~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[56]~16_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL641|Mux83~0_combout\,
	datad => \shiftIn[48]~12_combout\,
	combout => \SRL641|Mux83~1_combout\);

-- Location: LCCOMB_X66_Y38_N24
\SRA641|Mux156~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~114_combout\ = (\SRA641|Mux156~108_combout\ & ((\B[1]~input_o\ & (\SRL641|Mux83~1_combout\)) # (!\B[1]~input_o\ & ((\SRL641|Mux85~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux83~1_combout\,
	datab => \SRA641|Mux156~108_combout\,
	datac => \SRL641|Mux85~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~114_combout\);

-- Location: LCCOMB_X66_Y38_N10
\mux1OutUp[41]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[41]~18_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA641|Mux156~114_combout\)))) # (!\B[0]~input_o\ & (\SRA641|Mux156~107_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~107_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~114_combout\,
	combout => \mux1OutUp[41]~18_combout\);

-- Location: LCCOMB_X66_Y38_N4
\SRA641|Mux156~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~115_combout\ = (\SRA641|Mux156~114_combout\) # ((\shiftIn[63]~1_combout\ & !\SRA641|Mux156~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[63]~1_combout\,
	datac => \SRA641|Mux156~114_combout\,
	datad => \SRA641|Mux156~108_combout\,
	combout => \SRA641|Mux156~115_combout\);

-- Location: LCCOMB_X66_Y38_N30
\mux1OutUp[41]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[41]~19_combout\ = (\mux1OutUp[41]~18_combout\ & ((\SRA641|Mux156~115_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[41]~18_combout\ & (((\ShiftFN[0]~input_o\ & \SRA641|Mux156~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[41]~18_combout\,
	datab => \SRA641|Mux156~115_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~111_combout\,
	combout => \mux1OutUp[41]~19_combout\);

-- Location: IOIBUF_X115_Y27_N8
\C[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(9),
	o => \C[9]~input_o\);

-- Location: LCCOMB_X65_Y39_N10
\SLL641|Mux114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux114~0_combout\ = (\B[3]~input_o\ & ((\shiftIn[1]~42_combout\))) # (!\B[3]~input_o\ & (\shiftIn[9]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \shiftIn[9]~48_combout\,
	datad => \shiftIn[1]~42_combout\,
	combout => \SLL641|Mux114~0_combout\);

-- Location: LCCOMB_X65_Y39_N12
\SLL641|Mux118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux118~0_combout\ = (\B[2]~input_o\ & (\shiftIn[5]~44_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux114~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftIn[5]~44_combout\,
	datad => \SLL641|Mux114~0_combout\,
	combout => \SLL641|Mux118~0_combout\);

-- Location: LCCOMB_X65_Y39_N6
\SLL641|Mux190~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~31_combout\ = (\SLL641|Mux190~94_combout\ & ((\B[1]~input_o\ & ((\SLL641|Mux190~28_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux118~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux118~0_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL641|Mux190~28_combout\,
	datad => \SLL641|Mux190~94_combout\,
	combout => \SLL641|Mux190~31_combout\);

-- Location: LCCOMB_X63_Y42_N28
\shiftOut~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~99_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRA641|Mux156~261_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~261_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~113_combout\,
	combout => \shiftOut~99_combout\);

-- Location: LCCOMB_X60_Y36_N0
\SRA641|Mux113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux113~0_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux42~1_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux50~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux42~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux50~3_combout\,
	combout => \SRA641|Mux113~0_combout\);

-- Location: LCCOMB_X58_Y36_N24
\SRL641|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux39~0_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[40]~17_combout\))) # (!\B[4]~input_o\ & (\shiftIn[24]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[24]~62_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[40]~17_combout\,
	combout => \SRL641|Mux39~0_combout\);

-- Location: LCCOMB_X60_Y37_N0
\SRA641|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux38~0_combout\ = (!\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[63]~1_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[56]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[63]~1_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[56]~16_combout\,
	combout => \SRA641|Mux38~0_combout\);

-- Location: LCCOMB_X60_Y37_N10
\SRA641|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux38~1_combout\ = (\SRL641|Mux39~0_combout\) # (\SRA641|Mux38~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL641|Mux39~0_combout\,
	datad => \SRA641|Mux38~0_combout\,
	combout => \SRA641|Mux38~1_combout\);

-- Location: LCCOMB_X60_Y36_N26
\SRA641|Mux113~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux113~1_combout\ = (\B[2]~input_o\ & ((\SRA641|Mux113~0_combout\ & ((\SRA641|Mux38~1_combout\))) # (!\SRA641|Mux113~0_combout\ & (\SRA641|Mux46~1_combout\)))) # (!\B[2]~input_o\ & (\SRA641|Mux113~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux113~0_combout\,
	datac => \SRA641|Mux46~1_combout\,
	datad => \SRA641|Mux38~1_combout\,
	combout => \SRA641|Mux113~1_combout\);

-- Location: LCCOMB_X63_Y42_N22
\SRA641|Mux156~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~262_combout\ = (\B[1]~input_o\ & (\SRA641|Mux113~1_combout\)) # (!\B[1]~input_o\ & (((\SRL641|Mux117~0_combout\) # (\SRA641|Mux115~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux113~1_combout\,
	datac => \SRL641|Mux117~0_combout\,
	datad => \SRA641|Mux115~0_combout\,
	combout => \SRA641|Mux156~262_combout\);

-- Location: LCCOMB_X62_Y39_N10
\SRA641|Mux90~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~37_combout\ = (\SRA641|Mux90~19_combout\ & ((\B[2]~input_o\ & (\shiftIn[56]~16_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[52]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[56]~16_combout\,
	datab => \SRA641|Mux90~19_combout\,
	datac => \shiftIn[52]~10_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA641|Mux90~37_combout\);

-- Location: LCCOMB_X62_Y39_N4
\SRA641|Mux90~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~38_combout\ = (\SRA641|Mux90~37_combout\) # ((\B[2]~input_o\ & ((\SRL641|Mux39~0_combout\))) # (!\B[2]~input_o\ & (\SRL641|Mux43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux43~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SRL641|Mux39~0_combout\,
	datad => \SRA641|Mux90~37_combout\,
	combout => \SRA641|Mux90~38_combout\);

-- Location: LCCOMB_X63_Y42_N0
\SRA641|Mux156~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~116_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & ((\SRA641|Mux90~38_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux90~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux90~20_combout\,
	datac => \SRA641|Mux90~38_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~116_combout\);

-- Location: LCCOMB_X63_Y42_N18
\SRA641|Mux156~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~117_combout\ = (\SRA641|Mux156~116_combout\) # ((!\B[1]~input_o\ & \SRA641|Mux156~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SRA641|Mux156~105_combout\,
	datad => \SRA641|Mux156~116_combout\,
	combout => \SRA641|Mux156~117_combout\);

-- Location: LCCOMB_X63_Y42_N14
\shiftOut~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~100_combout\ = (\B[0]~input_o\ & ((\shiftOut~99_combout\ & (\SRA641|Mux156~262_combout\)) # (!\shiftOut~99_combout\ & ((\SRA641|Mux156~117_combout\))))) # (!\B[0]~input_o\ & (\shiftOut~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \shiftOut~99_combout\,
	datac => \SRA641|Mux156~262_combout\,
	datad => \SRA641|Mux156~117_combout\,
	combout => \shiftOut~100_combout\);

-- Location: LCCOMB_X65_Y42_N30
\shiftOut~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~101_combout\ = (\shiftOut~69_combout\ & (\shiftOut~70_combout\)) # (!\shiftOut~69_combout\ & ((\shiftOut~70_combout\ & (\SLL641|Mux190~31_combout\)) # (!\shiftOut~70_combout\ & ((\shiftOut~100_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \shiftOut~70_combout\,
	datac => \SLL641|Mux190~31_combout\,
	datad => \shiftOut~100_combout\,
	combout => \shiftOut~101_combout\);

-- Location: LCCOMB_X65_Y42_N24
\shiftOut~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~102_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~101_combout\ & ((\SLL641|Mux190~30_combout\))) # (!\shiftOut~101_combout\ & (\C[9]~input_o\)))) # (!\shiftOut~69_combout\ & (((\shiftOut~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \C[9]~input_o\,
	datac => \SLL641|Mux190~30_combout\,
	datad => \shiftOut~101_combout\,
	combout => \shiftOut~102_combout\);

-- Location: LCCOMB_X58_Y39_N4
\shiftOut~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~289_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\mux1OutUp[41]~19_combout\)) # (!\ShiftFN[1]~input_o\ & ((\shiftOut~102_combout\))))) # (!\ExtWord~input_o\ & (((\shiftOut~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[41]~19_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \shiftOut~102_combout\,
	combout => \shiftOut~289_combout\);

-- Location: LCCOMB_X57_Y39_N18
\SLL641|Mux113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux113~0_combout\ = (\B[3]~input_o\ & (\shiftIn[2]~55_combout\)) # (!\B[3]~input_o\ & ((\shiftIn[10]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[2]~55_combout\,
	datac => \B[3]~input_o\,
	datad => \shiftIn[10]~52_combout\,
	combout => \SLL641|Mux113~0_combout\);

-- Location: LCCOMB_X58_Y38_N18
\SLL641|Mux117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux117~0_combout\ = (\B[2]~input_o\ & (\shiftIn[6]~54_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux113~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[6]~54_combout\,
	datab => \B[2]~input_o\,
	datac => \SLL641|Mux113~0_combout\,
	combout => \SLL641|Mux117~0_combout\);

-- Location: LCCOMB_X67_Y39_N12
\SLL641|Mux190~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~95_combout\ = (!\B[4]~input_o\ & (!\SRA641|Mux90~17_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[4]~input_o\,
	datad => \SRA641|Mux90~17_combout\,
	combout => \SLL641|Mux190~95_combout\);

-- Location: LCCOMB_X65_Y39_N24
\SLL641|Mux190~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~32_combout\ = (\SLL641|Mux190~95_combout\ & ((\B[1]~input_o\ & ((\SLL641|Mux119~0_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux117~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux117~0_combout\,
	datab => \SLL641|Mux119~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux190~95_combout\,
	combout => \SLL641|Mux190~32_combout\);

-- Location: LCCOMB_X70_Y38_N24
\SRL641|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux38~0_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[41]~26_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[25]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[41]~26_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[25]~47_combout\,
	combout => \SRL641|Mux38~0_combout\);

-- Location: LCCOMB_X65_Y39_N18
\SRA641|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux37~0_combout\ = (!\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[63]~1_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[57]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[63]~1_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[57]~25_combout\,
	combout => \SRA641|Mux37~0_combout\);

-- Location: LCCOMB_X65_Y39_N28
\SRA641|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux37~1_combout\ = (\SRL641|Mux38~0_combout\) # (\SRA641|Mux37~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL641|Mux38~0_combout\,
	datad => \SRA641|Mux37~0_combout\,
	combout => \SRA641|Mux37~1_combout\);

-- Location: LCCOMB_X66_Y40_N14
\SRA641|Mux112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux112~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\) # ((\SRA641|Mux41~1_combout\)))) # (!\B[3]~input_o\ & (!\B[2]~input_o\ & (\SRA641|Mux49~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRA641|Mux49~3_combout\,
	datad => \SRA641|Mux41~1_combout\,
	combout => \SRA641|Mux112~0_combout\);

-- Location: LCCOMB_X66_Y40_N0
\SRA641|Mux112~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux112~1_combout\ = (\B[2]~input_o\ & ((\SRA641|Mux112~0_combout\ & (\SRA641|Mux37~1_combout\)) # (!\SRA641|Mux112~0_combout\ & ((\SRA641|Mux45~1_combout\))))) # (!\B[2]~input_o\ & (((\SRA641|Mux112~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux37~1_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA641|Mux112~0_combout\,
	datad => \SRA641|Mux45~1_combout\,
	combout => \SRA641|Mux112~1_combout\);

-- Location: LCCOMB_X62_Y42_N24
\SRA641|Mux156~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~263_combout\ = (\B[1]~input_o\ & (((\SRA641|Mux112~1_combout\)))) # (!\B[1]~input_o\ & ((\SRA641|Mux114~0_combout\) # ((\SRL641|Mux116~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux114~0_combout\,
	datab => \SRA641|Mux112~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL641|Mux116~0_combout\,
	combout => \SRA641|Mux156~263_combout\);

-- Location: LCCOMB_X63_Y42_N26
\shiftOut~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~103_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRA641|Mux156~262_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~117_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~262_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~117_combout\,
	combout => \shiftOut~103_combout\);

-- Location: LCCOMB_X66_Y41_N2
\SRA641|Mux90~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~39_combout\ = (\SRA641|Mux90~19_combout\ & ((\B[2]~input_o\ & ((\shiftIn[57]~25_combout\))) # (!\B[2]~input_o\ & (\shiftIn[53]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftIn[53]~31_combout\,
	datac => \SRA641|Mux90~19_combout\,
	datad => \shiftIn[57]~25_combout\,
	combout => \SRA641|Mux90~39_combout\);

-- Location: LCCOMB_X66_Y42_N16
\SRA641|Mux90~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~40_combout\ = (\SRA641|Mux90~39_combout\) # ((\B[2]~input_o\ & (\SRL641|Mux38~0_combout\)) # (!\B[2]~input_o\ & ((\SRL641|Mux42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL641|Mux38~0_combout\,
	datac => \SRL641|Mux42~0_combout\,
	datad => \SRA641|Mux90~39_combout\,
	combout => \SRA641|Mux90~40_combout\);

-- Location: LCCOMB_X66_Y42_N18
\SRA641|Mux156~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~122_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux90~40_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux90~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux90~40_combout\,
	datac => \SRA641|Mux90~21_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~122_combout\);

-- Location: LCCOMB_X63_Y42_N24
\SRA641|Mux156~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~123_combout\ = (\SRA641|Mux156~122_combout\) # ((!\B[1]~input_o\ & \SRA641|Mux156~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SRA641|Mux156~122_combout\,
	datad => \SRA641|Mux156~112_combout\,
	combout => \SRA641|Mux156~123_combout\);

-- Location: LCCOMB_X61_Y42_N8
\shiftOut~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~104_combout\ = (\shiftOut~103_combout\ & ((\SRA641|Mux156~263_combout\) # ((!\B[0]~input_o\)))) # (!\shiftOut~103_combout\ & (((\B[0]~input_o\ & \SRA641|Mux156~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~263_combout\,
	datab => \shiftOut~103_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA641|Mux156~123_combout\,
	combout => \shiftOut~104_combout\);

-- Location: LCCOMB_X65_Y42_N26
\shiftOut~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~105_combout\ = (\shiftOut~69_combout\ & (\shiftOut~70_combout\)) # (!\shiftOut~69_combout\ & ((\shiftOut~70_combout\ & (\SLL641|Mux190~32_combout\)) # (!\shiftOut~70_combout\ & ((\shiftOut~104_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \shiftOut~70_combout\,
	datac => \SLL641|Mux190~32_combout\,
	datad => \shiftOut~104_combout\,
	combout => \shiftOut~105_combout\);

-- Location: IOIBUF_X115_Y42_N15
\C[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(10),
	o => \C[10]~input_o\);

-- Location: LCCOMB_X65_Y42_N20
\shiftOut~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~106_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~105_combout\ & (\SLL641|Mux190~31_combout\)) # (!\shiftOut~105_combout\ & ((\C[10]~input_o\))))) # (!\shiftOut~69_combout\ & (((\shiftOut~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \SLL641|Mux190~31_combout\,
	datac => \shiftOut~105_combout\,
	datad => \C[10]~input_o\,
	combout => \shiftOut~106_combout\);

-- Location: LCCOMB_X65_Y38_N2
\SRL641|Mux82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux82~1_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\shiftIn[53]~31_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux19~14_combout\,
	datac => \B[3]~input_o\,
	datad => \shiftIn[53]~31_combout\,
	combout => \SRL641|Mux82~1_combout\);

-- Location: LCCOMB_X65_Y38_N24
\SRL641|Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux82~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\shiftIn[57]~25_combout\)) # (!\B[3]~input_o\ & ((\shiftIn[49]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftIn[57]~25_combout\,
	datac => \B[3]~input_o\,
	datad => \shiftIn[49]~27_combout\,
	combout => \SRL641|Mux82~0_combout\);

-- Location: LCCOMB_X65_Y38_N12
\SRL641|Mux82~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux82~2_combout\ = (\SRL641|Mux82~1_combout\) # (\SRL641|Mux82~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRL641|Mux82~1_combout\,
	datad => \SRL641|Mux82~0_combout\,
	combout => \SRL641|Mux82~2_combout\);

-- Location: LCCOMB_X65_Y38_N14
\SRA641|Mux156~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~118_combout\ = (\SRA641|Mux156~108_combout\ & ((\B[1]~input_o\ & ((\SRL641|Mux82~2_combout\))) # (!\B[1]~input_o\ & (\SRL641|Mux84~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux156~108_combout\,
	datac => \SRL641|Mux84~1_combout\,
	datad => \SRL641|Mux82~2_combout\,
	combout => \SRA641|Mux156~118_combout\);

-- Location: LCCOMB_X66_Y38_N16
\mux1OutUp[42]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[42]~20_combout\ = (\B[0]~input_o\ & ((\SRA641|Mux156~118_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA641|Mux156~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~118_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~114_combout\,
	combout => \mux1OutUp[42]~20_combout\);

-- Location: LCCOMB_X65_Y38_N8
\SRA641|Mux156~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~119_combout\ = (\B[1]~input_o\ & ((\SRL641|Mux82~1_combout\) # (\SRL641|Mux82~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL641|Mux82~1_combout\,
	datad => \SRL641|Mux82~0_combout\,
	combout => \SRA641|Mux156~119_combout\);

-- Location: LCCOMB_X58_Y40_N14
\SRA641|Mux156~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~270_combout\ = (\ExtWord~input_o\ & ((\SRL641|Mux119~0_combout\) # ((!\B[4]~input_o\)))) # (!\ExtWord~input_o\ & (!\B[5]~input_o\ & ((\SRL641|Mux119~0_combout\) # (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SRL641|Mux119~0_combout\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux156~270_combout\);

-- Location: LCCOMB_X66_Y38_N18
\SRA641|Mux156~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~120_combout\ = (!\B[1]~input_o\ & ((\SRA641|Mux82~1_combout\) # (\SRA641|Mux82~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux82~1_combout\,
	datad => \SRA641|Mux82~0_combout\,
	combout => \SRA641|Mux156~120_combout\);

-- Location: LCCOMB_X66_Y38_N28
\SRA641|Mux156~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~121_combout\ = (\SRA641|Mux156~270_combout\ & ((\SRA641|Mux156~119_combout\) # ((\SRA641|Mux156~120_combout\)))) # (!\SRA641|Mux156~270_combout\ & (((\shiftIn[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~119_combout\,
	datab => \shiftIn[63]~1_combout\,
	datac => \SRA641|Mux156~270_combout\,
	datad => \SRA641|Mux156~120_combout\,
	combout => \SRA641|Mux156~121_combout\);

-- Location: LCCOMB_X66_Y38_N14
\mux1OutUp[42]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[42]~21_combout\ = (\mux1OutUp[42]~20_combout\ & (((\SRA641|Mux156~121_combout\)) # (!\ShiftFN[0]~input_o\))) # (!\mux1OutUp[42]~20_combout\ & (\ShiftFN[0]~input_o\ & (\SRA641|Mux156~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[42]~20_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA641|Mux156~115_combout\,
	datad => \SRA641|Mux156~121_combout\,
	combout => \mux1OutUp[42]~21_combout\);

-- Location: LCCOMB_X72_Y40_N4
\shiftOut~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~290_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\mux1OutUp[42]~21_combout\))) # (!\ExtWord~input_o\ & (\shiftOut~106_combout\)))) # (!\ShiftFN[1]~input_o\ & (\shiftOut~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \shiftOut~106_combout\,
	datac => \ExtWord~input_o\,
	datad => \mux1OutUp[42]~21_combout\,
	combout => \shiftOut~290_combout\);

-- Location: LCCOMB_X62_Y39_N6
\SLL641|Mux112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux112~0_combout\ = (\B[3]~input_o\ & (\shiftIn[3]~37_combout\)) # (!\B[3]~input_o\ & ((\shiftIn[11]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \shiftIn[3]~37_combout\,
	datad => \shiftIn[11]~36_combout\,
	combout => \SLL641|Mux112~0_combout\);

-- Location: LCCOMB_X62_Y39_N24
\SLL641|Mux116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux116~0_combout\ = (\B[2]~input_o\ & (\shiftIn[7]~39_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux112~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \shiftIn[7]~39_combout\,
	datad => \SLL641|Mux112~0_combout\,
	combout => \SLL641|Mux116~0_combout\);

-- Location: LCCOMB_X65_Y39_N14
\SLL641|Mux190~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~33_combout\ = (\SLL641|Mux190~95_combout\ & ((\B[1]~input_o\ & ((\SLL641|Mux118~0_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux116~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~95_combout\,
	datab => \SLL641|Mux116~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux118~0_combout\,
	combout => \SLL641|Mux190~33_combout\);

-- Location: LCCOMB_X61_Y39_N12
\SRA641|Mux156~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~126_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux90~22_combout\) # ((\B[3]~input_o\)))) # (!\B[1]~input_o\ & (((!\B[3]~input_o\ & \SRA641|Mux90~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~22_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~20_combout\,
	combout => \SRA641|Mux156~126_combout\);

-- Location: LCCOMB_X59_Y38_N12
\SRL641|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux37~0_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[42]~3_combout\))) # (!\B[4]~input_o\ & (\shiftIn[26]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \shiftIn[26]~51_combout\,
	datad => \shiftIn[42]~3_combout\,
	combout => \SRL641|Mux37~0_combout\);

-- Location: LCCOMB_X60_Y37_N12
\SRA641|Mux90~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~41_combout\ = (\SRA641|Mux90~19_combout\ & ((\B[2]~input_o\ & ((\shiftIn[58]~2_combout\))) # (!\B[2]~input_o\ & (\shiftIn[54]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[54]~8_combout\,
	datab => \SRA641|Mux90~19_combout\,
	datac => \shiftIn[58]~2_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA641|Mux90~41_combout\);

-- Location: LCCOMB_X61_Y37_N2
\SRA641|Mux90~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~42_combout\ = (\SRA641|Mux90~41_combout\) # ((\B[2]~input_o\ & (\SRL641|Mux37~0_combout\)) # (!\B[2]~input_o\ & ((\SRL641|Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux37~0_combout\,
	datab => \SRL641|Mux41~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux90~41_combout\,
	combout => \SRA641|Mux90~42_combout\);

-- Location: LCCOMB_X61_Y42_N10
\SRA641|Mux156~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~127_combout\ = (\SRA641|Mux156~126_combout\ & ((\SRA641|Mux90~42_combout\) # ((!\B[3]~input_o\)))) # (!\SRA641|Mux156~126_combout\ & (((\B[3]~input_o\ & \SRA641|Mux90~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~126_combout\,
	datab => \SRA641|Mux90~42_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~38_combout\,
	combout => \SRA641|Mux156~127_combout\);

-- Location: LCCOMB_X59_Y38_N14
\SRA641|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux36~0_combout\ = (!\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[63]~1_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[58]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \shiftIn[58]~2_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux36~0_combout\);

-- Location: LCCOMB_X59_Y38_N8
\SRA641|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux36~1_combout\ = (\SRA641|Mux36~0_combout\) # (\SRL641|Mux37~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRA641|Mux36~0_combout\,
	datad => \SRL641|Mux37~0_combout\,
	combout => \SRA641|Mux36~1_combout\);

-- Location: LCCOMB_X60_Y38_N12
\SRA641|Mux111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux111~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\) # ((\SRA641|Mux40~1_combout\)))) # (!\B[3]~input_o\ & (!\B[2]~input_o\ & (\SRA641|Mux48~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRA641|Mux48~3_combout\,
	datad => \SRA641|Mux40~1_combout\,
	combout => \SRA641|Mux111~0_combout\);

-- Location: LCCOMB_X60_Y38_N14
\SRA641|Mux111~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux111~1_combout\ = (\B[2]~input_o\ & ((\SRA641|Mux111~0_combout\ & (\SRA641|Mux36~1_combout\)) # (!\SRA641|Mux111~0_combout\ & ((\SRA641|Mux44~1_combout\))))) # (!\B[2]~input_o\ & (((\SRA641|Mux111~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux36~1_combout\,
	datab => \SRA641|Mux44~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux111~0_combout\,
	combout => \SRA641|Mux111~1_combout\);

-- Location: LCCOMB_X61_Y42_N22
\SRA641|Mux156~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~128_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux111~1_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux113~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux113~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux111~1_combout\,
	combout => \SRA641|Mux156~128_combout\);

-- Location: LCCOMB_X61_Y42_N12
\shiftOut~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~107_combout\ = (\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~263_combout\) # ((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((!\B[0]~input_o\ & \SRA641|Mux156~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRA641|Mux156~263_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA641|Mux156~123_combout\,
	combout => \shiftOut~107_combout\);

-- Location: LCCOMB_X61_Y42_N16
\shiftOut~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~108_combout\ = (\B[0]~input_o\ & ((\shiftOut~107_combout\ & ((\SRA641|Mux156~128_combout\))) # (!\shiftOut~107_combout\ & (\SRA641|Mux156~127_combout\)))) # (!\B[0]~input_o\ & (((\shiftOut~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~127_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~128_combout\,
	datad => \shiftOut~107_combout\,
	combout => \shiftOut~108_combout\);

-- Location: LCCOMB_X65_Y42_N14
\shiftOut~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~109_combout\ = (\shiftOut~69_combout\ & (\shiftOut~70_combout\)) # (!\shiftOut~69_combout\ & ((\shiftOut~70_combout\ & (\SLL641|Mux190~33_combout\)) # (!\shiftOut~70_combout\ & ((\shiftOut~108_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \shiftOut~70_combout\,
	datac => \SLL641|Mux190~33_combout\,
	datad => \shiftOut~108_combout\,
	combout => \shiftOut~109_combout\);

-- Location: IOIBUF_X69_Y73_N1
\C[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(11),
	o => \C[11]~input_o\);

-- Location: LCCOMB_X65_Y42_N16
\shiftOut~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~110_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~109_combout\ & (\SLL641|Mux190~32_combout\)) # (!\shiftOut~109_combout\ & ((\C[11]~input_o\))))) # (!\shiftOut~69_combout\ & (\shiftOut~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \shiftOut~109_combout\,
	datac => \SLL641|Mux190~32_combout\,
	datad => \C[11]~input_o\,
	combout => \shiftOut~110_combout\);

-- Location: LCCOMB_X60_Y39_N20
\SRL641|Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux81~0_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\shiftIn[54]~8_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux19~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftIn[54]~8_combout\,
	datac => \SRA641|Mux19~2_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL641|Mux81~0_combout\);

-- Location: LCCOMB_X60_Y39_N6
\SRL641|Mux81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux81~1_combout\ = (\B[2]~input_o\ & ((\SRL641|Mux81~0_combout\ & (\shiftIn[58]~2_combout\)) # (!\SRL641|Mux81~0_combout\ & ((\shiftIn[50]~4_combout\))))) # (!\B[2]~input_o\ & (((\SRL641|Mux81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftIn[58]~2_combout\,
	datac => \shiftIn[50]~4_combout\,
	datad => \SRL641|Mux81~0_combout\,
	combout => \SRL641|Mux81~1_combout\);

-- Location: LCCOMB_X66_Y38_N0
\SRA641|Mux156~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~124_combout\ = (\SRA641|Mux156~270_combout\ & ((\B[1]~input_o\ & ((\SRL641|Mux81~1_combout\))) # (!\B[1]~input_o\ & (\SRL641|Mux83~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux83~1_combout\,
	datab => \SRA641|Mux156~270_combout\,
	datac => \SRL641|Mux81~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~124_combout\);

-- Location: LCCOMB_X66_Y38_N20
\SRA641|Mux156~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~125_combout\ = (\SRA641|Mux156~124_combout\) # ((\shiftIn[63]~1_combout\ & !\SRA641|Mux156~270_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[63]~1_combout\,
	datac => \SRA641|Mux156~270_combout\,
	datad => \SRA641|Mux156~124_combout\,
	combout => \SRA641|Mux156~125_combout\);

-- Location: LCCOMB_X66_Y38_N2
\mux1OutUp[43]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[43]~22_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA641|Mux156~124_combout\)))) # (!\B[0]~input_o\ & (\SRA641|Mux156~118_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~118_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~124_combout\,
	combout => \mux1OutUp[43]~22_combout\);

-- Location: LCCOMB_X66_Y38_N22
\mux1OutUp[43]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[43]~23_combout\ = (\ShiftFN[0]~input_o\ & ((\mux1OutUp[43]~22_combout\ & (\SRA641|Mux156~125_combout\)) # (!\mux1OutUp[43]~22_combout\ & ((\SRA641|Mux156~121_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\mux1OutUp[43]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~125_combout\,
	datab => \SRA641|Mux156~121_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \mux1OutUp[43]~22_combout\,
	combout => \mux1OutUp[43]~23_combout\);

-- Location: LCCOMB_X72_Y40_N22
\shiftOut~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~291_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\mux1OutUp[43]~23_combout\))) # (!\ExtWord~input_o\ & (\shiftOut~110_combout\)))) # (!\ShiftFN[1]~input_o\ & (\shiftOut~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \shiftOut~110_combout\,
	datac => \ExtWord~input_o\,
	datad => \mux1OutUp[43]~23_combout\,
	combout => \shiftOut~291_combout\);

-- Location: IOIBUF_X87_Y73_N15
\C[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(12),
	o => \C[12]~input_o\);

-- Location: LCCOMB_X58_Y39_N16
\SRL641|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux36~0_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[43]~22_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[27]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[43]~22_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[27]~35_combout\,
	combout => \SRL641|Mux36~0_combout\);

-- Location: LCCOMB_X66_Y39_N22
\SRA641|Mux90~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~44_combout\ = (\SRA641|Mux90~19_combout\ & ((\B[2]~input_o\ & ((\shiftIn[59]~21_combout\))) # (!\B[2]~input_o\ & (\shiftIn[55]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~19_combout\,
	datab => \B[2]~input_o\,
	datac => \shiftIn[55]~19_combout\,
	datad => \shiftIn[59]~21_combout\,
	combout => \SRA641|Mux90~44_combout\);

-- Location: LCCOMB_X63_Y41_N20
\SRA641|Mux90~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~45_combout\ = (\SRA641|Mux90~44_combout\) # ((\B[2]~input_o\ & (\SRL641|Mux36~0_combout\)) # (!\B[2]~input_o\ & ((\SRL641|Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux36~0_combout\,
	datab => \SRA641|Mux90~44_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL641|Mux40~0_combout\,
	combout => \SRA641|Mux90~45_combout\);

-- Location: LCCOMB_X66_Y42_N20
\SRA641|Mux156~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~134_combout\ = (\B[3]~input_o\ & (((\B[1]~input_o\)))) # (!\B[3]~input_o\ & ((\B[1]~input_o\ & (\SRA641|Mux90~24_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux90~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux90~24_combout\,
	datac => \SRA641|Mux90~21_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~134_combout\);

-- Location: LCCOMB_X66_Y42_N22
\SRA641|Mux156~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~135_combout\ = (\B[3]~input_o\ & ((\SRA641|Mux156~134_combout\ & ((\SRA641|Mux90~45_combout\))) # (!\SRA641|Mux156~134_combout\ & (\SRA641|Mux90~40_combout\)))) # (!\B[3]~input_o\ & (((\SRA641|Mux156~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux90~40_combout\,
	datac => \SRA641|Mux90~45_combout\,
	datad => \SRA641|Mux156~134_combout\,
	combout => \SRA641|Mux156~135_combout\);

-- Location: LCCOMB_X61_Y42_N2
\shiftOut~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~111_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~128_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA641|Mux156~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~127_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~128_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \shiftOut~111_combout\);

-- Location: LCCOMB_X62_Y43_N24
\SRA641|Mux110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux110~0_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\) # (\SRA641|Mux39~1_combout\)))) # (!\B[3]~input_o\ & (\SRA641|Mux47~3_combout\ & (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux47~3_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux39~1_combout\,
	combout => \SRA641|Mux110~0_combout\);

-- Location: LCCOMB_X66_Y39_N24
\SRA641|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux35~0_combout\ = (!\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[63]~1_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[59]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[63]~1_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[59]~21_combout\,
	combout => \SRA641|Mux35~0_combout\);

-- Location: LCCOMB_X63_Y41_N30
\SRA641|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux35~1_combout\ = (\SRL641|Mux36~0_combout\) # (\SRA641|Mux35~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux36~0_combout\,
	datad => \SRA641|Mux35~0_combout\,
	combout => \SRA641|Mux35~1_combout\);

-- Location: LCCOMB_X62_Y43_N26
\SRA641|Mux110~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux110~1_combout\ = (\SRA641|Mux110~0_combout\ & (((\SRA641|Mux35~1_combout\) # (!\B[2]~input_o\)))) # (!\SRA641|Mux110~0_combout\ & (\SRA641|Mux43~1_combout\ & (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux43~1_combout\,
	datab => \SRA641|Mux110~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux35~1_combout\,
	combout => \SRA641|Mux110~1_combout\);

-- Location: LCCOMB_X62_Y42_N18
\SRA641|Mux156~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~136_combout\ = (\B[1]~input_o\ & (\SRA641|Mux110~1_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux112~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux110~1_combout\,
	datad => \SRA641|Mux112~1_combout\,
	combout => \SRA641|Mux156~136_combout\);

-- Location: LCCOMB_X61_Y42_N4
\shiftOut~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~112_combout\ = (\shiftOut~111_combout\ & (((\SRA641|Mux156~136_combout\) # (!\B[0]~input_o\)))) # (!\shiftOut~111_combout\ & (\SRA641|Mux156~135_combout\ & (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~135_combout\,
	datab => \shiftOut~111_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA641|Mux156~136_combout\,
	combout => \shiftOut~112_combout\);

-- Location: LCCOMB_X58_Y38_N4
\SLL641|Mux190~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~96_combout\ = (\SRL641|Mux47~0_combout\ & (((!\B[3]~input_o\) # (!\B[1]~input_o\)) # (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux47~0_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SLL641|Mux190~96_combout\);

-- Location: LCCOMB_X58_Y36_N26
\SLL641|Mux115~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux115~1_combout\ = (\B[3]~input_o\ & ((\shiftIn[4]~60_combout\))) # (!\B[3]~input_o\ & (\shiftIn[12]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[12]~58_combout\,
	datac => \B[3]~input_o\,
	datad => \shiftIn[4]~60_combout\,
	combout => \SLL641|Mux115~1_combout\);

-- Location: LCCOMB_X58_Y36_N20
\SLL641|Mux115~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux115~2_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux115~0_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux115~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux115~1_combout\,
	datab => \SLL641|Mux115~0_combout\,
	datac => \B[2]~input_o\,
	combout => \SLL641|Mux115~2_combout\);

-- Location: LCCOMB_X58_Y38_N12
\SLL641|Mux190~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~34_combout\ = (\SLL641|Mux190~96_combout\ & ((\B[1]~input_o\ & ((\SLL641|Mux117~0_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux115~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux190~96_combout\,
	datac => \SLL641|Mux115~2_combout\,
	datad => \SLL641|Mux117~0_combout\,
	combout => \SLL641|Mux190~34_combout\);

-- Location: LCCOMB_X65_Y42_N18
\shiftOut~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~113_combout\ = (\shiftOut~69_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~69_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~34_combout\))) # (!\shiftOut~70_combout\ & (\shiftOut~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \shiftOut~112_combout\,
	datac => \shiftOut~70_combout\,
	datad => \SLL641|Mux190~34_combout\,
	combout => \shiftOut~113_combout\);

-- Location: LCCOMB_X65_Y42_N4
\shiftOut~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~114_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~113_combout\ & ((\SLL641|Mux190~33_combout\))) # (!\shiftOut~113_combout\ & (\C[12]~input_o\)))) # (!\shiftOut~69_combout\ & (((\shiftOut~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~69_combout\,
	datab => \C[12]~input_o\,
	datac => \SLL641|Mux190~33_combout\,
	datad => \shiftOut~113_combout\,
	combout => \shiftOut~114_combout\);

-- Location: LCCOMB_X66_Y39_N28
\SRA641|Mux90~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~43_combout\ = (\B[2]~input_o\ & ((\shiftIn[59]~21_combout\))) # (!\B[2]~input_o\ & (\shiftIn[55]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[55]~19_combout\,
	datab => \shiftIn[59]~21_combout\,
	datac => \B[2]~input_o\,
	combout => \SRA641|Mux90~43_combout\);

-- Location: LCCOMB_X67_Y38_N6
\SRL641|Mux80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux80~1_combout\ = (\B[3]~input_o\ & (\SRA641|Mux90~43_combout\)) # (!\B[3]~input_o\ & ((\SRL641|Mux80~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~43_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL641|Mux80~0_combout\,
	combout => \SRL641|Mux80~1_combout\);

-- Location: LCCOMB_X67_Y38_N16
\SRA641|Mux156~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~129_combout\ = (\SRA641|Mux156~270_combout\ & ((\B[1]~input_o\ & ((\SRL641|Mux80~1_combout\))) # (!\B[1]~input_o\ & (\SRL641|Mux82~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux82~2_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux156~270_combout\,
	datad => \SRL641|Mux80~1_combout\,
	combout => \SRA641|Mux156~129_combout\);

-- Location: LCCOMB_X68_Y38_N6
\mux1OutUp[44]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[44]~24_combout\ = (\B[0]~input_o\ & ((\SRA641|Mux156~129_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA641|Mux156~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~129_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~124_combout\,
	combout => \mux1OutUp[44]~24_combout\);

-- Location: LCCOMB_X65_Y38_N10
\SRA641|Mux156~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~131_combout\ = (!\B[1]~input_o\ & ((\SRL641|Mux82~1_combout\) # (\SRL641|Mux82~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL641|Mux82~1_combout\,
	datad => \SRL641|Mux82~0_combout\,
	combout => \SRA641|Mux156~131_combout\);

-- Location: LCCOMB_X58_Y40_N22
\SRA641|Mux156~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~130_combout\ = (\shiftSig[5]~0_combout\ & (((!\B[1]~input_o\ & \SRL641|Mux119~0_combout\)) # (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRL641|Mux119~0_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux156~130_combout\);

-- Location: LCCOMB_X67_Y38_N18
\SRA641|Mux156~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~132_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & ((\SRA641|Mux90~43_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux78~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~43_combout\,
	combout => \SRA641|Mux156~132_combout\);

-- Location: LCCOMB_X68_Y38_N24
\SRA641|Mux156~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~133_combout\ = (\SRA641|Mux156~130_combout\ & (((\SRA641|Mux156~131_combout\) # (\SRA641|Mux156~132_combout\)))) # (!\SRA641|Mux156~130_combout\ & (\shiftIn[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \SRA641|Mux156~131_combout\,
	datac => \SRA641|Mux156~130_combout\,
	datad => \SRA641|Mux156~132_combout\,
	combout => \SRA641|Mux156~133_combout\);

-- Location: LCCOMB_X68_Y38_N2
\mux1OutUp[44]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[44]~25_combout\ = (\mux1OutUp[44]~24_combout\ & (((\SRA641|Mux156~133_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[44]~24_combout\ & (\SRA641|Mux156~125_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[44]~24_combout\,
	datab => \SRA641|Mux156~125_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~133_combout\,
	combout => \mux1OutUp[44]~25_combout\);

-- Location: LCCOMB_X59_Y42_N12
\shiftOut~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~292_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\mux1OutUp[44]~25_combout\))) # (!\ShiftFN[1]~input_o\ & (\shiftOut~114_combout\)))) # (!\ExtWord~input_o\ & (\shiftOut~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~114_combout\,
	datab => \ExtWord~input_o\,
	datac => \mux1OutUp[44]~25_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \shiftOut~292_combout\);

-- Location: LCCOMB_X62_Y39_N26
\SRA641|Mux90~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~46_combout\ = (\B[2]~input_o\ & ((\shiftIn[60]~14_combout\))) # (!\B[2]~input_o\ & (\shiftIn[56]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[56]~16_combout\,
	datab => \shiftIn[60]~14_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA641|Mux90~46_combout\);

-- Location: LCCOMB_X62_Y39_N12
\SRL641|Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux79~0_combout\ = (\B[3]~input_o\ & (\SRA641|Mux90~46_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux90~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRA641|Mux90~46_combout\,
	datad => \SRA641|Mux90~25_combout\,
	combout => \SRL641|Mux79~0_combout\);

-- Location: LCCOMB_X68_Y38_N12
\SRA641|Mux156~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~137_combout\ = (\SRA641|Mux156~130_combout\ & ((\B[1]~input_o\ & (\SRL641|Mux79~0_combout\)) # (!\B[1]~input_o\ & ((\SRL641|Mux81~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux79~0_combout\,
	datab => \SRA641|Mux156~130_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL641|Mux81~1_combout\,
	combout => \SRA641|Mux156~137_combout\);

-- Location: LCCOMB_X68_Y38_N30
\mux1OutUp[45]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[45]~26_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA641|Mux156~137_combout\)))) # (!\B[0]~input_o\ & (\SRA641|Mux156~129_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~129_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~137_combout\,
	combout => \mux1OutUp[45]~26_combout\);

-- Location: LCCOMB_X68_Y38_N0
\SRA641|Mux156~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~138_combout\ = (\SRA641|Mux156~137_combout\) # ((\shiftIn[63]~1_combout\ & !\SRA641|Mux156~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datac => \SRA641|Mux156~130_combout\,
	datad => \SRA641|Mux156~137_combout\,
	combout => \SRA641|Mux156~138_combout\);

-- Location: LCCOMB_X68_Y38_N26
\mux1OutUp[45]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[45]~27_combout\ = (\mux1OutUp[45]~26_combout\ & ((\SRA641|Mux156~138_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[45]~26_combout\ & (((\ShiftFN[0]~input_o\ & \SRA641|Mux156~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[45]~26_combout\,
	datab => \SRA641|Mux156~138_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~133_combout\,
	combout => \mux1OutUp[45]~27_combout\);

-- Location: IOIBUF_X0_Y36_N15
\C[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(13),
	o => \C[13]~input_o\);

-- Location: LCCOMB_X65_Y39_N0
\SLL641|Mux114~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux114~1_combout\ = (\B[3]~input_o\ & ((\shiftIn[5]~44_combout\))) # (!\B[3]~input_o\ & (\shiftIn[13]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \shiftIn[13]~46_combout\,
	datad => \shiftIn[5]~44_combout\,
	combout => \SLL641|Mux114~1_combout\);

-- Location: LCCOMB_X65_Y39_N2
\SLL641|Mux114~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux114~2_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux114~0_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux114~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL641|Mux114~1_combout\,
	datad => \SLL641|Mux114~0_combout\,
	combout => \SLL641|Mux114~2_combout\);

-- Location: LCCOMB_X65_Y39_N4
\SLL641|Mux190~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~35_combout\ = (\SLL641|Mux190~96_combout\ & ((\B[1]~input_o\ & (\SLL641|Mux116~0_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux114~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~96_combout\,
	datab => \SLL641|Mux116~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux114~2_combout\,
	combout => \SLL641|Mux190~35_combout\);

-- Location: LCCOMB_X61_Y39_N6
\SRA641|Mux156~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~139_combout\ = (\B[1]~input_o\ & (((\B[3]~input_o\)))) # (!\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux90~42_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux90~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~42_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~22_combout\,
	combout => \SRA641|Mux156~139_combout\);

-- Location: LCCOMB_X60_Y37_N24
\SRL641|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux35~0_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[44]~15_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[28]~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[44]~15_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[28]~57_combout\,
	combout => \SRL641|Mux35~0_combout\);

-- Location: LCCOMB_X60_Y37_N30
\SRA641|Mux90~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~47_combout\ = (\SRA641|Mux90~19_combout\ & ((\B[2]~input_o\ & ((\shiftIn[60]~14_combout\))) # (!\B[2]~input_o\ & (\shiftIn[56]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[56]~16_combout\,
	datab => \SRA641|Mux90~19_combout\,
	datac => \shiftIn[60]~14_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA641|Mux90~47_combout\);

-- Location: LCCOMB_X60_Y37_N18
\SRA641|Mux90~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~48_combout\ = (\SRA641|Mux90~47_combout\) # ((\B[2]~input_o\ & (\SRL641|Mux35~0_combout\)) # (!\B[2]~input_o\ & ((\SRL641|Mux39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL641|Mux35~0_combout\,
	datac => \SRA641|Mux90~47_combout\,
	datad => \SRL641|Mux39~0_combout\,
	combout => \SRA641|Mux90~48_combout\);

-- Location: LCCOMB_X61_Y39_N0
\SRA641|Mux156~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~140_combout\ = (\SRA641|Mux156~139_combout\ & (((\SRA641|Mux90~48_combout\)) # (!\B[1]~input_o\))) # (!\SRA641|Mux156~139_combout\ & (\B[1]~input_o\ & (\SRA641|Mux90~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~139_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux90~27_combout\,
	datad => \SRA641|Mux90~48_combout\,
	combout => \SRA641|Mux156~140_combout\);

-- Location: LCCOMB_X61_Y42_N14
\shiftOut~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~115_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~136_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA641|Mux156~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~135_combout\,
	datab => \SRA641|Mux156~136_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \shiftOut~115_combout\);

-- Location: LCCOMB_X60_Y37_N28
\SRA641|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux34~0_combout\ = (!\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[63]~1_combout\))) # (!\B[4]~input_o\ & (\shiftIn[60]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[60]~14_combout\,
	datac => \shiftIn[63]~1_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux34~0_combout\);

-- Location: LCCOMB_X60_Y37_N14
\SRA641|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux34~1_combout\ = (\SRA641|Mux34~0_combout\) # (\SRL641|Mux35~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux34~0_combout\,
	datad => \SRL641|Mux35~0_combout\,
	combout => \SRA641|Mux34~1_combout\);

-- Location: LCCOMB_X60_Y36_N28
\SRA641|Mux109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux109~0_combout\ = (\B[2]~input_o\ & ((\SRA641|Mux34~1_combout\) # ((!\B[3]~input_o\)))) # (!\B[2]~input_o\ & (((\B[3]~input_o\ & \SRA641|Mux38~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux34~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux38~1_combout\,
	combout => \SRA641|Mux109~0_combout\);

-- Location: LCCOMB_X60_Y36_N30
\SRA641|Mux109~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux109~1_combout\ = (\B[3]~input_o\ & (((\SRA641|Mux109~0_combout\)))) # (!\B[3]~input_o\ & ((\SRA641|Mux109~0_combout\ & ((\SRA641|Mux42~1_combout\))) # (!\SRA641|Mux109~0_combout\ & (\SRA641|Mux46~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux46~1_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux42~1_combout\,
	datad => \SRA641|Mux109~0_combout\,
	combout => \SRA641|Mux109~1_combout\);

-- Location: LCCOMB_X61_Y42_N0
\SRA641|Mux156~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~141_combout\ = (\B[1]~input_o\ & (\SRA641|Mux109~1_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux111~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux109~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux111~1_combout\,
	combout => \SRA641|Mux156~141_combout\);

-- Location: LCCOMB_X61_Y42_N18
\shiftOut~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~116_combout\ = (\shiftOut~115_combout\ & (((\SRA641|Mux156~141_combout\) # (!\B[0]~input_o\)))) # (!\shiftOut~115_combout\ & (\SRA641|Mux156~140_combout\ & (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~140_combout\,
	datab => \shiftOut~115_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA641|Mux156~141_combout\,
	combout => \shiftOut~116_combout\);

-- Location: LCCOMB_X60_Y41_N16
\shiftOut~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~117_combout\ = (\shiftOut~70_combout\ & ((\shiftOut~69_combout\) # ((\SLL641|Mux190~35_combout\)))) # (!\shiftOut~70_combout\ & (!\shiftOut~69_combout\ & ((\shiftOut~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~69_combout\,
	datac => \SLL641|Mux190~35_combout\,
	datad => \shiftOut~116_combout\,
	combout => \shiftOut~117_combout\);

-- Location: LCCOMB_X60_Y41_N18
\shiftOut~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~118_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~117_combout\ & ((\SLL641|Mux190~34_combout\))) # (!\shiftOut~117_combout\ & (\C[13]~input_o\)))) # (!\shiftOut~69_combout\ & (((\shiftOut~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[13]~input_o\,
	datab => \shiftOut~69_combout\,
	datac => \SLL641|Mux190~34_combout\,
	datad => \shiftOut~117_combout\,
	combout => \shiftOut~118_combout\);

-- Location: LCCOMB_X60_Y41_N14
\shiftOut~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~293_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\mux1OutUp[45]~27_combout\)) # (!\ExtWord~input_o\ & ((\shiftOut~118_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\shiftOut~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \mux1OutUp[45]~27_combout\,
	datac => \ExtWord~input_o\,
	datad => \shiftOut~118_combout\,
	combout => \shiftOut~293_combout\);

-- Location: IOIBUF_X0_Y36_N22
\C[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(14),
	o => \C[14]~input_o\);

-- Location: LCCOMB_X58_Y37_N0
\SLL641|Mux113~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux113~1_combout\ = (\B[3]~input_o\ & ((\shiftIn[6]~54_combout\))) # (!\B[3]~input_o\ & (\shiftIn[14]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[14]~50_combout\,
	datab => \B[3]~input_o\,
	datad => \shiftIn[6]~54_combout\,
	combout => \SLL641|Mux113~1_combout\);

-- Location: LCCOMB_X58_Y38_N14
\SLL641|Mux113~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux113~2_combout\ = (\B[2]~input_o\ & (\SLL641|Mux113~0_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux113~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SLL641|Mux113~0_combout\,
	datad => \SLL641|Mux113~1_combout\,
	combout => \SLL641|Mux113~2_combout\);

-- Location: LCCOMB_X58_Y38_N24
\SLL641|Mux190~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~36_combout\ = (\SRL641|Mux47~0_combout\ & ((\B[1]~input_o\ & (\SLL641|Mux115~2_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux113~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux115~2_combout\,
	datac => \SLL641|Mux113~2_combout\,
	datad => \SRL641|Mux47~0_combout\,
	combout => \SLL641|Mux190~36_combout\);

-- Location: LCCOMB_X61_Y42_N28
\shiftOut~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~119_combout\ = (\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~141_combout\) # ((\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((!\B[0]~input_o\ & \SRA641|Mux156~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRA641|Mux156~141_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA641|Mux156~140_combout\,
	combout => \shiftOut~119_combout\);

-- Location: LCCOMB_X66_Y40_N12
\SRA641|Mux90~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~50_combout\ = (\SRA641|Mux90~19_combout\ & ((\B[2]~input_o\ & (\shiftIn[61]~29_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[57]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[61]~29_combout\,
	datab => \SRA641|Mux90~19_combout\,
	datac => \shiftIn[57]~25_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA641|Mux90~50_combout\);

-- Location: LCCOMB_X67_Y39_N2
\SRL641|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux34~0_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[45]~30_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[29]~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[45]~30_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[29]~45_combout\,
	combout => \SRL641|Mux34~0_combout\);

-- Location: LCCOMB_X66_Y42_N24
\SRA641|Mux90~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~51_combout\ = (\SRA641|Mux90~50_combout\) # ((\B[2]~input_o\ & ((\SRL641|Mux34~0_combout\))) # (!\B[2]~input_o\ & (\SRL641|Mux38~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRL641|Mux38~0_combout\,
	datac => \SRA641|Mux90~50_combout\,
	datad => \SRL641|Mux34~0_combout\,
	combout => \SRA641|Mux90~51_combout\);

-- Location: LCCOMB_X66_Y42_N26
\SRA641|Mux156~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~146_combout\ = (\B[3]~input_o\ & (((\SRA641|Mux90~45_combout\) # (\B[1]~input_o\)))) # (!\B[3]~input_o\ & (\SRA641|Mux90~24_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux90~24_combout\,
	datac => \SRA641|Mux90~45_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~146_combout\);

-- Location: LCCOMB_X66_Y42_N4
\SRA641|Mux156~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~147_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux156~146_combout\ & (\SRA641|Mux90~51_combout\)) # (!\SRA641|Mux156~146_combout\ & ((\SRA641|Mux90~30_combout\))))) # (!\B[1]~input_o\ & (((\SRA641|Mux156~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~51_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux156~146_combout\,
	datad => \SRA641|Mux90~30_combout\,
	combout => \SRA641|Mux156~147_combout\);

-- Location: LCCOMB_X61_Y40_N2
\SRA641|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux33~0_combout\ = (!\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[63]~1_combout\))) # (!\B[4]~input_o\ & (\shiftIn[61]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[61]~29_combout\,
	datab => \shiftIn[63]~1_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux33~0_combout\);

-- Location: LCCOMB_X66_Y40_N6
\SRA641|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux33~1_combout\ = (\SRA641|Mux33~0_combout\) # (\SRL641|Mux34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux33~0_combout\,
	datad => \SRL641|Mux34~0_combout\,
	combout => \SRA641|Mux33~1_combout\);

-- Location: LCCOMB_X66_Y40_N8
\SRA641|Mux108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux108~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux33~1_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux37~1_combout\)))) # (!\B[3]~input_o\ & (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRA641|Mux37~1_combout\,
	datad => \SRA641|Mux33~1_combout\,
	combout => \SRA641|Mux108~0_combout\);

-- Location: LCCOMB_X66_Y40_N26
\SRA641|Mux108~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux108~1_combout\ = (\B[3]~input_o\ & (\SRA641|Mux108~0_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux108~0_combout\ & ((\SRA641|Mux41~1_combout\))) # (!\SRA641|Mux108~0_combout\ & (\SRA641|Mux45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux108~0_combout\,
	datac => \SRA641|Mux45~1_combout\,
	datad => \SRA641|Mux41~1_combout\,
	combout => \SRA641|Mux108~1_combout\);

-- Location: LCCOMB_X62_Y42_N4
\SRA641|Mux156~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~148_combout\ = (\B[1]~input_o\ & (\SRA641|Mux108~1_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux110~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux108~1_combout\,
	datab => \SRA641|Mux110~1_combout\,
	datac => \B[1]~input_o\,
	combout => \SRA641|Mux156~148_combout\);

-- Location: LCCOMB_X61_Y42_N30
\shiftOut~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~120_combout\ = (\B[0]~input_o\ & ((\shiftOut~119_combout\ & ((\SRA641|Mux156~148_combout\))) # (!\shiftOut~119_combout\ & (\SRA641|Mux156~147_combout\)))) # (!\B[0]~input_o\ & (\shiftOut~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \shiftOut~119_combout\,
	datac => \SRA641|Mux156~147_combout\,
	datad => \SRA641|Mux156~148_combout\,
	combout => \shiftOut~120_combout\);

-- Location: LCCOMB_X60_Y41_N12
\shiftOut~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~121_combout\ = (\shiftOut~70_combout\ & ((\shiftOut~69_combout\) # ((\SLL641|Mux190~36_combout\)))) # (!\shiftOut~70_combout\ & (!\shiftOut~69_combout\ & ((\shiftOut~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~69_combout\,
	datac => \SLL641|Mux190~36_combout\,
	datad => \shiftOut~120_combout\,
	combout => \shiftOut~121_combout\);

-- Location: LCCOMB_X60_Y41_N6
\shiftOut~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~122_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~121_combout\ & ((\SLL641|Mux190~35_combout\))) # (!\shiftOut~121_combout\ & (\C[14]~input_o\)))) # (!\shiftOut~69_combout\ & (((\shiftOut~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[14]~input_o\,
	datab => \shiftOut~69_combout\,
	datac => \SLL641|Mux190~35_combout\,
	datad => \shiftOut~121_combout\,
	combout => \shiftOut~122_combout\);

-- Location: LCCOMB_X66_Y40_N2
\SRA641|Mux90~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~49_combout\ = (\B[2]~input_o\ & (\shiftIn[61]~29_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[57]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[61]~29_combout\,
	datab => \B[2]~input_o\,
	datac => \shiftIn[57]~25_combout\,
	combout => \SRA641|Mux90~49_combout\);

-- Location: LCCOMB_X67_Y38_N12
\SRA641|Mux156~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~142_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux90~49_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux90~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux90~49_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~28_combout\,
	combout => \SRA641|Mux156~142_combout\);

-- Location: LCCOMB_X67_Y38_N0
\SRA641|Mux156~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~144_combout\ = (!\B[1]~input_o\ & ((\B[3]~input_o\ & ((\SRA641|Mux90~43_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux78~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~43_combout\,
	combout => \SRA641|Mux156~144_combout\);

-- Location: LCCOMB_X67_Y38_N10
\SRA641|Mux156~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~145_combout\ = (\SRL641|Mux47~0_combout\ & ((\SRA641|Mux156~142_combout\) # ((\SRA641|Mux156~144_combout\)))) # (!\SRL641|Mux47~0_combout\ & (((\shiftIn[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~142_combout\,
	datab => \SRL641|Mux47~0_combout\,
	datac => \shiftIn[63]~1_combout\,
	datad => \SRA641|Mux156~144_combout\,
	combout => \SRA641|Mux156~145_combout\);

-- Location: LCCOMB_X67_Y38_N14
\SRA641|Mux156~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~143_combout\ = (\SRA641|Mux156~130_combout\ & ((\SRA641|Mux156~142_combout\) # ((\SRL641|Mux80~1_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux80~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux156~130_combout\,
	datad => \SRA641|Mux156~142_combout\,
	combout => \SRA641|Mux156~143_combout\);

-- Location: LCCOMB_X68_Y38_N20
\mux1OutUp[46]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[46]~28_combout\ = (\B[0]~input_o\ & ((\SRA641|Mux156~143_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA641|Mux156~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~143_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~137_combout\,
	combout => \mux1OutUp[46]~28_combout\);

-- Location: LCCOMB_X68_Y38_N14
\mux1OutUp[46]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[46]~29_combout\ = (\mux1OutUp[46]~28_combout\ & ((\SRA641|Mux156~145_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[46]~28_combout\ & (((\ShiftFN[0]~input_o\ & \SRA641|Mux156~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~145_combout\,
	datab => \mux1OutUp[46]~28_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~138_combout\,
	combout => \mux1OutUp[46]~29_combout\);

-- Location: LCCOMB_X60_Y41_N8
\shiftOut~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~294_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\mux1OutUp[46]~29_combout\))) # (!\ExtWord~input_o\ & (\shiftOut~122_combout\)))) # (!\ShiftFN[1]~input_o\ & (\shiftOut~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \shiftOut~122_combout\,
	datac => \ExtWord~input_o\,
	datad => \mux1OutUp[46]~29_combout\,
	combout => \shiftOut~294_combout\);

-- Location: LCCOMB_X62_Y39_N22
\SRA641|Mux90~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~52_combout\ = (\B[2]~input_o\ & (\shiftIn[62]~6_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[58]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \shiftIn[62]~6_combout\,
	datad => \shiftIn[58]~2_combout\,
	combout => \SRA641|Mux90~52_combout\);

-- Location: LCCOMB_X65_Y41_N2
\SRA641|Mux156~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~149_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux90~52_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux90~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~52_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux90~31_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~149_combout\);

-- Location: LCCOMB_X68_Y38_N8
\SRA641|Mux156~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~150_combout\ = (\SRL641|Mux47~0_combout\ & ((\SRA641|Mux156~149_combout\) # ((\SRL641|Mux79~0_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux79~0_combout\,
	datab => \SRA641|Mux156~149_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL641|Mux47~0_combout\,
	combout => \SRA641|Mux156~150_combout\);

-- Location: LCCOMB_X68_Y38_N28
\SRA641|Mux156~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~151_combout\ = (\SRA641|Mux156~150_combout\) # ((\shiftIn[63]~1_combout\ & !\SRL641|Mux47~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \SRL641|Mux47~0_combout\,
	datac => \SRA641|Mux156~150_combout\,
	combout => \SRA641|Mux156~151_combout\);

-- Location: LCCOMB_X68_Y38_N18
\mux1OutUp[47]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[47]~30_combout\ = (\B[0]~input_o\ & ((\SRA641|Mux156~150_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA641|Mux156~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~150_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~143_combout\,
	combout => \mux1OutUp[47]~30_combout\);

-- Location: LCCOMB_X68_Y38_N22
\mux1OutUp[47]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[47]~31_combout\ = (\ShiftFN[0]~input_o\ & ((\mux1OutUp[47]~30_combout\ & ((\SRA641|Mux156~151_combout\))) # (!\mux1OutUp[47]~30_combout\ & (\SRA641|Mux156~145_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\mux1OutUp[47]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~145_combout\,
	datab => \SRA641|Mux156~151_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \mux1OutUp[47]~30_combout\,
	combout => \mux1OutUp[47]~31_combout\);

-- Location: IOIBUF_X40_Y0_N15
\C[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(15),
	o => \C[15]~input_o\);

-- Location: LCCOMB_X57_Y37_N6
\SRA641|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux32~0_combout\ = (!\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[63]~1_combout\))) # (!\B[4]~input_o\ & (\shiftIn[62]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[62]~6_combout\,
	datac => \shiftIn[63]~1_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux32~0_combout\);

-- Location: LCCOMB_X57_Y37_N28
\SRL641|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux33~0_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[46]~7_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[30]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftIn[46]~7_combout\,
	datad => \shiftIn[30]~49_combout\,
	combout => \SRL641|Mux33~0_combout\);

-- Location: LCCOMB_X57_Y37_N0
\SRA641|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux32~1_combout\ = (\SRA641|Mux32~0_combout\) # (\SRL641|Mux33~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux32~0_combout\,
	datad => \SRL641|Mux33~0_combout\,
	combout => \SRA641|Mux32~1_combout\);

-- Location: LCCOMB_X60_Y38_N24
\SRA641|Mux107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux107~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux32~1_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux36~1_combout\))))) # (!\B[3]~input_o\ & (((\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux32~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux36~1_combout\,
	combout => \SRA641|Mux107~0_combout\);

-- Location: LCCOMB_X60_Y38_N18
\SRA641|Mux107~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux107~1_combout\ = (\SRA641|Mux107~0_combout\ & ((\SRA641|Mux40~1_combout\) # ((\B[3]~input_o\)))) # (!\SRA641|Mux107~0_combout\ & (((!\B[3]~input_o\ & \SRA641|Mux44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux107~0_combout\,
	datab => \SRA641|Mux40~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux44~1_combout\,
	combout => \SRA641|Mux107~1_combout\);

-- Location: LCCOMB_X61_Y42_N26
\SRA641|Mux156~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~154_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux107~1_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux109~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux109~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux107~1_combout\,
	combout => \SRA641|Mux156~154_combout\);

-- Location: LCCOMB_X62_Y39_N28
\SRA641|Mux90~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~53_combout\ = (\SRA641|Mux90~19_combout\ & ((\B[2]~input_o\ & (\shiftIn[62]~6_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[58]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux90~19_combout\,
	datac => \shiftIn[62]~6_combout\,
	datad => \shiftIn[58]~2_combout\,
	combout => \SRA641|Mux90~53_combout\);

-- Location: LCCOMB_X61_Y37_N4
\SRA641|Mux90~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~54_combout\ = (\SRA641|Mux90~53_combout\) # ((\B[2]~input_o\ & ((\SRL641|Mux33~0_combout\))) # (!\B[2]~input_o\ & (\SRL641|Mux37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux37~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA641|Mux90~53_combout\,
	datad => \SRL641|Mux33~0_combout\,
	combout => \SRA641|Mux90~54_combout\);

-- Location: LCCOMB_X61_Y37_N30
\SRA641|Mux156~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~152_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux90~54_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux90~33_combout\))))) # (!\B[1]~input_o\ & (\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux90~54_combout\,
	datad => \SRA641|Mux90~33_combout\,
	combout => \SRA641|Mux156~152_combout\);

-- Location: LCCOMB_X61_Y37_N24
\SRA641|Mux156~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~153_combout\ = (\SRA641|Mux156~152_combout\ & ((\SRA641|Mux90~48_combout\) # ((\B[1]~input_o\)))) # (!\SRA641|Mux156~152_combout\ & (((!\B[1]~input_o\ & \SRA641|Mux90~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~152_combout\,
	datab => \SRA641|Mux90~48_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~27_combout\,
	combout => \SRA641|Mux156~153_combout\);

-- Location: LCCOMB_X61_Y42_N24
\shiftOut~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~123_combout\ = (\ShiftFN[0]~input_o\ & (((\B[0]~input_o\) # (\SRA641|Mux156~148_combout\)))) # (!\ShiftFN[0]~input_o\ & (\SRA641|Mux156~147_combout\ & (!\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRA641|Mux156~147_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA641|Mux156~148_combout\,
	combout => \shiftOut~123_combout\);

-- Location: LCCOMB_X61_Y42_N20
\shiftOut~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~124_combout\ = (\B[0]~input_o\ & ((\shiftOut~123_combout\ & (\SRA641|Mux156~154_combout\)) # (!\shiftOut~123_combout\ & ((\SRA641|Mux156~153_combout\))))) # (!\B[0]~input_o\ & (((\shiftOut~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~154_combout\,
	datab => \SRA641|Mux156~153_combout\,
	datac => \B[0]~input_o\,
	datad => \shiftOut~123_combout\,
	combout => \shiftOut~124_combout\);

-- Location: LCCOMB_X62_Y39_N0
\SLL641|Mux112~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux112~1_combout\ = (\B[3]~input_o\ & (\shiftIn[7]~39_combout\)) # (!\B[3]~input_o\ & ((\shiftIn[15]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \shiftIn[7]~39_combout\,
	datac => \shiftIn[15]~34_combout\,
	combout => \SLL641|Mux112~1_combout\);

-- Location: LCCOMB_X62_Y39_N2
\SLL641|Mux112~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux112~2_combout\ = (\B[2]~input_o\ & (\SLL641|Mux112~0_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux112~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux112~0_combout\,
	datab => \B[2]~input_o\,
	datad => \SLL641|Mux112~1_combout\,
	combout => \SLL641|Mux112~2_combout\);

-- Location: LCCOMB_X60_Y41_N24
\SLL641|Mux190~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~37_combout\ = (\SRL641|Mux47~0_combout\ & ((\B[1]~input_o\ & (\SLL641|Mux114~2_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux112~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux47~0_combout\,
	datab => \SLL641|Mux114~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux112~2_combout\,
	combout => \SLL641|Mux190~37_combout\);

-- Location: LCCOMB_X60_Y41_N2
\shiftOut~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~125_combout\ = (\shiftOut~69_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~69_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~37_combout\))) # (!\shiftOut~70_combout\ & (\shiftOut~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~124_combout\,
	datab => \shiftOut~69_combout\,
	datac => \shiftOut~70_combout\,
	datad => \SLL641|Mux190~37_combout\,
	combout => \shiftOut~125_combout\);

-- Location: LCCOMB_X60_Y41_N20
\shiftOut~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~126_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~125_combout\ & (\SLL641|Mux190~36_combout\)) # (!\shiftOut~125_combout\ & ((\C[15]~input_o\))))) # (!\shiftOut~69_combout\ & (((\shiftOut~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~36_combout\,
	datab => \shiftOut~69_combout\,
	datac => \C[15]~input_o\,
	datad => \shiftOut~125_combout\,
	combout => \shiftOut~126_combout\);

-- Location: LCCOMB_X60_Y41_N10
\shiftOut~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~295_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\mux1OutUp[47]~31_combout\)) # (!\ExtWord~input_o\ & ((\shiftOut~126_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\shiftOut~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \mux1OutUp[47]~31_combout\,
	datac => \ExtWord~input_o\,
	datad => \shiftOut~126_combout\,
	combout => \shiftOut~295_combout\);

-- Location: LCCOMB_X66_Y39_N2
\SRA641|Mux90~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~55_combout\ = (\B[2]~input_o\ & (\shiftIn[63]~1_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[59]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[63]~1_combout\,
	datac => \B[2]~input_o\,
	datad => \shiftIn[59]~21_combout\,
	combout => \SRA641|Mux90~55_combout\);

-- Location: LCCOMB_X66_Y37_N0
\SRA641|Mux156~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~156_combout\ = (\B[3]~input_o\ & (\SRA641|Mux90~55_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux90~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~55_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~34_combout\,
	combout => \SRA641|Mux156~156_combout\);

-- Location: LCCOMB_X67_Y38_N28
\SRA641|Mux156~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~155_combout\ = (!\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux90~49_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux90~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux90~49_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~28_combout\,
	combout => \SRA641|Mux156~155_combout\);

-- Location: LCCOMB_X66_Y37_N18
\SRA641|Mux156~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~157_combout\ = (\SRL641|Mux47~0_combout\ & ((\SRA641|Mux156~155_combout\) # ((\SRA641|Mux156~156_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux47~0_combout\,
	datab => \SRA641|Mux156~156_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux156~155_combout\,
	combout => \SRA641|Mux156~157_combout\);

-- Location: LCCOMB_X65_Y37_N24
\mux1OutUp[48]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[48]~32_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA641|Mux156~157_combout\)))) # (!\B[0]~input_o\ & (\SRA641|Mux156~150_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~150_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~157_combout\,
	combout => \mux1OutUp[48]~32_combout\);

-- Location: LCCOMB_X62_Y37_N14
\SRA641|Mux156~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~264_combout\ = (\B[3]~input_o\ & ((\B[1]~input_o\ & (\B[2]~input_o\)) # (!\B[1]~input_o\ & ((!\SRL641|Mux47~0_combout\))))) # (!\B[3]~input_o\ & (((!\SRL641|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRL641|Mux47~0_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~264_combout\);

-- Location: LCCOMB_X66_Y37_N28
\SRA641|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux74~0_combout\ = (\B[3]~input_o\ & ((\SRL641|Mux47~0_combout\ & ((\shiftIn[59]~21_combout\))) # (!\SRL641|Mux47~0_combout\ & (\shiftIn[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \shiftIn[59]~21_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL641|Mux47~0_combout\,
	combout => \SRA641|Mux74~0_combout\);

-- Location: LCCOMB_X66_Y37_N30
\SRA641|Mux156~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~158_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux74~0_combout\) # ((\SRA641|Mux90~34_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~34_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux74~0_combout\,
	combout => \SRA641|Mux156~158_combout\);

-- Location: LCCOMB_X66_Y37_N24
\SRA641|Mux156~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~159_combout\ = (\SRA641|Mux156~264_combout\ & (\shiftIn[63]~1_combout\)) # (!\SRA641|Mux156~264_combout\ & (((\SRA641|Mux156~158_combout\) # (\SRA641|Mux156~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \SRA641|Mux156~264_combout\,
	datac => \SRA641|Mux156~158_combout\,
	datad => \SRA641|Mux156~155_combout\,
	combout => \SRA641|Mux156~159_combout\);

-- Location: LCCOMB_X65_Y37_N10
\mux1OutUp[48]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[48]~33_combout\ = (\mux1OutUp[48]~32_combout\ & (((\SRA641|Mux156~159_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[48]~32_combout\ & (\SRA641|Mux156~151_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~151_combout\,
	datab => \mux1OutUp[48]~32_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~159_combout\,
	combout => \mux1OutUp[48]~33_combout\);

-- Location: LCCOMB_X61_Y42_N6
\shiftOut~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~127_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~154_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA641|Mux156~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~153_combout\,
	datac => \SRA641|Mux156~154_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \shiftOut~127_combout\);

-- Location: LCCOMB_X66_Y39_N4
\SRA641|Mux90~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~56_combout\ = (\SRA641|Mux90~19_combout\ & ((\B[2]~input_o\ & (\shiftIn[63]~1_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[59]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~19_combout\,
	datab => \shiftIn[63]~1_combout\,
	datac => \B[2]~input_o\,
	datad => \shiftIn[59]~21_combout\,
	combout => \SRA641|Mux90~56_combout\);

-- Location: LCCOMB_X63_Y40_N0
\SRL641|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux32~0_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[47]~18_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[31]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[47]~18_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \shiftIn[31]~33_combout\,
	datad => \B[4]~input_o\,
	combout => \SRL641|Mux32~0_combout\);

-- Location: LCCOMB_X63_Y41_N8
\SRA641|Mux90~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~57_combout\ = (\SRA641|Mux90~56_combout\) # ((\B[2]~input_o\ & ((\SRL641|Mux32~0_combout\))) # (!\B[2]~input_o\ & (\SRL641|Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux36~0_combout\,
	datab => \SRA641|Mux90~56_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL641|Mux32~0_combout\,
	combout => \SRA641|Mux90~57_combout\);

-- Location: LCCOMB_X63_Y41_N26
\SRA641|Mux156~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~160_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux90~57_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux90~36_combout\))))) # (!\B[1]~input_o\ & (((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux90~57_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~36_combout\,
	combout => \SRA641|Mux156~160_combout\);

-- Location: LCCOMB_X66_Y42_N30
\SRA641|Mux156~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~161_combout\ = (\B[1]~input_o\ & (((\SRA641|Mux156~160_combout\)))) # (!\B[1]~input_o\ & ((\SRA641|Mux156~160_combout\ & (\SRA641|Mux90~51_combout\)) # (!\SRA641|Mux156~160_combout\ & ((\SRA641|Mux90~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~51_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux156~160_combout\,
	datad => \SRA641|Mux90~30_combout\,
	combout => \SRA641|Mux156~161_combout\);

-- Location: LCCOMB_X65_Y36_N26
\SRA641|Mux156~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~252_combout\ = (\shiftIn[63]~1_combout\ & (\B[5]~input_o\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[63]~1_combout\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SRA641|Mux156~252_combout\);

-- Location: LCCOMB_X62_Y43_N6
\SRA641|Mux90~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~58_combout\ = (\B[2]~input_o\ & ((\SRL641|Mux32~0_combout\) # ((\SRA641|Mux156~252_combout\)))) # (!\B[2]~input_o\ & (((\SRA641|Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux32~0_combout\,
	datab => \SRA641|Mux156~252_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux35~1_combout\,
	combout => \SRA641|Mux90~58_combout\);

-- Location: LCCOMB_X62_Y43_N20
\SRA641|Mux106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux106~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux39~1_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux43~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux39~1_combout\,
	combout => \SRA641|Mux106~0_combout\);

-- Location: LCCOMB_X62_Y43_N8
\SRA641|Mux106~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux106~1_combout\ = (\SRA641|Mux106~0_combout\) # ((\SRA641|Mux90~58_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~58_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux106~0_combout\,
	combout => \SRA641|Mux106~1_combout\);

-- Location: LCCOMB_X62_Y42_N22
\SRA641|Mux156~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~162_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux106~1_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux108~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux108~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux106~1_combout\,
	combout => \SRA641|Mux156~162_combout\);

-- Location: LCCOMB_X61_Y38_N24
\shiftOut~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~128_combout\ = (\shiftOut~127_combout\ & (((\SRA641|Mux156~162_combout\)) # (!\B[0]~input_o\))) # (!\shiftOut~127_combout\ & (\B[0]~input_o\ & (\SRA641|Mux156~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~127_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~161_combout\,
	datad => \SRA641|Mux156~162_combout\,
	combout => \shiftOut~128_combout\);

-- Location: LCCOMB_X61_Y36_N26
\SRA641|Mux19~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~16_combout\ = (\B[4]~input_o\ & (\shiftIn[0]~0_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[16]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[0]~0_combout\,
	datab => \B[4]~input_o\,
	datad => \shiftIn[16]~61_combout\,
	combout => \SRA641|Mux19~16_combout\);

-- Location: LCCOMB_X58_Y36_N6
\SLL641|Mux111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux111~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\shiftIn[8]~63_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~16_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \shiftIn[8]~63_combout\,
	combout => \SLL641|Mux111~0_combout\);

-- Location: LCCOMB_X58_Y38_N10
\SLL641|Mux111~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux111~1_combout\ = (\SLL641|Mux111~0_combout\) # ((\B[2]~input_o\ & \SLL641|Mux115~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux111~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux115~1_combout\,
	combout => \SLL641|Mux111~1_combout\);

-- Location: LCCOMB_X58_Y38_N28
\SLL641|Mux190~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~38_combout\ = (\SRA641|Mux156~130_combout\ & ((\B[1]~input_o\ & ((\SLL641|Mux113~2_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux111~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux111~1_combout\,
	datab => \SLL641|Mux113~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux156~130_combout\,
	combout => \SLL641|Mux190~38_combout\);

-- Location: LCCOMB_X57_Y38_N8
\shiftOut~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~129_combout\ = (\shiftOut~70_combout\ & ((\shiftOut~69_combout\) # ((\SLL641|Mux190~38_combout\)))) # (!\shiftOut~70_combout\ & (!\shiftOut~69_combout\ & (\shiftOut~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~69_combout\,
	datac => \shiftOut~128_combout\,
	datad => \SLL641|Mux190~38_combout\,
	combout => \shiftOut~129_combout\);

-- Location: IOIBUF_X85_Y73_N15
\C[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(16),
	o => \C[16]~input_o\);

-- Location: LCCOMB_X60_Y41_N30
\shiftOut~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~130_combout\ = (\shiftOut~129_combout\ & (((\SLL641|Mux190~37_combout\)) # (!\shiftOut~69_combout\))) # (!\shiftOut~129_combout\ & (\shiftOut~69_combout\ & (\C[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~129_combout\,
	datab => \shiftOut~69_combout\,
	datac => \C[16]~input_o\,
	datad => \SLL641|Mux190~37_combout\,
	combout => \shiftOut~130_combout\);

-- Location: LCCOMB_X60_Y41_N4
\shiftOut~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~296_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\mux1OutUp[48]~33_combout\)) # (!\ShiftFN[1]~input_o\ & ((\shiftOut~130_combout\))))) # (!\ExtWord~input_o\ & (((\shiftOut~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[48]~33_combout\,
	datab => \ExtWord~input_o\,
	datac => \shiftOut~130_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \shiftOut~296_combout\);

-- Location: LCCOMB_X65_Y41_N28
\SRA641|Mux156~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~163_combout\ = (!\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRA641|Mux90~52_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux90~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~52_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux90~31_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~163_combout\);

-- Location: LCCOMB_X60_Y39_N8
\SRL641|Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux75~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\shiftIn[56]~16_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[52]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftIn[56]~16_combout\,
	datac => \shiftIn[52]~10_combout\,
	datad => \B[3]~input_o\,
	combout => \SRL641|Mux75~0_combout\);

-- Location: LCCOMB_X62_Y37_N8
\SRA641|Mux156~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~164_combout\ = (\SRL641|Mux75~0_combout\) # ((\shiftIn[60]~14_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[60]~14_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL641|Mux75~0_combout\,
	combout => \SRA641|Mux156~164_combout\);

-- Location: LCCOMB_X66_Y37_N20
\SRA641|Mux156~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~265_combout\ = (\SRL641|Mux47~0_combout\ & (((!\B[1]~input_o\) # (!\B[3]~input_o\)) # (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRL641|Mux47~0_combout\,
	combout => \SRA641|Mux156~265_combout\);

-- Location: LCCOMB_X62_Y37_N2
\SRA641|Mux156~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~165_combout\ = (\SRA641|Mux156~265_combout\ & ((\SRA641|Mux156~163_combout\) # ((\SRA641|Mux156~164_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~163_combout\,
	datab => \SRA641|Mux156~164_combout\,
	datac => \SRA641|Mux156~265_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~165_combout\);

-- Location: LCCOMB_X65_Y37_N12
\mux1OutUp[49]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[49]~34_combout\ = (\B[0]~input_o\ & ((\SRA641|Mux156~165_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA641|Mux156~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~165_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~157_combout\,
	combout => \mux1OutUp[49]~34_combout\);

-- Location: LCCOMB_X62_Y37_N28
\SRA641|Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux73~0_combout\ = (\B[3]~input_o\ & ((\SRL641|Mux47~0_combout\ & ((\shiftIn[60]~14_combout\))) # (!\SRL641|Mux47~0_combout\ & (\shiftIn[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \SRL641|Mux47~0_combout\,
	datac => \B[3]~input_o\,
	datad => \shiftIn[60]~14_combout\,
	combout => \SRA641|Mux73~0_combout\);

-- Location: LCCOMB_X62_Y37_N6
\SRA641|Mux73~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux73~1_combout\ = (\SRL641|Mux75~0_combout\) # (\SRA641|Mux73~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux75~0_combout\,
	datad => \SRA641|Mux73~0_combout\,
	combout => \SRA641|Mux73~1_combout\);

-- Location: LCCOMB_X62_Y37_N24
\SRA641|Mux156~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~166_combout\ = (!\SRA641|Mux156~264_combout\ & ((\SRA641|Mux156~163_combout\) # ((\B[1]~input_o\ & \SRA641|Mux73~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~163_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux156~264_combout\,
	datad => \SRA641|Mux73~1_combout\,
	combout => \SRA641|Mux156~166_combout\);

-- Location: LCCOMB_X62_Y37_N26
\SRA641|Mux156~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~167_combout\ = (\SRA641|Mux156~166_combout\) # ((\shiftIn[63]~1_combout\ & \SRA641|Mux156~264_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \SRA641|Mux156~264_combout\,
	datad => \SRA641|Mux156~166_combout\,
	combout => \SRA641|Mux156~167_combout\);

-- Location: LCCOMB_X65_Y37_N30
\mux1OutUp[49]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[49]~35_combout\ = (\mux1OutUp[49]~34_combout\ & ((\SRA641|Mux156~167_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[49]~34_combout\ & (((\ShiftFN[0]~input_o\ & \SRA641|Mux156~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[49]~34_combout\,
	datab => \SRA641|Mux156~167_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~159_combout\,
	combout => \mux1OutUp[49]~35_combout\);

-- Location: IOIBUF_X47_Y73_N1
\C[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(17),
	o => \C[17]~input_o\);

-- Location: LCCOMB_X70_Y40_N18
\SRA641|Mux19~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~17_combout\ = (\B[4]~input_o\ & ((\shiftIn[1]~42_combout\))) # (!\B[4]~input_o\ & (\shiftIn[17]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[17]~41_combout\,
	datab => \shiftIn[1]~42_combout\,
	datac => \B[4]~input_o\,
	combout => \SRA641|Mux19~17_combout\);

-- Location: LCCOMB_X69_Y39_N8
\SLL641|Mux110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux110~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\shiftIn[9]~48_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~17_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \shiftIn[9]~48_combout\,
	combout => \SLL641|Mux110~0_combout\);

-- Location: LCCOMB_X65_Y39_N30
\SLL641|Mux110~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux110~1_combout\ = (\SLL641|Mux110~0_combout\) # ((\B[2]~input_o\ & \SLL641|Mux114~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL641|Mux114~1_combout\,
	datac => \SLL641|Mux110~0_combout\,
	combout => \SLL641|Mux110~1_combout\);

-- Location: LCCOMB_X57_Y38_N2
\SLL641|Mux190~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~39_combout\ = (\SRA641|Mux156~130_combout\ & ((\B[1]~input_o\ & ((\SLL641|Mux112~2_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux110~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~130_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL641|Mux110~1_combout\,
	datad => \SLL641|Mux112~2_combout\,
	combout => \SLL641|Mux190~39_combout\);

-- Location: LCCOMB_X61_Y38_N26
\shiftOut~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~131_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~162_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA641|Mux156~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~161_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~162_combout\,
	combout => \shiftOut~131_combout\);

-- Location: LCCOMB_X60_Y37_N8
\SRA641|Mux90~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~59_combout\ = (!\B[2]~input_o\ & ((\SRL641|Mux35~0_combout\) # ((\SRA641|Mux90~19_combout\ & \shiftIn[60]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux90~19_combout\,
	datac => \shiftIn[60]~14_combout\,
	datad => \SRL641|Mux35~0_combout\,
	combout => \SRA641|Mux90~59_combout\);

-- Location: LCCOMB_X61_Y36_N12
\SRA641|Mux90~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~60_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[48]~12_combout\))) # (!\B[4]~input_o\ & (\shiftIn[32]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[32]~13_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[48]~12_combout\,
	combout => \SRA641|Mux90~60_combout\);

-- Location: LCCOMB_X61_Y37_N18
\SRA641|Mux90~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~61_combout\ = (\SRA641|Mux90~59_combout\) # ((\B[2]~input_o\ & \SRA641|Mux90~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~59_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux90~60_combout\,
	combout => \SRA641|Mux90~61_combout\);

-- Location: LCCOMB_X61_Y37_N28
\SRA641|Mux156~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~168_combout\ = (\B[3]~input_o\ & (((\SRA641|Mux90~61_combout\) # (!\B[1]~input_o\)))) # (!\B[3]~input_o\ & (\SRA641|Mux90~38_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~38_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~61_combout\,
	combout => \SRA641|Mux156~168_combout\);

-- Location: LCCOMB_X61_Y37_N6
\SRA641|Mux156~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~169_combout\ = (\B[1]~input_o\ & (((\SRA641|Mux156~168_combout\)))) # (!\B[1]~input_o\ & ((\SRA641|Mux156~168_combout\ & (\SRA641|Mux90~54_combout\)) # (!\SRA641|Mux156~168_combout\ & ((\SRA641|Mux90~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux90~54_combout\,
	datac => \SRA641|Mux90~33_combout\,
	datad => \SRA641|Mux156~168_combout\,
	combout => \SRA641|Mux156~169_combout\);

-- Location: LCCOMB_X60_Y36_N8
\SRA641|Mux105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux105~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux38~1_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux42~1_combout\,
	datad => \SRA641|Mux38~1_combout\,
	combout => \SRA641|Mux105~0_combout\);

-- Location: LCCOMB_X60_Y36_N10
\SRA641|Mux90~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~62_combout\ = (\B[2]~input_o\ & (((\SRA641|Mux90~60_combout\) # (\SRA641|Mux156~252_combout\)))) # (!\B[2]~input_o\ & (\SRA641|Mux34~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux34~1_combout\,
	datac => \SRA641|Mux90~60_combout\,
	datad => \SRA641|Mux156~252_combout\,
	combout => \SRA641|Mux90~62_combout\);

-- Location: LCCOMB_X60_Y36_N20
\SRA641|Mux105~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux105~1_combout\ = (\SRA641|Mux105~0_combout\) # ((\B[3]~input_o\ & \SRA641|Mux90~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux105~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~62_combout\,
	combout => \SRA641|Mux105~1_combout\);

-- Location: LCCOMB_X61_Y38_N28
\SRA641|Mux156~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~170_combout\ = (\B[1]~input_o\ & (\SRA641|Mux105~1_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux107~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux105~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux107~1_combout\,
	combout => \SRA641|Mux156~170_combout\);

-- Location: LCCOMB_X61_Y38_N22
\shiftOut~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~132_combout\ = (\shiftOut~131_combout\ & (((\SRA641|Mux156~170_combout\)) # (!\B[0]~input_o\))) # (!\shiftOut~131_combout\ & (\B[0]~input_o\ & (\SRA641|Mux156~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~131_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~169_combout\,
	datad => \SRA641|Mux156~170_combout\,
	combout => \shiftOut~132_combout\);

-- Location: LCCOMB_X57_Y38_N20
\shiftOut~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~133_combout\ = (\shiftOut~70_combout\ & ((\SLL641|Mux190~39_combout\) # ((\shiftOut~69_combout\)))) # (!\shiftOut~70_combout\ & (((!\shiftOut~69_combout\ & \shiftOut~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \SLL641|Mux190~39_combout\,
	datac => \shiftOut~69_combout\,
	datad => \shiftOut~132_combout\,
	combout => \shiftOut~133_combout\);

-- Location: LCCOMB_X57_Y38_N14
\shiftOut~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~134_combout\ = (\shiftOut~133_combout\ & (((\SLL641|Mux190~38_combout\) # (!\shiftOut~69_combout\)))) # (!\shiftOut~133_combout\ & (\C[17]~input_o\ & (\shiftOut~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[17]~input_o\,
	datab => \shiftOut~133_combout\,
	datac => \shiftOut~69_combout\,
	datad => \SLL641|Mux190~38_combout\,
	combout => \shiftOut~134_combout\);

-- Location: LCCOMB_X60_Y41_N22
\shiftOut~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~297_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\mux1OutUp[49]~35_combout\)) # (!\ExtWord~input_o\ & ((\shiftOut~134_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\shiftOut~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \mux1OutUp[49]~35_combout\,
	datad => \shiftOut~134_combout\,
	combout => \shiftOut~297_combout\);

-- Location: IOIBUF_X0_Y34_N8
\C[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(18),
	o => \C[18]~input_o\);

-- Location: LCCOMB_X66_Y40_N4
\SRA641|Mux90~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~63_combout\ = (!\B[2]~input_o\ & ((\SRL641|Mux34~0_combout\) # ((\shiftIn[61]~29_combout\ & \SRA641|Mux90~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[61]~29_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA641|Mux90~19_combout\,
	datad => \SRL641|Mux34~0_combout\,
	combout => \SRA641|Mux90~63_combout\);

-- Location: LCCOMB_X70_Y40_N4
\SRA641|Mux90~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~64_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[49]~27_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[33]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[49]~27_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[33]~28_combout\,
	combout => \SRA641|Mux90~64_combout\);

-- Location: LCCOMB_X66_Y40_N30
\SRA641|Mux90~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~65_combout\ = (\SRA641|Mux90~63_combout\) # ((\B[2]~input_o\ & \SRA641|Mux90~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SRA641|Mux90~63_combout\,
	datad => \SRA641|Mux90~64_combout\,
	combout => \SRA641|Mux90~65_combout\);

-- Location: LCCOMB_X63_Y41_N12
\SRA641|Mux156~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~175_combout\ = (\B[3]~input_o\ & ((\SRA641|Mux90~65_combout\) # ((!\B[1]~input_o\)))) # (!\B[3]~input_o\ & (((\SRA641|Mux90~40_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~65_combout\,
	datab => \SRA641|Mux90~40_combout\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~175_combout\);

-- Location: LCCOMB_X63_Y41_N6
\SRA641|Mux156~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~176_combout\ = (\SRA641|Mux156~175_combout\ & (((\SRA641|Mux90~57_combout\) # (\B[1]~input_o\)))) # (!\SRA641|Mux156~175_combout\ & (\SRA641|Mux90~36_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~175_combout\,
	datab => \SRA641|Mux90~36_combout\,
	datac => \SRA641|Mux90~57_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~176_combout\);

-- Location: LCCOMB_X61_Y38_N0
\shiftOut~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~135_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~170_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA641|Mux156~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~169_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~170_combout\,
	combout => \shiftOut~135_combout\);

-- Location: LCCOMB_X66_Y40_N24
\SRA641|Mux104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux104~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux37~1_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux41~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRA641|Mux37~1_combout\,
	datad => \SRA641|Mux41~1_combout\,
	combout => \SRA641|Mux104~0_combout\);

-- Location: LCCOMB_X66_Y40_N18
\SRA641|Mux90~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~66_combout\ = (\B[2]~input_o\ & (((\SRA641|Mux156~252_combout\) # (\SRA641|Mux90~64_combout\)))) # (!\B[2]~input_o\ & (\SRA641|Mux33~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux33~1_combout\,
	datab => \B[2]~input_o\,
	datac => \SRA641|Mux156~252_combout\,
	datad => \SRA641|Mux90~64_combout\,
	combout => \SRA641|Mux90~66_combout\);

-- Location: LCCOMB_X66_Y40_N20
\SRA641|Mux104~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux104~1_combout\ = (\SRA641|Mux104~0_combout\) # ((\B[3]~input_o\ & \SRA641|Mux90~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux104~0_combout\,
	datad => \SRA641|Mux90~66_combout\,
	combout => \SRA641|Mux104~1_combout\);

-- Location: LCCOMB_X62_Y42_N0
\SRA641|Mux156~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~177_combout\ = (\B[1]~input_o\ & (\SRA641|Mux104~1_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux106~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux104~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux106~1_combout\,
	combout => \SRA641|Mux156~177_combout\);

-- Location: LCCOMB_X61_Y38_N2
\shiftOut~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~136_combout\ = (\shiftOut~135_combout\ & (((\SRA641|Mux156~177_combout\) # (!\B[0]~input_o\)))) # (!\shiftOut~135_combout\ & (\SRA641|Mux156~176_combout\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~176_combout\,
	datab => \shiftOut~135_combout\,
	datac => \SRA641|Mux156~177_combout\,
	datad => \B[0]~input_o\,
	combout => \shiftOut~136_combout\);

-- Location: LCCOMB_X58_Y40_N16
\SRA641|Mux19~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~18_combout\ = (\B[4]~input_o\ & (\shiftIn[2]~55_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[18]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[2]~55_combout\,
	datab => \B[4]~input_o\,
	datad => \shiftIn[18]~56_combout\,
	combout => \SRA641|Mux19~18_combout\);

-- Location: LCCOMB_X58_Y37_N2
\SLL641|Mux109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux109~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\shiftIn[10]~52_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux19~18_combout\,
	datad => \shiftIn[10]~52_combout\,
	combout => \SLL641|Mux109~0_combout\);

-- Location: LCCOMB_X58_Y38_N0
\SLL641|Mux109~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux109~1_combout\ = (\SLL641|Mux109~0_combout\) # ((\SLL641|Mux113~1_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux113~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux109~0_combout\,
	combout => \SLL641|Mux109~1_combout\);

-- Location: LCCOMB_X58_Y38_N2
\SLL641|Mux190~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~40_combout\ = (\SRA641|Mux156~270_combout\ & ((\B[1]~input_o\ & (\SLL641|Mux111~1_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux109~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux111~1_combout\,
	datab => \SRA641|Mux156~270_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux109~1_combout\,
	combout => \SLL641|Mux190~40_combout\);

-- Location: LCCOMB_X57_Y38_N24
\shiftOut~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~137_combout\ = (\shiftOut~70_combout\ & ((\shiftOut~69_combout\) # ((\SLL641|Mux190~40_combout\)))) # (!\shiftOut~70_combout\ & (!\shiftOut~69_combout\ & (\shiftOut~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~69_combout\,
	datac => \shiftOut~136_combout\,
	datad => \SLL641|Mux190~40_combout\,
	combout => \shiftOut~137_combout\);

-- Location: LCCOMB_X57_Y38_N26
\shiftOut~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~138_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~137_combout\ & ((\SLL641|Mux190~39_combout\))) # (!\shiftOut~137_combout\ & (\C[18]~input_o\)))) # (!\shiftOut~69_combout\ & (((\shiftOut~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[18]~input_o\,
	datab => \SLL641|Mux190~39_combout\,
	datac => \shiftOut~69_combout\,
	datad => \shiftOut~137_combout\,
	combout => \shiftOut~138_combout\);

-- Location: LCCOMB_X58_Y38_N22
\SRA641|Mux156~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~266_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\))) # (!\B[3]~input_o\ & (!\SRL641|Mux47~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux47~0_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRA641|Mux156~266_combout\);

-- Location: LCCOMB_X66_Y37_N26
\SRL641|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux74~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\shiftIn[57]~25_combout\)) # (!\B[2]~input_o\ & ((\shiftIn[53]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \shiftIn[57]~25_combout\,
	datad => \shiftIn[53]~31_combout\,
	combout => \SRL641|Mux74~0_combout\);

-- Location: LCCOMB_X66_Y37_N16
\SRA641|Mux74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux74~1_combout\ = (\SRA641|Mux74~0_combout\) # ((!\B[3]~input_o\ & \SRA641|Mux90~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux74~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~34_combout\,
	combout => \SRA641|Mux74~1_combout\);

-- Location: LCCOMB_X66_Y37_N10
\SRA641|Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux72~0_combout\ = (\B[3]~input_o\ & ((\SRL641|Mux47~0_combout\ & (\shiftIn[61]~29_combout\)) # (!\SRL641|Mux47~0_combout\ & ((\shiftIn[63]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[61]~29_combout\,
	datab => \SRL641|Mux47~0_combout\,
	datac => \B[3]~input_o\,
	datad => \shiftIn[63]~1_combout\,
	combout => \SRA641|Mux72~0_combout\);

-- Location: LCCOMB_X66_Y37_N12
\SRA641|Mux156~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~173_combout\ = (\B[1]~input_o\ & ((\SRL641|Mux74~0_combout\) # ((\SRA641|Mux72~0_combout\)))) # (!\B[1]~input_o\ & (((\SRA641|Mux74~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux74~0_combout\,
	datab => \SRA641|Mux74~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux72~0_combout\,
	combout => \SRA641|Mux156~173_combout\);

-- Location: LCCOMB_X58_Y38_N30
\SRA641|Mux156~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~174_combout\ = (\SRA641|Mux156~266_combout\ & (\shiftIn[63]~1_combout\)) # (!\SRA641|Mux156~266_combout\ & ((\SRA641|Mux156~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datac => \SRA641|Mux156~266_combout\,
	datad => \SRA641|Mux156~173_combout\,
	combout => \SRA641|Mux156~174_combout\);

-- Location: LCCOMB_X66_Y37_N4
\SRA641|Mux156~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~171_combout\ = (\SRL641|Mux74~0_combout\) # ((\B[3]~input_o\ & \shiftIn[61]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux74~0_combout\,
	datab => \B[3]~input_o\,
	datac => \shiftIn[61]~29_combout\,
	combout => \SRA641|Mux156~171_combout\);

-- Location: LCCOMB_X66_Y37_N22
\SRA641|Mux156~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~172_combout\ = (\SRA641|Mux156~265_combout\ & ((\B[1]~input_o\ & (\SRA641|Mux156~171_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux156~156_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux156~265_combout\,
	datac => \SRA641|Mux156~171_combout\,
	datad => \SRA641|Mux156~156_combout\,
	combout => \SRA641|Mux156~172_combout\);

-- Location: LCCOMB_X65_Y37_N16
\mux1OutUp[50]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[50]~36_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA641|Mux156~172_combout\)))) # (!\B[0]~input_o\ & (\SRA641|Mux156~165_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~165_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~172_combout\,
	combout => \mux1OutUp[50]~36_combout\);

-- Location: LCCOMB_X65_Y37_N26
\mux1OutUp[50]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[50]~37_combout\ = (\ShiftFN[0]~input_o\ & ((\mux1OutUp[50]~36_combout\ & (\SRA641|Mux156~174_combout\)) # (!\mux1OutUp[50]~36_combout\ & ((\SRA641|Mux156~167_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\mux1OutUp[50]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~174_combout\,
	datab => \SRA641|Mux156~167_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \mux1OutUp[50]~36_combout\,
	combout => \mux1OutUp[50]~37_combout\);

-- Location: LCCOMB_X57_Y41_N30
\shiftOut~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~298_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\mux1OutUp[50]~37_combout\))) # (!\ExtWord~input_o\ & (\shiftOut~138_combout\)))) # (!\ShiftFN[1]~input_o\ & (\shiftOut~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~138_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \mux1OutUp[50]~37_combout\,
	datad => \ExtWord~input_o\,
	combout => \shiftOut~298_combout\);

-- Location: LCCOMB_X62_Y37_N20
\SRL641|Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRL641|Mux73~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\shiftIn[58]~2_combout\))) # (!\B[2]~input_o\ & (\shiftIn[54]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[54]~8_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \shiftIn[58]~2_combout\,
	combout => \SRL641|Mux73~0_combout\);

-- Location: LCCOMB_X62_Y37_N10
\SRA641|Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux71~0_combout\ = (\B[3]~input_o\ & ((\SRL641|Mux47~0_combout\ & ((\shiftIn[62]~6_combout\))) # (!\SRL641|Mux47~0_combout\ & (\shiftIn[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \SRL641|Mux47~0_combout\,
	datac => \B[3]~input_o\,
	datad => \shiftIn[62]~6_combout\,
	combout => \SRA641|Mux71~0_combout\);

-- Location: LCCOMB_X62_Y37_N12
\SRA641|Mux156~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~180_combout\ = (\B[1]~input_o\ & (((\SRL641|Mux73~0_combout\) # (\SRA641|Mux71~0_combout\)))) # (!\B[1]~input_o\ & (\SRA641|Mux73~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux73~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SRL641|Mux73~0_combout\,
	datad => \SRA641|Mux71~0_combout\,
	combout => \SRA641|Mux156~180_combout\);

-- Location: LCCOMB_X58_Y38_N20
\SRA641|Mux156~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~181_combout\ = (\SRA641|Mux156~266_combout\ & (\shiftIn[63]~1_combout\)) # (!\SRA641|Mux156~266_combout\ & ((\SRA641|Mux156~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~266_combout\,
	datac => \shiftIn[63]~1_combout\,
	datad => \SRA641|Mux156~180_combout\,
	combout => \SRA641|Mux156~181_combout\);

-- Location: LCCOMB_X62_Y37_N30
\SRA641|Mux156~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~178_combout\ = (\SRL641|Mux73~0_combout\) # ((\shiftIn[62]~6_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[62]~6_combout\,
	datac => \B[3]~input_o\,
	datad => \SRL641|Mux73~0_combout\,
	combout => \SRA641|Mux156~178_combout\);

-- Location: LCCOMB_X62_Y37_N16
\SRA641|Mux156~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~179_combout\ = (\SLL641|Mux190~95_combout\ & ((\B[1]~input_o\ & (\SRA641|Mux156~178_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux156~164_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~178_combout\,
	datab => \B[1]~input_o\,
	datac => \SRA641|Mux156~164_combout\,
	datad => \SLL641|Mux190~95_combout\,
	combout => \SRA641|Mux156~179_combout\);

-- Location: LCCOMB_X65_Y37_N20
\mux1OutUp[51]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[51]~38_combout\ = (\B[0]~input_o\ & ((\SRA641|Mux156~179_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA641|Mux156~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~179_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~172_combout\,
	combout => \mux1OutUp[51]~38_combout\);

-- Location: LCCOMB_X65_Y37_N14
\mux1OutUp[51]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[51]~39_combout\ = (\mux1OutUp[51]~38_combout\ & ((\SRA641|Mux156~181_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[51]~38_combout\ & (((\ShiftFN[0]~input_o\ & \SRA641|Mux156~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~181_combout\,
	datab => \mux1OutUp[51]~38_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~174_combout\,
	combout => \mux1OutUp[51]~39_combout\);

-- Location: IOIBUF_X27_Y73_N22
\C[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(19),
	o => \C[19]~input_o\);

-- Location: LCCOMB_X59_Y43_N16
\SRA641|Mux19~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~19_combout\ = (\B[4]~input_o\ & (\shiftIn[3]~37_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[19]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \shiftIn[3]~37_combout\,
	datad => \shiftIn[19]~40_combout\,
	combout => \SRA641|Mux19~19_combout\);

-- Location: LCCOMB_X59_Y40_N8
\SLL641|Mux108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux108~0_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\shiftIn[11]~36_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux19~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftIn[11]~36_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~19_combout\,
	combout => \SLL641|Mux108~0_combout\);

-- Location: LCCOMB_X59_Y40_N10
\SLL641|Mux108~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux108~1_combout\ = (\SLL641|Mux108~0_combout\) # ((\B[2]~input_o\ & \SLL641|Mux112~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux108~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux112~1_combout\,
	combout => \SLL641|Mux108~1_combout\);

-- Location: LCCOMB_X57_Y38_N4
\SLL641|Mux190~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~41_combout\ = (\SRA641|Mux156~270_combout\ & ((\B[1]~input_o\ & (\SLL641|Mux110~1_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux108~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~270_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL641|Mux110~1_combout\,
	datad => \SLL641|Mux108~1_combout\,
	combout => \SLL641|Mux190~41_combout\);

-- Location: LCCOMB_X57_Y37_N20
\SRA641|Mux90~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~69_combout\ = (\B[2]~input_o\ & ((\shiftSig[5]~0_combout\ & ((\SRA641|Mux19~1_combout\))) # (!\shiftSig[5]~0_combout\ & (\shiftIn[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[63]~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux19~1_combout\,
	combout => \SRA641|Mux90~69_combout\);

-- Location: LCCOMB_X57_Y37_N14
\SRA641|Mux90~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~85_combout\ = (\SRA641|Mux90~69_combout\) # ((!\B[2]~input_o\ & ((\SRA641|Mux32~0_combout\) # (\SRL641|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux32~0_combout\,
	datab => \SRA641|Mux90~69_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL641|Mux33~0_combout\,
	combout => \SRA641|Mux90~85_combout\);

-- Location: LCCOMB_X60_Y38_N20
\SRA641|Mux103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux103~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux36~1_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux40~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux36~1_combout\,
	combout => \SRA641|Mux103~0_combout\);

-- Location: LCCOMB_X60_Y38_N22
\SRA641|Mux103~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux103~1_combout\ = (\SRA641|Mux103~0_combout\) # ((\SRA641|Mux90~85_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux90~85_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux103~0_combout\,
	combout => \SRA641|Mux103~1_combout\);

-- Location: LCCOMB_X61_Y38_N30
\SRA641|Mux156~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~184_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux103~1_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux105~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux105~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux103~1_combout\,
	combout => \SRA641|Mux156~184_combout\);

-- Location: LCCOMB_X61_Y38_N4
\shiftOut~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~139_combout\ = (\B[0]~input_o\ & (\ShiftFN[0]~input_o\)) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRA641|Mux156~177_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~176_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA641|Mux156~177_combout\,
	datad => \SRA641|Mux156~176_combout\,
	combout => \shiftOut~139_combout\);

-- Location: LCCOMB_X57_Y37_N18
\SRA641|Mux90~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~67_combout\ = (!\B[2]~input_o\ & ((\SRL641|Mux33~0_combout\) # ((\SRA641|Mux90~19_combout\ & \shiftIn[62]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~19_combout\,
	datab => \shiftIn[62]~6_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL641|Mux33~0_combout\,
	combout => \SRA641|Mux90~67_combout\);

-- Location: LCCOMB_X66_Y36_N28
\SRA641|Mux90~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~68_combout\ = (\SRA641|Mux90~67_combout\) # ((\shiftSig[5]~0_combout\ & (\SRA641|Mux19~1_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~67_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \SRA641|Mux19~1_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA641|Mux90~68_combout\);

-- Location: LCCOMB_X61_Y37_N16
\SRA641|Mux156~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~182_combout\ = (\B[3]~input_o\ & ((\SRA641|Mux90~68_combout\) # ((!\B[1]~input_o\)))) # (!\B[3]~input_o\ & (((\B[1]~input_o\ & \SRA641|Mux90~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~68_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~42_combout\,
	combout => \SRA641|Mux156~182_combout\);

-- Location: LCCOMB_X61_Y37_N26
\SRA641|Mux156~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~183_combout\ = (\SRA641|Mux156~182_combout\ & (((\B[1]~input_o\) # (\SRA641|Mux90~61_combout\)))) # (!\SRA641|Mux156~182_combout\ & (\SRA641|Mux90~38_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~38_combout\,
	datab => \SRA641|Mux156~182_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~61_combout\,
	combout => \SRA641|Mux156~183_combout\);

-- Location: LCCOMB_X61_Y38_N8
\shiftOut~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~140_combout\ = (\B[0]~input_o\ & ((\shiftOut~139_combout\ & (\SRA641|Mux156~184_combout\)) # (!\shiftOut~139_combout\ & ((\SRA641|Mux156~183_combout\))))) # (!\B[0]~input_o\ & (((\shiftOut~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~184_combout\,
	datab => \B[0]~input_o\,
	datac => \shiftOut~139_combout\,
	datad => \SRA641|Mux156~183_combout\,
	combout => \shiftOut~140_combout\);

-- Location: LCCOMB_X57_Y38_N22
\shiftOut~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~141_combout\ = (\shiftOut~70_combout\ & ((\SLL641|Mux190~41_combout\) # ((\shiftOut~69_combout\)))) # (!\shiftOut~70_combout\ & (((!\shiftOut~69_combout\ & \shiftOut~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \SLL641|Mux190~41_combout\,
	datac => \shiftOut~69_combout\,
	datad => \shiftOut~140_combout\,
	combout => \shiftOut~141_combout\);

-- Location: LCCOMB_X57_Y38_N0
\shiftOut~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~142_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~141_combout\ & ((\SLL641|Mux190~40_combout\))) # (!\shiftOut~141_combout\ & (\C[19]~input_o\)))) # (!\shiftOut~69_combout\ & (((\shiftOut~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[19]~input_o\,
	datab => \shiftOut~69_combout\,
	datac => \shiftOut~141_combout\,
	datad => \SLL641|Mux190~40_combout\,
	combout => \shiftOut~142_combout\);

-- Location: LCCOMB_X57_Y41_N24
\shiftOut~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~299_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\mux1OutUp[51]~39_combout\)) # (!\ShiftFN[1]~input_o\ & ((\shiftOut~142_combout\))))) # (!\ExtWord~input_o\ & (((\shiftOut~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \mux1OutUp[51]~39_combout\,
	datad => \shiftOut~142_combout\,
	combout => \shiftOut~299_combout\);

-- Location: LCCOMB_X67_Y40_N10
\SRA641|Mux156~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~185_combout\ = (\B[3]~input_o\ & (\shiftIn[63]~1_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux90~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux90~43_combout\,
	combout => \SRA641|Mux156~185_combout\);

-- Location: LCCOMB_X65_Y37_N0
\SRA641|Mux156~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~186_combout\ = (\SLL641|Mux190~95_combout\ & ((\B[1]~input_o\ & ((\SRA641|Mux156~185_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux156~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~171_combout\,
	datab => \SLL641|Mux190~95_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux156~185_combout\,
	combout => \SRA641|Mux156~186_combout\);

-- Location: LCCOMB_X65_Y37_N18
\mux1OutUp[52]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[52]~40_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA641|Mux156~186_combout\)))) # (!\B[0]~input_o\ & (\SRA641|Mux156~179_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~179_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~186_combout\,
	combout => \mux1OutUp[52]~40_combout\);

-- Location: LCCOMB_X66_Y37_N6
\SRA641|Mux156~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~187_combout\ = (\B[1]~input_o\ & ((\SRL641|Mux47~0_combout\ & ((\SRA641|Mux90~43_combout\))) # (!\SRL641|Mux47~0_combout\ & (\shiftIn[63]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \SRL641|Mux47~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~43_combout\,
	combout => \SRA641|Mux156~187_combout\);

-- Location: LCCOMB_X66_Y37_N8
\SRA641|Mux156~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~188_combout\ = (\SRA641|Mux156~187_combout\) # ((!\B[1]~input_o\ & ((\SRL641|Mux74~0_combout\) # (\SRA641|Mux72~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux74~0_combout\,
	datab => \SRA641|Mux72~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux156~187_combout\,
	combout => \SRA641|Mux156~188_combout\);

-- Location: LCCOMB_X66_Y37_N14
\SRA641|Mux156~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~267_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\) # ((\B[1]~input_o\)))) # (!\B[3]~input_o\ & (((!\B[1]~input_o\ & !\SRL641|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRL641|Mux47~0_combout\,
	combout => \SRA641|Mux156~267_combout\);

-- Location: LCCOMB_X66_Y37_N2
\SRA641|Mux156~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~189_combout\ = (\SRA641|Mux156~267_combout\ & (\shiftIn[63]~1_combout\)) # (!\SRA641|Mux156~267_combout\ & ((\SRA641|Mux156~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \SRA641|Mux156~188_combout\,
	datac => \SRA641|Mux156~267_combout\,
	combout => \SRA641|Mux156~189_combout\);

-- Location: LCCOMB_X65_Y37_N4
\mux1OutUp[52]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[52]~41_combout\ = (\mux1OutUp[52]~40_combout\ & (((\SRA641|Mux156~189_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[52]~40_combout\ & (\SRA641|Mux156~181_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~181_combout\,
	datab => \mux1OutUp[52]~40_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~189_combout\,
	combout => \mux1OutUp[52]~41_combout\);

-- Location: IOIBUF_X0_Y35_N8
\C[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(20),
	o => \C[20]~input_o\);

-- Location: LCCOMB_X63_Y41_N0
\SRA641|Mux90~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~70_combout\ = (!\B[2]~input_o\ & ((\SRL641|Mux32~0_combout\) # ((\shiftIn[63]~1_combout\ & \SRA641|Mux90~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \SRA641|Mux90~19_combout\,
	datac => \B[2]~input_o\,
	datad => \SRL641|Mux32~0_combout\,
	combout => \SRA641|Mux90~70_combout\);

-- Location: LCCOMB_X63_Y41_N18
\SRA641|Mux90~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~71_combout\ = (\SRA641|Mux90~70_combout\) # ((\SRA641|Mux19~11_combout\ & (\shiftSig[5]~0_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~11_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux90~70_combout\,
	combout => \SRA641|Mux90~71_combout\);

-- Location: LCCOMB_X63_Y41_N28
\SRA641|Mux156~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~190_combout\ = (\B[1]~input_o\ & ((\B[3]~input_o\ & ((\SRA641|Mux90~71_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux90~45_combout\)))) # (!\B[1]~input_o\ & (((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux90~45_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~71_combout\,
	combout => \SRA641|Mux156~190_combout\);

-- Location: LCCOMB_X63_Y41_N14
\SRA641|Mux156~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~191_combout\ = (\B[1]~input_o\ & (((\SRA641|Mux156~190_combout\)))) # (!\B[1]~input_o\ & ((\SRA641|Mux156~190_combout\ & (\SRA641|Mux90~65_combout\)) # (!\SRA641|Mux156~190_combout\ & ((\SRA641|Mux90~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux90~65_combout\,
	datac => \SRA641|Mux90~40_combout\,
	datad => \SRA641|Mux156~190_combout\,
	combout => \SRA641|Mux156~191_combout\);

-- Location: LCCOMB_X61_Y38_N18
\shiftOut~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~143_combout\ = (\ShiftFN[0]~input_o\ & (((\SRA641|Mux156~184_combout\) # (\B[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (\SRA641|Mux156~183_combout\ & ((!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~183_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA641|Mux156~184_combout\,
	datad => \B[0]~input_o\,
	combout => \shiftOut~143_combout\);

-- Location: LCCOMB_X63_Y40_N10
\SRA641|Mux90~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~72_combout\ = (!\B[2]~input_o\ & ((\B[4]~input_o\ & (\shiftIn[47]~18_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[31]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[47]~18_combout\,
	datab => \B[2]~input_o\,
	datac => \shiftIn[31]~33_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux90~72_combout\);

-- Location: LCCOMB_X63_Y39_N20
\SRA641|Mux90~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~73_combout\ = (\SRA641|Mux90~72_combout\) # ((\SRA641|Mux19~11_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux19~11_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux90~72_combout\,
	combout => \SRA641|Mux90~73_combout\);

-- Location: LCCOMB_X63_Y39_N6
\SRA641|Mux102~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux102~4_combout\ = (\B[3]~input_o\ & (\SRA641|Mux90~73_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[5]~input_o\,
	datad => \SRA641|Mux90~73_combout\,
	combout => \SRA641|Mux102~4_combout\);

-- Location: LCCOMB_X62_Y43_N18
\SRA641|Mux102~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux102~2_combout\ = (\B[3]~input_o\ & (\SRA641|Mux156~252_combout\)) # (!\B[3]~input_o\ & (((\B[2]~input_o\ & \SRA641|Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux156~252_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux35~1_combout\,
	combout => \SRA641|Mux102~2_combout\);

-- Location: LCCOMB_X62_Y43_N28
\SRA641|Mux102~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux102~3_combout\ = (\SRA641|Mux102~4_combout\) # ((\SRA641|Mux102~2_combout\) # ((\SRA641|Mux39~1_combout\ & \SRL641|Mux119~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux39~1_combout\,
	datab => \SRA641|Mux102~4_combout\,
	datac => \SRL641|Mux119~0_combout\,
	datad => \SRA641|Mux102~2_combout\,
	combout => \SRA641|Mux102~3_combout\);

-- Location: LCCOMB_X62_Y42_N26
\SRA641|Mux156~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~192_combout\ = (\B[1]~input_o\ & (\SRA641|Mux102~3_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux104~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux102~3_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux104~1_combout\,
	combout => \SRA641|Mux156~192_combout\);

-- Location: LCCOMB_X61_Y38_N20
\shiftOut~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~144_combout\ = (\shiftOut~143_combout\ & (((\SRA641|Mux156~192_combout\) # (!\B[0]~input_o\)))) # (!\shiftOut~143_combout\ & (\SRA641|Mux156~191_combout\ & (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~191_combout\,
	datab => \shiftOut~143_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA641|Mux156~192_combout\,
	combout => \shiftOut~144_combout\);

-- Location: LCCOMB_X61_Y35_N10
\SRA641|Mux19~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~20_combout\ = (\B[4]~input_o\ & ((\shiftIn[4]~60_combout\))) # (!\B[4]~input_o\ & (\shiftIn[20]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \shiftIn[20]~59_combout\,
	datad => \shiftIn[4]~60_combout\,
	combout => \SRA641|Mux19~20_combout\);

-- Location: LCCOMB_X59_Y36_N24
\SLL641|Mux107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux107~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\) # ((\SRA641|Mux19~16_combout\)))) # (!\B[2]~input_o\ & (!\B[3]~input_o\ & ((\SRA641|Mux19~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux19~16_combout\,
	datad => \SRA641|Mux19~20_combout\,
	combout => \SLL641|Mux107~0_combout\);

-- Location: LCCOMB_X58_Y36_N16
\SLL641|Mux107~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux107~1_combout\ = (\SLL641|Mux107~0_combout\ & ((\shiftIn[8]~63_combout\) # ((!\B[3]~input_o\)))) # (!\SLL641|Mux107~0_combout\ & (((\B[3]~input_o\ & \shiftIn[12]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux107~0_combout\,
	datab => \shiftIn[8]~63_combout\,
	datac => \B[3]~input_o\,
	datad => \shiftIn[12]~58_combout\,
	combout => \SLL641|Mux107~1_combout\);

-- Location: LCCOMB_X58_Y38_N6
\SLL641|Mux190~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~42_combout\ = (\SRA641|Mux156~108_combout\ & ((\B[1]~input_o\ & ((\SLL641|Mux109~1_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux107~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux107~1_combout\,
	datab => \SRA641|Mux156~108_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux109~1_combout\,
	combout => \SLL641|Mux190~42_combout\);

-- Location: LCCOMB_X57_Y38_N18
\shiftOut~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~145_combout\ = (\shiftOut~70_combout\ & (((\shiftOut~69_combout\) # (\SLL641|Mux190~42_combout\)))) # (!\shiftOut~70_combout\ & (\shiftOut~144_combout\ & (!\shiftOut~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~144_combout\,
	datac => \shiftOut~69_combout\,
	datad => \SLL641|Mux190~42_combout\,
	combout => \shiftOut~145_combout\);

-- Location: LCCOMB_X57_Y38_N12
\shiftOut~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~146_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~145_combout\ & ((\SLL641|Mux190~41_combout\))) # (!\shiftOut~145_combout\ & (\C[20]~input_o\)))) # (!\shiftOut~69_combout\ & (((\shiftOut~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[20]~input_o\,
	datab => \shiftOut~69_combout\,
	datac => \SLL641|Mux190~41_combout\,
	datad => \shiftOut~145_combout\,
	combout => \shiftOut~146_combout\);

-- Location: LCCOMB_X57_Y41_N10
\shiftOut~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~300_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\mux1OutUp[52]~41_combout\)) # (!\ShiftFN[1]~input_o\ & ((\shiftOut~146_combout\))))) # (!\ExtWord~input_o\ & (((\shiftOut~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \mux1OutUp[52]~41_combout\,
	datad => \shiftOut~146_combout\,
	combout => \shiftOut~300_combout\);

-- Location: LCCOMB_X62_Y37_N0
\SRA641|Mux156~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~194_combout\ = (!\B[1]~input_o\ & ((\SRA641|Mux71~0_combout\) # (\SRL641|Mux73~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux71~0_combout\,
	datab => \B[1]~input_o\,
	datad => \SRL641|Mux73~0_combout\,
	combout => \SRA641|Mux156~194_combout\);

-- Location: LCCOMB_X62_Y37_N18
\SRA641|Mux156~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~195_combout\ = (\B[1]~input_o\ & ((\SRL641|Mux47~0_combout\ & (\SRA641|Mux90~46_combout\)) # (!\SRL641|Mux47~0_combout\ & ((\shiftIn[63]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~46_combout\,
	datab => \SRL641|Mux47~0_combout\,
	datac => \shiftIn[63]~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~195_combout\);

-- Location: LCCOMB_X62_Y37_N4
\SRA641|Mux156~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~196_combout\ = (\SRA641|Mux156~267_combout\ & (\shiftIn[63]~1_combout\)) # (!\SRA641|Mux156~267_combout\ & (((\SRA641|Mux156~194_combout\) # (\SRA641|Mux156~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \SRA641|Mux156~194_combout\,
	datac => \SRA641|Mux156~195_combout\,
	datad => \SRA641|Mux156~267_combout\,
	combout => \SRA641|Mux156~196_combout\);

-- Location: LCCOMB_X62_Y37_N22
\SRA641|Mux156~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~193_combout\ = (\SLL641|Mux190~94_combout\ & ((\B[1]~input_o\ & (\SRA641|Mux90~46_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux156~178_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~46_combout\,
	datab => \SLL641|Mux190~94_combout\,
	datac => \SRA641|Mux156~178_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~193_combout\);

-- Location: LCCOMB_X65_Y37_N6
\mux1OutUp[53]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[53]~42_combout\ = (\B[0]~input_o\ & ((\SRA641|Mux156~193_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA641|Mux156~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~193_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~186_combout\,
	combout => \mux1OutUp[53]~42_combout\);

-- Location: LCCOMB_X65_Y37_N8
\mux1OutUp[53]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[53]~43_combout\ = (\mux1OutUp[53]~42_combout\ & ((\SRA641|Mux156~196_combout\) # ((!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[53]~42_combout\ & (((\ShiftFN[0]~input_o\ & \SRA641|Mux156~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~196_combout\,
	datab => \mux1OutUp[53]~42_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~189_combout\,
	combout => \mux1OutUp[53]~43_combout\);

-- Location: IOIBUF_X45_Y0_N22
\C[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(21),
	o => \C[21]~input_o\);

-- Location: LCCOMB_X62_Y36_N6
\SRA641|Mux90~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~74_combout\ = (\shiftSig[5]~0_combout\ & ((\B[2]~input_o\ & (\SRA641|Mux19~4_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux19~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \SRA641|Mux19~4_combout\,
	datad => \SRA641|Mux19~5_combout\,
	combout => \SRA641|Mux90~74_combout\);

-- Location: LCCOMB_X61_Y37_N20
\SRA641|Mux156~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~197_combout\ = (\B[3]~input_o\ & (((\SRA641|Mux90~74_combout\) # (!\B[1]~input_o\)))) # (!\B[3]~input_o\ & (\SRA641|Mux90~48_combout\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux90~48_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~74_combout\,
	combout => \SRA641|Mux156~197_combout\);

-- Location: LCCOMB_X61_Y37_N14
\SRA641|Mux156~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~198_combout\ = (\B[1]~input_o\ & (\SRA641|Mux156~197_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux156~197_combout\ & (\SRA641|Mux90~68_combout\)) # (!\SRA641|Mux156~197_combout\ & ((\SRA641|Mux90~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux156~197_combout\,
	datac => \SRA641|Mux90~68_combout\,
	datad => \SRA641|Mux90~42_combout\,
	combout => \SRA641|Mux156~198_combout\);

-- Location: LCCOMB_X60_Y36_N22
\SRA641|Mux101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux101~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux34~1_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux38~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux34~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux38~1_combout\,
	combout => \SRA641|Mux101~0_combout\);

-- Location: LCCOMB_X61_Y37_N0
\SRA641|Mux101~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux101~1_combout\ = (\SRA641|Mux101~0_combout\) # ((\B[3]~input_o\ & ((\SRA641|Mux156~252_combout\) # (\SRA641|Mux90~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~252_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux101~0_combout\,
	datad => \SRA641|Mux90~74_combout\,
	combout => \SRA641|Mux101~1_combout\);

-- Location: LCCOMB_X61_Y38_N16
\SRA641|Mux156~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~199_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux101~1_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux103~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux103~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux101~1_combout\,
	combout => \SRA641|Mux156~199_combout\);

-- Location: LCCOMB_X61_Y38_N6
\shiftOut~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~147_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~192_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA641|Mux156~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~191_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~192_combout\,
	combout => \shiftOut~147_combout\);

-- Location: LCCOMB_X61_Y38_N10
\shiftOut~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~148_combout\ = (\B[0]~input_o\ & ((\shiftOut~147_combout\ & ((\SRA641|Mux156~199_combout\))) # (!\shiftOut~147_combout\ & (\SRA641|Mux156~198_combout\)))) # (!\B[0]~input_o\ & (((\shiftOut~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~198_combout\,
	datab => \SRA641|Mux156~199_combout\,
	datac => \B[0]~input_o\,
	datad => \shiftOut~147_combout\,
	combout => \shiftOut~148_combout\);

-- Location: LCCOMB_X66_Y41_N20
\SRA641|Mux19~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~21_combout\ = (\B[4]~input_o\ & ((\shiftIn[5]~44_combout\))) # (!\B[4]~input_o\ & (\shiftIn[21]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \shiftIn[21]~43_combout\,
	datad => \shiftIn[5]~44_combout\,
	combout => \SRA641|Mux19~21_combout\);

-- Location: LCCOMB_X69_Y39_N10
\SLL641|Mux106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux106~0_combout\ = (\B[2]~input_o\ & ((\SRA641|Mux19~17_combout\) # ((\B[3]~input_o\)))) # (!\B[2]~input_o\ & (((!\B[3]~input_o\ & \SRA641|Mux19~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~17_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~21_combout\,
	combout => \SLL641|Mux106~0_combout\);

-- Location: LCCOMB_X69_Y39_N20
\SLL641|Mux106~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux106~1_combout\ = (\B[3]~input_o\ & ((\SLL641|Mux106~0_combout\ & ((\shiftIn[9]~48_combout\))) # (!\SLL641|Mux106~0_combout\ & (\shiftIn[13]~46_combout\)))) # (!\B[3]~input_o\ & (((\SLL641|Mux106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[13]~46_combout\,
	datab => \shiftIn[9]~48_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL641|Mux106~0_combout\,
	combout => \SLL641|Mux106~1_combout\);

-- Location: LCCOMB_X57_Y38_N6
\SLL641|Mux190~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~43_combout\ = (\SRA641|Mux156~108_combout\ & ((\B[1]~input_o\ & ((\SLL641|Mux108~1_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux106~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~108_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL641|Mux106~1_combout\,
	datad => \SLL641|Mux108~1_combout\,
	combout => \SLL641|Mux190~43_combout\);

-- Location: LCCOMB_X57_Y38_N16
\shiftOut~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~149_combout\ = (\shiftOut~70_combout\ & ((\shiftOut~69_combout\) # ((\SLL641|Mux190~43_combout\)))) # (!\shiftOut~70_combout\ & (!\shiftOut~69_combout\ & (\shiftOut~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~69_combout\,
	datac => \shiftOut~148_combout\,
	datad => \SLL641|Mux190~43_combout\,
	combout => \shiftOut~149_combout\);

-- Location: LCCOMB_X57_Y38_N10
\shiftOut~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~150_combout\ = (\shiftOut~149_combout\ & (((\SLL641|Mux190~42_combout\) # (!\shiftOut~69_combout\)))) # (!\shiftOut~149_combout\ & (\C[21]~input_o\ & (\shiftOut~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[21]~input_o\,
	datab => \shiftOut~149_combout\,
	datac => \shiftOut~69_combout\,
	datad => \SLL641|Mux190~42_combout\,
	combout => \shiftOut~150_combout\);

-- Location: LCCOMB_X57_Y41_N12
\shiftOut~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~301_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\mux1OutUp[53]~43_combout\)) # (!\ShiftFN[1]~input_o\ & ((\shiftOut~150_combout\))))) # (!\ExtWord~input_o\ & (((\shiftOut~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \mux1OutUp[53]~43_combout\,
	datad => \shiftOut~150_combout\,
	combout => \shiftOut~301_combout\);

-- Location: IOIBUF_X47_Y0_N1
\C[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(22),
	o => \C[22]~input_o\);

-- Location: LCCOMB_X61_Y38_N12
\shiftOut~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~151_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~199_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA641|Mux156~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~198_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~199_combout\,
	combout => \shiftOut~151_combout\);

-- Location: LCCOMB_X66_Y36_N22
\SRA641|Mux90~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~75_combout\ = (\shiftSig[5]~0_combout\ & ((\B[2]~input_o\ & (\SRA641|Mux19~15_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux19~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \SRA641|Mux19~15_combout\,
	datad => \SRA641|Mux19~13_combout\,
	combout => \SRA641|Mux90~75_combout\);

-- Location: LCCOMB_X66_Y40_N22
\SRA641|Mux100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux100~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux33~1_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SRA641|Mux37~1_combout\,
	datad => \SRA641|Mux33~1_combout\,
	combout => \SRA641|Mux100~0_combout\);

-- Location: LCCOMB_X65_Y40_N12
\SRA641|Mux100~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux100~1_combout\ = (\SRA641|Mux100~0_combout\) # ((\B[3]~input_o\ & ((\SRA641|Mux90~75_combout\) # (\SRA641|Mux156~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux90~75_combout\,
	datac => \SRA641|Mux156~252_combout\,
	datad => \SRA641|Mux100~0_combout\,
	combout => \SRA641|Mux100~1_combout\);

-- Location: LCCOMB_X65_Y40_N22
\SRA641|Mux156~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~205_combout\ = (\B[1]~input_o\ & (\SRA641|Mux100~1_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux102~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux100~1_combout\,
	datab => \SRA641|Mux102~3_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~205_combout\);

-- Location: LCCOMB_X63_Y41_N24
\SRA641|Mux156~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~203_combout\ = (\B[3]~input_o\ & (((\SRA641|Mux90~75_combout\) # (!\B[1]~input_o\)))) # (!\B[3]~input_o\ & (\SRA641|Mux90~51_combout\ & ((\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~51_combout\,
	datab => \SRA641|Mux90~75_combout\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~203_combout\);

-- Location: LCCOMB_X63_Y41_N2
\SRA641|Mux156~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~204_combout\ = (\B[1]~input_o\ & (((\SRA641|Mux156~203_combout\)))) # (!\B[1]~input_o\ & ((\SRA641|Mux156~203_combout\ & ((\SRA641|Mux90~71_combout\))) # (!\SRA641|Mux156~203_combout\ & (\SRA641|Mux90~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux90~45_combout\,
	datac => \SRA641|Mux90~71_combout\,
	datad => \SRA641|Mux156~203_combout\,
	combout => \SRA641|Mux156~204_combout\);

-- Location: LCCOMB_X62_Y38_N2
\shiftOut~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~152_combout\ = (\shiftOut~151_combout\ & ((\SRA641|Mux156~205_combout\) # ((!\B[0]~input_o\)))) # (!\shiftOut~151_combout\ & (((\B[0]~input_o\ & \SRA641|Mux156~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~151_combout\,
	datab => \SRA641|Mux156~205_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA641|Mux156~204_combout\,
	combout => \shiftOut~152_combout\);

-- Location: LCCOMB_X58_Y37_N12
\SRA641|Mux19~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~22_combout\ = (\B[4]~input_o\ & (\shiftIn[6]~54_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[22]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[6]~54_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[22]~53_combout\,
	combout => \SRA641|Mux19~22_combout\);

-- Location: LCCOMB_X58_Y37_N22
\SLL641|Mux105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux105~0_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux19~18_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux19~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~22_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux19~18_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL641|Mux105~0_combout\);

-- Location: LCCOMB_X58_Y37_N16
\SLL641|Mux105~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux105~1_combout\ = (\B[3]~input_o\ & ((\SLL641|Mux105~0_combout\ & ((\shiftIn[10]~52_combout\))) # (!\SLL641|Mux105~0_combout\ & (\shiftIn[14]~50_combout\)))) # (!\B[3]~input_o\ & (((\SLL641|Mux105~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[14]~50_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL641|Mux105~0_combout\,
	datad => \shiftIn[10]~52_combout\,
	combout => \SLL641|Mux105~1_combout\);

-- Location: LCCOMB_X62_Y38_N8
\SLL641|Mux190~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~44_combout\ = (\SRA641|Mux86~0_combout\ & ((\B[1]~input_o\ & (\SLL641|Mux107~1_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux105~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux107~1_combout\,
	datab => \SLL641|Mux105~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux86~0_combout\,
	combout => \SLL641|Mux190~44_combout\);

-- Location: LCCOMB_X57_Y38_N28
\shiftOut~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~153_combout\ = (\shiftOut~70_combout\ & (((\shiftOut~69_combout\) # (\SLL641|Mux190~44_combout\)))) # (!\shiftOut~70_combout\ & (\shiftOut~152_combout\ & (!\shiftOut~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~152_combout\,
	datac => \shiftOut~69_combout\,
	datad => \SLL641|Mux190~44_combout\,
	combout => \shiftOut~153_combout\);

-- Location: LCCOMB_X57_Y38_N30
\shiftOut~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~154_combout\ = (\shiftOut~153_combout\ & (((\SLL641|Mux190~43_combout\) # (!\shiftOut~69_combout\)))) # (!\shiftOut~153_combout\ & (\C[22]~input_o\ & (\shiftOut~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[22]~input_o\,
	datab => \shiftOut~153_combout\,
	datac => \shiftOut~69_combout\,
	datad => \SLL641|Mux190~43_combout\,
	combout => \shiftOut~154_combout\);

-- Location: LCCOMB_X65_Y37_N2
\SRA641|Mux156~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~200_combout\ = (\SLL641|Mux190~94_combout\ & ((\B[1]~input_o\ & ((\SRA641|Mux90~49_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux156~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~94_combout\,
	datab => \SRA641|Mux156~185_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~49_combout\,
	combout => \SRA641|Mux156~200_combout\);

-- Location: LCCOMB_X65_Y37_N28
\mux1OutUp[54]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[54]~44_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA641|Mux156~200_combout\)))) # (!\B[0]~input_o\ & (\SRA641|Mux156~193_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~193_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~200_combout\,
	combout => \mux1OutUp[54]~44_combout\);

-- Location: LCCOMB_X67_Y38_N30
\SRA641|Mux156~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~201_combout\ = (\SLL641|Mux190~25_combout\ & ((\B[1]~input_o\ & ((\SRA641|Mux90~49_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux90~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~43_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL641|Mux190~25_combout\,
	datad => \SRA641|Mux90~49_combout\,
	combout => \SRA641|Mux156~201_combout\);

-- Location: LCCOMB_X68_Y37_N8
\SRA641|Mux156~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~202_combout\ = (\SRA641|Mux156~201_combout\) # ((\shiftIn[63]~1_combout\ & !\SLL641|Mux190~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \SLL641|Mux190~25_combout\,
	datad => \SRA641|Mux156~201_combout\,
	combout => \SRA641|Mux156~202_combout\);

-- Location: LCCOMB_X65_Y37_N22
\mux1OutUp[54]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[54]~45_combout\ = (\mux1OutUp[54]~44_combout\ & (((\SRA641|Mux156~202_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[54]~44_combout\ & (\SRA641|Mux156~196_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~196_combout\,
	datab => \mux1OutUp[54]~44_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~202_combout\,
	combout => \mux1OutUp[54]~45_combout\);

-- Location: LCCOMB_X65_Y41_N18
\shiftOut~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~302_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\mux1OutUp[54]~45_combout\))) # (!\ExtWord~input_o\ & (\shiftOut~154_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\shiftOut~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \shiftOut~154_combout\,
	datad => \mux1OutUp[54]~45_combout\,
	combout => \shiftOut~302_combout\);

-- Location: LCCOMB_X68_Y37_N18
\SRA641|Mux156~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~206_combout\ = (\SLL641|Mux190~25_combout\ & ((\B[1]~input_o\ & ((\SRA641|Mux90~52_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux90~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux90~46_combout\,
	datac => \SLL641|Mux190~25_combout\,
	datad => \SRA641|Mux90~52_combout\,
	combout => \SRA641|Mux156~206_combout\);

-- Location: LCCOMB_X68_Y37_N20
\mux1OutUp[55]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[55]~46_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA641|Mux156~206_combout\)))) # (!\B[0]~input_o\ & (\SRA641|Mux156~200_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~200_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~206_combout\,
	combout => \mux1OutUp[55]~46_combout\);

-- Location: LCCOMB_X68_Y37_N14
\SRA641|Mux156~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~207_combout\ = (\SRA641|Mux156~206_combout\) # ((\shiftIn[63]~1_combout\ & !\SLL641|Mux190~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datac => \SLL641|Mux190~25_combout\,
	datad => \SRA641|Mux156~206_combout\,
	combout => \SRA641|Mux156~207_combout\);

-- Location: LCCOMB_X68_Y37_N0
\mux1OutUp[55]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[55]~47_combout\ = (\ShiftFN[0]~input_o\ & ((\mux1OutUp[55]~46_combout\ & (\SRA641|Mux156~207_combout\)) # (!\mux1OutUp[55]~46_combout\ & ((\SRA641|Mux156~202_combout\))))) # (!\ShiftFN[0]~input_o\ & (\mux1OutUp[55]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \mux1OutUp[55]~46_combout\,
	datac => \SRA641|Mux156~207_combout\,
	datad => \SRA641|Mux156~202_combout\,
	combout => \mux1OutUp[55]~47_combout\);

-- Location: IOIBUF_X0_Y34_N1
\C[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(23),
	o => \C[23]~input_o\);

-- Location: LCCOMB_X65_Y38_N28
\SRA641|Mux90~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~76_combout\ = (\shiftSig[5]~0_combout\ & ((\B[2]~input_o\ & (\SRA641|Mux19~3_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux19~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~3_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \SRA641|Mux19~1_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA641|Mux90~76_combout\);

-- Location: LCCOMB_X60_Y38_N8
\SRA641|Mux99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux99~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRA641|Mux32~1_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux36~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux32~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux36~1_combout\,
	combout => \SRA641|Mux99~0_combout\);

-- Location: LCCOMB_X60_Y38_N26
\SRA641|Mux99~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux99~1_combout\ = (\SRA641|Mux99~0_combout\) # ((\B[3]~input_o\ & ((\SRA641|Mux90~76_combout\) # (\SRA641|Mux156~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~76_combout\,
	datab => \SRA641|Mux99~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux156~252_combout\,
	combout => \SRA641|Mux99~1_combout\);

-- Location: LCCOMB_X61_Y38_N14
\SRA641|Mux156~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~210_combout\ = (\B[1]~input_o\ & (\SRA641|Mux99~1_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux101~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux99~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux101~1_combout\,
	combout => \SRA641|Mux156~210_combout\);

-- Location: LCCOMB_X61_Y37_N10
\SRA641|Mux156~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~208_combout\ = (\B[3]~input_o\ & (((\B[1]~input_o\)))) # (!\B[3]~input_o\ & ((\B[1]~input_o\ & (\SRA641|Mux90~54_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux90~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux90~54_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~48_combout\,
	combout => \SRA641|Mux156~208_combout\);

-- Location: LCCOMB_X61_Y37_N12
\SRA641|Mux156~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~209_combout\ = (\SRA641|Mux156~208_combout\ & (((\SRA641|Mux90~76_combout\)) # (!\B[3]~input_o\))) # (!\SRA641|Mux156~208_combout\ & (\B[3]~input_o\ & ((\SRA641|Mux90~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~208_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux90~76_combout\,
	datad => \SRA641|Mux90~74_combout\,
	combout => \SRA641|Mux156~209_combout\);

-- Location: LCCOMB_X62_Y38_N6
\shiftOut~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~155_combout\ = (\B[0]~input_o\ & (\ShiftFN[0]~input_o\)) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRA641|Mux156~205_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~204_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA641|Mux156~205_combout\,
	datad => \SRA641|Mux156~204_combout\,
	combout => \shiftOut~155_combout\);

-- Location: LCCOMB_X62_Y38_N24
\shiftOut~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~156_combout\ = (\B[0]~input_o\ & ((\shiftOut~155_combout\ & (\SRA641|Mux156~210_combout\)) # (!\shiftOut~155_combout\ & ((\SRA641|Mux156~209_combout\))))) # (!\B[0]~input_o\ & (((\shiftOut~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~210_combout\,
	datab => \SRA641|Mux156~209_combout\,
	datac => \B[0]~input_o\,
	datad => \shiftOut~155_combout\,
	combout => \shiftOut~156_combout\);

-- Location: LCCOMB_X59_Y42_N4
\SRA641|Mux19~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~23_combout\ = (\B[4]~input_o\ & (\shiftIn[7]~39_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[23]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[7]~39_combout\,
	datad => \shiftIn[23]~38_combout\,
	combout => \SRA641|Mux19~23_combout\);

-- Location: LCCOMB_X59_Y40_N20
\SLL641|Mux104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux104~0_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SRA641|Mux19~19_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux19~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux19~23_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux19~19_combout\,
	combout => \SLL641|Mux104~0_combout\);

-- Location: LCCOMB_X58_Y39_N26
\SLL641|Mux104~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux104~1_combout\ = (\B[3]~input_o\ & ((\SLL641|Mux104~0_combout\ & (\shiftIn[11]~36_combout\)) # (!\SLL641|Mux104~0_combout\ & ((\shiftIn[15]~34_combout\))))) # (!\B[3]~input_o\ & (((\SLL641|Mux104~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[11]~36_combout\,
	datab => \shiftIn[15]~34_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL641|Mux104~0_combout\,
	combout => \SLL641|Mux104~1_combout\);

-- Location: LCCOMB_X62_Y38_N4
\SLL641|Mux190~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~45_combout\ = (\SRA641|Mux86~0_combout\ & ((\B[1]~input_o\ & ((\SLL641|Mux106~1_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux104~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux86~0_combout\,
	datab => \SLL641|Mux104~1_combout\,
	datac => \SLL641|Mux106~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL641|Mux190~45_combout\);

-- Location: LCCOMB_X62_Y38_N10
\shiftOut~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~157_combout\ = (\shiftOut~69_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~69_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~45_combout\))) # (!\shiftOut~70_combout\ & (\shiftOut~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~156_combout\,
	datab => \shiftOut~69_combout\,
	datac => \SLL641|Mux190~45_combout\,
	datad => \shiftOut~70_combout\,
	combout => \shiftOut~157_combout\);

-- Location: LCCOMB_X62_Y38_N20
\shiftOut~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~158_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~157_combout\ & ((\SLL641|Mux190~44_combout\))) # (!\shiftOut~157_combout\ & (\C[23]~input_o\)))) # (!\shiftOut~69_combout\ & (((\shiftOut~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[23]~input_o\,
	datab => \shiftOut~69_combout\,
	datac => \SLL641|Mux190~44_combout\,
	datad => \shiftOut~157_combout\,
	combout => \shiftOut~158_combout\);

-- Location: LCCOMB_X69_Y36_N22
\shiftOut~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~303_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\mux1OutUp[55]~47_combout\)) # (!\ShiftFN[1]~input_o\ & ((\shiftOut~158_combout\))))) # (!\ExtWord~input_o\ & (((\shiftOut~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[55]~47_combout\,
	datab => \shiftOut~158_combout\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \shiftOut~303_combout\);

-- Location: IOIBUF_X115_Y30_N8
\C[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(24),
	o => \C[24]~input_o\);

-- Location: LCCOMB_X58_Y36_N18
\SRA641|Mux19~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~24_combout\ = (\B[4]~input_o\ & ((\shiftIn[8]~63_combout\))) # (!\B[4]~input_o\ & (\shiftIn[24]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[24]~62_combout\,
	datab => \shiftIn[8]~63_combout\,
	datac => \B[4]~input_o\,
	combout => \SRA641|Mux19~24_combout\);

-- Location: LCCOMB_X59_Y36_N20
\SLL641|Mux103~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux103~3_combout\ = (\B[3]~input_o\ & (\SRA641|Mux19~16_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux19~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~16_combout\,
	datab => \SRA641|Mux19~24_combout\,
	datac => \B[3]~input_o\,
	combout => \SLL641|Mux103~3_combout\);

-- Location: LCCOMB_X59_Y36_N26
\SLL641|Mux103~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux103~2_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\shiftIn[12]~58_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux19~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftIn[12]~58_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~20_combout\,
	combout => \SLL641|Mux103~2_combout\);

-- Location: LCCOMB_X59_Y36_N30
\SLL641|Mux103~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux103~4_combout\ = (\SLL641|Mux103~2_combout\) # ((!\B[2]~input_o\ & \SLL641|Mux103~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL641|Mux103~3_combout\,
	datac => \SLL641|Mux103~2_combout\,
	combout => \SLL641|Mux103~4_combout\);

-- Location: LCCOMB_X62_Y38_N30
\SLL641|Mux190~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~46_combout\ = (\SLL641|Mux190~97_combout\ & ((\B[1]~input_o\ & ((\SLL641|Mux105~1_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux103~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux190~97_combout\,
	datac => \SLL641|Mux103~4_combout\,
	datad => \SLL641|Mux105~1_combout\,
	combout => \SLL641|Mux190~46_combout\);

-- Location: LCCOMB_X63_Y39_N22
\SRA641|Mux90~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~77_combout\ = (\shiftSig[5]~0_combout\ & ((\B[2]~input_o\ & (\SRA641|Mux19~9_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux19~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \SRA641|Mux19~9_combout\,
	datad => \SRA641|Mux19~11_combout\,
	combout => \SRA641|Mux90~77_combout\);

-- Location: LCCOMB_X62_Y43_N14
\SRA641|Mux98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux98~0_combout\ = (\B[3]~input_o\ & (((\SRA641|Mux156~252_combout\) # (\SRA641|Mux90~77_combout\)))) # (!\B[3]~input_o\ & (\SRA641|Mux90~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~58_combout\,
	datab => \SRA641|Mux156~252_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~77_combout\,
	combout => \SRA641|Mux98~0_combout\);

-- Location: LCCOMB_X65_Y40_N26
\SRA641|Mux156~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~216_combout\ = (\B[1]~input_o\ & (\SRA641|Mux98~0_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux100~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux98~0_combout\,
	datab => \B[1]~input_o\,
	datad => \SRA641|Mux100~1_combout\,
	combout => \SRA641|Mux156~216_combout\);

-- Location: LCCOMB_X63_Y41_N4
\SRA641|Mux156~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~214_combout\ = (\B[3]~input_o\ & (((\B[1]~input_o\)))) # (!\B[3]~input_o\ & ((\B[1]~input_o\ & ((\SRA641|Mux90~57_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux90~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~51_combout\,
	datab => \SRA641|Mux90~57_combout\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~214_combout\);

-- Location: LCCOMB_X65_Y40_N0
\SRA641|Mux156~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~215_combout\ = (\SRA641|Mux156~214_combout\ & (((\SRA641|Mux90~77_combout\) # (!\B[3]~input_o\)))) # (!\SRA641|Mux156~214_combout\ & (\SRA641|Mux90~75_combout\ & ((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~214_combout\,
	datab => \SRA641|Mux90~75_combout\,
	datac => \SRA641|Mux90~77_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA641|Mux156~215_combout\);

-- Location: LCCOMB_X62_Y38_N16
\shiftOut~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~159_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~210_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA641|Mux156~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~209_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~210_combout\,
	combout => \shiftOut~159_combout\);

-- Location: LCCOMB_X62_Y38_N18
\shiftOut~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~160_combout\ = (\B[0]~input_o\ & ((\shiftOut~159_combout\ & (\SRA641|Mux156~216_combout\)) # (!\shiftOut~159_combout\ & ((\SRA641|Mux156~215_combout\))))) # (!\B[0]~input_o\ & (((\shiftOut~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~216_combout\,
	datab => \SRA641|Mux156~215_combout\,
	datac => \B[0]~input_o\,
	datad => \shiftOut~159_combout\,
	combout => \shiftOut~160_combout\);

-- Location: LCCOMB_X62_Y38_N28
\shiftOut~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~161_combout\ = (\shiftOut~70_combout\ & ((\SLL641|Mux190~46_combout\) # ((\shiftOut~69_combout\)))) # (!\shiftOut~70_combout\ & (((!\shiftOut~69_combout\ & \shiftOut~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~46_combout\,
	datab => \shiftOut~70_combout\,
	datac => \shiftOut~69_combout\,
	datad => \shiftOut~160_combout\,
	combout => \shiftOut~161_combout\);

-- Location: LCCOMB_X62_Y38_N22
\shiftOut~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~162_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~161_combout\ & ((\SLL641|Mux190~45_combout\))) # (!\shiftOut~161_combout\ & (\C[24]~input_o\)))) # (!\shiftOut~69_combout\ & (((\shiftOut~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[24]~input_o\,
	datab => \shiftOut~69_combout\,
	datac => \SLL641|Mux190~45_combout\,
	datad => \shiftOut~161_combout\,
	combout => \shiftOut~162_combout\);

-- Location: LCCOMB_X68_Y37_N10
\SRA641|Mux156~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~211_combout\ = (\SLL641|Mux190~25_combout\ & ((\B[1]~input_o\ & ((\SRA641|Mux90~55_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux90~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~49_combout\,
	datab => \SLL641|Mux190~25_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~55_combout\,
	combout => \SRA641|Mux156~211_combout\);

-- Location: LCCOMB_X68_Y37_N28
\mux1OutUp[56]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[56]~48_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA641|Mux156~211_combout\)))) # (!\B[0]~input_o\ & (\SRA641|Mux156~206_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~206_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~211_combout\,
	combout => \mux1OutUp[56]~48_combout\);

-- Location: LCCOMB_X68_Y37_N6
\SRA641|Mux156~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~212_combout\ = (!\SLL641|Mux190~93_combout\ & ((\B[1]~input_o\ & (\shiftIn[59]~21_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux90~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~93_combout\,
	datab => \shiftIn[59]~21_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~49_combout\,
	combout => \SRA641|Mux156~212_combout\);

-- Location: LCCOMB_X68_Y37_N16
\SRA641|Mux156~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~213_combout\ = (\SRA641|Mux156~212_combout\) # ((\SLL641|Mux190~93_combout\ & \shiftIn[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~93_combout\,
	datac => \shiftIn[63]~1_combout\,
	datad => \SRA641|Mux156~212_combout\,
	combout => \SRA641|Mux156~213_combout\);

-- Location: LCCOMB_X68_Y37_N2
\mux1OutUp[56]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[56]~49_combout\ = (\ShiftFN[0]~input_o\ & ((\mux1OutUp[56]~48_combout\ & ((\SRA641|Mux156~213_combout\))) # (!\mux1OutUp[56]~48_combout\ & (\SRA641|Mux156~207_combout\)))) # (!\ShiftFN[0]~input_o\ & (\mux1OutUp[56]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \mux1OutUp[56]~48_combout\,
	datac => \SRA641|Mux156~207_combout\,
	datad => \SRA641|Mux156~213_combout\,
	combout => \mux1OutUp[56]~49_combout\);

-- Location: LCCOMB_X65_Y41_N20
\shiftOut~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~304_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\mux1OutUp[56]~49_combout\))) # (!\ExtWord~input_o\ & (\shiftOut~162_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\shiftOut~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \shiftOut~162_combout\,
	datad => \mux1OutUp[56]~49_combout\,
	combout => \shiftOut~304_combout\);

-- Location: IOIBUF_X62_Y0_N22
\C[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(25),
	o => \C[25]~input_o\);

-- Location: LCCOMB_X69_Y39_N30
\SLL641|Mux102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux102~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\shiftIn[13]~46_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux19~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[13]~46_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~21_combout\,
	combout => \SLL641|Mux102~0_combout\);

-- Location: LCCOMB_X70_Y38_N26
\SRA641|Mux19~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~25_combout\ = (\B[4]~input_o\ & (\shiftIn[9]~48_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[25]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[9]~48_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[25]~47_combout\,
	combout => \SRA641|Mux19~25_combout\);

-- Location: LCCOMB_X69_Y39_N24
\SLL641|Mux102~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux102~1_combout\ = (\B[3]~input_o\ & ((\SRA641|Mux19~17_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~25_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~17_combout\,
	combout => \SLL641|Mux102~1_combout\);

-- Location: LCCOMB_X69_Y39_N26
\SLL641|Mux102~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux102~2_combout\ = (\SLL641|Mux102~0_combout\) # ((!\B[2]~input_o\ & \SLL641|Mux102~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux102~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux102~1_combout\,
	combout => \SLL641|Mux102~2_combout\);

-- Location: LCCOMB_X62_Y38_N0
\SLL641|Mux190~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~47_combout\ = (\SLL641|Mux190~97_combout\ & ((\B[1]~input_o\ & (\SLL641|Mux104~1_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux102~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux190~97_combout\,
	datac => \SLL641|Mux104~1_combout\,
	datad => \SLL641|Mux102~2_combout\,
	combout => \SLL641|Mux190~47_combout\);

-- Location: LCCOMB_X62_Y36_N24
\SRA641|Mux90~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~78_combout\ = (\shiftSig[5]~0_combout\ & ((\B[2]~input_o\ & (\SRA641|Mux19~7_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux19~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \SRA641|Mux19~7_combout\,
	datad => \SRA641|Mux19~4_combout\,
	combout => \SRA641|Mux90~78_combout\);

-- Location: LCCOMB_X60_Y38_N28
\SRA641|Mux97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux97~0_combout\ = (\B[3]~input_o\ & (((\SRA641|Mux156~252_combout\) # (\SRA641|Mux90~78_combout\)))) # (!\B[3]~input_o\ & (\SRA641|Mux90~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux90~62_combout\,
	datac => \SRA641|Mux156~252_combout\,
	datad => \SRA641|Mux90~78_combout\,
	combout => \SRA641|Mux97~0_combout\);

-- Location: LCCOMB_X60_Y38_N6
\SRA641|Mux156~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~221_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux97~0_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux99~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux99~1_combout\,
	datab => \SRA641|Mux97~0_combout\,
	datac => \B[1]~input_o\,
	combout => \SRA641|Mux156~221_combout\);

-- Location: LCCOMB_X62_Y38_N26
\shiftOut~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~163_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & (\SRA641|Mux156~216_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~215_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~216_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~215_combout\,
	combout => \shiftOut~163_combout\);

-- Location: LCCOMB_X61_Y37_N22
\SRA641|Mux156~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~219_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux90~61_combout\) # ((\B[3]~input_o\)))) # (!\B[1]~input_o\ & (((\SRA641|Mux90~54_combout\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux90~61_combout\,
	datac => \SRA641|Mux90~54_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA641|Mux156~219_combout\);

-- Location: LCCOMB_X63_Y38_N12
\SRA641|Mux156~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~220_combout\ = (\B[3]~input_o\ & ((\SRA641|Mux156~219_combout\ & ((\SRA641|Mux90~78_combout\))) # (!\SRA641|Mux156~219_combout\ & (\SRA641|Mux90~76_combout\)))) # (!\B[3]~input_o\ & (((\SRA641|Mux156~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~76_combout\,
	datab => \SRA641|Mux90~78_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux156~219_combout\,
	combout => \SRA641|Mux156~220_combout\);

-- Location: LCCOMB_X63_Y38_N22
\shiftOut~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~164_combout\ = (\B[0]~input_o\ & ((\shiftOut~163_combout\ & (\SRA641|Mux156~221_combout\)) # (!\shiftOut~163_combout\ & ((\SRA641|Mux156~220_combout\))))) # (!\B[0]~input_o\ & (((\shiftOut~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~221_combout\,
	datab => \B[0]~input_o\,
	datac => \shiftOut~163_combout\,
	datad => \SRA641|Mux156~220_combout\,
	combout => \shiftOut~164_combout\);

-- Location: LCCOMB_X62_Y38_N12
\shiftOut~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~165_combout\ = (\shiftOut~70_combout\ & ((\SLL641|Mux190~47_combout\) # ((\shiftOut~69_combout\)))) # (!\shiftOut~70_combout\ & (((!\shiftOut~69_combout\ & \shiftOut~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~47_combout\,
	datab => \shiftOut~70_combout\,
	datac => \shiftOut~69_combout\,
	datad => \shiftOut~164_combout\,
	combout => \shiftOut~165_combout\);

-- Location: LCCOMB_X62_Y38_N14
\shiftOut~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~166_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~165_combout\ & (\SLL641|Mux190~46_combout\)) # (!\shiftOut~165_combout\ & ((\C[25]~input_o\))))) # (!\shiftOut~69_combout\ & (((\shiftOut~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~46_combout\,
	datab => \C[25]~input_o\,
	datac => \shiftOut~69_combout\,
	datad => \shiftOut~165_combout\,
	combout => \shiftOut~166_combout\);

-- Location: LCCOMB_X68_Y37_N4
\SRA641|Mux156~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~217_combout\ = (!\SLL641|Mux190~93_combout\ & ((\B[1]~input_o\ & (\shiftIn[60]~14_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux90~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[60]~14_combout\,
	datab => \SRA641|Mux90~52_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux190~93_combout\,
	combout => \SRA641|Mux156~217_combout\);

-- Location: LCCOMB_X68_Y37_N30
\mux1OutUp[57]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[57]~50_combout\ = (\B[0]~input_o\ & ((\SRA641|Mux156~217_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((!\ShiftFN[0]~input_o\ & \SRA641|Mux156~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~217_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~211_combout\,
	combout => \mux1OutUp[57]~50_combout\);

-- Location: LCCOMB_X68_Y37_N24
\SRA641|Mux156~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~218_combout\ = (\SRA641|Mux156~217_combout\) # ((\SLL641|Mux190~93_combout\ & \shiftIn[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~93_combout\,
	datab => \SRA641|Mux156~217_combout\,
	datac => \shiftIn[63]~1_combout\,
	combout => \SRA641|Mux156~218_combout\);

-- Location: LCCOMB_X68_Y37_N26
\mux1OutUp[57]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[57]~51_combout\ = (\mux1OutUp[57]~50_combout\ & (((\SRA641|Mux156~218_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[57]~50_combout\ & (\SRA641|Mux156~213_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[57]~50_combout\,
	datab => \SRA641|Mux156~213_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~218_combout\,
	combout => \mux1OutUp[57]~51_combout\);

-- Location: LCCOMB_X63_Y38_N28
\shiftOut~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~305_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\mux1OutUp[57]~51_combout\))) # (!\ShiftFN[1]~input_o\ & (\shiftOut~166_combout\)))) # (!\ExtWord~input_o\ & (\shiftOut~166_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~166_combout\,
	datab => \ExtWord~input_o\,
	datac => \mux1OutUp[57]~51_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \shiftOut~305_combout\);

-- Location: IOIBUF_X87_Y73_N8
\C[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(26),
	o => \C[26]~input_o\);

-- Location: LCCOMB_X58_Y37_N10
\SLL641|Mux101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux101~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\shiftIn[14]~50_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~22_combout\,
	datab => \B[3]~input_o\,
	datac => \shiftIn[14]~50_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL641|Mux101~0_combout\);

-- Location: LCCOMB_X59_Y38_N18
\SRA641|Mux19~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~26_combout\ = (\B[4]~input_o\ & ((\shiftIn[10]~52_combout\))) # (!\B[4]~input_o\ & (\shiftIn[26]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \shiftIn[26]~51_combout\,
	datad => \shiftIn[10]~52_combout\,
	combout => \SRA641|Mux19~26_combout\);

-- Location: LCCOMB_X58_Y37_N20
\SLL641|Mux101~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux101~1_combout\ = (\B[3]~input_o\ & (\SRA641|Mux19~18_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux19~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux19~18_combout\,
	datad => \SRA641|Mux19~26_combout\,
	combout => \SLL641|Mux101~1_combout\);

-- Location: LCCOMB_X58_Y37_N6
\SLL641|Mux101~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux101~2_combout\ = (\SLL641|Mux101~0_combout\) # ((!\B[2]~input_o\ & \SLL641|Mux101~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux101~0_combout\,
	datab => \B[2]~input_o\,
	datad => \SLL641|Mux101~1_combout\,
	combout => \SLL641|Mux101~2_combout\);

-- Location: LCCOMB_X58_Y40_N18
\SLL641|Mux103~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux103~5_combout\ = (\B[2]~input_o\ & (\SRA641|Mux86~0_combout\)) # (!\B[2]~input_o\ & (((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux86~0_combout\,
	datab => \B[2]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SLL641|Mux103~5_combout\);

-- Location: LCCOMB_X63_Y36_N0
\SLL641|Mux190~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~48_combout\ = (\SLL641|Mux103~5_combout\ & ((\B[1]~input_o\ & (\SLL641|Mux103~4_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux101~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux103~4_combout\,
	datab => \SLL641|Mux101~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux103~5_combout\,
	combout => \SLL641|Mux190~48_combout\);

-- Location: LCCOMB_X63_Y41_N22
\SRA641|Mux156~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~225_combout\ = (\B[3]~input_o\ & (((\B[1]~input_o\)))) # (!\B[3]~input_o\ & ((\B[1]~input_o\ & (\SRA641|Mux90~65_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux90~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~65_combout\,
	datab => \SRA641|Mux90~57_combout\,
	datac => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~225_combout\);

-- Location: LCCOMB_X66_Y36_N0
\SRA641|Mux90~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~79_combout\ = (\shiftSig[5]~0_combout\ & ((\B[2]~input_o\ & ((\SRA641|Mux19~12_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux19~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \SRA641|Mux19~15_combout\,
	datad => \SRA641|Mux19~12_combout\,
	combout => \SRA641|Mux90~79_combout\);

-- Location: LCCOMB_X65_Y40_N28
\SRA641|Mux156~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~226_combout\ = (\SRA641|Mux156~225_combout\ & (((\SRA641|Mux90~79_combout\) # (!\B[3]~input_o\)))) # (!\SRA641|Mux156~225_combout\ & (\SRA641|Mux90~77_combout\ & ((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~225_combout\,
	datab => \SRA641|Mux90~77_combout\,
	datac => \SRA641|Mux90~79_combout\,
	datad => \B[3]~input_o\,
	combout => \SRA641|Mux156~226_combout\);

-- Location: LCCOMB_X65_Y40_N6
\SRA641|Mux96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux96~0_combout\ = (\B[3]~input_o\ & ((\SRA641|Mux90~79_combout\) # ((\SRA641|Mux156~252_combout\)))) # (!\B[3]~input_o\ & (((\SRA641|Mux90~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux90~79_combout\,
	datac => \SRA641|Mux156~252_combout\,
	datad => \SRA641|Mux90~66_combout\,
	combout => \SRA641|Mux96~0_combout\);

-- Location: LCCOMB_X65_Y40_N8
\SRA641|Mux156~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~227_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux96~0_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux98~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux98~0_combout\,
	datab => \B[1]~input_o\,
	datad => \SRA641|Mux96~0_combout\,
	combout => \SRA641|Mux156~227_combout\);

-- Location: LCCOMB_X63_Y38_N24
\shiftOut~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~167_combout\ = (\ShiftFN[0]~input_o\ & ((\B[0]~input_o\) # ((\SRA641|Mux156~221_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\B[0]~input_o\ & ((\SRA641|Mux156~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~221_combout\,
	datad => \SRA641|Mux156~220_combout\,
	combout => \shiftOut~167_combout\);

-- Location: LCCOMB_X63_Y38_N2
\shiftOut~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~168_combout\ = (\B[0]~input_o\ & ((\shiftOut~167_combout\ & ((\SRA641|Mux156~227_combout\))) # (!\shiftOut~167_combout\ & (\SRA641|Mux156~226_combout\)))) # (!\B[0]~input_o\ & (((\shiftOut~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~226_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~227_combout\,
	datad => \shiftOut~167_combout\,
	combout => \shiftOut~168_combout\);

-- Location: LCCOMB_X63_Y38_N20
\shiftOut~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~169_combout\ = (\shiftOut~69_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~69_combout\ & ((\shiftOut~70_combout\ & (\SLL641|Mux190~48_combout\)) # (!\shiftOut~70_combout\ & ((\shiftOut~168_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~48_combout\,
	datab => \shiftOut~69_combout\,
	datac => \shiftOut~70_combout\,
	datad => \shiftOut~168_combout\,
	combout => \shiftOut~169_combout\);

-- Location: LCCOMB_X63_Y38_N14
\shiftOut~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~170_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~169_combout\ & (\SLL641|Mux190~47_combout\)) # (!\shiftOut~169_combout\ & ((\C[26]~input_o\))))) # (!\shiftOut~69_combout\ & (((\shiftOut~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~47_combout\,
	datab => \shiftOut~69_combout\,
	datac => \C[26]~input_o\,
	datad => \shiftOut~169_combout\,
	combout => \shiftOut~170_combout\);

-- Location: LCCOMB_X68_Y37_N12
\SRA641|Mux156~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~222_combout\ = (!\SLL641|Mux190~93_combout\ & ((\B[1]~input_o\ & (\shiftIn[61]~29_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux90~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~93_combout\,
	datab => \shiftIn[61]~29_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~55_combout\,
	combout => \SRA641|Mux156~222_combout\);

-- Location: LCCOMB_X68_Y37_N22
\mux1OutUp[58]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[58]~52_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\) # (\SRA641|Mux156~222_combout\)))) # (!\B[0]~input_o\ & (\SRA641|Mux156~217_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~217_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux156~222_combout\,
	combout => \mux1OutUp[58]~52_combout\);

-- Location: LCCOMB_X67_Y37_N20
\SRA641|Mux156~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~223_combout\ = (\B[1]~input_o\ & ((\shiftIn[61]~29_combout\))) # (!\B[1]~input_o\ & (\shiftIn[59]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[59]~21_combout\,
	datab => \B[1]~input_o\,
	datad => \shiftIn[61]~29_combout\,
	combout => \SRA641|Mux156~223_combout\);

-- Location: LCCOMB_X67_Y37_N14
\SRA641|Mux156~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~224_combout\ = (\SLL641|Mux127~4_combout\ & (\shiftIn[63]~1_combout\)) # (!\SLL641|Mux127~4_combout\ & ((\SRA641|Mux156~223_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[63]~1_combout\,
	datac => \SLL641|Mux127~4_combout\,
	datad => \SRA641|Mux156~223_combout\,
	combout => \SRA641|Mux156~224_combout\);

-- Location: LCCOMB_X67_Y37_N24
\mux1OutUp[58]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[58]~53_combout\ = (\mux1OutUp[58]~52_combout\ & (((\SRA641|Mux156~224_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[58]~52_combout\ & (\SRA641|Mux156~218_combout\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[58]~52_combout\,
	datab => \SRA641|Mux156~218_combout\,
	datac => \SRA641|Mux156~224_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \mux1OutUp[58]~53_combout\);

-- Location: LCCOMB_X67_Y37_N18
\shiftOut~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~306_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\mux1OutUp[58]~53_combout\))) # (!\ExtWord~input_o\ & (\shiftOut~170_combout\)))) # (!\ShiftFN[1]~input_o\ & (\shiftOut~170_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~170_combout\,
	datab => \mux1OutUp[58]~53_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \shiftOut~306_combout\);

-- Location: IOIBUF_X115_Y46_N8
\C[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(27),
	o => \C[27]~input_o\);

-- Location: LCCOMB_X65_Y38_N30
\SRA641|Mux90~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux90~80_combout\ = (\shiftSig[5]~0_combout\ & ((\B[2]~input_o\ & ((\SRA641|Mux19~0_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~3_combout\,
	datab => \SRA641|Mux19~0_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRA641|Mux90~80_combout\);

-- Location: LCCOMB_X62_Y36_N2
\SRA641|Mux156~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~230_combout\ = (\B[3]~input_o\ & (((\B[1]~input_o\)))) # (!\B[3]~input_o\ & ((\B[1]~input_o\ & (\SRA641|Mux90~68_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux90~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~68_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~61_combout\,
	combout => \SRA641|Mux156~230_combout\);

-- Location: LCCOMB_X62_Y36_N4
\SRA641|Mux156~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~231_combout\ = (\SRA641|Mux156~230_combout\ & ((\SRA641|Mux90~80_combout\) # ((!\B[3]~input_o\)))) # (!\SRA641|Mux156~230_combout\ & (((\B[3]~input_o\ & \SRA641|Mux90~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~80_combout\,
	datab => \SRA641|Mux156~230_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~78_combout\,
	combout => \SRA641|Mux156~231_combout\);

-- Location: LCCOMB_X60_Y38_N16
\SRA641|Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux95~0_combout\ = (\B[3]~input_o\ & ((\SRA641|Mux90~80_combout\) # ((\SRA641|Mux156~252_combout\)))) # (!\B[3]~input_o\ & (((\SRA641|Mux90~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux90~80_combout\,
	datac => \SRA641|Mux90~85_combout\,
	datad => \SRA641|Mux156~252_combout\,
	combout => \SRA641|Mux95~0_combout\);

-- Location: LCCOMB_X60_Y38_N2
\SRA641|Mux156~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~232_combout\ = (\B[1]~input_o\ & (\SRA641|Mux95~0_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux97~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux95~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux97~0_combout\,
	combout => \SRA641|Mux156~232_combout\);

-- Location: LCCOMB_X63_Y38_N16
\shiftOut~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~171_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~227_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA641|Mux156~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~226_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~227_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \shiftOut~171_combout\);

-- Location: LCCOMB_X63_Y38_N10
\shiftOut~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~172_combout\ = (\B[0]~input_o\ & ((\shiftOut~171_combout\ & ((\SRA641|Mux156~232_combout\))) # (!\shiftOut~171_combout\ & (\SRA641|Mux156~231_combout\)))) # (!\B[0]~input_o\ & (((\shiftOut~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRA641|Mux156~231_combout\,
	datac => \SRA641|Mux156~232_combout\,
	datad => \shiftOut~171_combout\,
	combout => \shiftOut~172_combout\);

-- Location: LCCOMB_X58_Y39_N28
\SRA641|Mux19~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~27_combout\ = (\B[4]~input_o\ & (\shiftIn[11]~36_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[27]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \shiftIn[11]~36_combout\,
	datad => \shiftIn[27]~35_combout\,
	combout => \SRA641|Mux19~27_combout\);

-- Location: LCCOMB_X59_Y40_N6
\SLL641|Mux100~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux100~1_combout\ = (\B[3]~input_o\ & ((\SRA641|Mux19~19_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRA641|Mux19~27_combout\,
	datad => \SRA641|Mux19~19_combout\,
	combout => \SLL641|Mux100~1_combout\);

-- Location: LCCOMB_X63_Y40_N28
\SLL641|Mux100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux100~0_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\shiftIn[15]~34_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~23_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \shiftIn[15]~34_combout\,
	combout => \SLL641|Mux100~0_combout\);

-- Location: LCCOMB_X59_Y40_N24
\SLL641|Mux100~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux100~2_combout\ = (\SLL641|Mux100~0_combout\) # ((\SLL641|Mux100~1_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux100~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux100~0_combout\,
	combout => \SLL641|Mux100~2_combout\);

-- Location: LCCOMB_X63_Y36_N2
\SLL641|Mux190~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~49_combout\ = (\SLL641|Mux103~5_combout\ & ((\B[1]~input_o\ & (\SLL641|Mux102~2_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux100~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux103~5_combout\,
	datab => \SLL641|Mux102~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux100~2_combout\,
	combout => \SLL641|Mux190~49_combout\);

-- Location: LCCOMB_X63_Y38_N4
\shiftOut~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~173_combout\ = (\shiftOut~69_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~69_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~49_combout\))) # (!\shiftOut~70_combout\ & (\shiftOut~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~172_combout\,
	datab => \shiftOut~69_combout\,
	datac => \shiftOut~70_combout\,
	datad => \SLL641|Mux190~49_combout\,
	combout => \shiftOut~173_combout\);

-- Location: LCCOMB_X63_Y38_N6
\shiftOut~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~174_combout\ = (\shiftOut~69_combout\ & ((\shiftOut~173_combout\ & ((\SLL641|Mux190~48_combout\))) # (!\shiftOut~173_combout\ & (\C[27]~input_o\)))) # (!\shiftOut~69_combout\ & (((\shiftOut~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[27]~input_o\,
	datab => \shiftOut~69_combout\,
	datac => \shiftOut~173_combout\,
	datad => \SLL641|Mux190~48_combout\,
	combout => \shiftOut~174_combout\);

-- Location: LCCOMB_X67_Y40_N4
\SRA641|Mux156~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~228_combout\ = (!\SLL641|Mux127~4_combout\ & ((\B[1]~input_o\ & ((\shiftIn[62]~6_combout\))) # (!\B[1]~input_o\ & (\shiftIn[60]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[60]~14_combout\,
	datab => \shiftIn[62]~6_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux127~4_combout\,
	combout => \SRA641|Mux156~228_combout\);

-- Location: LCCOMB_X67_Y37_N12
\SRA641|Mux156~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~229_combout\ = (\SRA641|Mux156~228_combout\) # ((\shiftIn[63]~1_combout\ & \SLL641|Mux127~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~228_combout\,
	datab => \shiftIn[63]~1_combout\,
	datac => \SLL641|Mux127~4_combout\,
	combout => \SRA641|Mux156~229_combout\);

-- Location: LCCOMB_X67_Y37_N2
\mux1OutUp[59]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[59]~54_combout\ = (\B[0]~input_o\ & ((\SRA641|Mux156~228_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((\SRA641|Mux156~222_combout\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~228_combout\,
	datab => \SRA641|Mux156~222_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \mux1OutUp[59]~54_combout\);

-- Location: LCCOMB_X67_Y37_N30
\mux1OutUp[59]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[59]~55_combout\ = (\ShiftFN[0]~input_o\ & ((\mux1OutUp[59]~54_combout\ & (\SRA641|Mux156~229_combout\)) # (!\mux1OutUp[59]~54_combout\ & ((\SRA641|Mux156~224_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\mux1OutUp[59]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~229_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA641|Mux156~224_combout\,
	datad => \mux1OutUp[59]~54_combout\,
	combout => \mux1OutUp[59]~55_combout\);

-- Location: LCCOMB_X63_Y38_N30
\shiftOut~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~307_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\mux1OutUp[59]~55_combout\))) # (!\ShiftFN[1]~input_o\ & (\shiftOut~174_combout\)))) # (!\ExtWord~input_o\ & (\shiftOut~174_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~174_combout\,
	datab => \ExtWord~input_o\,
	datac => \mux1OutUp[59]~55_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \shiftOut~307_combout\);

-- Location: LCCOMB_X58_Y38_N16
\SRA641|Mux156~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~234_combout\ = (!\B[1]~input_o\ & (!\B[3]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \SRA641|Mux156~234_combout\);

-- Location: LCCOMB_X58_Y38_N26
\SRA641|Mux156~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~235_combout\ = (\SRA641|Mux156~234_combout\ & ((\SRL641|Mux47~0_combout\ & ((\shiftIn[61]~29_combout\))) # (!\SRL641|Mux47~0_combout\ & (\shiftIn[63]~1_combout\)))) # (!\SRA641|Mux156~234_combout\ & (\shiftIn[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \SRA641|Mux156~234_combout\,
	datac => \SRL641|Mux47~0_combout\,
	datad => \shiftIn[61]~29_combout\,
	combout => \SRA641|Mux156~235_combout\);

-- Location: LCCOMB_X67_Y37_N16
\SRA641|Mux156~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~233_combout\ = (!\SLL641|Mux127~4_combout\ & ((\B[1]~input_o\ & ((\shiftIn[63]~1_combout\))) # (!\B[1]~input_o\ & (\shiftIn[61]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[61]~29_combout\,
	datab => \shiftIn[63]~1_combout\,
	datac => \SLL641|Mux127~4_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~233_combout\);

-- Location: LCCOMB_X67_Y37_N26
\mux1OutUp[60]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[60]~56_combout\ = (\B[0]~input_o\ & (((\SRA641|Mux156~233_combout\) # (\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (\SRA641|Mux156~228_combout\ & ((!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~228_combout\,
	datab => \SRA641|Mux156~233_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \mux1OutUp[60]~56_combout\);

-- Location: LCCOMB_X67_Y37_N28
\mux1OutUp[60]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[60]~57_combout\ = (\mux1OutUp[60]~56_combout\ & (((\SRA641|Mux156~235_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\mux1OutUp[60]~56_combout\ & (\SRA641|Mux156~229_combout\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~229_combout\,
	datab => \SRA641|Mux156~235_combout\,
	datac => \mux1OutUp[60]~56_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \mux1OutUp[60]~57_combout\);

-- Location: IOIBUF_X65_Y0_N1
\C[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(28),
	o => \C[28]~input_o\);

-- Location: LCCOMB_X58_Y40_N10
\SLL641|Mux190~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~50_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux123~0_combout\) # ((\SRA641|Mux86~0_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux86~0_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux123~0_combout\,
	combout => \SLL641|Mux190~50_combout\);

-- Location: LCCOMB_X60_Y37_N2
\SRA641|Mux19~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~28_combout\ = (\B[4]~input_o\ & (\shiftIn[12]~58_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[28]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \shiftIn[12]~58_combout\,
	datad => \shiftIn[28]~57_combout\,
	combout => \SRA641|Mux19~28_combout\);

-- Location: LCCOMB_X59_Y36_N8
\SLL641|Mux99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux99~0_combout\ = (\B[3]~input_o\ & ((\SRA641|Mux19~20_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~28_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~20_combout\,
	combout => \SLL641|Mux99~0_combout\);

-- Location: LCCOMB_X59_Y36_N10
\SLL641|Mux99~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux99~1_combout\ = (\B[2]~input_o\ & (\SLL641|Mux103~3_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux99~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL641|Mux103~3_combout\,
	datac => \SLL641|Mux99~0_combout\,
	combout => \SLL641|Mux99~1_combout\);

-- Location: LCCOMB_X63_Y39_N16
\SRA641|Mux156~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~236_combout\ = (!\B[1]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SRA641|Mux156~236_combout\);

-- Location: LCCOMB_X63_Y36_N28
\SLL641|Mux190~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~51_combout\ = (\SLL641|Mux190~50_combout\ & ((\SLL641|Mux101~2_combout\) # ((\SLL641|Mux99~1_combout\ & \SRA641|Mux156~236_combout\)))) # (!\SLL641|Mux190~50_combout\ & (((\SLL641|Mux99~1_combout\ & \SRA641|Mux156~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~50_combout\,
	datab => \SLL641|Mux101~2_combout\,
	datac => \SLL641|Mux99~1_combout\,
	datad => \SRA641|Mux156~236_combout\,
	combout => \SLL641|Mux190~51_combout\);

-- Location: LCCOMB_X63_Y39_N28
\SRA641|Mux156~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~238_combout\ = (\B[1]~input_o\ & (((\SRA641|Mux90~23_combout\ & \shiftSig[5]~0_combout\)))) # (!\B[1]~input_o\ & (\SRA641|Mux90~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~79_combout\,
	datab => \SRA641|Mux90~23_combout\,
	datac => \B[1]~input_o\,
	datad => \shiftSig[5]~0_combout\,
	combout => \SRA641|Mux156~238_combout\);

-- Location: LCCOMB_X63_Y39_N18
\SRA641|Mux156~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~237_combout\ = (!\B[3]~input_o\ & ((\B[1]~input_o\ & ((\SRA641|Mux90~71_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux90~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~65_combout\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~71_combout\,
	combout => \SRA641|Mux156~237_combout\);

-- Location: LCCOMB_X63_Y39_N14
\SRA641|Mux156~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~239_combout\ = (\SRA641|Mux156~237_combout\) # ((\SRA641|Mux156~238_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux156~238_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux156~237_combout\,
	combout => \SRA641|Mux156~239_combout\);

-- Location: LCCOMB_X63_Y39_N0
\SRA641|Mux156~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~240_combout\ = (\B[3]~input_o\ & (\SRA641|Mux90~23_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux90~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux90~23_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~73_combout\,
	combout => \SRA641|Mux156~240_combout\);

-- Location: LCCOMB_X65_Y40_N10
\SRA641|Mux156~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~241_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux156~252_combout\) # ((\SRA641|Mux156~240_combout\ & \shiftSig[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~240_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \SRA641|Mux156~252_combout\,
	datad => \B[1]~input_o\,
	combout => \SRA641|Mux156~241_combout\);

-- Location: LCCOMB_X65_Y40_N20
\SRA641|Mux156~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~242_combout\ = (\SRA641|Mux156~241_combout\) # ((!\B[1]~input_o\ & \SRA641|Mux96~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~241_combout\,
	datab => \B[1]~input_o\,
	datad => \SRA641|Mux96~0_combout\,
	combout => \SRA641|Mux156~242_combout\);

-- Location: LCCOMB_X63_Y38_N8
\shiftOut~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~175_combout\ = (\ShiftFN[0]~input_o\ & ((\B[0]~input_o\) # ((\SRA641|Mux156~232_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\B[0]~input_o\ & ((\SRA641|Mux156~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~232_combout\,
	datad => \SRA641|Mux156~231_combout\,
	combout => \shiftOut~175_combout\);

-- Location: LCCOMB_X63_Y36_N6
\shiftOut~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~176_combout\ = (\B[0]~input_o\ & ((\shiftOut~175_combout\ & ((\SRA641|Mux156~242_combout\))) # (!\shiftOut~175_combout\ & (\SRA641|Mux156~239_combout\)))) # (!\B[0]~input_o\ & (((\shiftOut~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~239_combout\,
	datab => \SRA641|Mux156~242_combout\,
	datac => \B[0]~input_o\,
	datad => \shiftOut~175_combout\,
	combout => \shiftOut~176_combout\);

-- Location: LCCOMB_X63_Y36_N16
\shiftOut~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~177_combout\ = (\shiftOut~70_combout\ & ((\SLL641|Mux190~51_combout\) # ((\shiftOut~69_combout\)))) # (!\shiftOut~70_combout\ & (((!\shiftOut~69_combout\ & \shiftOut~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \SLL641|Mux190~51_combout\,
	datac => \shiftOut~69_combout\,
	datad => \shiftOut~176_combout\,
	combout => \shiftOut~177_combout\);

-- Location: LCCOMB_X63_Y36_N18
\shiftOut~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~178_combout\ = (\shiftOut~177_combout\ & (((\SLL641|Mux190~49_combout\) # (!\shiftOut~69_combout\)))) # (!\shiftOut~177_combout\ & (\C[28]~input_o\ & (\shiftOut~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[28]~input_o\,
	datab => \shiftOut~177_combout\,
	datac => \shiftOut~69_combout\,
	datad => \SLL641|Mux190~49_combout\,
	combout => \shiftOut~178_combout\);

-- Location: LCCOMB_X63_Y36_N4
\shiftOut~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~308_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\mux1OutUp[60]~57_combout\)) # (!\ExtWord~input_o\ & ((\shiftOut~178_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\shiftOut~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \mux1OutUp[60]~57_combout\,
	datad => \shiftOut~178_combout\,
	combout => \shiftOut~308_combout\);

-- Location: IOIBUF_X115_Y28_N1
\C[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(29),
	o => \C[29]~input_o\);

-- Location: LCCOMB_X62_Y36_N30
\SRA641|Mux156~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~268_combout\ = (\B[5]~input_o\ & (\ExtWord~input_o\ & ((\SRL641|Mux95~0_combout\) # (\SRL641|Mux95~1_combout\)))) # (!\B[5]~input_o\ & ((\SRL641|Mux95~0_combout\) # ((\SRL641|Mux95~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SRL641|Mux95~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRL641|Mux95~1_combout\,
	combout => \SRA641|Mux156~268_combout\);

-- Location: LCCOMB_X65_Y36_N10
\SRA641|Mux156~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~248_combout\ = (\B[1]~input_o\ & ((\SRA641|Mux156~252_combout\) # ((\SRA641|Mux156~268_combout\)))) # (!\B[1]~input_o\ & (((\SRA641|Mux95~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~252_combout\,
	datab => \SRA641|Mux156~268_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux95~0_combout\,
	combout => \SRA641|Mux156~248_combout\);

-- Location: LCCOMB_X65_Y36_N0
\shiftOut~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~179_combout\ = (\B[0]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\SRA641|Mux156~242_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRA641|Mux156~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~239_combout\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~242_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \shiftOut~179_combout\);

-- Location: LCCOMB_X62_Y36_N22
\SRA641|Mux156~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~245_combout\ = (\shiftSig[5]~0_combout\ & (\B[1]~input_o\ & ((\SRL641|Mux95~0_combout\) # (\SRL641|Mux95~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux95~0_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL641|Mux95~1_combout\,
	combout => \SRA641|Mux156~245_combout\);

-- Location: LCCOMB_X62_Y36_N8
\SRA641|Mux156~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~246_combout\ = (\SRA641|Mux156~245_combout\) # ((\SRA641|Mux90~68_combout\ & (!\B[3]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~68_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux156~245_combout\,
	combout => \SRA641|Mux156~246_combout\);

-- Location: LCCOMB_X65_Y36_N6
\SRA641|Mux156~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~247_combout\ = (\SRA641|Mux156~246_combout\) # ((\B[3]~input_o\ & (!\B[1]~input_o\ & \SRA641|Mux90~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRA641|Mux156~246_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux90~80_combout\,
	combout => \SRA641|Mux156~247_combout\);

-- Location: LCCOMB_X65_Y36_N4
\shiftOut~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~180_combout\ = (\shiftOut~179_combout\ & ((\SRA641|Mux156~248_combout\) # ((!\B[0]~input_o\)))) # (!\shiftOut~179_combout\ & (((\B[0]~input_o\ & \SRA641|Mux156~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~248_combout\,
	datab => \shiftOut~179_combout\,
	datac => \B[0]~input_o\,
	datad => \SRA641|Mux156~247_combout\,
	combout => \shiftOut~180_combout\);

-- Location: LCCOMB_X67_Y39_N4
\SRA641|Mux19~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~29_combout\ = (\B[4]~input_o\ & (\shiftIn[13]~46_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[29]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \shiftIn[13]~46_combout\,
	datad => \shiftIn[29]~45_combout\,
	combout => \SRA641|Mux19~29_combout\);

-- Location: LCCOMB_X69_Y39_N12
\SLL641|Mux98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux98~0_combout\ = (\B[3]~input_o\ & ((\SRA641|Mux19~21_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~29_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~21_combout\,
	combout => \SLL641|Mux98~0_combout\);

-- Location: LCCOMB_X69_Y39_N14
\SLL641|Mux98~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux98~1_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux102~1_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux98~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux98~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux102~1_combout\,
	combout => \SLL641|Mux98~1_combout\);

-- Location: LCCOMB_X63_Y36_N12
\SLL641|Mux190~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~52_combout\ = (\SLL641|Mux190~50_combout\ & ((\SLL641|Mux100~2_combout\) # ((\SLL641|Mux98~1_combout\ & \SRA641|Mux156~236_combout\)))) # (!\SLL641|Mux190~50_combout\ & (((\SLL641|Mux98~1_combout\ & \SRA641|Mux156~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~50_combout\,
	datab => \SLL641|Mux100~2_combout\,
	datac => \SLL641|Mux98~1_combout\,
	datad => \SRA641|Mux156~236_combout\,
	combout => \SLL641|Mux190~52_combout\);

-- Location: LCCOMB_X63_Y36_N14
\shiftOut~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~181_combout\ = (\shiftOut~70_combout\ & (((\shiftOut~69_combout\) # (\SLL641|Mux190~52_combout\)))) # (!\shiftOut~70_combout\ & (\shiftOut~180_combout\ & (!\shiftOut~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~180_combout\,
	datac => \shiftOut~69_combout\,
	datad => \SLL641|Mux190~52_combout\,
	combout => \shiftOut~181_combout\);

-- Location: LCCOMB_X63_Y36_N8
\shiftOut~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~182_combout\ = (\shiftOut~181_combout\ & (((\SLL641|Mux190~51_combout\) # (!\shiftOut~69_combout\)))) # (!\shiftOut~181_combout\ & (\C[29]~input_o\ & (\shiftOut~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[29]~input_o\,
	datab => \shiftOut~181_combout\,
	datac => \shiftOut~69_combout\,
	datad => \SLL641|Mux190~51_combout\,
	combout => \shiftOut~182_combout\);

-- Location: LCCOMB_X67_Y40_N0
\SRA641|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux63~0_combout\ = (\SRL641|Mux47~0_combout\ & ((\SRL641|Mux119~0_combout\ & ((\shiftIn[62]~6_combout\))) # (!\SRL641|Mux119~0_combout\ & (\shiftIn[63]~1_combout\)))) # (!\SRL641|Mux47~0_combout\ & (\shiftIn[63]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datab => \SRL641|Mux47~0_combout\,
	datac => \shiftIn[62]~6_combout\,
	datad => \SRL641|Mux119~0_combout\,
	combout => \SRA641|Mux63~0_combout\);

-- Location: LCCOMB_X67_Y40_N26
\SRA641|Mux156~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~244_combout\ = (\B[1]~input_o\ & (\shiftIn[63]~1_combout\)) # (!\B[1]~input_o\ & ((\SRA641|Mux63~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[63]~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SRA641|Mux63~0_combout\,
	combout => \SRA641|Mux156~244_combout\);

-- Location: LCCOMB_X67_Y40_N14
\SRA641|Mux156~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~243_combout\ = (\SRL641|Mux119~0_combout\ & (\shiftIn[62]~6_combout\ & (!\B[1]~input_o\ & \SRL641|Mux47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRL641|Mux119~0_combout\,
	datab => \shiftIn[62]~6_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL641|Mux47~0_combout\,
	combout => \SRA641|Mux156~243_combout\);

-- Location: LCCOMB_X67_Y37_N22
\mux1OutUp[61]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[61]~58_combout\ = (\B[0]~input_o\ & ((\SRA641|Mux156~243_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\B[0]~input_o\ & (((\SRA641|Mux156~233_combout\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~243_combout\,
	datab => \SRA641|Mux156~233_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \mux1OutUp[61]~58_combout\);

-- Location: LCCOMB_X67_Y37_N8
\mux1OutUp[61]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[61]~59_combout\ = (\ShiftFN[0]~input_o\ & ((\mux1OutUp[61]~58_combout\ & (\SRA641|Mux156~244_combout\)) # (!\mux1OutUp[61]~58_combout\ & ((\SRA641|Mux156~235_combout\))))) # (!\ShiftFN[0]~input_o\ & (((\mux1OutUp[61]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SRA641|Mux156~244_combout\,
	datac => \mux1OutUp[61]~58_combout\,
	datad => \SRA641|Mux156~235_combout\,
	combout => \mux1OutUp[61]~59_combout\);

-- Location: LCCOMB_X67_Y37_N4
\shiftOut~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~309_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\mux1OutUp[61]~59_combout\))) # (!\ExtWord~input_o\ & (\shiftOut~182_combout\)))) # (!\ShiftFN[1]~input_o\ & (\shiftOut~182_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~182_combout\,
	datab => \mux1OutUp[61]~59_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \shiftOut~309_combout\);

-- Location: IOIBUF_X65_Y0_N15
\C[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(30),
	o => \C[30]~input_o\);

-- Location: LCCOMB_X65_Y36_N18
\SRA641|Mux156~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~251_combout\ = (\shiftSig[5]~0_combout\ & ((\B[1]~input_o\ & ((\SRL641|Mux94~1_combout\))) # (!\B[1]~input_o\ & (\SRA641|Mux156~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \SRA641|Mux156~240_combout\,
	datac => \B[1]~input_o\,
	datad => \SRL641|Mux94~1_combout\,
	combout => \SRA641|Mux156~251_combout\);

-- Location: LCCOMB_X65_Y36_N22
\SRA641|Mux156~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~269_combout\ = (\SRA641|Mux156~251_combout\) # ((!\ExtWord~input_o\ & (\B[5]~input_o\ & \shiftIn[63]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~251_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \shiftIn[63]~1_combout\,
	combout => \SRA641|Mux156~269_combout\);

-- Location: LCCOMB_X65_Y36_N8
\shiftOut~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~183_combout\ = (\ShiftFN[0]~input_o\ & ((\B[0]~input_o\) # ((\SRA641|Mux156~248_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\B[0]~input_o\ & ((\SRA641|Mux156~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~248_combout\,
	datad => \SRA641|Mux156~247_combout\,
	combout => \shiftOut~183_combout\);

-- Location: LCCOMB_X63_Y39_N26
\SRA641|Mux156~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~249_combout\ = (\B[3]~input_o\ & (((\shiftSig[5]~0_combout\ & \SRA641|Mux90~23_combout\)))) # (!\B[3]~input_o\ & (\SRA641|Mux90~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux90~71_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux90~23_combout\,
	combout => \SRA641|Mux156~249_combout\);

-- Location: LCCOMB_X65_Y36_N14
\SRA641|Mux156~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux156~250_combout\ = (\B[1]~input_o\ & (((\shiftSig[5]~0_combout\ & \SRL641|Mux94~1_combout\)))) # (!\B[1]~input_o\ & (\SRA641|Mux156~249_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRA641|Mux156~249_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \SRL641|Mux94~1_combout\,
	combout => \SRA641|Mux156~250_combout\);

-- Location: LCCOMB_X65_Y36_N12
\shiftOut~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~184_combout\ = (\shiftOut~183_combout\ & ((\SRA641|Mux156~269_combout\) # ((!\B[0]~input_o\)))) # (!\shiftOut~183_combout\ & (((\SRA641|Mux156~250_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux156~269_combout\,
	datab => \shiftOut~183_combout\,
	datac => \SRA641|Mux156~250_combout\,
	datad => \B[0]~input_o\,
	combout => \shiftOut~184_combout\);

-- Location: LCCOMB_X57_Y37_N22
\SRA641|Mux19~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~30_combout\ = (\B[4]~input_o\ & ((\shiftIn[14]~50_combout\))) # (!\B[4]~input_o\ & (\shiftIn[30]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \shiftIn[30]~49_combout\,
	datad => \shiftIn[14]~50_combout\,
	combout => \SRA641|Mux19~30_combout\);

-- Location: LCCOMB_X58_Y37_N8
\SLL641|Mux97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux97~0_combout\ = (\B[3]~input_o\ & ((\SRA641|Mux19~22_combout\))) # (!\B[3]~input_o\ & (\SRA641|Mux19~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux19~30_combout\,
	datad => \SRA641|Mux19~22_combout\,
	combout => \SLL641|Mux97~0_combout\);

-- Location: LCCOMB_X58_Y37_N18
\SLL641|Mux97~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux97~1_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux101~1_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux97~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SLL641|Mux97~0_combout\,
	datad => \SLL641|Mux101~1_combout\,
	combout => \SLL641|Mux97~1_combout\);

-- Location: LCCOMB_X63_Y36_N10
\SLL641|Mux190~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~53_combout\ = (\shiftSig[5]~0_combout\ & ((\B[1]~input_o\ & (\SLL641|Mux99~1_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux97~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux99~1_combout\,
	datab => \SLL641|Mux97~1_combout\,
	datac => \B[1]~input_o\,
	datad => \shiftSig[5]~0_combout\,
	combout => \SLL641|Mux190~53_combout\);

-- Location: LCCOMB_X63_Y36_N20
\shiftOut~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~185_combout\ = (\shiftOut~70_combout\ & (((\shiftOut~69_combout\) # (\SLL641|Mux190~53_combout\)))) # (!\shiftOut~70_combout\ & (\shiftOut~184_combout\ & (!\shiftOut~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~184_combout\,
	datac => \shiftOut~69_combout\,
	datad => \SLL641|Mux190~53_combout\,
	combout => \shiftOut~185_combout\);

-- Location: LCCOMB_X63_Y36_N22
\shiftOut~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~186_combout\ = (\shiftOut~185_combout\ & (((\SLL641|Mux190~52_combout\) # (!\shiftOut~69_combout\)))) # (!\shiftOut~185_combout\ & (\C[30]~input_o\ & (\shiftOut~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[30]~input_o\,
	datab => \shiftOut~185_combout\,
	datac => \shiftOut~69_combout\,
	datad => \SLL641|Mux190~52_combout\,
	combout => \shiftOut~186_combout\);

-- Location: LCCOMB_X67_Y40_N20
\mux1OutUp[62]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[62]~60_combout\ = (\ShiftFN[0]~input_o\ & (((\SRA641|Mux63~0_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\SLL641|Mux127~4_combout\ & (\shiftIn[62]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux127~4_combout\,
	datab => \shiftIn[62]~6_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRA641|Mux63~0_combout\,
	combout => \mux1OutUp[62]~60_combout\);

-- Location: LCCOMB_X67_Y40_N28
\mux1OutUp[62]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[62]~63_combout\ = (\shiftIn[63]~1_combout\ & ((\ShiftFN[0]~input_o\) # ((!\B[1]~input_o\ & !\SLL641|Mux127~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux127~4_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \shiftIn[63]~1_combout\,
	combout => \mux1OutUp[62]~63_combout\);

-- Location: LCCOMB_X67_Y40_N30
\mux1OutUp[62]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[62]~64_combout\ = (\B[0]~input_o\ & (((\mux1OutUp[62]~63_combout\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\mux1OutUp[62]~63_combout\))) # (!\B[1]~input_o\ & (\mux1OutUp[62]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \mux1OutUp[62]~60_combout\,
	datac => \B[1]~input_o\,
	datad => \mux1OutUp[62]~63_combout\,
	combout => \mux1OutUp[62]~64_combout\);

-- Location: LCCOMB_X63_Y36_N30
\shiftOut~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~310_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\mux1OutUp[62]~64_combout\))) # (!\ExtWord~input_o\ & (\shiftOut~186_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\shiftOut~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \shiftOut~186_combout\,
	datad => \mux1OutUp[62]~64_combout\,
	combout => \shiftOut~310_combout\);

-- Location: LCCOMB_X63_Y40_N6
\SRA641|Mux19~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRA641|Mux19~31_combout\ = (\B[4]~input_o\ & (\shiftIn[15]~34_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[31]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftIn[15]~34_combout\,
	datac => \shiftIn[31]~33_combout\,
	datad => \B[4]~input_o\,
	combout => \SRA641|Mux19~31_combout\);

-- Location: LCCOMB_X59_Y40_N26
\SLL641|Mux96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux96~0_combout\ = (\B[3]~input_o\ & (\SRA641|Mux19~23_combout\)) # (!\B[3]~input_o\ & ((\SRA641|Mux19~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRA641|Mux19~23_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~31_combout\,
	combout => \SLL641|Mux96~0_combout\);

-- Location: LCCOMB_X59_Y40_N4
\SLL641|Mux96~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux96~1_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux100~1_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux96~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux96~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux100~1_combout\,
	combout => \SLL641|Mux96~1_combout\);

-- Location: LCCOMB_X63_Y36_N24
\mux2OutLow[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2OutLow[31]~0_combout\ = (\B[0]~input_o\ & (((\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SLL641|Mux98~1_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux96~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLL641|Mux98~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux96~1_combout\,
	combout => \mux2OutLow[31]~0_combout\);

-- Location: LCCOMB_X63_Y36_N26
\mux2OutLow[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2OutLow[31]~1_combout\ = (\B[0]~input_o\ & ((\mux2OutLow[31]~0_combout\ & ((\SLL641|Mux99~1_combout\))) # (!\mux2OutLow[31]~0_combout\ & (\SLL641|Mux97~1_combout\)))) # (!\B[0]~input_o\ & (((\mux2OutLow[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLL641|Mux97~1_combout\,
	datac => \SLL641|Mux99~1_combout\,
	datad => \mux2OutLow[31]~0_combout\,
	combout => \mux2OutLow[31]~1_combout\);

-- Location: IOIBUF_X115_Y29_N1
\C[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(31),
	o => \C[31]~input_o\);

-- Location: LCCOMB_X69_Y36_N30
\mux2OutLow[31]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2OutLow[31]~2_combout\ = (\ShiftFN[0]~input_o\ & (\mux2OutLow[31]~1_combout\ & (\shiftSig[5]~0_combout\))) # (!\ShiftFN[0]~input_o\ & (((\C[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \mux2OutLow[31]~1_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \C[31]~input_o\,
	combout => \mux2OutLow[31]~2_combout\);

-- Location: LCCOMB_X67_Y40_N22
\SgnExtUp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SgnExtUp[0]~0_combout\ = (\shiftIn[63]~1_combout\ & ((\ShiftFN[0]~input_o\) # ((!\B[0]~input_o\ & \SLL641|Mux190~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLL641|Mux190~92_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \shiftIn[63]~1_combout\,
	combout => \SgnExtUp[0]~0_combout\);

-- Location: LCCOMB_X65_Y36_N30
\mux1OutUp[31]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[31]~61_combout\ = (\ShiftFN[0]~input_o\ & (\B[0]~input_o\)) # (!\ShiftFN[0]~input_o\ & ((\B[0]~input_o\ & ((\SRA641|Mux156~58_combout\))) # (!\B[0]~input_o\ & (\SRA641|Mux156~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRA641|Mux156~250_combout\,
	datad => \SRA641|Mux156~58_combout\,
	combout => \mux1OutUp[31]~61_combout\);

-- Location: LCCOMB_X65_Y36_N24
\mux1OutUp[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux1OutUp[31]~62_combout\ = (\mux1OutUp[31]~61_combout\ & (((\SRA641|Mux156~253_combout\)) # (!\ShiftFN[0]~input_o\))) # (!\mux1OutUp[31]~61_combout\ & (\ShiftFN[0]~input_o\ & (\SRA641|Mux156~269_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[31]~61_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \SRA641|Mux156~269_combout\,
	datad => \SRA641|Mux156~253_combout\,
	combout => \mux1OutUp[31]~62_combout\);

-- Location: LCCOMB_X69_Y36_N20
\mux2OutUp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2OutUp[0]~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\SgnExtUp[0]~0_combout\)) # (!\ExtWord~input_o\ & ((\mux1OutUp[31]~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SgnExtUp[0]~0_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \mux1OutUp[31]~62_combout\,
	combout => \mux2OutUp[0]~0_combout\);

-- Location: LCCOMB_X69_Y36_N16
\mux2OutUp[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2OutUp[0]~1_combout\ = (\mux2OutUp[0]~0_combout\) # ((!\ShiftFN[1]~input_o\ & \mux2OutLow[31]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \mux2OutLow[31]~2_combout\,
	datad => \mux2OutUp[0]~0_combout\,
	combout => \mux2OutUp[0]~1_combout\);

-- Location: LCCOMB_X69_Y36_N26
\shiftOut~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~187_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\SgnExtUp[0]~0_combout\)) # (!\ShiftFN[1]~input_o\ & ((\mux2OutLow[31]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SgnExtUp[0]~0_combout\,
	datad => \mux2OutLow[31]~2_combout\,
	combout => \shiftOut~187_combout\);

-- Location: LCCOMB_X69_Y36_N6
\SLL641|Mux190~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~55_combout\ = (\shiftSig[5]~0_combout\ & ((\B[1]~input_o\ & ((\SLL641|Mux98~1_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux96~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \SLL641|Mux96~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux98~1_combout\,
	combout => \SLL641|Mux190~55_combout\);

-- Location: LCCOMB_X63_Y38_N26
\shiftOut~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~188_combout\ = (\ShiftFN[1]~input_o\) # ((\ShiftFN[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \shiftOut~188_combout\);

-- Location: LCCOMB_X61_Y36_N6
\SLL641|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux31~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & ((\shiftIn[32]~13_combout\))) # (!\shiftSig[5]~0_combout\ & (\shiftIn[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[0]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[32]~13_combout\,
	combout => \SLL641|Mux31~0_combout\);

-- Location: LCCOMB_X61_Y36_N8
\SLL641|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux31~1_combout\ = (\SLL641|Mux31~0_combout\) # ((\B[4]~input_o\ & (\shiftSig[5]~0_combout\ & \shiftIn[16]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux31~0_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[16]~61_combout\,
	combout => \SLL641|Mux31~1_combout\);

-- Location: LCCOMB_X59_Y36_N4
\SLL641|Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux95~0_combout\ = (\B[3]~input_o\ & (((\shiftSig[5]~0_combout\ & \SRA641|Mux19~24_combout\)))) # (!\B[3]~input_o\ & (\SLL641|Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux31~1_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~24_combout\,
	combout => \SLL641|Mux95~0_combout\);

-- Location: LCCOMB_X59_Y36_N6
\SLL641|Mux95~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux95~1_combout\ = (\B[2]~input_o\ & (\SLL641|Mux99~0_combout\ & ((\shiftSig[5]~0_combout\)))) # (!\B[2]~input_o\ & (((\SLL641|Mux95~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL641|Mux99~0_combout\,
	datac => \SLL641|Mux95~0_combout\,
	datad => \shiftSig[5]~0_combout\,
	combout => \SLL641|Mux95~1_combout\);

-- Location: LCCOMB_X59_Y36_N16
\SLL641|Mux190~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~54_combout\ = (\B[1]~input_o\ & (((\shiftSig[5]~0_combout\ & \SLL641|Mux97~1_combout\)))) # (!\B[1]~input_o\ & (\SLL641|Mux95~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux95~1_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \SLL641|Mux97~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL641|Mux190~54_combout\);

-- Location: IOIBUF_X115_Y35_N22
\C[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(32),
	o => \C[32]~input_o\);

-- Location: LCCOMB_X69_Y36_N12
\shiftOut~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~189_combout\ = (\shiftOut~188_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & (\SLL641|Mux190~54_combout\)) # (!\shiftOut~70_combout\ & ((\C[32]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \SLL641|Mux190~54_combout\,
	datac => \C[32]~input_o\,
	datad => \shiftOut~70_combout\,
	combout => \shiftOut~189_combout\);

-- Location: LCCOMB_X69_Y36_N0
\shiftOut~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~190_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~189_combout\ & (\SLL641|Mux190~55_combout\)) # (!\shiftOut~189_combout\ & ((\mux1OutUp[32]~1_combout\))))) # (!\shiftOut~188_combout\ & (((\shiftOut~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~55_combout\,
	datab => \mux1OutUp[32]~1_combout\,
	datac => \shiftOut~188_combout\,
	datad => \shiftOut~189_combout\,
	combout => \shiftOut~190_combout\);

-- Location: LCCOMB_X69_Y36_N2
\shiftOut~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~191_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~190_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~187_combout\,
	datac => \ExtWord~input_o\,
	datad => \shiftOut~190_combout\,
	combout => \shiftOut~191_combout\);

-- Location: IOIBUF_X81_Y0_N22
\C[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(33),
	o => \C[33]~input_o\);

-- Location: LCCOMB_X70_Y40_N30
\SLL641|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux30~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & ((\shiftIn[33]~28_combout\))) # (!\shiftSig[5]~0_combout\ & (\shiftIn[1]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftIn[1]~42_combout\,
	datad => \shiftIn[33]~28_combout\,
	combout => \SLL641|Mux30~0_combout\);

-- Location: LCCOMB_X70_Y40_N0
\SLL641|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux30~1_combout\ = (\SLL641|Mux30~0_combout\) # ((\shiftSig[5]~0_combout\ & (\B[4]~input_o\ & \shiftIn[17]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \SLL641|Mux30~0_combout\,
	datad => \shiftIn[17]~41_combout\,
	combout => \SLL641|Mux30~1_combout\);

-- Location: LCCOMB_X69_Y39_N0
\SLL641|Mux94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux94~0_combout\ = (\B[3]~input_o\ & (\SRA641|Mux19~25_combout\ & (\shiftSig[5]~0_combout\))) # (!\B[3]~input_o\ & (((\SLL641|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~25_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL641|Mux30~1_combout\,
	combout => \SLL641|Mux94~0_combout\);

-- Location: LCCOMB_X69_Y39_N18
\SLL641|Mux94~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux94~1_combout\ = (\B[2]~input_o\ & (\SLL641|Mux98~0_combout\ & ((\shiftSig[5]~0_combout\)))) # (!\B[2]~input_o\ & (((\SLL641|Mux94~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux98~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SLL641|Mux94~0_combout\,
	datad => \shiftSig[5]~0_combout\,
	combout => \SLL641|Mux94~1_combout\);

-- Location: LCCOMB_X73_Y36_N16
\SLL641|Mux190~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~56_combout\ = (\B[1]~input_o\ & (\shiftSig[5]~0_combout\ & (\SLL641|Mux96~1_combout\))) # (!\B[1]~input_o\ & (((\SLL641|Mux94~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \SLL641|Mux96~1_combout\,
	datac => \SLL641|Mux94~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL641|Mux190~56_combout\);

-- Location: LCCOMB_X73_Y36_N26
\shiftOut~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~192_combout\ = (\shiftOut~188_combout\ & (\shiftOut~70_combout\)) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~56_combout\))) # (!\shiftOut~70_combout\ & (\C[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \shiftOut~70_combout\,
	datac => \C[33]~input_o\,
	datad => \SLL641|Mux190~56_combout\,
	combout => \shiftOut~192_combout\);

-- Location: LCCOMB_X69_Y36_N28
\shiftOut~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~193_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~192_combout\ & ((\SLL641|Mux190~54_combout\))) # (!\shiftOut~192_combout\ & (\mux1OutUp[33]~3_combout\)))) # (!\shiftOut~188_combout\ & (((\shiftOut~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[33]~3_combout\,
	datab => \SLL641|Mux190~54_combout\,
	datac => \shiftOut~188_combout\,
	datad => \shiftOut~192_combout\,
	combout => \shiftOut~193_combout\);

-- Location: LCCOMB_X69_Y36_N14
\shiftOut~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~194_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~187_combout\,
	datac => \ExtWord~input_o\,
	datad => \shiftOut~193_combout\,
	combout => \shiftOut~194_combout\);

-- Location: IOIBUF_X74_Y0_N8
\C[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(34),
	o => \C[34]~input_o\);

-- Location: LCCOMB_X58_Y40_N4
\SLL641|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux29~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & (\shiftIn[34]~5_combout\)) # (!\shiftSig[5]~0_combout\ & ((\shiftIn[2]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[34]~5_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[2]~55_combout\,
	combout => \SLL641|Mux29~0_combout\);

-- Location: LCCOMB_X58_Y40_N30
\SLL641|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux29~1_combout\ = (\SLL641|Mux29~0_combout\) # ((\B[4]~input_o\ & (\shiftSig[5]~0_combout\ & \shiftIn[18]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux29~0_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[18]~56_combout\,
	combout => \SLL641|Mux29~1_combout\);

-- Location: LCCOMB_X59_Y37_N24
\SLL641|Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux93~0_combout\ = (\B[3]~input_o\ & (\shiftSig[5]~0_combout\ & (\SRA641|Mux19~26_combout\))) # (!\B[3]~input_o\ & (((\SLL641|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux19~26_combout\,
	datad => \SLL641|Mux29~1_combout\,
	combout => \SLL641|Mux93~0_combout\);

-- Location: LCCOMB_X58_Y37_N28
\SLL641|Mux93~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux93~1_combout\ = (\B[2]~input_o\ & (\SLL641|Mux97~0_combout\ & (\shiftSig[5]~0_combout\))) # (!\B[2]~input_o\ & (((\SLL641|Mux93~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux97~0_combout\,
	datab => \B[2]~input_o\,
	datac => \shiftSig[5]~0_combout\,
	datad => \SLL641|Mux93~0_combout\,
	combout => \SLL641|Mux93~1_combout\);

-- Location: LCCOMB_X59_Y36_N18
\SLL641|Mux190~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~57_combout\ = (\B[1]~input_o\ & ((\SLL641|Mux95~1_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux93~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \SLL641|Mux93~1_combout\,
	datad => \SLL641|Mux95~1_combout\,
	combout => \SLL641|Mux190~57_combout\);

-- Location: LCCOMB_X73_Y36_N4
\shiftOut~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~195_combout\ = (\shiftOut~188_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~57_combout\))) # (!\shiftOut~70_combout\ & (\C[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[34]~input_o\,
	datab => \shiftOut~188_combout\,
	datac => \SLL641|Mux190~57_combout\,
	datad => \shiftOut~70_combout\,
	combout => \shiftOut~195_combout\);

-- Location: LCCOMB_X73_Y36_N22
\shiftOut~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~196_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~195_combout\ & ((\SLL641|Mux190~56_combout\))) # (!\shiftOut~195_combout\ & (\mux1OutUp[34]~5_combout\)))) # (!\shiftOut~188_combout\ & (((\shiftOut~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[34]~5_combout\,
	datab => \shiftOut~188_combout\,
	datac => \shiftOut~195_combout\,
	datad => \SLL641|Mux190~56_combout\,
	combout => \shiftOut~196_combout\);

-- Location: LCCOMB_X73_Y36_N0
\shiftOut~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~197_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~196_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \shiftOut~187_combout\,
	datac => \shiftOut~196_combout\,
	combout => \shiftOut~197_combout\);

-- Location: LCCOMB_X59_Y43_N26
\SLL641|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux28~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & ((\shiftIn[35]~24_combout\))) # (!\shiftSig[5]~0_combout\ & (\shiftIn[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[3]~37_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[35]~24_combout\,
	combout => \SLL641|Mux28~0_combout\);

-- Location: LCCOMB_X59_Y43_N4
\SLL641|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux28~1_combout\ = (\SLL641|Mux28~0_combout\) # ((\shiftSig[5]~0_combout\ & (\B[4]~input_o\ & \shiftIn[19]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux28~0_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[19]~40_combout\,
	combout => \SLL641|Mux28~1_combout\);

-- Location: LCCOMB_X59_Y40_N22
\SLL641|Mux92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux92~0_combout\ = (\B[3]~input_o\ & (\shiftSig[5]~0_combout\ & (\SRA641|Mux19~27_combout\))) # (!\B[3]~input_o\ & (((\SLL641|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \SRA641|Mux19~27_combout\,
	datad => \SLL641|Mux28~1_combout\,
	combout => \SLL641|Mux92~0_combout\);

-- Location: LCCOMB_X59_Y40_N16
\SLL641|Mux92~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux92~1_combout\ = (\B[2]~input_o\ & (\shiftSig[5]~0_combout\ & (\SLL641|Mux96~0_combout\))) # (!\B[2]~input_o\ & (((\SLL641|Mux92~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \SLL641|Mux96~0_combout\,
	datad => \SLL641|Mux92~0_combout\,
	combout => \SLL641|Mux92~1_combout\);

-- Location: LCCOMB_X73_Y36_N10
\SLL641|Mux190~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~58_combout\ = (\B[1]~input_o\ & (\SLL641|Mux94~1_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux92~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL641|Mux94~1_combout\,
	datad => \SLL641|Mux92~1_combout\,
	combout => \SLL641|Mux190~58_combout\);

-- Location: IOIBUF_X79_Y73_N1
\C[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(35),
	o => \C[35]~input_o\);

-- Location: LCCOMB_X73_Y36_N20
\shiftOut~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~198_combout\ = (\shiftOut~70_combout\ & ((\SLL641|Mux190~58_combout\) # ((\shiftOut~188_combout\)))) # (!\shiftOut~70_combout\ & (((\C[35]~input_o\ & !\shiftOut~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~58_combout\,
	datab => \shiftOut~70_combout\,
	datac => \C[35]~input_o\,
	datad => \shiftOut~188_combout\,
	combout => \shiftOut~198_combout\);

-- Location: LCCOMB_X73_Y36_N30
\shiftOut~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~199_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~198_combout\ & ((\SLL641|Mux190~57_combout\))) # (!\shiftOut~198_combout\ & (\mux1OutUp[35]~7_combout\)))) # (!\shiftOut~188_combout\ & (((\shiftOut~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[35]~7_combout\,
	datab => \shiftOut~188_combout\,
	datac => \SLL641|Mux190~57_combout\,
	datad => \shiftOut~198_combout\,
	combout => \shiftOut~199_combout\);

-- Location: LCCOMB_X73_Y36_N8
\shiftOut~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~200_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~199_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \shiftOut~187_combout\,
	datac => \shiftOut~199_combout\,
	combout => \shiftOut~200_combout\);

-- Location: LCCOMB_X59_Y36_N22
\SLL641|Mux91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux91~1_combout\ = (\B[2]~input_o\ & (\SRA641|Mux19~24_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux19~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux19~24_combout\,
	datac => \SRA641|Mux19~28_combout\,
	combout => \SLL641|Mux91~1_combout\);

-- Location: LCCOMB_X61_Y35_N28
\SLL641|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux27~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & (\shiftIn[36]~11_combout\)) # (!\shiftSig[5]~0_combout\ & ((\shiftIn[4]~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[36]~11_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[4]~60_combout\,
	combout => \SLL641|Mux27~0_combout\);

-- Location: LCCOMB_X61_Y35_N6
\SLL641|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux27~1_combout\ = (\SLL641|Mux27~0_combout\) # ((\B[4]~input_o\ & (\shiftIn[20]~59_combout\ & \shiftSig[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[20]~59_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \SLL641|Mux27~0_combout\,
	combout => \SLL641|Mux27~1_combout\);

-- Location: LCCOMB_X59_Y36_N28
\SLL641|Mux91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux91~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SLL641|Mux31~1_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL641|Mux27~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL641|Mux31~1_combout\,
	combout => \SLL641|Mux91~0_combout\);

-- Location: LCCOMB_X59_Y36_N0
\SLL641|Mux91~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux91~2_combout\ = (\SLL641|Mux91~0_combout\) # ((\SLL641|Mux91~1_combout\ & (\shiftSig[5]~0_combout\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux91~1_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL641|Mux91~0_combout\,
	combout => \SLL641|Mux91~2_combout\);

-- Location: LCCOMB_X59_Y36_N2
\SLL641|Mux190~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~59_combout\ = (\B[1]~input_o\ & (\SLL641|Mux93~1_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux91~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \SLL641|Mux93~1_combout\,
	datad => \SLL641|Mux91~2_combout\,
	combout => \SLL641|Mux190~59_combout\);

-- Location: IOIBUF_X115_Y36_N8
\C[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(36),
	o => \C[36]~input_o\);

-- Location: LCCOMB_X73_Y36_N2
\shiftOut~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~201_combout\ = (\shiftOut~188_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & (\SLL641|Mux190~59_combout\)) # (!\shiftOut~70_combout\ & ((\C[36]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~59_combout\,
	datab => \shiftOut~188_combout\,
	datac => \C[36]~input_o\,
	datad => \shiftOut~70_combout\,
	combout => \shiftOut~201_combout\);

-- Location: LCCOMB_X73_Y36_N12
\shiftOut~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~202_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~201_combout\ & (\SLL641|Mux190~58_combout\)) # (!\shiftOut~201_combout\ & ((\mux1OutUp[36]~9_combout\))))) # (!\shiftOut~188_combout\ & (((\shiftOut~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~58_combout\,
	datab => \shiftOut~188_combout\,
	datac => \mux1OutUp[36]~9_combout\,
	datad => \shiftOut~201_combout\,
	combout => \shiftOut~202_combout\);

-- Location: LCCOMB_X73_Y36_N6
\shiftOut~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~203_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~202_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \shiftOut~187_combout\,
	datad => \shiftOut~202_combout\,
	combout => \shiftOut~203_combout\);

-- Location: IOIBUF_X115_Y24_N1
\C[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(37),
	o => \C[37]~input_o\);

-- Location: LCCOMB_X66_Y41_N6
\SLL641|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux26~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & ((\shiftIn[37]~32_combout\))) # (!\shiftSig[5]~0_combout\ & (\shiftIn[5]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[5]~44_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[37]~32_combout\,
	combout => \SLL641|Mux26~0_combout\);

-- Location: LCCOMB_X66_Y41_N0
\SLL641|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux26~1_combout\ = (\SLL641|Mux26~0_combout\) # ((\B[4]~input_o\ & (\shiftSig[5]~0_combout\ & \shiftIn[21]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \shiftIn[21]~43_combout\,
	datad => \SLL641|Mux26~0_combout\,
	combout => \SLL641|Mux26~1_combout\);

-- Location: LCCOMB_X69_Y39_N4
\SLL641|Mux90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux90~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SLL641|Mux30~1_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SLL641|Mux26~1_combout\,
	datad => \SLL641|Mux30~1_combout\,
	combout => \SLL641|Mux90~0_combout\);

-- Location: LCCOMB_X69_Y39_N6
\SLL641|Mux90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux90~1_combout\ = (\B[2]~input_o\ & ((\SRA641|Mux19~25_combout\))) # (!\B[2]~input_o\ & (\SRA641|Mux19~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~29_combout\,
	datac => \B[2]~input_o\,
	datad => \SRA641|Mux19~25_combout\,
	combout => \SLL641|Mux90~1_combout\);

-- Location: LCCOMB_X69_Y39_N16
\SLL641|Mux90~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux90~2_combout\ = (\SLL641|Mux90~0_combout\) # ((\B[3]~input_o\ & (\shiftSig[5]~0_combout\ & \SLL641|Mux90~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \SLL641|Mux90~0_combout\,
	datad => \SLL641|Mux90~1_combout\,
	combout => \SLL641|Mux90~2_combout\);

-- Location: LCCOMB_X73_Y36_N24
\SLL641|Mux190~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~60_combout\ = (\B[1]~input_o\ & ((\SLL641|Mux92~1_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux90~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL641|Mux90~2_combout\,
	datad => \SLL641|Mux92~1_combout\,
	combout => \SLL641|Mux190~60_combout\);

-- Location: LCCOMB_X73_Y36_N18
\shiftOut~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~204_combout\ = (\shiftOut~188_combout\ & (\shiftOut~70_combout\)) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~60_combout\))) # (!\shiftOut~70_combout\ & (\C[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \shiftOut~70_combout\,
	datac => \C[37]~input_o\,
	datad => \SLL641|Mux190~60_combout\,
	combout => \shiftOut~204_combout\);

-- Location: LCCOMB_X73_Y36_N28
\shiftOut~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~205_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~204_combout\ & (\SLL641|Mux190~59_combout\)) # (!\shiftOut~204_combout\ & ((\mux1OutUp[37]~11_combout\))))) # (!\shiftOut~188_combout\ & (((\shiftOut~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~59_combout\,
	datab => \shiftOut~188_combout\,
	datac => \mux1OutUp[37]~11_combout\,
	datad => \shiftOut~204_combout\,
	combout => \shiftOut~205_combout\);

-- Location: LCCOMB_X73_Y36_N14
\shiftOut~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~206_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~205_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \shiftOut~187_combout\,
	datad => \shiftOut~205_combout\,
	combout => \shiftOut~206_combout\);

-- Location: LCCOMB_X57_Y39_N12
\SLL641|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux25~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & ((\shiftIn[38]~9_combout\))) # (!\shiftSig[5]~0_combout\ & (\shiftIn[6]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[6]~54_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[38]~9_combout\,
	combout => \SLL641|Mux25~0_combout\);

-- Location: LCCOMB_X58_Y39_N30
\SLL641|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux25~1_combout\ = (\SLL641|Mux25~0_combout\) # ((\B[4]~input_o\ & (\shiftIn[22]~53_combout\ & \shiftSig[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[22]~53_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \SLL641|Mux25~0_combout\,
	combout => \SLL641|Mux25~1_combout\);

-- Location: LCCOMB_X59_Y37_N26
\SLL641|Mux89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux89~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SLL641|Mux29~1_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL641|Mux25~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL641|Mux29~1_combout\,
	combout => \SLL641|Mux89~0_combout\);

-- Location: LCCOMB_X59_Y37_N28
\SLL641|Mux89~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux89~1_combout\ = (\B[2]~input_o\ & (\SRA641|Mux19~26_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux19~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRA641|Mux19~26_combout\,
	datac => \SRA641|Mux19~30_combout\,
	combout => \SLL641|Mux89~1_combout\);

-- Location: LCCOMB_X59_Y37_N22
\SLL641|Mux89~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux89~2_combout\ = (\SLL641|Mux89~0_combout\) # ((\shiftSig[5]~0_combout\ & (\B[3]~input_o\ & \SLL641|Mux89~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL641|Mux89~0_combout\,
	datad => \SLL641|Mux89~1_combout\,
	combout => \SLL641|Mux89~2_combout\);

-- Location: LCCOMB_X59_Y37_N16
\SLL641|Mux190~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~61_combout\ = (\B[1]~input_o\ & (\SLL641|Mux91~2_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux89~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux91~2_combout\,
	datac => \SLL641|Mux89~2_combout\,
	combout => \SLL641|Mux190~61_combout\);

-- Location: IOIBUF_X115_Y41_N1
\C[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(38),
	o => \C[38]~input_o\);

-- Location: LCCOMB_X73_Y41_N16
\shiftOut~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~207_combout\ = (\shiftOut~188_combout\ & (\shiftOut~70_combout\)) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & (\SLL641|Mux190~61_combout\)) # (!\shiftOut~70_combout\ & ((\C[38]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \shiftOut~70_combout\,
	datac => \SLL641|Mux190~61_combout\,
	datad => \C[38]~input_o\,
	combout => \shiftOut~207_combout\);

-- Location: LCCOMB_X73_Y41_N18
\shiftOut~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~208_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~207_combout\ & (\SLL641|Mux190~60_combout\)) # (!\shiftOut~207_combout\ & ((\mux1OutUp[38]~13_combout\))))) # (!\shiftOut~188_combout\ & (((\shiftOut~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \SLL641|Mux190~60_combout\,
	datac => \mux1OutUp[38]~13_combout\,
	datad => \shiftOut~207_combout\,
	combout => \shiftOut~208_combout\);

-- Location: LCCOMB_X73_Y41_N20
\shiftOut~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~209_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~208_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \shiftOut~187_combout\,
	datad => \shiftOut~208_combout\,
	combout => \shiftOut~209_combout\);

-- Location: IOIBUF_X81_Y73_N15
\C[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(39),
	o => \C[39]~input_o\);

-- Location: LCCOMB_X59_Y42_N30
\SLL641|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux24~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & ((\shiftIn[39]~20_combout\))) # (!\shiftSig[5]~0_combout\ & (\shiftIn[7]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[7]~39_combout\,
	datac => \shiftIn[39]~20_combout\,
	datad => \shiftSig[5]~0_combout\,
	combout => \SLL641|Mux24~0_combout\);

-- Location: LCCOMB_X59_Y42_N8
\SLL641|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux24~1_combout\ = (\SLL641|Mux24~0_combout\) # ((\B[4]~input_o\ & (\shiftSig[5]~0_combout\ & \shiftIn[23]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \SLL641|Mux24~0_combout\,
	datad => \shiftIn[23]~38_combout\,
	combout => \SLL641|Mux24~1_combout\);

-- Location: LCCOMB_X59_Y40_N18
\SLL641|Mux88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux88~0_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\SLL641|Mux28~1_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL641|Mux24~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux28~1_combout\,
	combout => \SLL641|Mux88~0_combout\);

-- Location: LCCOMB_X59_Y40_N12
\SLL641|Mux88~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux88~1_combout\ = (\B[2]~input_o\ & (\SRA641|Mux19~27_combout\)) # (!\B[2]~input_o\ & ((\SRA641|Mux19~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SRA641|Mux19~27_combout\,
	datad => \SRA641|Mux19~31_combout\,
	combout => \SLL641|Mux88~1_combout\);

-- Location: LCCOMB_X59_Y40_N30
\SLL641|Mux88~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux88~2_combout\ = (\SLL641|Mux88~0_combout\) # ((\B[3]~input_o\ & (\shiftSig[5]~0_combout\ & \SLL641|Mux88~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL641|Mux88~0_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \SLL641|Mux88~1_combout\,
	combout => \SLL641|Mux88~2_combout\);

-- Location: LCCOMB_X73_Y41_N6
\SLL641|Mux190~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~62_combout\ = (\B[1]~input_o\ & ((\SLL641|Mux90~2_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux88~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL641|Mux88~2_combout\,
	datad => \SLL641|Mux90~2_combout\,
	combout => \SLL641|Mux190~62_combout\);

-- Location: LCCOMB_X73_Y41_N8
\shiftOut~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~210_combout\ = (\shiftOut~188_combout\ & (\shiftOut~70_combout\)) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~62_combout\))) # (!\shiftOut~70_combout\ & (\C[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \shiftOut~70_combout\,
	datac => \C[39]~input_o\,
	datad => \SLL641|Mux190~62_combout\,
	combout => \shiftOut~210_combout\);

-- Location: LCCOMB_X73_Y41_N26
\shiftOut~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~211_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~210_combout\ & (\SLL641|Mux190~61_combout\)) # (!\shiftOut~210_combout\ & ((\mux1OutUp[39]~15_combout\))))) # (!\shiftOut~188_combout\ & (((\shiftOut~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \SLL641|Mux190~61_combout\,
	datac => \shiftOut~210_combout\,
	datad => \mux1OutUp[39]~15_combout\,
	combout => \shiftOut~211_combout\);

-- Location: LCCOMB_X73_Y41_N12
\shiftOut~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~212_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~211_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \shiftOut~187_combout\,
	datac => \shiftOut~211_combout\,
	combout => \shiftOut~212_combout\);

-- Location: LCCOMB_X59_Y37_N18
\SLL641|Mux87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux87~0_combout\ = (\B[3]~input_o\ & (\shiftSig[5]~0_combout\ & ((\SRA641|Mux19~28_combout\)))) # (!\B[3]~input_o\ & (((\SLL641|Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL641|Mux27~1_combout\,
	datad => \SRA641|Mux19~28_combout\,
	combout => \SLL641|Mux87~0_combout\);

-- Location: LCCOMB_X58_Y36_N28
\SLL641|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux23~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & (\shiftIn[40]~17_combout\)) # (!\shiftSig[5]~0_combout\ & ((\shiftIn[8]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[40]~17_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[8]~63_combout\,
	combout => \SLL641|Mux23~0_combout\);

-- Location: LCCOMB_X58_Y36_N14
\SLL641|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux23~1_combout\ = (\SLL641|Mux23~0_combout\) # ((\shiftIn[24]~62_combout\ & (\shiftSig[5]~0_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[24]~62_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \SLL641|Mux23~0_combout\,
	combout => \SLL641|Mux23~1_combout\);

-- Location: LCCOMB_X59_Y36_N12
\SLL641|Mux87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux87~1_combout\ = (\B[3]~input_o\ & ((\SLL641|Mux31~1_combout\))) # (!\B[3]~input_o\ & (\SLL641|Mux23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux23~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL641|Mux31~1_combout\,
	combout => \SLL641|Mux87~1_combout\);

-- Location: LCCOMB_X59_Y37_N12
\SLL641|Mux87~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux87~2_combout\ = (\B[2]~input_o\ & (\SLL641|Mux87~0_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux87~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL641|Mux87~0_combout\,
	datac => \SLL641|Mux87~1_combout\,
	combout => \SLL641|Mux87~2_combout\);

-- Location: LCCOMB_X59_Y37_N30
\SLL641|Mux190~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~63_combout\ = (\B[1]~input_o\ & (\SLL641|Mux89~2_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux87~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL641|Mux89~2_combout\,
	datad => \SLL641|Mux87~2_combout\,
	combout => \SLL641|Mux190~63_combout\);

-- Location: IOIBUF_X115_Y45_N15
\C[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(40),
	o => \C[40]~input_o\);

-- Location: LCCOMB_X73_Y41_N30
\shiftOut~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~213_combout\ = (\shiftOut~188_combout\ & (\shiftOut~70_combout\)) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & (\SLL641|Mux190~63_combout\)) # (!\shiftOut~70_combout\ & ((\C[40]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \shiftOut~70_combout\,
	datac => \SLL641|Mux190~63_combout\,
	datad => \C[40]~input_o\,
	combout => \shiftOut~213_combout\);

-- Location: LCCOMB_X73_Y41_N24
\shiftOut~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~214_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~213_combout\ & ((\SLL641|Mux190~62_combout\))) # (!\shiftOut~213_combout\ & (\mux1OutUp[40]~17_combout\)))) # (!\shiftOut~188_combout\ & (((\shiftOut~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \mux1OutUp[40]~17_combout\,
	datac => \shiftOut~213_combout\,
	datad => \SLL641|Mux190~62_combout\,
	combout => \shiftOut~214_combout\);

-- Location: LCCOMB_X73_Y41_N2
\shiftOut~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~215_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~214_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \shiftOut~187_combout\,
	datad => \shiftOut~214_combout\,
	combout => \shiftOut~215_combout\);

-- Location: LCCOMB_X69_Y39_N2
\SLL641|Mux86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux86~0_combout\ = (\B[3]~input_o\ & (\shiftSig[5]~0_combout\ & ((\SRA641|Mux19~29_combout\)))) # (!\B[3]~input_o\ & (((\SLL641|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \SLL641|Mux26~1_combout\,
	datad => \SRA641|Mux19~29_combout\,
	combout => \SLL641|Mux86~0_combout\);

-- Location: LCCOMB_X70_Y38_N28
\SLL641|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux22~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & (\shiftIn[41]~26_combout\)) # (!\shiftSig[5]~0_combout\ & ((\shiftIn[9]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[41]~26_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[9]~48_combout\,
	combout => \SLL641|Mux22~0_combout\);

-- Location: LCCOMB_X70_Y38_N14
\SLL641|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux22~1_combout\ = (\SLL641|Mux22~0_combout\) # ((\shiftSig[5]~0_combout\ & (\B[4]~input_o\ & \shiftIn[25]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \SLL641|Mux22~0_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[25]~47_combout\,
	combout => \SLL641|Mux22~1_combout\);

-- Location: LCCOMB_X69_Y40_N24
\SLL641|Mux86~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux86~1_combout\ = (\B[3]~input_o\ & ((\SLL641|Mux30~1_combout\))) # (!\B[3]~input_o\ & (\SLL641|Mux22~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux22~1_combout\,
	datab => \SLL641|Mux30~1_combout\,
	datac => \B[3]~input_o\,
	combout => \SLL641|Mux86~1_combout\);

-- Location: LCCOMB_X69_Y40_N18
\SLL641|Mux86~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux86~2_combout\ = (\B[2]~input_o\ & (\SLL641|Mux86~0_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux86~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux86~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux86~1_combout\,
	combout => \SLL641|Mux86~2_combout\);

-- Location: LCCOMB_X72_Y40_N24
\SLL641|Mux190~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~64_combout\ = (\B[1]~input_o\ & (\SLL641|Mux88~2_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux86~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux88~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux86~2_combout\,
	combout => \SLL641|Mux190~64_combout\);

-- Location: IOIBUF_X115_Y48_N1
\C[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(41),
	o => \C[41]~input_o\);

-- Location: LCCOMB_X72_Y40_N2
\shiftOut~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~216_combout\ = (\shiftOut~70_combout\ & ((\SLL641|Mux190~64_combout\) # ((\shiftOut~188_combout\)))) # (!\shiftOut~70_combout\ & (((!\shiftOut~188_combout\ & \C[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \SLL641|Mux190~64_combout\,
	datac => \shiftOut~188_combout\,
	datad => \C[41]~input_o\,
	combout => \shiftOut~216_combout\);

-- Location: LCCOMB_X72_Y40_N28
\shiftOut~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~217_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~216_combout\ & ((\SLL641|Mux190~63_combout\))) # (!\shiftOut~216_combout\ & (\mux1OutUp[41]~19_combout\)))) # (!\shiftOut~188_combout\ & (((\shiftOut~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[41]~19_combout\,
	datab => \SLL641|Mux190~63_combout\,
	datac => \shiftOut~188_combout\,
	datad => \shiftOut~216_combout\,
	combout => \shiftOut~217_combout\);

-- Location: LCCOMB_X72_Y40_N6
\shiftOut~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~218_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~217_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \shiftOut~187_combout\,
	datad => \shiftOut~217_combout\,
	combout => \shiftOut~218_combout\);

-- Location: LCCOMB_X59_Y37_N8
\SLL641|Mux85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux85~0_combout\ = (\B[3]~input_o\ & (\shiftSig[5]~0_combout\ & (\SRA641|Mux19~30_combout\))) # (!\B[3]~input_o\ & (((\SLL641|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux19~30_combout\,
	datad => \SLL641|Mux25~1_combout\,
	combout => \SLL641|Mux85~0_combout\);

-- Location: LCCOMB_X59_Y38_N20
\SLL641|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux21~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & ((\shiftIn[42]~3_combout\))) # (!\shiftSig[5]~0_combout\ & (\shiftIn[10]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[10]~52_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[42]~3_combout\,
	combout => \SLL641|Mux21~0_combout\);

-- Location: LCCOMB_X59_Y38_N6
\SLL641|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux21~1_combout\ = (\SLL641|Mux21~0_combout\) # ((\B[4]~input_o\ & (\shiftSig[5]~0_combout\ & \shiftIn[26]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftSig[5]~0_combout\,
	datac => \shiftIn[26]~51_combout\,
	datad => \SLL641|Mux21~0_combout\,
	combout => \SLL641|Mux21~1_combout\);

-- Location: LCCOMB_X59_Y37_N2
\SLL641|Mux85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux85~1_combout\ = (\B[3]~input_o\ & ((\SLL641|Mux29~1_combout\))) # (!\B[3]~input_o\ & (\SLL641|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SLL641|Mux21~1_combout\,
	datad => \SLL641|Mux29~1_combout\,
	combout => \SLL641|Mux85~1_combout\);

-- Location: LCCOMB_X59_Y37_N20
\SLL641|Mux85~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux85~2_combout\ = (\B[2]~input_o\ & (\SLL641|Mux85~0_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux85~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SLL641|Mux85~0_combout\,
	datad => \SLL641|Mux85~1_combout\,
	combout => \SLL641|Mux85~2_combout\);

-- Location: LCCOMB_X59_Y37_N14
\SLL641|Mux190~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~65_combout\ = (\B[1]~input_o\ & ((\SLL641|Mux87~2_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux85~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux85~2_combout\,
	datad => \SLL641|Mux87~2_combout\,
	combout => \SLL641|Mux190~65_combout\);

-- Location: IOIBUF_X115_Y33_N1
\C[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(42),
	o => \C[42]~input_o\);

-- Location: LCCOMB_X72_Y40_N16
\shiftOut~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~219_combout\ = (\shiftOut~188_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & (\SLL641|Mux190~65_combout\)) # (!\shiftOut~70_combout\ & ((\C[42]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \SLL641|Mux190~65_combout\,
	datac => \shiftOut~70_combout\,
	datad => \C[42]~input_o\,
	combout => \shiftOut~219_combout\);

-- Location: LCCOMB_X72_Y40_N10
\shiftOut~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~220_combout\ = (\shiftOut~219_combout\ & (((\SLL641|Mux190~64_combout\) # (!\shiftOut~188_combout\)))) # (!\shiftOut~219_combout\ & (\mux1OutUp[42]~21_combout\ & (\shiftOut~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[42]~21_combout\,
	datab => \shiftOut~219_combout\,
	datac => \shiftOut~188_combout\,
	datad => \SLL641|Mux190~64_combout\,
	combout => \shiftOut~220_combout\);

-- Location: LCCOMB_X72_Y40_N20
\shiftOut~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~221_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \shiftOut~187_combout\,
	datad => \shiftOut~220_combout\,
	combout => \shiftOut~221_combout\);

-- Location: IOIBUF_X115_Y47_N15
\C[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(43),
	o => \C[43]~input_o\);

-- Location: LCCOMB_X59_Y40_N0
\SLL641|Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux84~0_combout\ = (\B[3]~input_o\ & (((\shiftSig[5]~0_combout\ & \SRA641|Mux19~31_combout\)))) # (!\B[3]~input_o\ & (\SLL641|Mux24~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL641|Mux24~1_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \SRA641|Mux19~31_combout\,
	combout => \SLL641|Mux84~0_combout\);

-- Location: LCCOMB_X58_Y39_N24
\SLL641|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux20~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & (\shiftIn[43]~22_combout\)) # (!\shiftSig[5]~0_combout\ & ((\shiftIn[11]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[43]~22_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[11]~36_combout\,
	combout => \SLL641|Mux20~0_combout\);

-- Location: LCCOMB_X58_Y39_N2
\SLL641|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux20~1_combout\ = (\SLL641|Mux20~0_combout\) # ((\B[4]~input_o\ & (\shiftSig[5]~0_combout\ & \shiftIn[27]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SLL641|Mux20~0_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[27]~35_combout\,
	combout => \SLL641|Mux20~1_combout\);

-- Location: LCCOMB_X59_Y40_N2
\SLL641|Mux84~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux84~1_combout\ = (\B[3]~input_o\ & ((\SLL641|Mux28~1_combout\))) # (!\B[3]~input_o\ & (\SLL641|Mux20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux20~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL641|Mux28~1_combout\,
	combout => \SLL641|Mux84~1_combout\);

-- Location: LCCOMB_X59_Y40_N28
\SLL641|Mux84~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux84~2_combout\ = (\B[2]~input_o\ & (\SLL641|Mux84~0_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux84~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux84~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux84~1_combout\,
	combout => \SLL641|Mux84~2_combout\);

-- Location: LCCOMB_X72_Y40_N30
\SLL641|Mux190~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~66_combout\ = (\B[1]~input_o\ & ((\SLL641|Mux86~2_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux84~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL641|Mux84~2_combout\,
	datad => \SLL641|Mux86~2_combout\,
	combout => \SLL641|Mux190~66_combout\);

-- Location: LCCOMB_X72_Y40_N0
\shiftOut~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~222_combout\ = (\shiftOut~188_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~66_combout\))) # (!\shiftOut~70_combout\ & (\C[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \C[43]~input_o\,
	datac => \shiftOut~70_combout\,
	datad => \SLL641|Mux190~66_combout\,
	combout => \shiftOut~222_combout\);

-- Location: LCCOMB_X72_Y40_N26
\shiftOut~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~223_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~222_combout\ & (\SLL641|Mux190~65_combout\)) # (!\shiftOut~222_combout\ & ((\mux1OutUp[43]~23_combout\))))) # (!\shiftOut~188_combout\ & (\shiftOut~222_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \shiftOut~222_combout\,
	datac => \SLL641|Mux190~65_combout\,
	datad => \mux1OutUp[43]~23_combout\,
	combout => \shiftOut~223_combout\);

-- Location: LCCOMB_X72_Y40_N12
\shiftOut~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~224_combout\ = (\shiftOut~187_combout\) # ((\shiftOut~223_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~223_combout\,
	datab => \ExtWord~input_o\,
	datac => \shiftOut~187_combout\,
	combout => \shiftOut~224_combout\);

-- Location: LCCOMB_X60_Y37_N4
\SLL641|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux19~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & (\shiftIn[44]~15_combout\)) # (!\shiftSig[5]~0_combout\ & ((\shiftIn[12]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[44]~15_combout\,
	datac => \shiftIn[12]~58_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL641|Mux19~0_combout\);

-- Location: LCCOMB_X60_Y37_N6
\SLL641|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux19~1_combout\ = (\SLL641|Mux19~0_combout\) # ((\B[4]~input_o\ & (\shiftIn[28]~57_combout\ & \shiftSig[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[28]~57_combout\,
	datac => \SLL641|Mux19~0_combout\,
	datad => \shiftSig[5]~0_combout\,
	combout => \SLL641|Mux19~1_combout\);

-- Location: LCCOMB_X59_Y37_N0
\SLL641|Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux83~0_combout\ = (\B[3]~input_o\ & (\SLL641|Mux27~1_combout\)) # (!\B[3]~input_o\ & ((\SLL641|Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SLL641|Mux27~1_combout\,
	datad => \SLL641|Mux19~1_combout\,
	combout => \SLL641|Mux83~0_combout\);

-- Location: LCCOMB_X59_Y37_N10
\SLL641|Mux83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux83~1_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux87~1_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux83~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL641|Mux83~0_combout\,
	datac => \SLL641|Mux87~1_combout\,
	combout => \SLL641|Mux83~1_combout\);

-- Location: LCCOMB_X59_Y37_N4
\SLL641|Mux190~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~67_combout\ = (\B[1]~input_o\ & (\SLL641|Mux85~2_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux83~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux85~2_combout\,
	datad => \SLL641|Mux83~1_combout\,
	combout => \SLL641|Mux190~67_combout\);

-- Location: IOIBUF_X85_Y73_N8
\C[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(44),
	o => \C[44]~input_o\);

-- Location: LCCOMB_X72_Y40_N14
\shiftOut~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~225_combout\ = (\shiftOut~188_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & (\SLL641|Mux190~67_combout\)) # (!\shiftOut~70_combout\ & ((\C[44]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \SLL641|Mux190~67_combout\,
	datac => \shiftOut~70_combout\,
	datad => \C[44]~input_o\,
	combout => \shiftOut~225_combout\);

-- Location: LCCOMB_X72_Y40_N8
\shiftOut~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~226_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~225_combout\ & (\SLL641|Mux190~66_combout\)) # (!\shiftOut~225_combout\ & ((\mux1OutUp[44]~25_combout\))))) # (!\shiftOut~188_combout\ & (\shiftOut~225_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \shiftOut~225_combout\,
	datac => \SLL641|Mux190~66_combout\,
	datad => \mux1OutUp[44]~25_combout\,
	combout => \shiftOut~226_combout\);

-- Location: LCCOMB_X72_Y40_N18
\shiftOut~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~227_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~226_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \shiftOut~226_combout\,
	datad => \shiftOut~187_combout\,
	combout => \shiftOut~227_combout\);

-- Location: IOIBUF_X35_Y73_N22
\C[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(45),
	o => \C[45]~input_o\);

-- Location: LCCOMB_X67_Y39_N30
\SLL641|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux18~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & ((\shiftIn[45]~30_combout\))) # (!\shiftSig[5]~0_combout\ & (\shiftIn[13]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[13]~46_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[45]~30_combout\,
	combout => \SLL641|Mux18~0_combout\);

-- Location: LCCOMB_X67_Y39_N8
\SLL641|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux18~1_combout\ = (\SLL641|Mux18~0_combout\) # ((\shiftSig[5]~0_combout\ & (\B[4]~input_o\ & \shiftIn[29]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux18~0_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[29]~45_combout\,
	combout => \SLL641|Mux18~1_combout\);

-- Location: LCCOMB_X69_Y39_N28
\SLL641|Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux82~0_combout\ = (\B[3]~input_o\ & (\SLL641|Mux26~1_combout\)) # (!\B[3]~input_o\ & ((\SLL641|Mux18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SLL641|Mux26~1_combout\,
	datad => \SLL641|Mux18~1_combout\,
	combout => \SLL641|Mux82~0_combout\);

-- Location: LCCOMB_X69_Y40_N12
\SLL641|Mux82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux82~1_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux86~1_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux82~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux82~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux86~1_combout\,
	combout => \SLL641|Mux82~1_combout\);

-- Location: LCCOMB_X60_Y40_N24
\SLL641|Mux190~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~68_combout\ = (\B[1]~input_o\ & (\SLL641|Mux84~2_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux82~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux84~2_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux82~1_combout\,
	combout => \SLL641|Mux190~68_combout\);

-- Location: LCCOMB_X60_Y40_N26
\shiftOut~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~228_combout\ = (\shiftOut~70_combout\ & ((\shiftOut~188_combout\) # ((\SLL641|Mux190~68_combout\)))) # (!\shiftOut~70_combout\ & (!\shiftOut~188_combout\ & (\C[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~188_combout\,
	datac => \C[45]~input_o\,
	datad => \SLL641|Mux190~68_combout\,
	combout => \shiftOut~228_combout\);

-- Location: LCCOMB_X60_Y40_N4
\shiftOut~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~229_combout\ = (\shiftOut~228_combout\ & (((\SLL641|Mux190~67_combout\)) # (!\shiftOut~188_combout\))) # (!\shiftOut~228_combout\ & (\shiftOut~188_combout\ & (\mux1OutUp[45]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~228_combout\,
	datab => \shiftOut~188_combout\,
	datac => \mux1OutUp[45]~27_combout\,
	datad => \SLL641|Mux190~67_combout\,
	combout => \shiftOut~229_combout\);

-- Location: LCCOMB_X60_Y40_N6
\shiftOut~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~230_combout\ = (\shiftOut~187_combout\) # ((\shiftOut~229_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~187_combout\,
	datac => \shiftOut~229_combout\,
	datad => \ExtWord~input_o\,
	combout => \shiftOut~230_combout\);

-- Location: IOIBUF_X60_Y73_N1
\C[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(46),
	o => \C[46]~input_o\);

-- Location: LCCOMB_X57_Y37_N24
\SLL641|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux17~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & (\shiftIn[46]~7_combout\)) # (!\shiftSig[5]~0_combout\ & ((\shiftIn[14]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftIn[46]~7_combout\,
	datad => \shiftIn[14]~50_combout\,
	combout => \SLL641|Mux17~0_combout\);

-- Location: LCCOMB_X57_Y37_N2
\SLL641|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux17~1_combout\ = (\SLL641|Mux17~0_combout\) # ((\shiftSig[5]~0_combout\ & (\B[4]~input_o\ & \shiftIn[30]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftIn[30]~49_combout\,
	datad => \SLL641|Mux17~0_combout\,
	combout => \SLL641|Mux17~1_combout\);

-- Location: LCCOMB_X58_Y41_N24
\SLL641|Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux81~0_combout\ = (\B[3]~input_o\ & ((\SLL641|Mux25~1_combout\))) # (!\B[3]~input_o\ & (\SLL641|Mux17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SLL641|Mux17~1_combout\,
	datad => \SLL641|Mux25~1_combout\,
	combout => \SLL641|Mux81~0_combout\);

-- Location: LCCOMB_X58_Y41_N10
\SLL641|Mux81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux81~1_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux85~1_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux81~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux81~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux85~1_combout\,
	combout => \SLL641|Mux81~1_combout\);

-- Location: LCCOMB_X58_Y41_N12
\SLL641|Mux190~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~69_combout\ = (\B[1]~input_o\ & (\SLL641|Mux83~1_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux81~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL641|Mux83~1_combout\,
	datad => \SLL641|Mux81~1_combout\,
	combout => \SLL641|Mux190~69_combout\);

-- Location: LCCOMB_X60_Y40_N16
\shiftOut~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~231_combout\ = (\shiftOut~70_combout\ & ((\shiftOut~188_combout\) # ((\SLL641|Mux190~69_combout\)))) # (!\shiftOut~70_combout\ & (!\shiftOut~188_combout\ & (\C[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~188_combout\,
	datac => \C[46]~input_o\,
	datad => \SLL641|Mux190~69_combout\,
	combout => \shiftOut~231_combout\);

-- Location: LCCOMB_X60_Y40_N10
\shiftOut~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~232_combout\ = (\shiftOut~231_combout\ & (((\SLL641|Mux190~68_combout\) # (!\shiftOut~188_combout\)))) # (!\shiftOut~231_combout\ & (\mux1OutUp[46]~29_combout\ & (\shiftOut~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~231_combout\,
	datab => \mux1OutUp[46]~29_combout\,
	datac => \shiftOut~188_combout\,
	datad => \SLL641|Mux190~68_combout\,
	combout => \shiftOut~232_combout\);

-- Location: LCCOMB_X60_Y40_N20
\shiftOut~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~233_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~232_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \shiftOut~187_combout\,
	datad => \shiftOut~232_combout\,
	combout => \shiftOut~233_combout\);

-- Location: LCCOMB_X63_Y40_N24
\SLL641|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux16~0_combout\ = (!\B[4]~input_o\ & ((\shiftSig[5]~0_combout\ & (\shiftIn[47]~18_combout\)) # (!\shiftSig[5]~0_combout\ & ((\shiftIn[15]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[47]~18_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \shiftIn[15]~34_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL641|Mux16~0_combout\);

-- Location: LCCOMB_X63_Y40_N18
\SLL641|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux16~1_combout\ = (\SLL641|Mux16~0_combout\) # ((\shiftSig[5]~0_combout\ & (\B[4]~input_o\ & \shiftIn[31]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftIn[31]~33_combout\,
	datad => \SLL641|Mux16~0_combout\,
	combout => \SLL641|Mux16~1_combout\);

-- Location: LCCOMB_X62_Y40_N8
\SLL641|Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux80~0_combout\ = (\B[3]~input_o\ & (\SLL641|Mux24~1_combout\)) # (!\B[3]~input_o\ & ((\SLL641|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux24~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL641|Mux16~1_combout\,
	combout => \SLL641|Mux80~0_combout\);

-- Location: LCCOMB_X62_Y40_N26
\SLL641|Mux80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux80~1_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux84~1_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux80~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL641|Mux80~0_combout\,
	datac => \SLL641|Mux84~1_combout\,
	combout => \SLL641|Mux80~1_combout\);

-- Location: LCCOMB_X60_Y40_N22
\SLL641|Mux190~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~70_combout\ = (\B[1]~input_o\ & (\SLL641|Mux82~1_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux80~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux82~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux80~1_combout\,
	combout => \SLL641|Mux190~70_combout\);

-- Location: IOIBUF_X89_Y73_N8
\C[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(47),
	o => \C[47]~input_o\);

-- Location: LCCOMB_X60_Y40_N8
\shiftOut~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~234_combout\ = (\shiftOut~70_combout\ & ((\shiftOut~188_combout\) # ((\SLL641|Mux190~70_combout\)))) # (!\shiftOut~70_combout\ & (!\shiftOut~188_combout\ & ((\C[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~188_combout\,
	datac => \SLL641|Mux190~70_combout\,
	datad => \C[47]~input_o\,
	combout => \shiftOut~234_combout\);

-- Location: LCCOMB_X60_Y40_N2
\shiftOut~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~235_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~234_combout\ & ((\SLL641|Mux190~69_combout\))) # (!\shiftOut~234_combout\ & (\mux1OutUp[47]~31_combout\)))) # (!\shiftOut~188_combout\ & (((\shiftOut~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[47]~31_combout\,
	datab => \shiftOut~188_combout\,
	datac => \shiftOut~234_combout\,
	datad => \SLL641|Mux190~69_combout\,
	combout => \shiftOut~235_combout\);

-- Location: LCCOMB_X60_Y40_N28
\shiftOut~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~236_combout\ = (\shiftOut~187_combout\) # ((\shiftOut~235_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~187_combout\,
	datab => \shiftOut~235_combout\,
	datad => \ExtWord~input_o\,
	combout => \shiftOut~236_combout\);

-- Location: IOIBUF_X27_Y73_N15
\C[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(48),
	o => \C[48]~input_o\);

-- Location: LCCOMB_X61_Y36_N10
\SLL641|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux15~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[32]~13_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[48]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[32]~13_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[48]~12_combout\,
	combout => \SLL641|Mux15~2_combout\);

-- Location: LCCOMB_X61_Y36_N22
\SLL641|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux15~3_combout\ = (\SLL641|Mux15~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA641|Mux19~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux15~2_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \SRA641|Mux19~16_combout\,
	combout => \SLL641|Mux15~3_combout\);

-- Location: LCCOMB_X59_Y39_N16
\SLL641|Mux79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux79~0_combout\ = (\B[3]~input_o\ & (\SLL641|Mux23~1_combout\)) # (!\B[3]~input_o\ & ((\SLL641|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux23~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL641|Mux15~3_combout\,
	combout => \SLL641|Mux79~0_combout\);

-- Location: LCCOMB_X59_Y37_N6
\SLL641|Mux79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux79~1_combout\ = (\B[2]~input_o\ & (\SLL641|Mux83~0_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux79~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLL641|Mux83~0_combout\,
	datad => \SLL641|Mux79~0_combout\,
	combout => \SLL641|Mux79~1_combout\);

-- Location: LCCOMB_X58_Y41_N30
\SLL641|Mux190~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~71_combout\ = (\B[1]~input_o\ & ((\SLL641|Mux81~1_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux79~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL641|Mux79~1_combout\,
	datad => \SLL641|Mux81~1_combout\,
	combout => \SLL641|Mux190~71_combout\);

-- Location: LCCOMB_X60_Y40_N30
\shiftOut~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~237_combout\ = (\shiftOut~188_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~71_combout\))) # (!\shiftOut~70_combout\ & (\C[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[48]~input_o\,
	datab => \shiftOut~188_combout\,
	datac => \SLL641|Mux190~71_combout\,
	datad => \shiftOut~70_combout\,
	combout => \shiftOut~237_combout\);

-- Location: LCCOMB_X60_Y40_N0
\shiftOut~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~238_combout\ = (\shiftOut~237_combout\ & (((\SLL641|Mux190~70_combout\)) # (!\shiftOut~188_combout\))) # (!\shiftOut~237_combout\ & (\shiftOut~188_combout\ & ((\mux1OutUp[48]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~237_combout\,
	datab => \shiftOut~188_combout\,
	datac => \SLL641|Mux190~70_combout\,
	datad => \mux1OutUp[48]~33_combout\,
	combout => \shiftOut~238_combout\);

-- Location: LCCOMB_X60_Y41_N0
\shiftOut~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~239_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~238_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \shiftOut~187_combout\,
	datad => \shiftOut~238_combout\,
	combout => \shiftOut~239_combout\);

-- Location: LCCOMB_X70_Y40_N26
\SLL641|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux14~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[33]~28_combout\))) # (!\B[4]~input_o\ & (\shiftIn[49]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[49]~27_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftIn[33]~28_combout\,
	combout => \SLL641|Mux14~2_combout\);

-- Location: LCCOMB_X70_Y40_N20
\SLL641|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux14~3_combout\ = (\SLL641|Mux14~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA641|Mux19~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux14~2_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \SRA641|Mux19~17_combout\,
	combout => \SLL641|Mux14~3_combout\);

-- Location: LCCOMB_X62_Y40_N28
\SLL641|Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux78~0_combout\ = (\B[3]~input_o\ & (\SLL641|Mux22~1_combout\)) # (!\B[3]~input_o\ & ((\SLL641|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux22~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL641|Mux14~3_combout\,
	combout => \SLL641|Mux78~0_combout\);

-- Location: LCCOMB_X62_Y40_N6
\SLL641|Mux78~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux78~1_combout\ = (\B[2]~input_o\ & (\SLL641|Mux82~0_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux78~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SLL641|Mux82~0_combout\,
	datad => \SLL641|Mux78~0_combout\,
	combout => \SLL641|Mux78~1_combout\);

-- Location: LCCOMB_X62_Y40_N24
\SLL641|Mux190~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~72_combout\ = (\B[1]~input_o\ & ((\SLL641|Mux80~1_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux78~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux78~1_combout\,
	datab => \B[1]~input_o\,
	datac => \SLL641|Mux80~1_combout\,
	combout => \SLL641|Mux190~72_combout\);

-- Location: IOIBUF_X52_Y0_N15
\C[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(49),
	o => \C[49]~input_o\);

-- Location: LCCOMB_X60_Y40_N18
\shiftOut~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~240_combout\ = (\shiftOut~70_combout\ & ((\shiftOut~188_combout\) # ((\SLL641|Mux190~72_combout\)))) # (!\shiftOut~70_combout\ & (!\shiftOut~188_combout\ & ((\C[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~188_combout\,
	datac => \SLL641|Mux190~72_combout\,
	datad => \C[49]~input_o\,
	combout => \shiftOut~240_combout\);

-- Location: LCCOMB_X60_Y40_N12
\shiftOut~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~241_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~240_combout\ & ((\SLL641|Mux190~71_combout\))) # (!\shiftOut~240_combout\ & (\mux1OutUp[49]~35_combout\)))) # (!\shiftOut~188_combout\ & (((\shiftOut~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[49]~35_combout\,
	datab => \shiftOut~188_combout\,
	datac => \SLL641|Mux190~71_combout\,
	datad => \shiftOut~240_combout\,
	combout => \shiftOut~241_combout\);

-- Location: LCCOMB_X60_Y40_N14
\shiftOut~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~242_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~241_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \shiftOut~187_combout\,
	datad => \shiftOut~241_combout\,
	combout => \shiftOut~242_combout\);

-- Location: IOIBUF_X0_Y44_N22
\C[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(50),
	o => \C[50]~input_o\);

-- Location: LCCOMB_X58_Y40_N24
\SLL641|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux13~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[34]~5_combout\))) # (!\B[4]~input_o\ & (\shiftIn[50]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[50]~4_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \shiftIn[34]~5_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL641|Mux13~2_combout\);

-- Location: LCCOMB_X58_Y40_N20
\SLL641|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux13~3_combout\ = (\SLL641|Mux13~2_combout\) # ((!\ExtWord~input_o\ & (\B[5]~input_o\ & \SRA641|Mux19~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SLL641|Mux13~2_combout\,
	datac => \B[5]~input_o\,
	datad => \SRA641|Mux19~18_combout\,
	combout => \SLL641|Mux13~3_combout\);

-- Location: LCCOMB_X59_Y38_N16
\SLL641|Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux77~0_combout\ = (\B[3]~input_o\ & ((\SLL641|Mux21~1_combout\))) # (!\B[3]~input_o\ & (\SLL641|Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux13~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL641|Mux21~1_combout\,
	combout => \SLL641|Mux77~0_combout\);

-- Location: LCCOMB_X58_Y41_N8
\SLL641|Mux77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux77~1_combout\ = (\B[2]~input_o\ & (\SLL641|Mux81~0_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux77~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux81~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux77~0_combout\,
	combout => \SLL641|Mux77~1_combout\);

-- Location: LCCOMB_X58_Y41_N2
\SLL641|Mux190~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~73_combout\ = (\B[1]~input_o\ & (\SLL641|Mux79~1_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux77~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux79~1_combout\,
	datac => \SLL641|Mux77~1_combout\,
	combout => \SLL641|Mux190~73_combout\);

-- Location: LCCOMB_X57_Y41_N16
\shiftOut~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~243_combout\ = (\shiftOut~188_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~73_combout\))) # (!\shiftOut~70_combout\ & (\C[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[50]~input_o\,
	datab => \shiftOut~188_combout\,
	datac => \shiftOut~70_combout\,
	datad => \SLL641|Mux190~73_combout\,
	combout => \shiftOut~243_combout\);

-- Location: LCCOMB_X57_Y41_N2
\shiftOut~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~244_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~243_combout\ & (\SLL641|Mux190~72_combout\)) # (!\shiftOut~243_combout\ & ((\mux1OutUp[50]~37_combout\))))) # (!\shiftOut~188_combout\ & (((\shiftOut~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~72_combout\,
	datab => \shiftOut~188_combout\,
	datac => \mux1OutUp[50]~37_combout\,
	datad => \shiftOut~243_combout\,
	combout => \shiftOut~244_combout\);

-- Location: LCCOMB_X60_Y41_N26
\shiftOut~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~245_combout\ = (\shiftOut~187_combout\) # ((\shiftOut~244_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~244_combout\,
	datab => \ExtWord~input_o\,
	datac => \shiftOut~187_combout\,
	combout => \shiftOut~245_combout\);

-- Location: IOIBUF_X38_Y73_N15
\C[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(51),
	o => \C[51]~input_o\);

-- Location: LCCOMB_X59_Y43_N14
\SLL641|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux12~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[35]~24_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[51]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[35]~24_combout\,
	datab => \shiftIn[51]~23_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftSig[5]~0_combout\,
	combout => \SLL641|Mux12~2_combout\);

-- Location: LCCOMB_X59_Y43_N20
\SLL641|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux12~3_combout\ = (\SLL641|Mux12~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA641|Mux19~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \SLL641|Mux12~2_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRA641|Mux19~19_combout\,
	combout => \SLL641|Mux12~3_combout\);

-- Location: LCCOMB_X59_Y40_N14
\SLL641|Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux76~0_combout\ = (\B[3]~input_o\ & (\SLL641|Mux20~1_combout\)) # (!\B[3]~input_o\ & ((\SLL641|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux20~1_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL641|Mux12~3_combout\,
	combout => \SLL641|Mux76~0_combout\);

-- Location: LCCOMB_X62_Y40_N18
\SLL641|Mux76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux76~1_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux80~0_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux76~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux76~0_combout\,
	datab => \SLL641|Mux80~0_combout\,
	datac => \B[2]~input_o\,
	combout => \SLL641|Mux76~1_combout\);

-- Location: LCCOMB_X62_Y40_N4
\SLL641|Mux190~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~74_combout\ = (\B[1]~input_o\ & ((\SLL641|Mux78~1_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux76~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux76~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux78~1_combout\,
	combout => \SLL641|Mux190~74_combout\);

-- Location: LCCOMB_X57_Y41_N20
\shiftOut~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~246_combout\ = (\shiftOut~188_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~74_combout\))) # (!\shiftOut~70_combout\ & (\C[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[51]~input_o\,
	datab => \shiftOut~188_combout\,
	datac => \shiftOut~70_combout\,
	datad => \SLL641|Mux190~74_combout\,
	combout => \shiftOut~246_combout\);

-- Location: LCCOMB_X57_Y41_N6
\shiftOut~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~247_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~246_combout\ & (\SLL641|Mux190~73_combout\)) # (!\shiftOut~246_combout\ & ((\mux1OutUp[51]~39_combout\))))) # (!\shiftOut~188_combout\ & (((\shiftOut~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~73_combout\,
	datab => \shiftOut~188_combout\,
	datac => \mux1OutUp[51]~39_combout\,
	datad => \shiftOut~246_combout\,
	combout => \shiftOut~247_combout\);

-- Location: LCCOMB_X57_Y41_N0
\shiftOut~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~248_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~247_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \shiftOut~187_combout\,
	datad => \shiftOut~247_combout\,
	combout => \shiftOut~248_combout\);

-- Location: IOIBUF_X0_Y45_N15
\C[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(52),
	o => \C[52]~input_o\);

-- Location: LCCOMB_X61_Y35_N0
\SLL641|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux11~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[36]~11_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[52]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[36]~11_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[52]~10_combout\,
	combout => \SLL641|Mux11~2_combout\);

-- Location: LCCOMB_X61_Y35_N12
\SLL641|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux11~3_combout\ = (\SLL641|Mux11~2_combout\) # ((\SRA641|Mux19~20_combout\ & (\B[5]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~20_combout\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \SLL641|Mux11~2_combout\,
	combout => \SLL641|Mux11~3_combout\);

-- Location: LCCOMB_X59_Y39_N26
\SLL641|Mux75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux75~0_combout\ = (\B[3]~input_o\ & (\SLL641|Mux19~1_combout\)) # (!\B[3]~input_o\ & ((\SLL641|Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL641|Mux19~1_combout\,
	datad => \SLL641|Mux11~3_combout\,
	combout => \SLL641|Mux75~0_combout\);

-- Location: LCCOMB_X59_Y39_N20
\SLL641|Mux75~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux75~1_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux79~0_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux75~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SLL641|Mux75~0_combout\,
	datad => \SLL641|Mux79~0_combout\,
	combout => \SLL641|Mux75~1_combout\);

-- Location: LCCOMB_X58_Y41_N28
\SLL641|Mux190~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~75_combout\ = (\B[1]~input_o\ & (\SLL641|Mux77~1_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux75~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLL641|Mux77~1_combout\,
	datad => \SLL641|Mux75~1_combout\,
	combout => \SLL641|Mux190~75_combout\);

-- Location: LCCOMB_X57_Y41_N26
\shiftOut~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~249_combout\ = (\shiftOut~188_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~75_combout\))) # (!\shiftOut~70_combout\ & (\C[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[52]~input_o\,
	datab => \shiftOut~188_combout\,
	datac => \shiftOut~70_combout\,
	datad => \SLL641|Mux190~75_combout\,
	combout => \shiftOut~249_combout\);

-- Location: LCCOMB_X57_Y41_N4
\shiftOut~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~250_combout\ = (\shiftOut~249_combout\ & (((\SLL641|Mux190~74_combout\)) # (!\shiftOut~188_combout\))) # (!\shiftOut~249_combout\ & (\shiftOut~188_combout\ & (\mux1OutUp[52]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~249_combout\,
	datab => \shiftOut~188_combout\,
	datac => \mux1OutUp[52]~41_combout\,
	datad => \SLL641|Mux190~74_combout\,
	combout => \shiftOut~250_combout\);

-- Location: LCCOMB_X57_Y41_N22
\shiftOut~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~251_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~250_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \shiftOut~250_combout\,
	datac => \shiftOut~187_combout\,
	combout => \shiftOut~251_combout\);

-- Location: IOIBUF_X54_Y73_N8
\C[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(53),
	o => \C[53]~input_o\);

-- Location: LCCOMB_X66_Y41_N26
\SLL641|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux10~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[37]~32_combout\))) # (!\B[4]~input_o\ & (\shiftIn[53]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[53]~31_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[37]~32_combout\,
	combout => \SLL641|Mux10~2_combout\);

-- Location: LCCOMB_X66_Y41_N14
\SLL641|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux10~3_combout\ = (\SLL641|Mux10~2_combout\) # ((!\ExtWord~input_o\ & (\B[5]~input_o\ & \SRA641|Mux19~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux10~2_combout\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \SRA641|Mux19~21_combout\,
	combout => \SLL641|Mux10~3_combout\);

-- Location: LCCOMB_X59_Y39_N30
\SLL641|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux74~0_combout\ = (\B[3]~input_o\ & (\SLL641|Mux18~1_combout\)) # (!\B[3]~input_o\ & ((\SLL641|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLL641|Mux18~1_combout\,
	datac => \SLL641|Mux10~3_combout\,
	combout => \SLL641|Mux74~0_combout\);

-- Location: LCCOMB_X62_Y40_N30
\SLL641|Mux74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux74~1_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux78~0_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux74~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux74~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux78~0_combout\,
	combout => \SLL641|Mux74~1_combout\);

-- Location: LCCOMB_X65_Y41_N22
\SLL641|Mux190~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~76_combout\ = (\B[1]~input_o\ & ((\SLL641|Mux76~1_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux74~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux74~1_combout\,
	datac => \SLL641|Mux76~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL641|Mux190~76_combout\);

-- Location: LCCOMB_X57_Y41_N8
\shiftOut~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~252_combout\ = (\shiftOut~70_combout\ & ((\shiftOut~188_combout\) # ((\SLL641|Mux190~76_combout\)))) # (!\shiftOut~70_combout\ & (!\shiftOut~188_combout\ & (\C[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~188_combout\,
	datac => \C[53]~input_o\,
	datad => \SLL641|Mux190~76_combout\,
	combout => \shiftOut~252_combout\);

-- Location: LCCOMB_X57_Y41_N18
\shiftOut~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~253_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~252_combout\ & ((\SLL641|Mux190~75_combout\))) # (!\shiftOut~252_combout\ & (\mux1OutUp[53]~43_combout\)))) # (!\shiftOut~188_combout\ & (((\shiftOut~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \mux1OutUp[53]~43_combout\,
	datac => \shiftOut~252_combout\,
	datad => \SLL641|Mux190~75_combout\,
	combout => \shiftOut~253_combout\);

-- Location: LCCOMB_X57_Y41_N28
\shiftOut~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~254_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~253_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \shiftOut~187_combout\,
	datad => \shiftOut~253_combout\,
	combout => \shiftOut~254_combout\);

-- Location: IOIBUF_X85_Y73_N1
\C[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(54),
	o => \C[54]~input_o\);

-- Location: LCCOMB_X58_Y37_N30
\SLL641|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux9~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[38]~9_combout\))) # (!\B[4]~input_o\ & (\shiftIn[54]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[54]~8_combout\,
	datac => \shiftSig[5]~0_combout\,
	datad => \shiftIn[38]~9_combout\,
	combout => \SLL641|Mux9~2_combout\);

-- Location: LCCOMB_X58_Y37_N4
\SLL641|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux9~3_combout\ = (\SLL641|Mux9~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA641|Mux19~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SLL641|Mux9~2_combout\,
	datad => \SRA641|Mux19~22_combout\,
	combout => \SLL641|Mux9~3_combout\);

-- Location: LCCOMB_X58_Y41_N22
\SLL641|Mux73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux73~0_combout\ = (\B[3]~input_o\ & (\SLL641|Mux17~1_combout\)) # (!\B[3]~input_o\ & ((\SLL641|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SLL641|Mux17~1_combout\,
	datad => \SLL641|Mux9~3_combout\,
	combout => \SLL641|Mux73~0_combout\);

-- Location: LCCOMB_X58_Y41_N16
\SLL641|Mux73~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux73~1_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux77~0_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux73~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux73~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux77~0_combout\,
	combout => \SLL641|Mux73~1_combout\);

-- Location: LCCOMB_X58_Y41_N18
\SLL641|Mux190~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~77_combout\ = (\B[1]~input_o\ & ((\SLL641|Mux75~1_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux73~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux73~1_combout\,
	datad => \SLL641|Mux75~1_combout\,
	combout => \SLL641|Mux190~77_combout\);

-- Location: LCCOMB_X65_Y41_N16
\shiftOut~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~255_combout\ = (\shiftOut~188_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~77_combout\))) # (!\shiftOut~70_combout\ & (\C[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[54]~input_o\,
	datab => \shiftOut~188_combout\,
	datac => \SLL641|Mux190~77_combout\,
	datad => \shiftOut~70_combout\,
	combout => \shiftOut~255_combout\);

-- Location: LCCOMB_X65_Y41_N10
\shiftOut~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~256_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~255_combout\ & ((\SLL641|Mux190~76_combout\))) # (!\shiftOut~255_combout\ & (\mux1OutUp[54]~45_combout\)))) # (!\shiftOut~188_combout\ & (((\shiftOut~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~188_combout\,
	datab => \mux1OutUp[54]~45_combout\,
	datac => \SLL641|Mux190~76_combout\,
	datad => \shiftOut~255_combout\,
	combout => \shiftOut~256_combout\);

-- Location: LCCOMB_X65_Y41_N4
\shiftOut~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~257_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~256_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \shiftOut~187_combout\,
	datad => \shiftOut~256_combout\,
	combout => \shiftOut~257_combout\);

-- Location: LCCOMB_X59_Y42_N26
\SLL641|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux8~2_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[39]~20_combout\))) # (!\B[4]~input_o\ & (\shiftIn[55]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \shiftIn[55]~19_combout\,
	datac => \shiftIn[39]~20_combout\,
	datad => \shiftSig[5]~0_combout\,
	combout => \SLL641|Mux8~2_combout\);

-- Location: LCCOMB_X63_Y40_N14
\SLL641|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux8~3_combout\ = (\SLL641|Mux8~2_combout\) # ((\B[5]~input_o\ & (!\ExtWord~input_o\ & \SRA641|Mux19~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \SRA641|Mux19~23_combout\,
	datad => \SLL641|Mux8~2_combout\,
	combout => \SLL641|Mux8~3_combout\);

-- Location: LCCOMB_X63_Y40_N4
\SLL641|Mux72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux72~0_combout\ = (\B[3]~input_o\ & ((\SLL641|Mux16~1_combout\))) # (!\B[3]~input_o\ & (\SLL641|Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux8~3_combout\,
	datac => \B[3]~input_o\,
	datad => \SLL641|Mux16~1_combout\,
	combout => \SLL641|Mux72~0_combout\);

-- Location: LCCOMB_X62_Y40_N0
\SLL641|Mux72~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux72~1_combout\ = (\B[2]~input_o\ & (\SLL641|Mux76~0_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux72~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux76~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux72~0_combout\,
	combout => \SLL641|Mux72~1_combout\);

-- Location: LCCOMB_X65_Y41_N6
\SLL641|Mux190~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~78_combout\ = (\B[1]~input_o\ & (\SLL641|Mux74~1_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux72~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux74~1_combout\,
	datac => \SLL641|Mux72~1_combout\,
	datad => \B[1]~input_o\,
	combout => \SLL641|Mux190~78_combout\);

-- Location: IOIBUF_X115_Y29_N8
\C[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(55),
	o => \C[55]~input_o\);

-- Location: LCCOMB_X65_Y41_N24
\shiftOut~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~258_combout\ = (\shiftOut~70_combout\ & ((\SLL641|Mux190~78_combout\) # ((\shiftOut~188_combout\)))) # (!\shiftOut~70_combout\ & (((\C[55]~input_o\ & !\shiftOut~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~78_combout\,
	datab => \shiftOut~70_combout\,
	datac => \C[55]~input_o\,
	datad => \shiftOut~188_combout\,
	combout => \shiftOut~258_combout\);

-- Location: LCCOMB_X65_Y41_N26
\shiftOut~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~259_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~258_combout\ & ((\SLL641|Mux190~77_combout\))) # (!\shiftOut~258_combout\ & (\mux1OutUp[55]~47_combout\)))) # (!\shiftOut~188_combout\ & (((\shiftOut~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[55]~47_combout\,
	datab => \shiftOut~188_combout\,
	datac => \SLL641|Mux190~77_combout\,
	datad => \shiftOut~258_combout\,
	combout => \shiftOut~259_combout\);

-- Location: LCCOMB_X65_Y41_N12
\shiftOut~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~260_combout\ = (\shiftOut~187_combout\) # ((\shiftOut~259_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~259_combout\,
	datab => \ExtWord~input_o\,
	datac => \shiftOut~187_combout\,
	combout => \shiftOut~260_combout\);

-- Location: IOIBUF_X65_Y73_N8
\C[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(56),
	o => \C[56]~input_o\);

-- Location: LCCOMB_X70_Y38_N0
\SLL641|Mux121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux121~0_combout\ = (\B[3]~input_o\) # ((\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \SLL641|Mux121~0_combout\);

-- Location: LCCOMB_X60_Y39_N18
\SLL641|Mux121~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux121~1_combout\ = (!\B[3]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \B[3]~input_o\,
	combout => \SLL641|Mux121~1_combout\);

-- Location: LCCOMB_X59_Y39_N8
\SLL641|Mux123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux123~0_combout\ = (\SLL641|Mux121~0_combout\ & (((\SLL641|Mux121~1_combout\)))) # (!\SLL641|Mux121~0_combout\ & ((\SLL641|Mux121~1_combout\ & ((\shiftIn[56]~16_combout\))) # (!\SLL641|Mux121~1_combout\ & (\SRA641|Mux19~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~24_combout\,
	datab => \SLL641|Mux121~0_combout\,
	datac => \shiftIn[56]~16_combout\,
	datad => \SLL641|Mux121~1_combout\,
	combout => \SLL641|Mux123~0_combout\);

-- Location: LCCOMB_X59_Y39_N18
\SLL641|Mux123~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux123~1_combout\ = (\SLL641|Mux121~0_combout\ & ((\SLL641|Mux123~0_combout\ & (\shiftIn[40]~17_combout\)) # (!\SLL641|Mux123~0_combout\ & ((\SLL641|Mux15~3_combout\))))) # (!\SLL641|Mux121~0_combout\ & (((\SLL641|Mux123~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[40]~17_combout\,
	datab => \SLL641|Mux121~0_combout\,
	datac => \SLL641|Mux123~0_combout\,
	datad => \SLL641|Mux15~3_combout\,
	combout => \SLL641|Mux123~1_combout\);

-- Location: LCCOMB_X59_Y39_N12
\SLL641|Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux71~0_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux75~0_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux123~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux123~1_combout\,
	datac => \SLL641|Mux75~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL641|Mux71~0_combout\);

-- Location: LCCOMB_X58_Y41_N4
\SLL641|Mux190~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~79_combout\ = (\B[1]~input_o\ & (\SLL641|Mux73~1_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux71~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux73~1_combout\,
	datac => \SLL641|Mux71~0_combout\,
	combout => \SLL641|Mux190~79_combout\);

-- Location: LCCOMB_X62_Y41_N0
\shiftOut~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~261_combout\ = (\shiftOut~70_combout\ & (((\SLL641|Mux190~79_combout\) # (\shiftOut~188_combout\)))) # (!\shiftOut~70_combout\ & (\C[56]~input_o\ & ((!\shiftOut~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \C[56]~input_o\,
	datac => \SLL641|Mux190~79_combout\,
	datad => \shiftOut~188_combout\,
	combout => \shiftOut~261_combout\);

-- Location: LCCOMB_X65_Y41_N30
\shiftOut~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~262_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~261_combout\ & (\SLL641|Mux190~78_combout\)) # (!\shiftOut~261_combout\ & ((\mux1OutUp[56]~49_combout\))))) # (!\shiftOut~188_combout\ & (((\shiftOut~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~78_combout\,
	datab => \shiftOut~188_combout\,
	datac => \shiftOut~261_combout\,
	datad => \mux1OutUp[56]~49_combout\,
	combout => \shiftOut~262_combout\);

-- Location: LCCOMB_X65_Y41_N0
\shiftOut~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~263_combout\ = (\shiftOut~187_combout\) # ((\shiftOut~262_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~262_combout\,
	datab => \ExtWord~input_o\,
	datac => \shiftOut~187_combout\,
	combout => \shiftOut~263_combout\);

-- Location: IOIBUF_X62_Y73_N22
\C[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(57),
	o => \C[57]~input_o\);

-- Location: LCCOMB_X59_Y39_N22
\SLL641|Mux122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux122~0_combout\ = (\SLL641|Mux121~0_combout\ & (((\SLL641|Mux14~3_combout\) # (\SLL641|Mux121~1_combout\)))) # (!\SLL641|Mux121~0_combout\ & (\SRA641|Mux19~25_combout\ & ((!\SLL641|Mux121~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~25_combout\,
	datab => \SLL641|Mux121~0_combout\,
	datac => \SLL641|Mux14~3_combout\,
	datad => \SLL641|Mux121~1_combout\,
	combout => \SLL641|Mux122~0_combout\);

-- Location: LCCOMB_X59_Y39_N0
\SLL641|Mux122~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux122~1_combout\ = (\SLL641|Mux122~0_combout\ & ((\shiftIn[41]~26_combout\) # ((!\SLL641|Mux121~1_combout\)))) # (!\SLL641|Mux122~0_combout\ & (((\shiftIn[57]~25_combout\ & \SLL641|Mux121~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[41]~26_combout\,
	datab => \shiftIn[57]~25_combout\,
	datac => \SLL641|Mux122~0_combout\,
	datad => \SLL641|Mux121~1_combout\,
	combout => \SLL641|Mux122~1_combout\);

-- Location: LCCOMB_X62_Y40_N2
\SLL641|Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux70~0_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux74~0_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux122~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SLL641|Mux122~1_combout\,
	datad => \SLL641|Mux74~0_combout\,
	combout => \SLL641|Mux70~0_combout\);

-- Location: LCCOMB_X62_Y41_N10
\SLL641|Mux190~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~80_combout\ = (\B[1]~input_o\ & (\SLL641|Mux72~1_combout\)) # (!\B[1]~input_o\ & ((\SLL641|Mux70~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux72~1_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux70~0_combout\,
	combout => \SLL641|Mux190~80_combout\);

-- Location: LCCOMB_X62_Y41_N12
\shiftOut~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~264_combout\ = (\shiftOut~70_combout\ & ((\shiftOut~188_combout\) # ((\SLL641|Mux190~80_combout\)))) # (!\shiftOut~70_combout\ & (!\shiftOut~188_combout\ & (\C[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~188_combout\,
	datac => \C[57]~input_o\,
	datad => \SLL641|Mux190~80_combout\,
	combout => \shiftOut~264_combout\);

-- Location: LCCOMB_X62_Y41_N22
\shiftOut~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~265_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~264_combout\ & ((\SLL641|Mux190~79_combout\))) # (!\shiftOut~264_combout\ & (\mux1OutUp[57]~51_combout\)))) # (!\shiftOut~188_combout\ & (((\shiftOut~264_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[57]~51_combout\,
	datab => \shiftOut~188_combout\,
	datac => \SLL641|Mux190~79_combout\,
	datad => \shiftOut~264_combout\,
	combout => \shiftOut~265_combout\);

-- Location: LCCOMB_X67_Y43_N24
\shiftOut~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~266_combout\ = (\shiftOut~187_combout\) # ((\shiftOut~265_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~265_combout\,
	datab => \shiftOut~187_combout\,
	datad => \ExtWord~input_o\,
	combout => \shiftOut~266_combout\);

-- Location: IOIBUF_X60_Y73_N22
\C[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(58),
	o => \C[58]~input_o\);

-- Location: LCCOMB_X59_Y38_N26
\SLL641|Mux121~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux121~2_combout\ = (\SLL641|Mux121~0_combout\ & (((\SLL641|Mux121~1_combout\)))) # (!\SLL641|Mux121~0_combout\ & ((\SLL641|Mux121~1_combout\ & ((\shiftIn[58]~2_combout\))) # (!\SLL641|Mux121~1_combout\ & (\SRA641|Mux19~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux121~0_combout\,
	datab => \SRA641|Mux19~26_combout\,
	datac => \shiftIn[58]~2_combout\,
	datad => \SLL641|Mux121~1_combout\,
	combout => \SLL641|Mux121~2_combout\);

-- Location: LCCOMB_X59_Y38_N4
\SLL641|Mux121~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux121~3_combout\ = (\SLL641|Mux121~0_combout\ & ((\SLL641|Mux121~2_combout\ & ((\shiftIn[42]~3_combout\))) # (!\SLL641|Mux121~2_combout\ & (\SLL641|Mux13~3_combout\)))) # (!\SLL641|Mux121~0_combout\ & (((\SLL641|Mux121~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux121~0_combout\,
	datab => \SLL641|Mux13~3_combout\,
	datac => \SLL641|Mux121~2_combout\,
	datad => \shiftIn[42]~3_combout\,
	combout => \SLL641|Mux121~3_combout\);

-- Location: LCCOMB_X58_Y41_N14
\SLL641|Mux69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux69~0_combout\ = (\B[2]~input_o\ & (\SLL641|Mux73~0_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux121~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux73~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux121~3_combout\,
	combout => \SLL641|Mux69~0_combout\);

-- Location: LCCOMB_X58_Y41_N0
\SLL641|Mux190~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~81_combout\ = (\B[1]~input_o\ & ((\SLL641|Mux71~0_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux69~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux69~0_combout\,
	datac => \SLL641|Mux71~0_combout\,
	combout => \SLL641|Mux190~81_combout\);

-- Location: LCCOMB_X62_Y41_N8
\shiftOut~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~267_combout\ = (\shiftOut~70_combout\ & ((\shiftOut~188_combout\) # ((\SLL641|Mux190~81_combout\)))) # (!\shiftOut~70_combout\ & (!\shiftOut~188_combout\ & (\C[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~188_combout\,
	datac => \C[58]~input_o\,
	datad => \SLL641|Mux190~81_combout\,
	combout => \shiftOut~267_combout\);

-- Location: LCCOMB_X62_Y41_N18
\shiftOut~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~268_combout\ = (\shiftOut~267_combout\ & ((\SLL641|Mux190~80_combout\) # ((!\shiftOut~188_combout\)))) # (!\shiftOut~267_combout\ & (((\mux1OutUp[58]~53_combout\ & \shiftOut~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~80_combout\,
	datab => \mux1OutUp[58]~53_combout\,
	datac => \shiftOut~267_combout\,
	datad => \shiftOut~188_combout\,
	combout => \shiftOut~268_combout\);

-- Location: LCCOMB_X67_Y43_N10
\shiftOut~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~269_combout\ = (\shiftOut~187_combout\) # ((\shiftOut~268_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~268_combout\,
	datab => \shiftOut~187_combout\,
	datad => \ExtWord~input_o\,
	combout => \shiftOut~269_combout\);

-- Location: IOIBUF_X0_Y44_N15
\C[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(59),
	o => \C[59]~input_o\);

-- Location: LCCOMB_X59_Y39_N10
\SLL641|Mux120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux120~0_combout\ = (\SLL641|Mux121~1_combout\ & (((\SLL641|Mux121~0_combout\)))) # (!\SLL641|Mux121~1_combout\ & ((\SLL641|Mux121~0_combout\ & ((\SLL641|Mux12~3_combout\))) # (!\SLL641|Mux121~0_combout\ & (\SRA641|Mux19~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~27_combout\,
	datab => \SLL641|Mux121~1_combout\,
	datac => \SLL641|Mux12~3_combout\,
	datad => \SLL641|Mux121~0_combout\,
	combout => \SLL641|Mux120~0_combout\);

-- Location: LCCOMB_X59_Y39_N28
\SLL641|Mux120~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux120~1_combout\ = (\SLL641|Mux120~0_combout\ & ((\shiftIn[43]~22_combout\) # ((!\SLL641|Mux121~1_combout\)))) # (!\SLL641|Mux120~0_combout\ & (((\shiftIn[59]~21_combout\ & \SLL641|Mux121~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux120~0_combout\,
	datab => \shiftIn[43]~22_combout\,
	datac => \shiftIn[59]~21_combout\,
	datad => \SLL641|Mux121~1_combout\,
	combout => \SLL641|Mux120~1_combout\);

-- Location: LCCOMB_X62_Y40_N12
\SLL641|Mux68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux68~0_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux72~0_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux120~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SLL641|Mux120~1_combout\,
	datad => \SLL641|Mux72~0_combout\,
	combout => \SLL641|Mux68~0_combout\);

-- Location: LCCOMB_X62_Y41_N20
\SLL641|Mux190~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~82_combout\ = (\B[1]~input_o\ & ((\SLL641|Mux70~0_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux68~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux68~0_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux70~0_combout\,
	combout => \SLL641|Mux190~82_combout\);

-- Location: LCCOMB_X62_Y41_N14
\shiftOut~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~270_combout\ = (\shiftOut~188_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~82_combout\))) # (!\shiftOut~70_combout\ & (\C[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[59]~input_o\,
	datab => \shiftOut~188_combout\,
	datac => \shiftOut~70_combout\,
	datad => \SLL641|Mux190~82_combout\,
	combout => \shiftOut~270_combout\);

-- Location: LCCOMB_X62_Y41_N16
\shiftOut~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~271_combout\ = (\shiftOut~270_combout\ & (((\SLL641|Mux190~81_combout\) # (!\shiftOut~188_combout\)))) # (!\shiftOut~270_combout\ & (\mux1OutUp[59]~55_combout\ & ((\shiftOut~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[59]~55_combout\,
	datab => \SLL641|Mux190~81_combout\,
	datac => \shiftOut~270_combout\,
	datad => \shiftOut~188_combout\,
	combout => \shiftOut~271_combout\);

-- Location: LCCOMB_X73_Y41_N4
\shiftOut~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~272_combout\ = (\shiftOut~187_combout\) # ((\shiftOut~271_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftOut~271_combout\,
	datac => \shiftOut~187_combout\,
	datad => \ExtWord~input_o\,
	combout => \shiftOut~272_combout\);

-- Location: IOIBUF_X35_Y73_N15
\C[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(60),
	o => \C[60]~input_o\);

-- Location: LCCOMB_X59_Y39_N6
\SLL641|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux67~0_combout\ = (\SLL641|Mux121~0_combout\ & (((\SLL641|Mux121~1_combout\)))) # (!\SLL641|Mux121~0_combout\ & ((\SLL641|Mux121~1_combout\ & ((\shiftIn[60]~14_combout\))) # (!\SLL641|Mux121~1_combout\ & (\SRA641|Mux19~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRA641|Mux19~28_combout\,
	datab => \SLL641|Mux121~0_combout\,
	datac => \shiftIn[60]~14_combout\,
	datad => \SLL641|Mux121~1_combout\,
	combout => \SLL641|Mux67~0_combout\);

-- Location: LCCOMB_X59_Y39_N24
\SLL641|Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux67~1_combout\ = (\SLL641|Mux67~0_combout\ & (((\shiftIn[44]~15_combout\)) # (!\SLL641|Mux121~0_combout\))) # (!\SLL641|Mux67~0_combout\ & (\SLL641|Mux121~0_combout\ & ((\SLL641|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux67~0_combout\,
	datab => \SLL641|Mux121~0_combout\,
	datac => \shiftIn[44]~15_combout\,
	datad => \SLL641|Mux11~3_combout\,
	combout => \SLL641|Mux67~1_combout\);

-- Location: LCCOMB_X59_Y39_N2
\SLL641|Mux190~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~83_combout\ = (\B[2]~input_o\ & ((\SLL641|Mux123~1_combout\))) # (!\B[2]~input_o\ & (\SLL641|Mux67~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLL641|Mux67~1_combout\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux123~1_combout\,
	combout => \SLL641|Mux190~83_combout\);

-- Location: LCCOMB_X58_Y41_N26
\SLL641|Mux190~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~84_combout\ = (\B[1]~input_o\ & ((\SLL641|Mux69~0_combout\))) # (!\B[1]~input_o\ & (\SLL641|Mux190~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux190~83_combout\,
	datac => \SLL641|Mux69~0_combout\,
	combout => \SLL641|Mux190~84_combout\);

-- Location: LCCOMB_X62_Y41_N2
\shiftOut~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~273_combout\ = (\shiftOut~188_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & ((\SLL641|Mux190~84_combout\))) # (!\shiftOut~70_combout\ & (\C[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[60]~input_o\,
	datab => \shiftOut~188_combout\,
	datac => \shiftOut~70_combout\,
	datad => \SLL641|Mux190~84_combout\,
	combout => \shiftOut~273_combout\);

-- Location: LCCOMB_X62_Y41_N4
\shiftOut~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~274_combout\ = (\shiftOut~273_combout\ & (((\SLL641|Mux190~82_combout\)) # (!\shiftOut~188_combout\))) # (!\shiftOut~273_combout\ & (\shiftOut~188_combout\ & (\mux1OutUp[60]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~273_combout\,
	datab => \shiftOut~188_combout\,
	datac => \mux1OutUp[60]~57_combout\,
	datad => \SLL641|Mux190~82_combout\,
	combout => \shiftOut~274_combout\);

-- Location: LCCOMB_X73_Y41_N22
\shiftOut~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~275_combout\ = (\shiftOut~187_combout\) # ((\shiftOut~274_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftOut~187_combout\,
	datac => \shiftOut~274_combout\,
	datad => \ExtWord~input_o\,
	combout => \shiftOut~275_combout\);

-- Location: IOIBUF_X62_Y73_N15
\C[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(61),
	o => \C[61]~input_o\);

-- Location: LCCOMB_X59_Y39_N4
\SLL641|Mux66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux66~0_combout\ = (\SLL641|Mux121~0_combout\ & ((\SLL641|Mux10~3_combout\) # ((\SLL641|Mux121~1_combout\)))) # (!\SLL641|Mux121~0_combout\ & (((\SRA641|Mux19~29_combout\ & !\SLL641|Mux121~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux10~3_combout\,
	datab => \SLL641|Mux121~0_combout\,
	datac => \SRA641|Mux19~29_combout\,
	datad => \SLL641|Mux121~1_combout\,
	combout => \SLL641|Mux66~0_combout\);

-- Location: LCCOMB_X59_Y39_N14
\SLL641|Mux66~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux66~1_combout\ = (\SLL641|Mux121~1_combout\ & ((\SLL641|Mux66~0_combout\ & ((\shiftIn[45]~30_combout\))) # (!\SLL641|Mux66~0_combout\ & (\shiftIn[61]~29_combout\)))) # (!\SLL641|Mux121~1_combout\ & (((\SLL641|Mux66~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[61]~29_combout\,
	datab => \SLL641|Mux121~1_combout\,
	datac => \SLL641|Mux66~0_combout\,
	datad => \shiftIn[45]~30_combout\,
	combout => \SLL641|Mux66~1_combout\);

-- Location: LCCOMB_X62_Y40_N14
\SLL641|Mux190~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~85_combout\ = (!\B[1]~input_o\ & ((\B[2]~input_o\ & (\SLL641|Mux122~1_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux66~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux122~1_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux66~1_combout\,
	combout => \SLL641|Mux190~85_combout\);

-- Location: LCCOMB_X62_Y41_N6
\SLL641|Mux190~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~86_combout\ = (\SLL641|Mux190~85_combout\) # ((\B[1]~input_o\ & \SLL641|Mux68~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~85_combout\,
	datac => \B[1]~input_o\,
	datad => \SLL641|Mux68~0_combout\,
	combout => \SLL641|Mux190~86_combout\);

-- Location: LCCOMB_X62_Y41_N24
\shiftOut~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~276_combout\ = (\shiftOut~70_combout\ & ((\shiftOut~188_combout\) # ((\SLL641|Mux190~86_combout\)))) # (!\shiftOut~70_combout\ & (!\shiftOut~188_combout\ & (\C[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftOut~70_combout\,
	datab => \shiftOut~188_combout\,
	datac => \C[61]~input_o\,
	datad => \SLL641|Mux190~86_combout\,
	combout => \shiftOut~276_combout\);

-- Location: LCCOMB_X62_Y41_N26
\shiftOut~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~277_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~276_combout\ & ((\SLL641|Mux190~84_combout\))) # (!\shiftOut~276_combout\ & (\mux1OutUp[61]~59_combout\)))) # (!\shiftOut~188_combout\ & (((\shiftOut~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1OutUp[61]~59_combout\,
	datab => \shiftOut~188_combout\,
	datac => \SLL641|Mux190~84_combout\,
	datad => \shiftOut~276_combout\,
	combout => \shiftOut~277_combout\);

-- Location: LCCOMB_X60_Y41_N28
\shiftOut~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~278_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~277_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \shiftOut~187_combout\,
	datad => \shiftOut~277_combout\,
	combout => \shiftOut~278_combout\);

-- Location: LCCOMB_X58_Y41_N20
\SLL641|Mux190~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~87_combout\ = (\B[2]~input_o\ & \SLL641|Mux121~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux121~3_combout\,
	combout => \SLL641|Mux190~87_combout\);

-- Location: LCCOMB_X57_Y37_N12
\SLL641|Mux190~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~88_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & ((\shiftIn[46]~7_combout\))) # (!\B[4]~input_o\ & (\shiftIn[62]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftSig[5]~0_combout\,
	datab => \shiftIn[62]~6_combout\,
	datac => \shiftIn[46]~7_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL641|Mux190~88_combout\);

-- Location: LCCOMB_X58_Y37_N24
\SLL641|Mux190~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~89_combout\ = (!\B[3]~input_o\ & ((\SLL641|Mux190~88_combout\) # ((\SRA641|Mux19~30_combout\ & !\shiftSig[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~88_combout\,
	datab => \B[3]~input_o\,
	datac => \SRA641|Mux19~30_combout\,
	datad => \shiftSig[5]~0_combout\,
	combout => \SLL641|Mux190~89_combout\);

-- Location: LCCOMB_X58_Y37_N26
\SLL641|Mux190~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~90_combout\ = (!\B[2]~input_o\ & ((\SLL641|Mux190~89_combout\) # ((\B[3]~input_o\ & \SLL641|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~89_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL641|Mux9~3_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL641|Mux190~90_combout\);

-- Location: LCCOMB_X58_Y41_N6
\SLL641|Mux190~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux190~91_combout\ = (\B[1]~input_o\ & (((\SLL641|Mux190~83_combout\)))) # (!\B[1]~input_o\ & ((\SLL641|Mux190~87_combout\) # ((\SLL641|Mux190~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLL641|Mux190~87_combout\,
	datac => \SLL641|Mux190~83_combout\,
	datad => \SLL641|Mux190~90_combout\,
	combout => \SLL641|Mux190~91_combout\);

-- Location: IOIBUF_X38_Y73_N1
\C[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(62),
	o => \C[62]~input_o\);

-- Location: LCCOMB_X62_Y41_N28
\shiftOut~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~279_combout\ = (\shiftOut~188_combout\ & (((\shiftOut~70_combout\)))) # (!\shiftOut~188_combout\ & ((\shiftOut~70_combout\ & (\SLL641|Mux190~91_combout\)) # (!\shiftOut~70_combout\ & ((\C[62]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~91_combout\,
	datab => \shiftOut~188_combout\,
	datac => \shiftOut~70_combout\,
	datad => \C[62]~input_o\,
	combout => \shiftOut~279_combout\);

-- Location: LCCOMB_X62_Y41_N30
\shiftOut~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~280_combout\ = (\shiftOut~188_combout\ & ((\shiftOut~279_combout\ & (\SLL641|Mux190~86_combout\)) # (!\shiftOut~279_combout\ & ((\mux1OutUp[62]~64_combout\))))) # (!\shiftOut~188_combout\ & (((\shiftOut~279_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux190~86_combout\,
	datab => \shiftOut~188_combout\,
	datac => \mux1OutUp[62]~64_combout\,
	datad => \shiftOut~279_combout\,
	combout => \shiftOut~280_combout\);

-- Location: LCCOMB_X60_Y39_N28
\shiftOut~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftOut~281_combout\ = (\shiftOut~187_combout\) # ((!\ExtWord~input_o\ & \shiftOut~280_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shiftOut~187_combout\,
	datac => \ExtWord~input_o\,
	datad => \shiftOut~280_combout\,
	combout => \shiftOut~281_combout\);

-- Location: LCCOMB_X63_Y40_N22
\SLL641|Mux128~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux128~1_combout\ = (\shiftSig[5]~0_combout\ & ((\B[4]~input_o\ & (\shiftIn[47]~18_combout\)) # (!\B[4]~input_o\ & ((\shiftIn[63]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftIn[47]~18_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \shiftIn[63]~1_combout\,
	datad => \B[4]~input_o\,
	combout => \SLL641|Mux128~1_combout\);

-- Location: LCCOMB_X63_Y40_N16
\SLL641|Mux128~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux128~2_combout\ = (!\B[3]~input_o\ & ((\SLL641|Mux128~1_combout\) # ((!\shiftSig[5]~0_combout\ & \SRA641|Mux19~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux128~1_combout\,
	datab => \shiftSig[5]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SRA641|Mux19~31_combout\,
	combout => \SLL641|Mux128~2_combout\);

-- Location: LCCOMB_X63_Y40_N26
\SLL641|Mux128~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux128~3_combout\ = (!\B[2]~input_o\ & ((\SLL641|Mux128~2_combout\) # ((\B[3]~input_o\ & \SLL641|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux128~2_combout\,
	datab => \B[3]~input_o\,
	datac => \SLL641|Mux8~3_combout\,
	datad => \B[2]~input_o\,
	combout => \SLL641|Mux128~3_combout\);

-- Location: LCCOMB_X62_Y40_N10
\SLL641|Mux128~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux128~4_combout\ = (!\B[1]~input_o\ & ((\SLL641|Mux128~3_combout\) # ((\SLL641|Mux120~1_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux120~1_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux128~3_combout\,
	combout => \SLL641|Mux128~4_combout\);

-- Location: LCCOMB_X62_Y40_N16
\SLL641|Mux128~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux128~0_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\ & (\SLL641|Mux122~1_combout\)) # (!\B[2]~input_o\ & ((\SLL641|Mux66~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux122~1_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SLL641|Mux66~1_combout\,
	combout => \SLL641|Mux128~0_combout\);

-- Location: LCCOMB_X62_Y40_N20
\SLL641|Mux128~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLL641|Mux128~5_combout\ = (\B[0]~input_o\ & (((\SLL641|Mux190~91_combout\)))) # (!\B[0]~input_o\ & ((\SLL641|Mux128~4_combout\) # ((\SLL641|Mux128~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLL641|Mux128~4_combout\,
	datab => \SLL641|Mux190~91_combout\,
	datac => \B[0]~input_o\,
	datad => \SLL641|Mux128~0_combout\,
	combout => \SLL641|Mux128~5_combout\);

-- Location: IOIBUF_X115_Y25_N22
\C[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(63),
	o => \C[63]~input_o\);

-- Location: LCCOMB_X69_Y36_N10
\mux2OutUp[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2OutUp[0]~3_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[0]~input_o\ & (\SLL641|Mux128~5_combout\)) # (!\ShiftFN[0]~input_o\ & ((\C[63]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \SLL641|Mux128~5_combout\,
	datac => \ExtWord~input_o\,
	datad => \C[63]~input_o\,
	combout => \mux2OutUp[0]~3_combout\);

-- Location: LCCOMB_X69_Y36_N24
\mux2OutUp[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2OutUp[0]~2_combout\ = (\mux2OutLow[31]~2_combout\ & \ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2OutLow[31]~2_combout\,
	datac => \ExtWord~input_o\,
	combout => \mux2OutUp[0]~2_combout\);

-- Location: LCCOMB_X69_Y36_N4
\mux2OutUp[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux2OutUp[0]~4_combout\ = (\ShiftFN[1]~input_o\ & (((\SgnExtUp[0]~0_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\mux2OutUp[0]~3_combout\) # ((\mux2OutUp[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2OutUp[0]~3_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SgnExtUp[0]~0_combout\,
	datad => \mux2OutUp[0]~2_combout\,
	combout => \mux2OutUp[0]~4_combout\);

-- Location: IOIBUF_X0_Y68_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X115_Y65_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X20_Y73_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X115_Y64_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X115_Y63_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X105_Y0_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X107_Y73_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X115_Y23_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X20_Y73_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X107_Y73_N15
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X115_Y16_N1
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X0_Y69_N8
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X0_Y15_N22
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X16_Y73_N8
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X115_Y67_N15
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X115_Y62_N15
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X0_Y57_N22
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(16) <= \Y[16]~output_o\;

ww_Y(17) <= \Y[17]~output_o\;

ww_Y(18) <= \Y[18]~output_o\;

ww_Y(19) <= \Y[19]~output_o\;

ww_Y(20) <= \Y[20]~output_o\;

ww_Y(21) <= \Y[21]~output_o\;

ww_Y(22) <= \Y[22]~output_o\;

ww_Y(23) <= \Y[23]~output_o\;

ww_Y(24) <= \Y[24]~output_o\;

ww_Y(25) <= \Y[25]~output_o\;

ww_Y(26) <= \Y[26]~output_o\;

ww_Y(27) <= \Y[27]~output_o\;

ww_Y(28) <= \Y[28]~output_o\;

ww_Y(29) <= \Y[29]~output_o\;

ww_Y(30) <= \Y[30]~output_o\;

ww_Y(31) <= \Y[31]~output_o\;

ww_Y(32) <= \Y[32]~output_o\;

ww_Y(33) <= \Y[33]~output_o\;

ww_Y(34) <= \Y[34]~output_o\;

ww_Y(35) <= \Y[35]~output_o\;

ww_Y(36) <= \Y[36]~output_o\;

ww_Y(37) <= \Y[37]~output_o\;

ww_Y(38) <= \Y[38]~output_o\;

ww_Y(39) <= \Y[39]~output_o\;

ww_Y(40) <= \Y[40]~output_o\;

ww_Y(41) <= \Y[41]~output_o\;

ww_Y(42) <= \Y[42]~output_o\;

ww_Y(43) <= \Y[43]~output_o\;

ww_Y(44) <= \Y[44]~output_o\;

ww_Y(45) <= \Y[45]~output_o\;

ww_Y(46) <= \Y[46]~output_o\;

ww_Y(47) <= \Y[47]~output_o\;

ww_Y(48) <= \Y[48]~output_o\;

ww_Y(49) <= \Y[49]~output_o\;

ww_Y(50) <= \Y[50]~output_o\;

ww_Y(51) <= \Y[51]~output_o\;

ww_Y(52) <= \Y[52]~output_o\;

ww_Y(53) <= \Y[53]~output_o\;

ww_Y(54) <= \Y[54]~output_o\;

ww_Y(55) <= \Y[55]~output_o\;

ww_Y(56) <= \Y[56]~output_o\;

ww_Y(57) <= \Y[57]~output_o\;

ww_Y(58) <= \Y[58]~output_o\;

ww_Y(59) <= \Y[59]~output_o\;

ww_Y(60) <= \Y[60]~output_o\;

ww_Y(61) <= \Y[61]~output_o\;

ww_Y(62) <= \Y[62]~output_o\;

ww_Y(63) <= \Y[63]~output_o\;
END structure;


