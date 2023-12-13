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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/06/2023 14:41:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          WS2812_RGB_LED_256
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY WS2812_RGB_LED_256_vhd_vec_tst IS
END WS2812_RGB_LED_256_vhd_vec_tst;
ARCHITECTURE WS2812_RGB_LED_256_arch OF WS2812_RGB_LED_256_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Cnt : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DATA : STD_LOGIC;
SIGNAL LED_Display : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PB : STD_LOGIC;
SIGNAL RST_N : STD_LOGIC;
COMPONENT WS2812_RGB_LED_256
	PORT (
	CLK : IN STD_LOGIC;
	Cnt : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DATA : OUT STD_LOGIC;
	LED_Display : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	PB : IN STD_LOGIC;
	RST_N : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : WS2812_RGB_LED_256
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	Cnt => Cnt,
	DATA => DATA,
	LED_Display => LED_Display,
	PB => PB,
	RST_N => RST_N
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 50000 ps;
	CLK <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- LED_Display[7]
t_prcs_LED_Display_7: PROCESS
BEGIN
	LED_Display(7) <= '0';
WAIT;
END PROCESS t_prcs_LED_Display_7;
-- LED_Display[6]
t_prcs_LED_Display_6: PROCESS
BEGIN
	LED_Display(6) <= '0';
WAIT;
END PROCESS t_prcs_LED_Display_6;
-- LED_Display[5]
t_prcs_LED_Display_5: PROCESS
BEGIN
	LED_Display(5) <= '0';
WAIT;
END PROCESS t_prcs_LED_Display_5;
-- LED_Display[4]
t_prcs_LED_Display_4: PROCESS
BEGIN
	LED_Display(4) <= '0';
	WAIT FOR 48640000 ps;
	LED_Display(4) <= '1';
WAIT;
END PROCESS t_prcs_LED_Display_4;
-- LED_Display[3]
t_prcs_LED_Display_3: PROCESS
BEGIN
	LED_Display(3) <= '1';
	WAIT FOR 48640000 ps;
	LED_Display(3) <= '0';
WAIT;
END PROCESS t_prcs_LED_Display_3;
-- LED_Display[2]
t_prcs_LED_Display_2: PROCESS
BEGIN
	LED_Display(2) <= '0';
WAIT;
END PROCESS t_prcs_LED_Display_2;
-- LED_Display[1]
t_prcs_LED_Display_1: PROCESS
BEGIN
	LED_Display(1) <= '0';
WAIT;
END PROCESS t_prcs_LED_Display_1;
-- LED_Display[0]
t_prcs_LED_Display_0: PROCESS
BEGIN
	LED_Display(0) <= '0';
WAIT;
END PROCESS t_prcs_LED_Display_0;

-- PB
t_prcs_PB: PROCESS
BEGIN
	PB <= '1';
	WAIT FOR 32640000 ps;
	PB <= '0';
	WAIT FOR 640000 ps;
	PB <= '1';
WAIT;
END PROCESS t_prcs_PB;

-- RST_N
t_prcs_RST_N: PROCESS
BEGIN
	RST_N <= '1';
	WAIT FOR 94080000 ps;
	RST_N <= '0';
	WAIT FOR 640000 ps;
	RST_N <= '1';
WAIT;
END PROCESS t_prcs_RST_N;
END WS2812_RGB_LED_256_arch;
