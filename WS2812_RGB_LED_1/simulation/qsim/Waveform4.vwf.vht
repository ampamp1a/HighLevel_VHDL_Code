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
-- Generated on "08/06/2023 08:59:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          WS2812_RGB_LED_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY WS2812_RGB_LED_1_vhd_vec_tst IS
END WS2812_RGB_LED_1_vhd_vec_tst;
ARCHITECTURE WS2812_RGB_LED_1_arch OF WS2812_RGB_LED_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL PB : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL RST_N : STD_LOGIC;
COMPONENT WS2812_RGB_LED_1
	PORT (
	CLK : IN STD_LOGIC;
	PB : IN STD_LOGIC;
	Q : OUT STD_LOGIC;
	RST_N : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : WS2812_RGB_LED_1
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	PB => PB,
	Q => Q,
	RST_N => RST_N
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 25000 ps;
	CLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- PB
t_prcs_PB: PROCESS
BEGIN
	PB <= '1';
	WAIT FOR 7520000 ps;
	PB <= '0';
	WAIT FOR 320000 ps;
	PB <= '1';
	WAIT FOR 15040000 ps;
	PB <= '0';
	WAIT FOR 160000 ps;
	PB <= '1';
	WAIT FOR 32800000 ps;
	PB <= '0';
	WAIT FOR 320000 ps;
	PB <= '1';
	WAIT FOR 28000000 ps;
	PB <= '0';
	WAIT FOR 160000 ps;
	PB <= '1';
WAIT;
END PROCESS t_prcs_PB;

-- RST_N
t_prcs_RST_N: PROCESS
BEGIN
	RST_N <= '1';
	WAIT FOR 72320000 ps;
	RST_N <= '0';
	WAIT FOR 640000 ps;
	RST_N <= '1';
WAIT;
END PROCESS t_prcs_RST_N;
END WS2812_RGB_LED_1_arch;
