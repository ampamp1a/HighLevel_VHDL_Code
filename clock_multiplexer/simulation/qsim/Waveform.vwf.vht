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
-- Generated on "07/17/2023 14:14:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          clock_multiplexer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clock_multiplexer_vhd_vec_tst IS
END clock_multiplexer_vhd_vec_tst;
ARCHITECTURE clock_multiplexer_arch OF clock_multiplexer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk_out : STD_LOGIC;
SIGNAL clk_out_1 : STD_LOGIC;
SIGNAL clk_out_2 : STD_LOGIC;
SIGNAL clk_out_3 : STD_LOGIC;
SIGNAL clk_out_4 : STD_LOGIC;
SIGNAL Clk_selector : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT clock_multiplexer
	PORT (
	Clk_out : OUT STD_LOGIC;
	clk_out_1 : IN STD_LOGIC;
	clk_out_2 : IN STD_LOGIC;
	clk_out_3 : IN STD_LOGIC;
	clk_out_4 : IN STD_LOGIC;
	Clk_selector : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : clock_multiplexer
	PORT MAP (
-- list connections between master ports and signals
	Clk_out => Clk_out,
	clk_out_1 => clk_out_1,
	clk_out_2 => clk_out_2,
	clk_out_3 => clk_out_3,
	clk_out_4 => clk_out_4,
	Clk_selector => Clk_selector
	);

-- clk_out_1
t_prcs_clk_out_1: PROCESS
BEGIN
LOOP
	clk_out_1 <= '0';
	WAIT FOR 20000 ps;
	clk_out_1 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_out_1;

-- clk_out_2
t_prcs_clk_out_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clk_out_2 <= '0';
		WAIT FOR 40000 ps;
		clk_out_2 <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk_out_2 <= '0';
WAIT;
END PROCESS t_prcs_clk_out_2;

-- clk_out_3
t_prcs_clk_out_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		clk_out_3 <= '0';
		WAIT FOR 80000 ps;
		clk_out_3 <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	clk_out_3 <= '0';
WAIT;
END PROCESS t_prcs_clk_out_3;

-- clk_out_4
t_prcs_clk_out_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		clk_out_4 <= '0';
		WAIT FOR 160000 ps;
		clk_out_4 <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	clk_out_4 <= '0';
WAIT;
END PROCESS t_prcs_clk_out_4;
-- Clk_selector[1]
t_prcs_Clk_selector_1: PROCESS
BEGIN
	Clk_selector(1) <= '1';
WAIT;
END PROCESS t_prcs_Clk_selector_1;
-- Clk_selector[0]
t_prcs_Clk_selector_0: PROCESS
BEGIN
	Clk_selector(0) <= '1';
WAIT;
END PROCESS t_prcs_Clk_selector_0;
END clock_multiplexer_arch;
