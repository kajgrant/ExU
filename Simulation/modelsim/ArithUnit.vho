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

-- DATE "04/09/2022 15:22:09"

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

ENTITY 	ArithUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	AddY : OUT std_logic_vector(63 DOWNTO 0);
	Y : OUT std_logic_vector(63 DOWNTO 0);
	AddnSub : IN std_logic;
	ExtWord : IN std_logic;
	Cout : OUT std_logic;
	Ovfl : OUT std_logic;
	Zero : OUT std_logic;
	AltB : OUT std_logic;
	AltBu : OUT std_logic
	);
END ArithUnit;

-- Design Ports Information
-- AddY[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[1]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[3]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[4]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[5]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[6]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[7]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[8]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[9]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[10]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[11]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[12]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[13]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[14]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[15]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[16]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[17]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[18]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[19]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[20]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[21]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[22]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[23]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[24]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[25]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[26]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[27]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[28]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[29]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[30]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[31]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[32]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[33]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[34]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[35]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[36]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[37]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[38]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[39]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[40]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[41]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[42]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[43]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[44]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[45]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[46]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[47]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[48]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[49]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[50]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[51]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[52]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[53]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[54]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[55]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[56]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[57]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[58]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[59]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[60]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[61]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[62]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[63]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ArithUnit IS
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
SIGNAL ww_AddY : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_AddnSub : std_logic;
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL ww_AltB : std_logic;
SIGNAL ww_AltBu : std_logic;
SIGNAL \AddY[0]~output_o\ : std_logic;
SIGNAL \AddY[1]~output_o\ : std_logic;
SIGNAL \AddY[2]~output_o\ : std_logic;
SIGNAL \AddY[3]~output_o\ : std_logic;
SIGNAL \AddY[4]~output_o\ : std_logic;
SIGNAL \AddY[5]~output_o\ : std_logic;
SIGNAL \AddY[6]~output_o\ : std_logic;
SIGNAL \AddY[7]~output_o\ : std_logic;
SIGNAL \AddY[8]~output_o\ : std_logic;
SIGNAL \AddY[9]~output_o\ : std_logic;
SIGNAL \AddY[10]~output_o\ : std_logic;
SIGNAL \AddY[11]~output_o\ : std_logic;
SIGNAL \AddY[12]~output_o\ : std_logic;
SIGNAL \AddY[13]~output_o\ : std_logic;
SIGNAL \AddY[14]~output_o\ : std_logic;
SIGNAL \AddY[15]~output_o\ : std_logic;
SIGNAL \AddY[16]~output_o\ : std_logic;
SIGNAL \AddY[17]~output_o\ : std_logic;
SIGNAL \AddY[18]~output_o\ : std_logic;
SIGNAL \AddY[19]~output_o\ : std_logic;
SIGNAL \AddY[20]~output_o\ : std_logic;
SIGNAL \AddY[21]~output_o\ : std_logic;
SIGNAL \AddY[22]~output_o\ : std_logic;
SIGNAL \AddY[23]~output_o\ : std_logic;
SIGNAL \AddY[24]~output_o\ : std_logic;
SIGNAL \AddY[25]~output_o\ : std_logic;
SIGNAL \AddY[26]~output_o\ : std_logic;
SIGNAL \AddY[27]~output_o\ : std_logic;
SIGNAL \AddY[28]~output_o\ : std_logic;
SIGNAL \AddY[29]~output_o\ : std_logic;
SIGNAL \AddY[30]~output_o\ : std_logic;
SIGNAL \AddY[31]~output_o\ : std_logic;
SIGNAL \AddY[32]~output_o\ : std_logic;
SIGNAL \AddY[33]~output_o\ : std_logic;
SIGNAL \AddY[34]~output_o\ : std_logic;
SIGNAL \AddY[35]~output_o\ : std_logic;
SIGNAL \AddY[36]~output_o\ : std_logic;
SIGNAL \AddY[37]~output_o\ : std_logic;
SIGNAL \AddY[38]~output_o\ : std_logic;
SIGNAL \AddY[39]~output_o\ : std_logic;
SIGNAL \AddY[40]~output_o\ : std_logic;
SIGNAL \AddY[41]~output_o\ : std_logic;
SIGNAL \AddY[42]~output_o\ : std_logic;
SIGNAL \AddY[43]~output_o\ : std_logic;
SIGNAL \AddY[44]~output_o\ : std_logic;
SIGNAL \AddY[45]~output_o\ : std_logic;
SIGNAL \AddY[46]~output_o\ : std_logic;
SIGNAL \AddY[47]~output_o\ : std_logic;
SIGNAL \AddY[48]~output_o\ : std_logic;
SIGNAL \AddY[49]~output_o\ : std_logic;
SIGNAL \AddY[50]~output_o\ : std_logic;
SIGNAL \AddY[51]~output_o\ : std_logic;
SIGNAL \AddY[52]~output_o\ : std_logic;
SIGNAL \AddY[53]~output_o\ : std_logic;
SIGNAL \AddY[54]~output_o\ : std_logic;
SIGNAL \AddY[55]~output_o\ : std_logic;
SIGNAL \AddY[56]~output_o\ : std_logic;
SIGNAL \AddY[57]~output_o\ : std_logic;
SIGNAL \AddY[58]~output_o\ : std_logic;
SIGNAL \AddY[59]~output_o\ : std_logic;
SIGNAL \AddY[60]~output_o\ : std_logic;
SIGNAL \AddY[61]~output_o\ : std_logic;
SIGNAL \AddY[62]~output_o\ : std_logic;
SIGNAL \AddY[63]~output_o\ : std_logic;
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
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \AltBu~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:0:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:0:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:1:full_adder_inst|result~combout\ : std_logic;
SIGNAL \Adder1|adder_loop:1:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:2:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:2:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:3:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:3:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:4:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:4:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:5:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:5:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:6:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:6:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:7:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:7:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:8:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:8:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:9:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:9:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:10:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:10:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:11:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:11:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:12:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:12:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:13:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:13:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:14:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:14:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:15:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:15:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:16:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:16:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:17:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:17:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:18:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:18:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:19:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:19:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:20:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:20:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:21:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:21:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:22:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:22:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:23:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:23:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:24:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:24:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:25:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:25:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:26:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:26:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:27:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:27:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:28:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:28:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:29:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:29:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:30:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:30:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:31:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:31:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:32:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:32:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:33:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:33:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:34:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:34:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:35:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:35:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:36:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:36:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:37:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:37:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:38:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:38:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:39:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:39:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:40:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:40:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:41:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:41:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:42:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:42:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:43:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:43:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:44:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:44:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:45:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:45:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:46:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:46:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:47:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:47:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:48:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:48:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:49:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:49:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:50:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:50:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:51:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:51:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:52:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:52:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:53:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:53:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:54:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:54:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:55:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:55:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:56:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:56:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:57:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:57:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:58:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:58:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:59:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:59:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:60:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:60:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:61:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:61:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:62:full_adder_inst|result~0_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \Adder1|adder_loop:62:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:63:full_adder_inst|result~combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \sgn_ext_vec~0_combout\ : std_logic;
SIGNAL \sgn_ext_vec~1_combout\ : std_logic;
SIGNAL \sgn_ext_vec~2_combout\ : std_logic;
SIGNAL \sgn_ext_vec~3_combout\ : std_logic;
SIGNAL \sgn_ext_vec~4_combout\ : std_logic;
SIGNAL \sgn_ext_vec~5_combout\ : std_logic;
SIGNAL \sgn_ext_vec~6_combout\ : std_logic;
SIGNAL \sgn_ext_vec~7_combout\ : std_logic;
SIGNAL \sgn_ext_vec~8_combout\ : std_logic;
SIGNAL \sgn_ext_vec~9_combout\ : std_logic;
SIGNAL \sgn_ext_vec~10_combout\ : std_logic;
SIGNAL \sgn_ext_vec~11_combout\ : std_logic;
SIGNAL \sgn_ext_vec~12_combout\ : std_logic;
SIGNAL \sgn_ext_vec~13_combout\ : std_logic;
SIGNAL \sgn_ext_vec~14_combout\ : std_logic;
SIGNAL \sgn_ext_vec~15_combout\ : std_logic;
SIGNAL \sgn_ext_vec~16_combout\ : std_logic;
SIGNAL \sgn_ext_vec~17_combout\ : std_logic;
SIGNAL \sgn_ext_vec~18_combout\ : std_logic;
SIGNAL \sgn_ext_vec~19_combout\ : std_logic;
SIGNAL \sgn_ext_vec~20_combout\ : std_logic;
SIGNAL \sgn_ext_vec~21_combout\ : std_logic;
SIGNAL \sgn_ext_vec~22_combout\ : std_logic;
SIGNAL \sgn_ext_vec~23_combout\ : std_logic;
SIGNAL \sgn_ext_vec~24_combout\ : std_logic;
SIGNAL \sgn_ext_vec~25_combout\ : std_logic;
SIGNAL \sgn_ext_vec~26_combout\ : std_logic;
SIGNAL \sgn_ext_vec~27_combout\ : std_logic;
SIGNAL \sgn_ext_vec~28_combout\ : std_logic;
SIGNAL \sgn_ext_vec~29_combout\ : std_logic;
SIGNAL \sgn_ext_vec~30_combout\ : std_logic;
SIGNAL \sgn_ext_vec~31_combout\ : std_logic;
SIGNAL \Adder1|adder_loop:63:full_adder_inst|o_carry~0_combout\ : std_logic;
SIGNAL \Adder1|Ovfl~combout\ : std_logic;
SIGNAL \nor1:result~0_combout\ : std_logic;
SIGNAL \nor1:result~1_combout\ : std_logic;
SIGNAL \nor1:result~6_combout\ : std_logic;
SIGNAL \nor1:result~5_combout\ : std_logic;
SIGNAL \nor1:result~4_combout\ : std_logic;
SIGNAL \nor1:result~7_combout\ : std_logic;
SIGNAL \nor1:result~8_combout\ : std_logic;
SIGNAL \nor1:result~2_combout\ : std_logic;
SIGNAL \nor1:result~3_combout\ : std_logic;
SIGNAL \nor1:result~9_combout\ : std_logic;
SIGNAL \nor1:result~18_combout\ : std_logic;
SIGNAL \nor1:result~16_combout\ : std_logic;
SIGNAL \nor1:result~15_combout\ : std_logic;
SIGNAL \nor1:result~17_combout\ : std_logic;
SIGNAL \nor1:result~19_combout\ : std_logic;
SIGNAL \nor1:result~10_combout\ : std_logic;
SIGNAL \nor1:result~11_combout\ : std_logic;
SIGNAL \nor1:result~12_combout\ : std_logic;
SIGNAL \nor1:result~13_combout\ : std_logic;
SIGNAL \nor1:result~14_combout\ : std_logic;
SIGNAL \nor1:result~combout\ : std_logic;
SIGNAL \AltB~2_combout\ : std_logic;
SIGNAL \ALT_INV_nor1:result~combout\ : std_logic;
SIGNAL \Adder1|adder_loop:63:full_adder_inst|ALT_INV_o_carry~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
AddY <= ww_AddY;
Y <= ww_Y;
ww_AddnSub <= AddnSub;
ww_ExtWord <= ExtWord;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
Zero <= ww_Zero;
AltB <= ww_AltB;
AltBu <= ww_AltBu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_nor1:result~combout\ <= NOT \nor1:result~combout\;
\Adder1|adder_loop:63:full_adder_inst|ALT_INV_o_carry~0_combout\ <= NOT \Adder1|adder_loop:63:full_adder_inst|o_carry~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X20_Y73_N23
\AddY[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:0:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[0]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\AddY[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:1:full_adder_inst|result~combout\,
	devoe => ww_devoe,
	o => \AddY[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\AddY[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:2:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[2]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\AddY[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:3:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[3]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\AddY[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:4:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\AddY[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:5:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\AddY[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:6:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\AddY[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:7:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\AddY[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:8:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[8]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\AddY[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:9:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[9]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\AddY[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:10:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[10]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\AddY[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:11:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[11]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\AddY[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:12:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[12]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\AddY[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:13:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\AddY[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:14:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[14]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\AddY[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:15:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[15]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\AddY[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:16:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[16]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\AddY[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:17:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[17]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\AddY[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:18:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[18]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\AddY[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:19:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[19]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\AddY[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:20:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[20]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\AddY[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:21:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[21]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\AddY[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:22:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[22]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\AddY[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:23:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[23]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\AddY[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:24:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[24]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\AddY[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:25:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[25]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\AddY[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:26:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[26]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\AddY[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:27:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[27]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\AddY[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:28:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[28]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\AddY[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:29:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[29]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\AddY[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:30:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[30]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\AddY[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[31]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\AddY[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:32:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[32]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\AddY[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:33:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[33]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\AddY[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:34:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[34]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\AddY[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:35:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[35]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\AddY[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:36:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[36]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\AddY[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:37:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[37]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\AddY[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:38:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[38]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\AddY[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:39:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[39]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\AddY[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:40:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[40]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\AddY[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:41:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[41]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\AddY[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:42:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[42]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\AddY[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:43:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[43]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\AddY[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:44:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[44]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\AddY[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:45:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[45]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\AddY[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:46:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[46]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\AddY[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:47:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[47]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\AddY[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:48:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[48]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\AddY[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:49:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[49]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\AddY[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:50:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[50]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\AddY[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:51:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[51]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\AddY[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:52:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[52]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\AddY[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:53:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[53]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\AddY[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:54:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[54]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\AddY[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:55:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[55]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\AddY[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:56:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[56]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\AddY[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:57:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[57]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\AddY[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:58:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[58]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\AddY[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:59:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[59]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\AddY[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:60:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[60]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\AddY[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:61:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[61]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\AddY[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:62:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \AddY[62]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\AddY[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:63:full_adder_inst|result~combout\,
	devoe => ww_devoe,
	o => \AddY[63]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:0:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:1:full_adder_inst|result~combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:2:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:3:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:4:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:5:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:6:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:7:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:8:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:9:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:10:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:11:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:12:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:13:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:14:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:15:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:16:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:17:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:18:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:19:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:20:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:21:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:22:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:23:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:24:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:25:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:26:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:27:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:28:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:29:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:30:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~0_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~1_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~2_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~3_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~4_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~5_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~6_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~7_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~8_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~9_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~10_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~11_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~12_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~13_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~14_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~15_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~16_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~17_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~18_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~19_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~20_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~21_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~22_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~23_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~24_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~25_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~26_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~27_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~28_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~29_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~30_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sgn_ext_vec~31_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:63:full_adder_inst|o_carry~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|Ovfl~combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_nor1:result~combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\AltB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AltB~2_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder1|adder_loop:63:full_adder_inst|ALT_INV_o_carry~0_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X0_Y21_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y24_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X1_Y24_N0
\Adder1|adder_loop:0:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:0:full_adder_inst|result~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Adder1|adder_loop:0:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y24_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: LCCOMB_X1_Y24_N10
\Adder1|adder_loop:0:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:0:full_adder_inst|o_carry~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:0:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y24_N4
\Adder1|adder_loop:1:full_adder_inst|result\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:1:full_adder_inst|result~combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:0:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:0:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:1:full_adder_inst|result~combout\);

-- Location: LCCOMB_X1_Y24_N22
\Adder1|adder_loop:1:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:1:full_adder_inst|o_carry~0_combout\ = (\A[1]~input_o\ & ((\Adder1|adder_loop:0:full_adder_inst|o_carry~0_combout\) # (\B[1]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[1]~input_o\ & (\Adder1|adder_loop:0:full_adder_inst|o_carry~0_combout\ 
-- & (\B[1]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:0:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:1:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y24_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y24_N24
\Adder1|adder_loop:2:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:2:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:1:full_adder_inst|o_carry~0_combout\ $ (\A[2]~input_o\ $ (\AddnSub~input_o\ $ (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:1:full_adder_inst|o_carry~0_combout\,
	datab => \A[2]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[2]~input_o\,
	combout => \Adder1|adder_loop:2:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y10_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X1_Y24_N2
\Adder1|adder_loop:2:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:2:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:1:full_adder_inst|o_carry~0_combout\ & ((\A[2]~input_o\) # (\AddnSub~input_o\ $ (\B[2]~input_o\)))) # (!\Adder1|adder_loop:1:full_adder_inst|o_carry~0_combout\ & (\A[2]~input_o\ 
-- & (\AddnSub~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:1:full_adder_inst|o_carry~0_combout\,
	datab => \A[2]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[2]~input_o\,
	combout => \Adder1|adder_loop:2:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y13_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X1_Y13_N16
\Adder1|adder_loop:3:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:3:full_adder_inst|result~0_combout\ = \B[3]~input_o\ $ (\Adder1|adder_loop:2:full_adder_inst|o_carry~0_combout\ $ (\AddnSub~input_o\ $ (\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Adder1|adder_loop:2:full_adder_inst|o_carry~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \A[3]~input_o\,
	combout => \Adder1|adder_loop:3:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X5_Y0_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X1_Y13_N18
\Adder1|adder_loop:3:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:3:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:2:full_adder_inst|o_carry~0_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:2:full_adder_inst|o_carry~0_combout\ & (\A[3]~input_o\ 
-- & (\B[3]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Adder1|adder_loop:2:full_adder_inst|o_carry~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \A[3]~input_o\,
	combout => \Adder1|adder_loop:3:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y13_N12
\Adder1|adder_loop:4:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:4:full_adder_inst|result~0_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:3:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:3:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:4:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y10_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X1_Y13_N6
\Adder1|adder_loop:4:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:4:full_adder_inst|o_carry~0_combout\ = (\A[4]~input_o\ & ((\Adder1|adder_loop:3:full_adder_inst|o_carry~0_combout\) # (\B[4]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[4]~input_o\ & (\Adder1|adder_loop:3:full_adder_inst|o_carry~0_combout\ 
-- & (\B[4]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:3:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:4:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y13_N8
\Adder1|adder_loop:5:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:5:full_adder_inst|result~0_combout\ = \B[5]~input_o\ $ (\A[5]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:4:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:4:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:5:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y14_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X1_Y13_N10
\Adder1|adder_loop:5:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:5:full_adder_inst|o_carry~0_combout\ = (\A[5]~input_o\ & ((\Adder1|adder_loop:4:full_adder_inst|o_carry~0_combout\) # (\B[5]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[5]~input_o\ & (\Adder1|adder_loop:4:full_adder_inst|o_carry~0_combout\ 
-- & (\B[5]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:4:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:5:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y13_N28
\Adder1|adder_loop:6:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:6:full_adder_inst|result~0_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:5:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:5:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:6:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y9_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X1_Y13_N14
\Adder1|adder_loop:6:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:6:full_adder_inst|o_carry~0_combout\ = (\A[6]~input_o\ & ((\Adder1|adder_loop:5:full_adder_inst|o_carry~0_combout\) # (\B[6]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[6]~input_o\ & (\Adder1|adder_loop:5:full_adder_inst|o_carry~0_combout\ 
-- & (\B[6]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:5:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:6:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y11_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X1_Y13_N24
\Adder1|adder_loop:7:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:7:full_adder_inst|result~0_combout\ = \A[7]~input_o\ $ (\Adder1|adder_loop:6:full_adder_inst|o_carry~0_combout\ $ (\AddnSub~input_o\ $ (\B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Adder1|adder_loop:6:full_adder_inst|o_carry~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[7]~input_o\,
	combout => \Adder1|adder_loop:7:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y15_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X1_Y13_N2
\Adder1|adder_loop:7:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:7:full_adder_inst|o_carry~0_combout\ = (\A[7]~input_o\ & ((\Adder1|adder_loop:6:full_adder_inst|o_carry~0_combout\) # (\AddnSub~input_o\ $ (\B[7]~input_o\)))) # (!\A[7]~input_o\ & (\Adder1|adder_loop:6:full_adder_inst|o_carry~0_combout\ 
-- & (\AddnSub~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \Adder1|adder_loop:6:full_adder_inst|o_carry~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[7]~input_o\,
	combout => \Adder1|adder_loop:7:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y13_N4
\Adder1|adder_loop:8:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:8:full_adder_inst|result~0_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:7:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:7:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:8:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X1_Y13_N22
\Adder1|adder_loop:8:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:8:full_adder_inst|o_carry~0_combout\ = (\A[8]~input_o\ & ((\Adder1|adder_loop:7:full_adder_inst|o_carry~0_combout\) # (\B[8]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[8]~input_o\ & (\Adder1|adder_loop:7:full_adder_inst|o_carry~0_combout\ 
-- & (\B[8]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:7:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:8:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y15_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X1_Y13_N0
\Adder1|adder_loop:9:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:9:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:8:full_adder_inst|o_carry~0_combout\ $ (\A[9]~input_o\ $ (\AddnSub~input_o\ $ (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:8:full_adder_inst|o_carry~0_combout\,
	datab => \A[9]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[9]~input_o\,
	combout => \Adder1|adder_loop:9:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X1_Y13_N26
\Adder1|adder_loop:9:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:9:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:8:full_adder_inst|o_carry~0_combout\ & ((\A[9]~input_o\) # (\AddnSub~input_o\ $ (\B[9]~input_o\)))) # (!\Adder1|adder_loop:8:full_adder_inst|o_carry~0_combout\ & (\A[9]~input_o\ 
-- & (\AddnSub~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:8:full_adder_inst|o_carry~0_combout\,
	datab => \A[9]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[9]~input_o\,
	combout => \Adder1|adder_loop:9:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y5_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X1_Y13_N20
\Adder1|adder_loop:10:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:10:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:9:full_adder_inst|o_carry~0_combout\ $ (\A[10]~input_o\ $ (\AddnSub~input_o\ $ (\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:9:full_adder_inst|o_carry~0_combout\,
	datab => \A[10]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[10]~input_o\,
	combout => \Adder1|adder_loop:10:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X5_Y0_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X1_Y13_N30
\Adder1|adder_loop:10:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:10:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:9:full_adder_inst|o_carry~0_combout\ & ((\A[10]~input_o\) # (\AddnSub~input_o\ $ (\B[10]~input_o\)))) # (!\Adder1|adder_loop:9:full_adder_inst|o_carry~0_combout\ & 
-- (\A[10]~input_o\ & (\AddnSub~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:9:full_adder_inst|o_carry~0_combout\,
	datab => \A[10]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[10]~input_o\,
	combout => \Adder1|adder_loop:10:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X11_Y0_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X30_Y4_N0
\Adder1|adder_loop:11:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:11:full_adder_inst|result~0_combout\ = \A[11]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:10:full_adder_inst|o_carry~0_combout\ $ (\B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:10:full_adder_inst|o_carry~0_combout\,
	datad => \B[11]~input_o\,
	combout => \Adder1|adder_loop:11:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X30_Y4_N10
\Adder1|adder_loop:11:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:11:full_adder_inst|o_carry~0_combout\ = (\A[11]~input_o\ & ((\Adder1|adder_loop:10:full_adder_inst|o_carry~0_combout\) # (\AddnSub~input_o\ $ (\B[11]~input_o\)))) # (!\A[11]~input_o\ & 
-- (\Adder1|adder_loop:10:full_adder_inst|o_carry~0_combout\ & (\AddnSub~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:10:full_adder_inst|o_carry~0_combout\,
	datad => \B[11]~input_o\,
	combout => \Adder1|adder_loop:11:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X33_Y0_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X30_Y4_N28
\Adder1|adder_loop:12:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:12:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:11:full_adder_inst|o_carry~0_combout\ $ (\A[12]~input_o\ $ (\AddnSub~input_o\ $ (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:11:full_adder_inst|o_carry~0_combout\,
	datab => \A[12]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[12]~input_o\,
	combout => \Adder1|adder_loop:12:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X27_Y0_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X30_Y4_N14
\Adder1|adder_loop:12:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:12:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:11:full_adder_inst|o_carry~0_combout\ & ((\A[12]~input_o\) # (\AddnSub~input_o\ $ (\B[12]~input_o\)))) # (!\Adder1|adder_loop:11:full_adder_inst|o_carry~0_combout\ & 
-- (\A[12]~input_o\ & (\AddnSub~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:11:full_adder_inst|o_carry~0_combout\,
	datab => \A[12]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[12]~input_o\,
	combout => \Adder1|adder_loop:12:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X31_Y0_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X30_Y4_N16
\Adder1|adder_loop:13:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:13:full_adder_inst|result~0_combout\ = \A[13]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:12:full_adder_inst|o_carry~0_combout\ $ (\B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:12:full_adder_inst|o_carry~0_combout\,
	datad => \B[13]~input_o\,
	combout => \Adder1|adder_loop:13:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X35_Y0_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X30_Y4_N18
\Adder1|adder_loop:13:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:13:full_adder_inst|o_carry~0_combout\ = (\A[13]~input_o\ & ((\Adder1|adder_loop:12:full_adder_inst|o_carry~0_combout\) # (\AddnSub~input_o\ $ (\B[13]~input_o\)))) # (!\A[13]~input_o\ & 
-- (\Adder1|adder_loop:12:full_adder_inst|o_carry~0_combout\ & (\AddnSub~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:12:full_adder_inst|o_carry~0_combout\,
	datad => \B[13]~input_o\,
	combout => \Adder1|adder_loop:13:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X38_Y0_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X30_Y4_N20
\Adder1|adder_loop:14:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:14:full_adder_inst|result~0_combout\ = \A[14]~input_o\ $ (\Adder1|adder_loop:13:full_adder_inst|o_carry~0_combout\ $ (\AddnSub~input_o\ $ (\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \Adder1|adder_loop:13:full_adder_inst|o_carry~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[14]~input_o\,
	combout => \Adder1|adder_loop:14:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X30_Y4_N30
\Adder1|adder_loop:14:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:14:full_adder_inst|o_carry~0_combout\ = (\A[14]~input_o\ & ((\Adder1|adder_loop:13:full_adder_inst|o_carry~0_combout\) # (\AddnSub~input_o\ $ (\B[14]~input_o\)))) # (!\A[14]~input_o\ & 
-- (\Adder1|adder_loop:13:full_adder_inst|o_carry~0_combout\ & (\AddnSub~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \Adder1|adder_loop:13:full_adder_inst|o_carry~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[14]~input_o\,
	combout => \Adder1|adder_loop:14:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X30_Y4_N24
\Adder1|adder_loop:15:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:15:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:14:full_adder_inst|o_carry~0_combout\ $ (\B[15]~input_o\ $ (\AddnSub~input_o\ $ (\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:14:full_adder_inst|o_carry~0_combout\,
	datab => \B[15]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[15]~input_o\,
	combout => \Adder1|adder_loop:15:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X29_Y0_N15
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X30_Y4_N2
\Adder1|adder_loop:15:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:15:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:14:full_adder_inst|o_carry~0_combout\ & ((\A[15]~input_o\) # (\B[15]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:14:full_adder_inst|o_carry~0_combout\ & 
-- (\A[15]~input_o\ & (\B[15]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:14:full_adder_inst|o_carry~0_combout\,
	datab => \B[15]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[15]~input_o\,
	combout => \Adder1|adder_loop:15:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X30_Y4_N12
\Adder1|adder_loop:16:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:16:full_adder_inst|result~0_combout\ = \B[16]~input_o\ $ (\A[16]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:15:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:15:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:16:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X27_Y0_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X29_Y4_N8
\Adder1|adder_loop:16:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:16:full_adder_inst|o_carry~0_combout\ = (\A[16]~input_o\ & ((\Adder1|adder_loop:15:full_adder_inst|o_carry~0_combout\) # (\AddnSub~input_o\ $ (\B[16]~input_o\)))) # (!\A[16]~input_o\ & 
-- (\Adder1|adder_loop:15:full_adder_inst|o_carry~0_combout\ & (\AddnSub~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[16]~input_o\,
	datac => \A[16]~input_o\,
	datad => \Adder1|adder_loop:15:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:16:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X30_Y4_N6
\Adder1|adder_loop:17:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:17:full_adder_inst|result~0_combout\ = \B[17]~input_o\ $ (\A[17]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:16:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:16:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:17:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X33_Y0_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X30_Y4_N8
\Adder1|adder_loop:17:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:17:full_adder_inst|o_carry~0_combout\ = (\A[17]~input_o\ & ((\Adder1|adder_loop:16:full_adder_inst|o_carry~0_combout\) # (\B[17]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[17]~input_o\ & 
-- (\Adder1|adder_loop:16:full_adder_inst|o_carry~0_combout\ & (\B[17]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:16:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:17:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X45_Y0_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X30_Y4_N26
\Adder1|adder_loop:18:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:18:full_adder_inst|result~0_combout\ = \B[18]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:17:full_adder_inst|o_carry~0_combout\ $ (\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:17:full_adder_inst|o_carry~0_combout\,
	datad => \A[18]~input_o\,
	combout => \Adder1|adder_loop:18:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y30_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X30_Y4_N4
\Adder1|adder_loop:18:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:18:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:17:full_adder_inst|o_carry~0_combout\ & ((\A[18]~input_o\) # (\B[18]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:17:full_adder_inst|o_carry~0_combout\ & 
-- (\A[18]~input_o\ & (\B[18]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:17:full_adder_inst|o_carry~0_combout\,
	datad => \A[18]~input_o\,
	combout => \Adder1|adder_loop:18:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y32_N16
\Adder1|adder_loop:19:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:19:full_adder_inst|result~0_combout\ = \A[19]~input_o\ $ (\AddnSub~input_o\ $ (\B[19]~input_o\ $ (\Adder1|adder_loop:18:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[19]~input_o\,
	datad => \Adder1|adder_loop:18:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:19:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y32_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X1_Y32_N18
\Adder1|adder_loop:19:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:19:full_adder_inst|o_carry~0_combout\ = (\A[19]~input_o\ & ((\Adder1|adder_loop:18:full_adder_inst|o_carry~0_combout\) # (\AddnSub~input_o\ $ (\B[19]~input_o\)))) # (!\A[19]~input_o\ & 
-- (\Adder1|adder_loop:18:full_adder_inst|o_carry~0_combout\ & (\AddnSub~input_o\ $ (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[19]~input_o\,
	datad => \Adder1|adder_loop:18:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:19:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y33_N22
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X1_Y32_N4
\Adder1|adder_loop:20:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:20:full_adder_inst|result~0_combout\ = \B[20]~input_o\ $ (\Adder1|adder_loop:19:full_adder_inst|o_carry~0_combout\ $ (\A[20]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \Adder1|adder_loop:19:full_adder_inst|o_carry~0_combout\,
	datac => \A[20]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:20:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y32_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X1_Y32_N30
\Adder1|adder_loop:20:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:20:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:19:full_adder_inst|o_carry~0_combout\ & ((\A[20]~input_o\) # (\B[20]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:19:full_adder_inst|o_carry~0_combout\ & 
-- (\A[20]~input_o\ & (\B[20]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \Adder1|adder_loop:19:full_adder_inst|o_carry~0_combout\,
	datac => \A[20]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:20:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y32_N8
\Adder1|adder_loop:21:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:21:full_adder_inst|result~0_combout\ = \B[21]~input_o\ $ (\A[21]~input_o\ $ (\Adder1|adder_loop:20:full_adder_inst|o_carry~0_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datac => \Adder1|adder_loop:20:full_adder_inst|o_carry~0_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:21:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y35_N8
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X1_Y32_N2
\Adder1|adder_loop:21:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:21:full_adder_inst|o_carry~0_combout\ = (\A[21]~input_o\ & ((\Adder1|adder_loop:20:full_adder_inst|o_carry~0_combout\) # (\B[21]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[21]~input_o\ & 
-- (\Adder1|adder_loop:20:full_adder_inst|o_carry~0_combout\ & (\B[21]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \A[21]~input_o\,
	datac => \Adder1|adder_loop:20:full_adder_inst|o_carry~0_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:21:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y29_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X1_Y32_N28
\Adder1|adder_loop:22:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:22:full_adder_inst|result~0_combout\ = \B[22]~input_o\ $ (\Adder1|adder_loop:21:full_adder_inst|o_carry~0_combout\ $ (\A[22]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \Adder1|adder_loop:21:full_adder_inst|o_carry~0_combout\,
	datac => \A[22]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:22:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y31_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X1_Y32_N14
\Adder1|adder_loop:22:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:22:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:21:full_adder_inst|o_carry~0_combout\ & ((\A[22]~input_o\) # (\B[22]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:21:full_adder_inst|o_carry~0_combout\ & 
-- (\A[22]~input_o\ & (\B[22]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \Adder1|adder_loop:21:full_adder_inst|o_carry~0_combout\,
	datac => \A[22]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:22:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y30_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X1_Y32_N0
\Adder1|adder_loop:23:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:23:full_adder_inst|result~0_combout\ = \B[23]~input_o\ $ (\Adder1|adder_loop:22:full_adder_inst|o_carry~0_combout\ $ (\A[23]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \Adder1|adder_loop:22:full_adder_inst|o_carry~0_combout\,
	datac => \A[23]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:23:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X1_Y32_N26
\Adder1|adder_loop:23:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:23:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:22:full_adder_inst|o_carry~0_combout\ & ((\A[23]~input_o\) # (\B[23]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:22:full_adder_inst|o_carry~0_combout\ & 
-- (\A[23]~input_o\ & (\B[23]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \Adder1|adder_loop:22:full_adder_inst|o_carry~0_combout\,
	datac => \A[23]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:23:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y34_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X1_Y32_N20
\Adder1|adder_loop:24:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:24:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:23:full_adder_inst|o_carry~0_combout\ $ (\A[24]~input_o\ $ (\B[24]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:23:full_adder_inst|o_carry~0_combout\,
	datab => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:24:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y35_N1
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X1_Y32_N22
\Adder1|adder_loop:24:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:24:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:23:full_adder_inst|o_carry~0_combout\ & ((\A[24]~input_o\) # (\B[24]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:23:full_adder_inst|o_carry~0_combout\ & 
-- (\A[24]~input_o\ & (\B[24]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:23:full_adder_inst|o_carry~0_combout\,
	datab => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:24:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y32_N24
\Adder1|adder_loop:25:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:25:full_adder_inst|result~0_combout\ = \B[25]~input_o\ $ (\A[25]~input_o\ $ (\Adder1|adder_loop:24:full_adder_inst|o_carry~0_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datac => \Adder1|adder_loop:24:full_adder_inst|o_carry~0_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:25:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y47_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X1_Y32_N10
\Adder1|adder_loop:25:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:25:full_adder_inst|o_carry~0_combout\ = (\A[25]~input_o\ & ((\Adder1|adder_loop:24:full_adder_inst|o_carry~0_combout\) # (\B[25]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[25]~input_o\ & 
-- (\Adder1|adder_loop:24:full_adder_inst|o_carry~0_combout\ & (\B[25]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[25]~input_o\,
	datac => \Adder1|adder_loop:24:full_adder_inst|o_carry~0_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:25:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y44_N8
\Adder1|adder_loop:26:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:26:full_adder_inst|result~0_combout\ = \A[26]~input_o\ $ (\B[26]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:25:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:25:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:26:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y45_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X1_Y44_N10
\Adder1|adder_loop:26:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:26:full_adder_inst|o_carry~0_combout\ = (\A[26]~input_o\ & ((\Adder1|adder_loop:25:full_adder_inst|o_carry~0_combout\) # (\B[26]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[26]~input_o\ & 
-- (\Adder1|adder_loop:25:full_adder_inst|o_carry~0_combout\ & (\B[26]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \B[26]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:25:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:26:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y44_N20
\Adder1|adder_loop:27:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:27:full_adder_inst|result~0_combout\ = \A[27]~input_o\ $ (\B[27]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:26:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:26:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:27:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X1_Y44_N30
\Adder1|adder_loop:27:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:27:full_adder_inst|o_carry~0_combout\ = (\A[27]~input_o\ & ((\Adder1|adder_loop:26:full_adder_inst|o_carry~0_combout\) # (\B[27]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[27]~input_o\ & 
-- (\Adder1|adder_loop:26:full_adder_inst|o_carry~0_combout\ & (\B[27]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:26:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:27:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y47_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X1_Y44_N24
\Adder1|adder_loop:28:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:28:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:27:full_adder_inst|o_carry~0_combout\ $ (\A[28]~input_o\ $ (\AddnSub~input_o\ $ (\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:27:full_adder_inst|o_carry~0_combout\,
	datab => \A[28]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[28]~input_o\,
	combout => \Adder1|adder_loop:28:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X1_Y44_N18
\Adder1|adder_loop:28:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:28:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:27:full_adder_inst|o_carry~0_combout\ & ((\A[28]~input_o\) # (\AddnSub~input_o\ $ (\B[28]~input_o\)))) # (!\Adder1|adder_loop:27:full_adder_inst|o_carry~0_combout\ & 
-- (\A[28]~input_o\ & (\AddnSub~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:27:full_adder_inst|o_carry~0_combout\,
	datab => \A[28]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[28]~input_o\,
	combout => \Adder1|adder_loop:28:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X7_Y73_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X7_Y73_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X10_Y69_N24
\Adder1|adder_loop:29:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:29:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:28:full_adder_inst|o_carry~0_combout\ $ (\B[29]~input_o\ $ (\A[29]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:28:full_adder_inst|o_carry~0_combout\,
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:29:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X13_Y73_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X10_Y69_N26
\Adder1|adder_loop:29:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:29:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:28:full_adder_inst|o_carry~0_combout\ & ((\A[29]~input_o\) # (\B[29]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:28:full_adder_inst|o_carry~0_combout\ & 
-- (\A[29]~input_o\ & (\B[29]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:28:full_adder_inst|o_carry~0_combout\,
	datab => \B[29]~input_o\,
	datac => \A[29]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:29:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X13_Y73_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X10_Y69_N4
\Adder1|adder_loop:30:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:30:full_adder_inst|result~0_combout\ = \A[30]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:29:full_adder_inst|o_carry~0_combout\ $ (\B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:29:full_adder_inst|o_carry~0_combout\,
	datad => \B[30]~input_o\,
	combout => \Adder1|adder_loop:30:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X11_Y73_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X10_Y69_N14
\Adder1|adder_loop:30:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:30:full_adder_inst|o_carry~0_combout\ = (\A[30]~input_o\ & ((\Adder1|adder_loop:29:full_adder_inst|o_carry~0_combout\) # (\AddnSub~input_o\ $ (\B[30]~input_o\)))) # (!\A[30]~input_o\ & 
-- (\Adder1|adder_loop:29:full_adder_inst|o_carry~0_combout\ & (\AddnSub~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:29:full_adder_inst|o_carry~0_combout\,
	datad => \B[30]~input_o\,
	combout => \Adder1|adder_loop:30:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X11_Y73_N15
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X10_Y69_N16
\Adder1|adder_loop:31:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:31:full_adder_inst|result~0_combout\ = \A[31]~input_o\ $ (\Adder1|adder_loop:30:full_adder_inst|o_carry~0_combout\ $ (\B[31]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Adder1|adder_loop:30:full_adder_inst|o_carry~0_combout\,
	datac => \B[31]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X11_Y73_N8
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X11_Y73_N1
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X10_Y69_N2
\Adder1|adder_loop:31:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:31:full_adder_inst|o_carry~0_combout\ = (\A[31]~input_o\ & ((\Adder1|adder_loop:30:full_adder_inst|o_carry~0_combout\) # (\B[31]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[31]~input_o\ & 
-- (\Adder1|adder_loop:30:full_adder_inst|o_carry~0_combout\ & (\B[31]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Adder1|adder_loop:30:full_adder_inst|o_carry~0_combout\,
	datac => \B[31]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:31:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X10_Y69_N28
\Adder1|adder_loop:32:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:32:full_adder_inst|result~0_combout\ = \A[32]~input_o\ $ (\AddnSub~input_o\ $ (\B[32]~input_o\ $ (\Adder1|adder_loop:31:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[32]~input_o\,
	datad => \Adder1|adder_loop:31:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:32:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X13_Y73_N1
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X10_Y69_N22
\Adder1|adder_loop:32:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:32:full_adder_inst|o_carry~0_combout\ = (\A[32]~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|o_carry~0_combout\) # (\AddnSub~input_o\ $ (\B[32]~input_o\)))) # (!\A[32]~input_o\ & 
-- (\Adder1|adder_loop:31:full_adder_inst|o_carry~0_combout\ & (\AddnSub~input_o\ $ (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[32]~input_o\,
	datad => \Adder1|adder_loop:31:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:32:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X58_Y0_N22
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X10_Y69_N8
\Adder1|adder_loop:33:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:33:full_adder_inst|result~0_combout\ = \A[33]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:32:full_adder_inst|o_carry~0_combout\ $ (\B[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:32:full_adder_inst|o_carry~0_combout\,
	datad => \B[33]~input_o\,
	combout => \Adder1|adder_loop:33:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X58_Y0_N15
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X10_Y69_N18
\Adder1|adder_loop:33:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:33:full_adder_inst|o_carry~0_combout\ = (\A[33]~input_o\ & ((\Adder1|adder_loop:32:full_adder_inst|o_carry~0_combout\) # (\AddnSub~input_o\ $ (\B[33]~input_o\)))) # (!\A[33]~input_o\ & 
-- (\Adder1|adder_loop:32:full_adder_inst|o_carry~0_combout\ & (\AddnSub~input_o\ $ (\B[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:32:full_adder_inst|o_carry~0_combout\,
	datad => \B[33]~input_o\,
	combout => \Adder1|adder_loop:33:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X10_Y69_N12
\Adder1|adder_loop:34:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:34:full_adder_inst|result~0_combout\ = \A[34]~input_o\ $ (\AddnSub~input_o\ $ (\B[34]~input_o\ $ (\Adder1|adder_loop:33:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[34]~input_o\,
	datad => \Adder1|adder_loop:33:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:34:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y51_N15
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X10_Y69_N6
\Adder1|adder_loop:34:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:34:full_adder_inst|o_carry~0_combout\ = (\A[34]~input_o\ & ((\Adder1|adder_loop:33:full_adder_inst|o_carry~0_combout\) # (\AddnSub~input_o\ $ (\B[34]~input_o\)))) # (!\A[34]~input_o\ & 
-- (\Adder1|adder_loop:33:full_adder_inst|o_carry~0_combout\ & (\AddnSub~input_o\ $ (\B[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[34]~input_o\,
	datad => \Adder1|adder_loop:33:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:34:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y52_N15
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X1_Y55_N24
\Adder1|adder_loop:35:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:35:full_adder_inst|result~0_combout\ = \A[35]~input_o\ $ (\Adder1|adder_loop:34:full_adder_inst|o_carry~0_combout\ $ (\AddnSub~input_o\ $ (\B[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \Adder1|adder_loop:34:full_adder_inst|o_carry~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[35]~input_o\,
	combout => \Adder1|adder_loop:35:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X1_Y55_N26
\Adder1|adder_loop:35:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:35:full_adder_inst|o_carry~0_combout\ = (\A[35]~input_o\ & ((\Adder1|adder_loop:34:full_adder_inst|o_carry~0_combout\) # (\AddnSub~input_o\ $ (\B[35]~input_o\)))) # (!\A[35]~input_o\ & 
-- (\Adder1|adder_loop:34:full_adder_inst|o_carry~0_combout\ & (\AddnSub~input_o\ $ (\B[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \Adder1|adder_loop:34:full_adder_inst|o_carry~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[35]~input_o\,
	combout => \Adder1|adder_loop:35:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y36_N22
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X1_Y55_N20
\Adder1|adder_loop:36:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:36:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:35:full_adder_inst|o_carry~0_combout\ $ (\B[36]~input_o\ $ (\AddnSub~input_o\ $ (\A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:35:full_adder_inst|o_carry~0_combout\,
	datab => \B[36]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[36]~input_o\,
	combout => \Adder1|adder_loop:36:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X1_Y55_N22
\Adder1|adder_loop:36:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:36:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:35:full_adder_inst|o_carry~0_combout\ & ((\A[36]~input_o\) # (\B[36]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:35:full_adder_inst|o_carry~0_combout\ & 
-- (\A[36]~input_o\ & (\B[36]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:35:full_adder_inst|o_carry~0_combout\,
	datab => \B[36]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[36]~input_o\,
	combout => \Adder1|adder_loop:36:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y55_N22
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X1_Y55_N8
\Adder1|adder_loop:37:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:37:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:36:full_adder_inst|o_carry~0_combout\ $ (\B[37]~input_o\ $ (\AddnSub~input_o\ $ (\A[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:36:full_adder_inst|o_carry~0_combout\,
	datab => \B[37]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[37]~input_o\,
	combout => \Adder1|adder_loop:37:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y53_N1
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X1_Y55_N2
\Adder1|adder_loop:37:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:37:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:36:full_adder_inst|o_carry~0_combout\ & ((\A[37]~input_o\) # (\B[37]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:36:full_adder_inst|o_carry~0_combout\ & 
-- (\A[37]~input_o\ & (\B[37]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:36:full_adder_inst|o_carry~0_combout\,
	datab => \B[37]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[37]~input_o\,
	combout => \Adder1|adder_loop:37:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y55_N4
\Adder1|adder_loop:38:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:38:full_adder_inst|result~0_combout\ = \B[38]~input_o\ $ (\A[38]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:37:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \A[38]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:37:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:38:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y52_N1
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X1_Y55_N14
\Adder1|adder_loop:38:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:38:full_adder_inst|o_carry~0_combout\ = (\A[38]~input_o\ & ((\Adder1|adder_loop:37:full_adder_inst|o_carry~0_combout\) # (\B[38]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[38]~input_o\ & 
-- (\Adder1|adder_loop:37:full_adder_inst|o_carry~0_combout\ & (\B[38]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \A[38]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:37:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:38:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y57_N22
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X1_Y55_N0
\Adder1|adder_loop:39:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:39:full_adder_inst|result~0_combout\ = \B[39]~input_o\ $ (\Adder1|adder_loop:38:full_adder_inst|o_carry~0_combout\ $ (\AddnSub~input_o\ $ (\A[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \Adder1|adder_loop:38:full_adder_inst|o_carry~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \A[39]~input_o\,
	combout => \Adder1|adder_loop:39:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y58_N15
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X1_Y55_N10
\Adder1|adder_loop:39:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:39:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:38:full_adder_inst|o_carry~0_combout\ & ((\A[39]~input_o\) # (\B[39]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:38:full_adder_inst|o_carry~0_combout\ & 
-- (\A[39]~input_o\ & (\B[39]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \Adder1|adder_loop:38:full_adder_inst|o_carry~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \A[39]~input_o\,
	combout => \Adder1|adder_loop:39:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y55_N12
\Adder1|adder_loop:40:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:40:full_adder_inst|result~0_combout\ = \A[40]~input_o\ $ (\B[40]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:39:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \B[40]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:39:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:40:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X1_Y55_N30
\Adder1|adder_loop:40:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:40:full_adder_inst|o_carry~0_combout\ = (\A[40]~input_o\ & ((\Adder1|adder_loop:39:full_adder_inst|o_carry~0_combout\) # (\B[40]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[40]~input_o\ & 
-- (\Adder1|adder_loop:39:full_adder_inst|o_carry~0_combout\ & (\B[40]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \B[40]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:39:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:40:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y53_N8
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X1_Y55_N16
\Adder1|adder_loop:41:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:41:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:40:full_adder_inst|o_carry~0_combout\ $ (\A[41]~input_o\ $ (\AddnSub~input_o\ $ (\B[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:40:full_adder_inst|o_carry~0_combout\,
	datab => \A[41]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[41]~input_o\,
	combout => \Adder1|adder_loop:41:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y54_N8
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X1_Y55_N18
\Adder1|adder_loop:41:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:41:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:40:full_adder_inst|o_carry~0_combout\ & ((\A[41]~input_o\) # (\AddnSub~input_o\ $ (\B[41]~input_o\)))) # (!\Adder1|adder_loop:40:full_adder_inst|o_carry~0_combout\ & 
-- (\A[41]~input_o\ & (\AddnSub~input_o\ $ (\B[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:40:full_adder_inst|o_carry~0_combout\,
	datab => \A[41]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[41]~input_o\,
	combout => \Adder1|adder_loop:41:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y55_N28
\Adder1|adder_loop:42:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:42:full_adder_inst|result~0_combout\ = \B[42]~input_o\ $ (\A[42]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:41:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[42]~input_o\,
	datab => \A[42]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:41:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:42:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y44_N1
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X1_Y55_N6
\Adder1|adder_loop:42:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:42:full_adder_inst|o_carry~0_combout\ = (\A[42]~input_o\ & ((\Adder1|adder_loop:41:full_adder_inst|o_carry~0_combout\) # (\B[42]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[42]~input_o\ & 
-- (\Adder1|adder_loop:41:full_adder_inst|o_carry~0_combout\ & (\B[42]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[42]~input_o\,
	datab => \A[42]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:41:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:42:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y44_N12
\Adder1|adder_loop:43:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:43:full_adder_inst|result~0_combout\ = \A[43]~input_o\ $ (\B[43]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:42:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \B[43]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:42:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:43:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X1_Y44_N22
\Adder1|adder_loop:43:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:43:full_adder_inst|o_carry~0_combout\ = (\A[43]~input_o\ & ((\Adder1|adder_loop:42:full_adder_inst|o_carry~0_combout\) # (\B[43]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[43]~input_o\ & 
-- (\Adder1|adder_loop:42:full_adder_inst|o_carry~0_combout\ & (\B[43]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \B[43]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:42:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:43:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X0_Y45_N22
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X1_Y44_N0
\Adder1|adder_loop:44:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:44:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:43:full_adder_inst|o_carry~0_combout\ $ (\B[44]~input_o\ $ (\AddnSub~input_o\ $ (\A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:43:full_adder_inst|o_carry~0_combout\,
	datab => \B[44]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[44]~input_o\,
	combout => \Adder1|adder_loop:44:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X1_Y44_N2
\Adder1|adder_loop:44:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:44:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:43:full_adder_inst|o_carry~0_combout\ & ((\A[44]~input_o\) # (\B[44]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:43:full_adder_inst|o_carry~0_combout\ & 
-- (\A[44]~input_o\ & (\B[44]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:43:full_adder_inst|o_carry~0_combout\,
	datab => \B[44]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[44]~input_o\,
	combout => \Adder1|adder_loop:44:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X33_Y73_N1
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X23_Y73_N8
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X29_Y72_N24
\Adder1|adder_loop:45:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:45:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:44:full_adder_inst|o_carry~0_combout\ $ (\AddnSub~input_o\ $ (\B[45]~input_o\ $ (\A[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:44:full_adder_inst|o_carry~0_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[45]~input_o\,
	datad => \A[45]~input_o\,
	combout => \Adder1|adder_loop:45:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X35_Y73_N15
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X29_Y72_N2
\Adder1|adder_loop:45:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:45:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:44:full_adder_inst|o_carry~0_combout\ & ((\A[45]~input_o\) # (\AddnSub~input_o\ $ (\B[45]~input_o\)))) # (!\Adder1|adder_loop:44:full_adder_inst|o_carry~0_combout\ & 
-- (\A[45]~input_o\ & (\AddnSub~input_o\ $ (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:44:full_adder_inst|o_carry~0_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[45]~input_o\,
	datad => \A[45]~input_o\,
	combout => \Adder1|adder_loop:45:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X35_Y73_N22
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X29_Y72_N20
\Adder1|adder_loop:46:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:46:full_adder_inst|result~0_combout\ = \B[46]~input_o\ $ (\Adder1|adder_loop:45:full_adder_inst|o_carry~0_combout\ $ (\AddnSub~input_o\ $ (\A[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \Adder1|adder_loop:45:full_adder_inst|o_carry~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \A[46]~input_o\,
	combout => \Adder1|adder_loop:46:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X29_Y72_N22
\Adder1|adder_loop:46:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:46:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:45:full_adder_inst|o_carry~0_combout\ & ((\A[46]~input_o\) # (\B[46]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:45:full_adder_inst|o_carry~0_combout\ & 
-- (\A[46]~input_o\ & (\B[46]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \Adder1|adder_loop:45:full_adder_inst|o_carry~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \A[46]~input_o\,
	combout => \Adder1|adder_loop:46:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X27_Y73_N22
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X29_Y72_N8
\Adder1|adder_loop:47:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:47:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:46:full_adder_inst|o_carry~0_combout\ $ (\AddnSub~input_o\ $ (\A[47]~input_o\ $ (\B[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:46:full_adder_inst|o_carry~0_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[47]~input_o\,
	combout => \Adder1|adder_loop:47:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X27_Y73_N15
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X29_Y72_N18
\Adder1|adder_loop:47:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:47:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:46:full_adder_inst|o_carry~0_combout\ & ((\A[47]~input_o\) # (\AddnSub~input_o\ $ (\B[47]~input_o\)))) # (!\Adder1|adder_loop:46:full_adder_inst|o_carry~0_combout\ & 
-- (\A[47]~input_o\ & (\AddnSub~input_o\ $ (\B[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:46:full_adder_inst|o_carry~0_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[47]~input_o\,
	combout => \Adder1|adder_loop:47:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X29_Y72_N28
\Adder1|adder_loop:48:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:48:full_adder_inst|result~0_combout\ = \B[48]~input_o\ $ (\AddnSub~input_o\ $ (\A[48]~input_o\ $ (\Adder1|adder_loop:47:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[48]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[48]~input_o\,
	datad => \Adder1|adder_loop:47:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:48:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X29_Y72_N30
\Adder1|adder_loop:48:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:48:full_adder_inst|o_carry~0_combout\ = (\A[48]~input_o\ & ((\Adder1|adder_loop:47:full_adder_inst|o_carry~0_combout\) # (\B[48]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[48]~input_o\ & 
-- (\Adder1|adder_loop:47:full_adder_inst|o_carry~0_combout\ & (\B[48]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[48]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[48]~input_o\,
	datad => \Adder1|adder_loop:47:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:48:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X25_Y73_N15
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X29_Y72_N16
\Adder1|adder_loop:49:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:49:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:48:full_adder_inst|o_carry~0_combout\ $ (\AddnSub~input_o\ $ (\B[49]~input_o\ $ (\A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:48:full_adder_inst|o_carry~0_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[49]~input_o\,
	datad => \A[49]~input_o\,
	combout => \Adder1|adder_loop:49:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X31_Y73_N1
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X29_Y72_N26
\Adder1|adder_loop:49:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:49:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:48:full_adder_inst|o_carry~0_combout\ & ((\A[49]~input_o\) # (\AddnSub~input_o\ $ (\B[49]~input_o\)))) # (!\Adder1|adder_loop:48:full_adder_inst|o_carry~0_combout\ & 
-- (\A[49]~input_o\ & (\AddnSub~input_o\ $ (\B[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:48:full_adder_inst|o_carry~0_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[49]~input_o\,
	datad => \A[49]~input_o\,
	combout => \Adder1|adder_loop:49:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X38_Y73_N22
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X29_Y72_N4
\Adder1|adder_loop:50:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:50:full_adder_inst|result~0_combout\ = \A[50]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:49:full_adder_inst|o_carry~0_combout\ $ (\B[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:49:full_adder_inst|o_carry~0_combout\,
	datad => \B[50]~input_o\,
	combout => \Adder1|adder_loop:50:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X25_Y73_N22
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X29_Y72_N14
\Adder1|adder_loop:50:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:50:full_adder_inst|o_carry~0_combout\ = (\A[50]~input_o\ & ((\Adder1|adder_loop:49:full_adder_inst|o_carry~0_combout\) # (\AddnSub~input_o\ $ (\B[50]~input_o\)))) # (!\A[50]~input_o\ & 
-- (\Adder1|adder_loop:49:full_adder_inst|o_carry~0_combout\ & (\AddnSub~input_o\ $ (\B[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:49:full_adder_inst|o_carry~0_combout\,
	datad => \B[50]~input_o\,
	combout => \Adder1|adder_loop:50:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X29_Y72_N0
\Adder1|adder_loop:51:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:51:full_adder_inst|result~0_combout\ = \A[51]~input_o\ $ (\B[51]~input_o\ $ (\Adder1|adder_loop:50:full_adder_inst|o_carry~0_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \B[51]~input_o\,
	datac => \Adder1|adder_loop:50:full_adder_inst|o_carry~0_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:51:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X29_Y72_N10
\Adder1|adder_loop:51:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:51:full_adder_inst|o_carry~0_combout\ = (\A[51]~input_o\ & ((\Adder1|adder_loop:50:full_adder_inst|o_carry~0_combout\) # (\B[51]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[51]~input_o\ & 
-- (\Adder1|adder_loop:50:full_adder_inst|o_carry~0_combout\ & (\B[51]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \B[51]~input_o\,
	datac => \Adder1|adder_loop:50:full_adder_inst|o_carry~0_combout\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:51:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X29_Y73_N1
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X29_Y72_N12
\Adder1|adder_loop:52:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:52:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:51:full_adder_inst|o_carry~0_combout\ $ (\AddnSub~input_o\ $ (\B[52]~input_o\ $ (\A[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:51:full_adder_inst|o_carry~0_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => \Adder1|adder_loop:52:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X60_Y73_N1
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X29_Y72_N6
\Adder1|adder_loop:52:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:52:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:51:full_adder_inst|o_carry~0_combout\ & ((\A[52]~input_o\) # (\AddnSub~input_o\ $ (\B[52]~input_o\)))) # (!\Adder1|adder_loop:51:full_adder_inst|o_carry~0_combout\ & 
-- (\A[52]~input_o\ & (\AddnSub~input_o\ $ (\B[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:51:full_adder_inst|o_carry~0_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[52]~input_o\,
	datad => \A[52]~input_o\,
	combout => \Adder1|adder_loop:52:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X60_Y73_N8
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X59_Y72_N0
\Adder1|adder_loop:53:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:53:full_adder_inst|result~0_combout\ = \B[53]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:52:full_adder_inst|o_carry~0_combout\ $ (\A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:52:full_adder_inst|o_carry~0_combout\,
	datad => \A[53]~input_o\,
	combout => \Adder1|adder_loop:53:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X59_Y72_N10
\Adder1|adder_loop:53:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:53:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:52:full_adder_inst|o_carry~0_combout\ & ((\A[53]~input_o\) # (\B[53]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:52:full_adder_inst|o_carry~0_combout\ & 
-- (\A[53]~input_o\ & (\B[53]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:52:full_adder_inst|o_carry~0_combout\,
	datad => \A[53]~input_o\,
	combout => \Adder1|adder_loop:53:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X81_Y73_N8
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X59_Y72_N4
\Adder1|adder_loop:54:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:54:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:53:full_adder_inst|o_carry~0_combout\ $ (\B[54]~input_o\ $ (\A[54]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:53:full_adder_inst|o_carry~0_combout\,
	datab => \B[54]~input_o\,
	datac => \A[54]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:54:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X62_Y73_N22
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X59_Y72_N22
\Adder1|adder_loop:54:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:54:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:53:full_adder_inst|o_carry~0_combout\ & ((\A[54]~input_o\) # (\B[54]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:53:full_adder_inst|o_carry~0_combout\ & 
-- (\A[54]~input_o\ & (\B[54]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:53:full_adder_inst|o_carry~0_combout\,
	datab => \B[54]~input_o\,
	datac => \A[54]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Adder1|adder_loop:54:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X60_Y73_N22
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X59_Y72_N24
\Adder1|adder_loop:55:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:55:full_adder_inst|result~0_combout\ = \A[55]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:54:full_adder_inst|o_carry~0_combout\ $ (\B[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:54:full_adder_inst|o_carry~0_combout\,
	datad => \B[55]~input_o\,
	combout => \Adder1|adder_loop:55:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X59_Y72_N26
\Adder1|adder_loop:55:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:55:full_adder_inst|o_carry~0_combout\ = (\A[55]~input_o\ & ((\Adder1|adder_loop:54:full_adder_inst|o_carry~0_combout\) # (\AddnSub~input_o\ $ (\B[55]~input_o\)))) # (!\A[55]~input_o\ & 
-- (\Adder1|adder_loop:54:full_adder_inst|o_carry~0_combout\ & (\AddnSub~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Adder1|adder_loop:54:full_adder_inst|o_carry~0_combout\,
	datad => \B[55]~input_o\,
	combout => \Adder1|adder_loop:55:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X60_Y73_N15
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X59_Y72_N12
\Adder1|adder_loop:56:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:56:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:55:full_adder_inst|o_carry~0_combout\ $ (\AddnSub~input_o\ $ (\B[56]~input_o\ $ (\A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:55:full_adder_inst|o_carry~0_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[56]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Adder1|adder_loop:56:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X59_Y72_N6
\Adder1|adder_loop:56:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:56:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:55:full_adder_inst|o_carry~0_combout\ & ((\A[56]~input_o\) # (\AddnSub~input_o\ $ (\B[56]~input_o\)))) # (!\Adder1|adder_loop:55:full_adder_inst|o_carry~0_combout\ & 
-- (\A[56]~input_o\ & (\AddnSub~input_o\ $ (\B[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:55:full_adder_inst|o_carry~0_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[56]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Adder1|adder_loop:56:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X81_Y73_N1
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X66_Y72_N8
\Adder1|adder_loop:57:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:57:full_adder_inst|result~0_combout\ = \AddnSub~input_o\ $ (\Adder1|adder_loop:56:full_adder_inst|o_carry~0_combout\ $ (\A[57]~input_o\ $ (\B[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder1|adder_loop:56:full_adder_inst|o_carry~0_combout\,
	datac => \A[57]~input_o\,
	datad => \B[57]~input_o\,
	combout => \Adder1|adder_loop:57:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X66_Y72_N18
\Adder1|adder_loop:57:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:57:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:56:full_adder_inst|o_carry~0_combout\ & ((\A[57]~input_o\) # (\AddnSub~input_o\ $ (\B[57]~input_o\)))) # (!\Adder1|adder_loop:56:full_adder_inst|o_carry~0_combout\ & 
-- (\A[57]~input_o\ & (\AddnSub~input_o\ $ (\B[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder1|adder_loop:56:full_adder_inst|o_carry~0_combout\,
	datac => \A[57]~input_o\,
	datad => \B[57]~input_o\,
	combout => \Adder1|adder_loop:57:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X67_Y73_N15
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X66_Y72_N12
\Adder1|adder_loop:58:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:58:full_adder_inst|result~0_combout\ = \AddnSub~input_o\ $ (\Adder1|adder_loop:57:full_adder_inst|o_carry~0_combout\ $ (\A[58]~input_o\ $ (\B[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder1|adder_loop:57:full_adder_inst|o_carry~0_combout\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \Adder1|adder_loop:58:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X66_Y72_N14
\Adder1|adder_loop:58:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:58:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:57:full_adder_inst|o_carry~0_combout\ & ((\A[58]~input_o\) # (\AddnSub~input_o\ $ (\B[58]~input_o\)))) # (!\Adder1|adder_loop:57:full_adder_inst|o_carry~0_combout\ & 
-- (\A[58]~input_o\ & (\AddnSub~input_o\ $ (\B[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder1|adder_loop:57:full_adder_inst|o_carry~0_combout\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \Adder1|adder_loop:58:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X66_Y72_N0
\Adder1|adder_loop:59:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:59:full_adder_inst|result~0_combout\ = \AddnSub~input_o\ $ (\Adder1|adder_loop:58:full_adder_inst|o_carry~0_combout\ $ (\A[59]~input_o\ $ (\B[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder1|adder_loop:58:full_adder_inst|o_carry~0_combout\,
	datac => \A[59]~input_o\,
	datad => \B[59]~input_o\,
	combout => \Adder1|adder_loop:59:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X66_Y72_N10
\Adder1|adder_loop:59:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:59:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:58:full_adder_inst|o_carry~0_combout\ & ((\A[59]~input_o\) # (\AddnSub~input_o\ $ (\B[59]~input_o\)))) # (!\Adder1|adder_loop:58:full_adder_inst|o_carry~0_combout\ & 
-- (\A[59]~input_o\ & (\AddnSub~input_o\ $ (\B[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Adder1|adder_loop:58:full_adder_inst|o_carry~0_combout\,
	datac => \A[59]~input_o\,
	datad => \B[59]~input_o\,
	combout => \Adder1|adder_loop:59:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X65_Y73_N22
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X66_Y72_N28
\Adder1|adder_loop:60:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:60:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:59:full_adder_inst|o_carry~0_combout\ $ (\A[60]~input_o\ $ (\AddnSub~input_o\ $ (\B[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:59:full_adder_inst|o_carry~0_combout\,
	datab => \A[60]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[60]~input_o\,
	combout => \Adder1|adder_loop:60:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X66_Y72_N30
\Adder1|adder_loop:60:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:60:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:59:full_adder_inst|o_carry~0_combout\ & ((\A[60]~input_o\) # (\AddnSub~input_o\ $ (\B[60]~input_o\)))) # (!\Adder1|adder_loop:59:full_adder_inst|o_carry~0_combout\ & 
-- (\A[60]~input_o\ & (\AddnSub~input_o\ $ (\B[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:59:full_adder_inst|o_carry~0_combout\,
	datab => \A[60]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[60]~input_o\,
	combout => \Adder1|adder_loop:60:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X69_Y73_N22
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X66_Y72_N16
\Adder1|adder_loop:61:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:61:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:60:full_adder_inst|o_carry~0_combout\ $ (\B[61]~input_o\ $ (\AddnSub~input_o\ $ (\A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:60:full_adder_inst|o_carry~0_combout\,
	datab => \B[61]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[61]~input_o\,
	combout => \Adder1|adder_loop:61:full_adder_inst|result~0_combout\);

-- Location: LCCOMB_X66_Y72_N26
\Adder1|adder_loop:61:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:61:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:60:full_adder_inst|o_carry~0_combout\ & ((\A[61]~input_o\) # (\B[61]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:60:full_adder_inst|o_carry~0_combout\ & 
-- (\A[61]~input_o\ & (\B[61]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:60:full_adder_inst|o_carry~0_combout\,
	datab => \B[61]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[61]~input_o\,
	combout => \Adder1|adder_loop:61:full_adder_inst|o_carry~0_combout\);

-- Location: IOIBUF_X69_Y73_N1
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X66_Y72_N4
\Adder1|adder_loop:62:full_adder_inst|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:62:full_adder_inst|result~0_combout\ = \Adder1|adder_loop:61:full_adder_inst|o_carry~0_combout\ $ (\B[62]~input_o\ $ (\AddnSub~input_o\ $ (\A[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:61:full_adder_inst|o_carry~0_combout\,
	datab => \B[62]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[62]~input_o\,
	combout => \Adder1|adder_loop:62:full_adder_inst|result~0_combout\);

-- Location: IOIBUF_X0_Y23_N22
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X66_Y72_N22
\Adder1|adder_loop:62:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:62:full_adder_inst|o_carry~0_combout\ = (\Adder1|adder_loop:61:full_adder_inst|o_carry~0_combout\ & ((\A[62]~input_o\) # (\B[62]~input_o\ $ (\AddnSub~input_o\)))) # (!\Adder1|adder_loop:61:full_adder_inst|o_carry~0_combout\ & 
-- (\A[62]~input_o\ & (\B[62]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:61:full_adder_inst|o_carry~0_combout\,
	datab => \B[62]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[62]~input_o\,
	combout => \Adder1|adder_loop:62:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y24_N28
\Adder1|adder_loop:63:full_adder_inst|result\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:63:full_adder_inst|result~combout\ = \B[63]~input_o\ $ (\A[63]~input_o\ $ (\AddnSub~input_o\ $ (\Adder1|adder_loop:62:full_adder_inst|o_carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \A[63]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:62:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:63:full_adder_inst|result~combout\);

-- Location: IOIBUF_X20_Y73_N15
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X10_Y69_N0
\sgn_ext_vec~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~0_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:32:full_adder_inst|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder1|adder_loop:32:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \sgn_ext_vec~0_combout\);

-- Location: LCCOMB_X10_Y69_N10
\sgn_ext_vec~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~1_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:33:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:33:full_adder_inst|result~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \sgn_ext_vec~1_combout\);

-- Location: LCCOMB_X10_Y69_N20
\sgn_ext_vec~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~2_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:34:full_adder_inst|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:34:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \sgn_ext_vec~2_combout\);

-- Location: LCCOMB_X1_Y66_N16
\sgn_ext_vec~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~3_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:35:full_adder_inst|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:35:full_adder_inst|result~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~3_combout\);

-- Location: LCCOMB_X1_Y66_N10
\sgn_ext_vec~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~4_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:36:full_adder_inst|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder1|adder_loop:36:full_adder_inst|result~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~4_combout\);

-- Location: LCCOMB_X1_Y66_N12
\sgn_ext_vec~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~5_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:37:full_adder_inst|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:37:full_adder_inst|result~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~5_combout\);

-- Location: LCCOMB_X1_Y66_N22
\sgn_ext_vec~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~6_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:38:full_adder_inst|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:38:full_adder_inst|result~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~6_combout\);

-- Location: LCCOMB_X1_Y66_N24
\sgn_ext_vec~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~7_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:39:full_adder_inst|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:39:full_adder_inst|result~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~7_combout\);

-- Location: LCCOMB_X1_Y66_N18
\sgn_ext_vec~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~8_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:40:full_adder_inst|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:40:full_adder_inst|result~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~8_combout\);

-- Location: LCCOMB_X1_Y66_N20
\sgn_ext_vec~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~9_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:41:full_adder_inst|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder1|adder_loop:41:full_adder_inst|result~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~9_combout\);

-- Location: LCCOMB_X1_Y66_N14
\sgn_ext_vec~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~10_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:42:full_adder_inst|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:42:full_adder_inst|result~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~10_combout\);

-- Location: LCCOMB_X1_Y66_N0
\sgn_ext_vec~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~11_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:43:full_adder_inst|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:43:full_adder_inst|result~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~11_combout\);

-- Location: LCCOMB_X1_Y66_N2
\sgn_ext_vec~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~12_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:44:full_adder_inst|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Adder1|adder_loop:44:full_adder_inst|result~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~12_combout\);

-- Location: LCCOMB_X1_Y24_N30
\sgn_ext_vec~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~13_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:45:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder1|adder_loop:45:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~13_combout\);

-- Location: LCCOMB_X1_Y66_N4
\sgn_ext_vec~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~14_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:46:full_adder_inst|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:46:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datac => \ExtWord~input_o\,
	combout => \sgn_ext_vec~14_combout\);

-- Location: LCCOMB_X54_Y72_N0
\sgn_ext_vec~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~15_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:47:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:47:full_adder_inst|result~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \sgn_ext_vec~15_combout\);

-- Location: LCCOMB_X54_Y72_N26
\sgn_ext_vec~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~16_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:48:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:48:full_adder_inst|result~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \sgn_ext_vec~16_combout\);

-- Location: LCCOMB_X54_Y72_N12
\sgn_ext_vec~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~17_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:49:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:49:full_adder_inst|result~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \sgn_ext_vec~17_combout\);

-- Location: LCCOMB_X54_Y72_N22
\sgn_ext_vec~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~18_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:50:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:50:full_adder_inst|result~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \sgn_ext_vec~18_combout\);

-- Location: LCCOMB_X54_Y72_N16
\sgn_ext_vec~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~19_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:51:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:51:full_adder_inst|result~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \sgn_ext_vec~19_combout\);

-- Location: LCCOMB_X54_Y72_N10
\sgn_ext_vec~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~20_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:52:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:52:full_adder_inst|result~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \sgn_ext_vec~20_combout\);

-- Location: LCCOMB_X54_Y72_N20
\sgn_ext_vec~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~21_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:53:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:53:full_adder_inst|result~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \sgn_ext_vec~21_combout\);

-- Location: LCCOMB_X54_Y72_N6
\sgn_ext_vec~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~22_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:54:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:54:full_adder_inst|result~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \sgn_ext_vec~22_combout\);

-- Location: LCCOMB_X1_Y66_N6
\sgn_ext_vec~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~23_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:55:full_adder_inst|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Adder1|adder_loop:55:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~23_combout\);

-- Location: LCCOMB_X54_Y72_N24
\sgn_ext_vec~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~24_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:56:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:56:full_adder_inst|result~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \sgn_ext_vec~24_combout\);

-- Location: LCCOMB_X54_Y72_N2
\sgn_ext_vec~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~25_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:57:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:57:full_adder_inst|result~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \sgn_ext_vec~25_combout\);

-- Location: LCCOMB_X54_Y72_N4
\sgn_ext_vec~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~26_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:58:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:58:full_adder_inst|result~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \sgn_ext_vec~26_combout\);

-- Location: LCCOMB_X66_Y72_N24
\sgn_ext_vec~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~27_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:59:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:59:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~27_combout\);

-- Location: LCCOMB_X66_Y72_N2
\sgn_ext_vec~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~28_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:60:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:60:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~28_combout\);

-- Location: LCCOMB_X54_Y72_N14
\sgn_ext_vec~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~29_combout\ = (\ExtWord~input_o\ & (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)) # (!\ExtWord~input_o\ & ((\Adder1|adder_loop:61:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:61:full_adder_inst|result~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \sgn_ext_vec~29_combout\);

-- Location: LCCOMB_X66_Y72_N20
\sgn_ext_vec~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~30_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:62:full_adder_inst|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:62:full_adder_inst|result~0_combout\,
	datab => \ExtWord~input_o\,
	datac => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~30_combout\);

-- Location: LCCOMB_X1_Y24_N8
\sgn_ext_vec~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sgn_ext_vec~31_combout\ = (\ExtWord~input_o\ & ((\Adder1|adder_loop:31:full_adder_inst|result~0_combout\))) # (!\ExtWord~input_o\ & (\Adder1|adder_loop:63:full_adder_inst|result~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:63:full_adder_inst|result~combout\,
	datac => \ExtWord~input_o\,
	datad => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	combout => \sgn_ext_vec~31_combout\);

-- Location: LCCOMB_X1_Y44_N28
\Adder1|adder_loop:63:full_adder_inst|o_carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|adder_loop:63:full_adder_inst|o_carry~0_combout\ = (\A[63]~input_o\ & ((\Adder1|adder_loop:62:full_adder_inst|o_carry~0_combout\) # (\B[63]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[63]~input_o\ & 
-- (\Adder1|adder_loop:62:full_adder_inst|o_carry~0_combout\ & (\B[63]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[63]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:62:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|adder_loop:63:full_adder_inst|o_carry~0_combout\);

-- Location: LCCOMB_X1_Y44_N16
\Adder1|Ovfl\ : cycloneive_lcell_comb
-- Equation(s):
-- \Adder1|Ovfl~combout\ = (\A[63]~input_o\ & (!\Adder1|adder_loop:62:full_adder_inst|o_carry~0_combout\ & (\B[63]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[63]~input_o\ & (\Adder1|adder_loop:62:full_adder_inst|o_carry~0_combout\ & (\B[63]~input_o\ $ 
-- (!\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[63]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:62:full_adder_inst|o_carry~0_combout\,
	combout => \Adder1|Ovfl~combout\);

-- Location: LCCOMB_X1_Y18_N0
\nor1:result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~0_combout\ = (\Adder1|adder_loop:4:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:5:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:6:full_adder_inst|result~0_combout\) # 
-- (\Adder1|adder_loop:3:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:4:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:5:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:6:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:3:full_adder_inst|result~0_combout\,
	combout => \nor1:result~0_combout\);

-- Location: LCCOMB_X1_Y24_N26
\nor1:result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~1_combout\ = (\Adder1|adder_loop:63:full_adder_inst|result~combout\) # ((\nor1:result~0_combout\) # ((\Adder1|adder_loop:1:full_adder_inst|result~combout\) # (\Adder1|adder_loop:2:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:63:full_adder_inst|result~combout\,
	datab => \nor1:result~0_combout\,
	datac => \Adder1|adder_loop:1:full_adder_inst|result~combout\,
	datad => \Adder1|adder_loop:2:full_adder_inst|result~0_combout\,
	combout => \nor1:result~1_combout\);

-- Location: LCCOMB_X1_Y32_N6
\nor1:result~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~6_combout\ = (\Adder1|adder_loop:25:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:24:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:26:full_adder_inst|result~0_combout\) # 
-- (\Adder1|adder_loop:23:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:25:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:24:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:26:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:23:full_adder_inst|result~0_combout\,
	combout => \nor1:result~6_combout\);

-- Location: LCCOMB_X1_Y32_N12
\nor1:result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~5_combout\ = (\Adder1|adder_loop:19:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:20:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:21:full_adder_inst|result~0_combout\) # 
-- (\Adder1|adder_loop:22:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:19:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:20:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:21:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:22:full_adder_inst|result~0_combout\,
	combout => \nor1:result~5_combout\);

-- Location: LCCOMB_X30_Y4_N22
\nor1:result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~4_combout\ = (\Adder1|adder_loop:17:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:16:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:18:full_adder_inst|result~0_combout\) # 
-- (\Adder1|adder_loop:15:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:17:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:16:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:18:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:15:full_adder_inst|result~0_combout\,
	combout => \nor1:result~4_combout\);

-- Location: LCCOMB_X1_Y44_N14
\nor1:result~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~7_combout\ = (\Adder1|adder_loop:29:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:28:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:30:full_adder_inst|result~0_combout\) # 
-- (\Adder1|adder_loop:27:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:29:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:28:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:30:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:27:full_adder_inst|result~0_combout\,
	combout => \nor1:result~7_combout\);

-- Location: LCCOMB_X1_Y24_N20
\nor1:result~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~8_combout\ = (\nor1:result~6_combout\) # ((\nor1:result~5_combout\) # ((\nor1:result~4_combout\) # (\nor1:result~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nor1:result~6_combout\,
	datab => \nor1:result~5_combout\,
	datac => \nor1:result~4_combout\,
	datad => \nor1:result~7_combout\,
	combout => \nor1:result~8_combout\);

-- Location: LCCOMB_X1_Y20_N16
\nor1:result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~2_combout\ = (\Adder1|adder_loop:10:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:7:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:9:full_adder_inst|result~0_combout\) # 
-- (\Adder1|adder_loop:8:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:10:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:7:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:9:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:8:full_adder_inst|result~0_combout\,
	combout => \nor1:result~2_combout\);

-- Location: LCCOMB_X13_Y1_N16
\nor1:result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~3_combout\ = (\Adder1|adder_loop:11:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:14:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:13:full_adder_inst|result~0_combout\) # 
-- (\Adder1|adder_loop:12:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:11:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:14:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:13:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:12:full_adder_inst|result~0_combout\,
	combout => \nor1:result~3_combout\);

-- Location: LCCOMB_X1_Y24_N6
\nor1:result~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~9_combout\ = (\nor1:result~1_combout\) # ((\nor1:result~8_combout\) # ((\nor1:result~2_combout\) # (\nor1:result~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nor1:result~1_combout\,
	datab => \nor1:result~8_combout\,
	datac => \nor1:result~2_combout\,
	datad => \nor1:result~3_combout\,
	combout => \nor1:result~9_combout\);

-- Location: LCCOMB_X66_Y72_N6
\nor1:result~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~18_combout\ = (\Adder1|adder_loop:61:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:60:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:62:full_adder_inst|result~0_combout\) # 
-- (\Adder1|adder_loop:59:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:61:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:60:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:62:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:59:full_adder_inst|result~0_combout\,
	combout => \nor1:result~18_combout\);

-- Location: LCCOMB_X54_Y72_N18
\nor1:result~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~16_combout\ = (\Adder1|adder_loop:54:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:52:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:53:full_adder_inst|result~0_combout\) # 
-- (\Adder1|adder_loop:51:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:54:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:52:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:53:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:51:full_adder_inst|result~0_combout\,
	combout => \nor1:result~16_combout\);

-- Location: LCCOMB_X54_Y72_N8
\nor1:result~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~15_combout\ = (\Adder1|adder_loop:47:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:49:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:48:full_adder_inst|result~0_combout\) # 
-- (\Adder1|adder_loop:50:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:47:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:49:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:48:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:50:full_adder_inst|result~0_combout\,
	combout => \nor1:result~15_combout\);

-- Location: LCCOMB_X54_Y72_N28
\nor1:result~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~17_combout\ = (\Adder1|adder_loop:55:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:56:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:57:full_adder_inst|result~0_combout\) # 
-- (\Adder1|adder_loop:58:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:55:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:56:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:57:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:58:full_adder_inst|result~0_combout\,
	combout => \nor1:result~17_combout\);

-- Location: LCCOMB_X54_Y72_N30
\nor1:result~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~19_combout\ = (\nor1:result~18_combout\) # ((\nor1:result~16_combout\) # ((\nor1:result~15_combout\) # (\nor1:result~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nor1:result~18_combout\,
	datab => \nor1:result~16_combout\,
	datac => \nor1:result~15_combout\,
	datad => \nor1:result~17_combout\,
	combout => \nor1:result~19_combout\);

-- Location: LCCOMB_X10_Y69_N30
\nor1:result~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~10_combout\ = (\Adder1|adder_loop:34:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:32:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:33:full_adder_inst|result~0_combout\) # 
-- (\Adder1|adder_loop:31:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:34:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:32:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:33:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:31:full_adder_inst|result~0_combout\,
	combout => \nor1:result~10_combout\);

-- Location: LCCOMB_X1_Y66_N8
\nor1:result~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~11_combout\ = (\Adder1|adder_loop:38:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:36:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:35:full_adder_inst|result~0_combout\) # 
-- (\Adder1|adder_loop:37:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:38:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:36:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:35:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:37:full_adder_inst|result~0_combout\,
	combout => \nor1:result~11_combout\);

-- Location: LCCOMB_X1_Y66_N26
\nor1:result~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~12_combout\ = (\Adder1|adder_loop:42:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:41:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:39:full_adder_inst|result~0_combout\) # 
-- (\Adder1|adder_loop:40:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:42:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:41:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:39:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:40:full_adder_inst|result~0_combout\,
	combout => \nor1:result~12_combout\);

-- Location: LCCOMB_X1_Y66_N28
\nor1:result~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~13_combout\ = (\Adder1|adder_loop:43:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:44:full_adder_inst|result~0_combout\) # ((\Adder1|adder_loop:46:full_adder_inst|result~0_combout\) # 
-- (\Adder1|adder_loop:45:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adder1|adder_loop:43:full_adder_inst|result~0_combout\,
	datab => \Adder1|adder_loop:44:full_adder_inst|result~0_combout\,
	datac => \Adder1|adder_loop:46:full_adder_inst|result~0_combout\,
	datad => \Adder1|adder_loop:45:full_adder_inst|result~0_combout\,
	combout => \nor1:result~13_combout\);

-- Location: LCCOMB_X1_Y66_N30
\nor1:result~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~14_combout\ = (\nor1:result~10_combout\) # ((\nor1:result~11_combout\) # ((\nor1:result~12_combout\) # (\nor1:result~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nor1:result~10_combout\,
	datab => \nor1:result~11_combout\,
	datac => \nor1:result~12_combout\,
	datad => \nor1:result~13_combout\,
	combout => \nor1:result~14_combout\);

-- Location: LCCOMB_X1_Y24_N16
\nor1:result\ : cycloneive_lcell_comb
-- Equation(s):
-- \nor1:result~combout\ = (\nor1:result~9_combout\) # ((\nor1:result~19_combout\) # ((\nor1:result~14_combout\) # (\Adder1|adder_loop:0:full_adder_inst|result~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nor1:result~9_combout\,
	datab => \nor1:result~19_combout\,
	datac => \nor1:result~14_combout\,
	datad => \Adder1|adder_loop:0:full_adder_inst|result~0_combout\,
	combout => \nor1:result~combout\);

-- Location: LCCOMB_X1_Y44_N26
\AltB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~2_combout\ = (\A[63]~input_o\ & ((\B[63]~input_o\ $ (\AddnSub~input_o\)) # (!\Adder1|adder_loop:62:full_adder_inst|o_carry~0_combout\))) # (!\A[63]~input_o\ & (!\Adder1|adder_loop:62:full_adder_inst|o_carry~0_combout\ & (\B[63]~input_o\ $ 
-- (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[63]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Adder1|adder_loop:62:full_adder_inst|o_carry~0_combout\,
	combout => \AltB~2_combout\);

ww_AddY(0) <= \AddY[0]~output_o\;

ww_AddY(1) <= \AddY[1]~output_o\;

ww_AddY(2) <= \AddY[2]~output_o\;

ww_AddY(3) <= \AddY[3]~output_o\;

ww_AddY(4) <= \AddY[4]~output_o\;

ww_AddY(5) <= \AddY[5]~output_o\;

ww_AddY(6) <= \AddY[6]~output_o\;

ww_AddY(7) <= \AddY[7]~output_o\;

ww_AddY(8) <= \AddY[8]~output_o\;

ww_AddY(9) <= \AddY[9]~output_o\;

ww_AddY(10) <= \AddY[10]~output_o\;

ww_AddY(11) <= \AddY[11]~output_o\;

ww_AddY(12) <= \AddY[12]~output_o\;

ww_AddY(13) <= \AddY[13]~output_o\;

ww_AddY(14) <= \AddY[14]~output_o\;

ww_AddY(15) <= \AddY[15]~output_o\;

ww_AddY(16) <= \AddY[16]~output_o\;

ww_AddY(17) <= \AddY[17]~output_o\;

ww_AddY(18) <= \AddY[18]~output_o\;

ww_AddY(19) <= \AddY[19]~output_o\;

ww_AddY(20) <= \AddY[20]~output_o\;

ww_AddY(21) <= \AddY[21]~output_o\;

ww_AddY(22) <= \AddY[22]~output_o\;

ww_AddY(23) <= \AddY[23]~output_o\;

ww_AddY(24) <= \AddY[24]~output_o\;

ww_AddY(25) <= \AddY[25]~output_o\;

ww_AddY(26) <= \AddY[26]~output_o\;

ww_AddY(27) <= \AddY[27]~output_o\;

ww_AddY(28) <= \AddY[28]~output_o\;

ww_AddY(29) <= \AddY[29]~output_o\;

ww_AddY(30) <= \AddY[30]~output_o\;

ww_AddY(31) <= \AddY[31]~output_o\;

ww_AddY(32) <= \AddY[32]~output_o\;

ww_AddY(33) <= \AddY[33]~output_o\;

ww_AddY(34) <= \AddY[34]~output_o\;

ww_AddY(35) <= \AddY[35]~output_o\;

ww_AddY(36) <= \AddY[36]~output_o\;

ww_AddY(37) <= \AddY[37]~output_o\;

ww_AddY(38) <= \AddY[38]~output_o\;

ww_AddY(39) <= \AddY[39]~output_o\;

ww_AddY(40) <= \AddY[40]~output_o\;

ww_AddY(41) <= \AddY[41]~output_o\;

ww_AddY(42) <= \AddY[42]~output_o\;

ww_AddY(43) <= \AddY[43]~output_o\;

ww_AddY(44) <= \AddY[44]~output_o\;

ww_AddY(45) <= \AddY[45]~output_o\;

ww_AddY(46) <= \AddY[46]~output_o\;

ww_AddY(47) <= \AddY[47]~output_o\;

ww_AddY(48) <= \AddY[48]~output_o\;

ww_AddY(49) <= \AddY[49]~output_o\;

ww_AddY(50) <= \AddY[50]~output_o\;

ww_AddY(51) <= \AddY[51]~output_o\;

ww_AddY(52) <= \AddY[52]~output_o\;

ww_AddY(53) <= \AddY[53]~output_o\;

ww_AddY(54) <= \AddY[54]~output_o\;

ww_AddY(55) <= \AddY[55]~output_o\;

ww_AddY(56) <= \AddY[56]~output_o\;

ww_AddY(57) <= \AddY[57]~output_o\;

ww_AddY(58) <= \AddY[58]~output_o\;

ww_AddY(59) <= \AddY[59]~output_o\;

ww_AddY(60) <= \AddY[60]~output_o\;

ww_AddY(61) <= \AddY[61]~output_o\;

ww_AddY(62) <= \AddY[62]~output_o\;

ww_AddY(63) <= \AddY[63]~output_o\;

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

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;

ww_Zero <= \Zero~output_o\;

ww_AltB <= \AltB~output_o\;

ww_AltBu <= \AltBu~output_o\;
END structure;


