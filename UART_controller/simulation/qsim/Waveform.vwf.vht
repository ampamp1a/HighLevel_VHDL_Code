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
-- Generated on "08/23/2023 08:32:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UART_controller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UART_controller_vhd_vec_tst IS
END UART_controller_vhd_vec_tst;
ARCHITECTURE UART_controller_arch OF UART_controller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Addr : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Clk_i : STD_LOGIC;
SIGNAL CRX : STD_LOGIC;
SIGNAL Ctrl : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
SIGNAL Rst : STD_LOGIC;
SIGNAL test : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT UART_controller
	PORT (
	Addr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Clk_i : IN STD_LOGIC;
	CRX : IN STD_LOGIC;
	Ctrl : IN STD_LOGIC;
	Q : OUT STD_LOGIC;
	Rst : IN STD_LOGIC;
	test : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : UART_controller
	PORT MAP (
-- list connections between master ports and signals
	Addr => Addr,
	Clk_i => Clk_i,
	CRX => CRX,
	Ctrl => Ctrl,
	Q => Q,
	Rst => Rst,
	test => test
	);
-- Addr[7]
t_prcs_Addr_7: PROCESS
BEGIN
	Addr(7) <= '0';
WAIT;
END PROCESS t_prcs_Addr_7;
-- Addr[6]
t_prcs_Addr_6: PROCESS
BEGIN
	Addr(6) <= '0';
WAIT;
END PROCESS t_prcs_Addr_6;
-- Addr[5]
t_prcs_Addr_5: PROCESS
BEGIN
	Addr(5) <= '0';
WAIT;
END PROCESS t_prcs_Addr_5;
-- Addr[4]
t_prcs_Addr_4: PROCESS
BEGIN
	Addr(4) <= '0';
WAIT;
END PROCESS t_prcs_Addr_4;
-- Addr[3]
t_prcs_Addr_3: PROCESS
BEGIN
	Addr(3) <= '0';
	WAIT FOR 400000 ps;
	Addr(3) <= '1';
	WAIT FOR 100000 ps;
	Addr(3) <= '0';
	WAIT FOR 400000 ps;
	Addr(3) <= '1';
WAIT;
END PROCESS t_prcs_Addr_3;
-- Addr[2]
t_prcs_Addr_2: PROCESS
BEGIN
	Addr(2) <= '0';
	WAIT FOR 200000 ps;
	Addr(2) <= '1';
	WAIT FOR 200000 ps;
	Addr(2) <= '0';
	WAIT FOR 300000 ps;
	Addr(2) <= '1';
	WAIT FOR 200000 ps;
	Addr(2) <= '0';
WAIT;
END PROCESS t_prcs_Addr_2;
-- Addr[1]
t_prcs_Addr_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		Addr(1) <= '0';
		WAIT FOR 100000 ps;
		Addr(1) <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	Addr(1) <= '0';
	WAIT FOR 200000 ps;
	Addr(1) <= '1';
	WAIT FOR 100000 ps;
	Addr(1) <= '0';
	WAIT FOR 100000 ps;
	Addr(1) <= '1';
	WAIT FOR 100000 ps;
	Addr(1) <= '0';
WAIT;
END PROCESS t_prcs_Addr_1;
-- Addr[0]
t_prcs_Addr_0: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		Addr(0) <= '0';
		WAIT FOR 50000 ps;
		Addr(0) <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	FOR i IN 1 TO 5
	LOOP
		Addr(0) <= '0';
		WAIT FOR 50000 ps;
		Addr(0) <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_Addr_0;

-- Clk_i
t_prcs_Clk_i: PROCESS
BEGIN
LOOP
	Clk_i <= '0';
	WAIT FOR 25000 ps;
	Clk_i <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk_i;

-- CRX
t_prcs_CRX: PROCESS
BEGIN
LOOP
	CRX <= '0';
	WAIT FOR 50000 ps;
	CRX <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CRX;

-- Ctrl
t_prcs_Ctrl: PROCESS
BEGIN
	Ctrl <= '1';
	WAIT FOR 500000 ps;
	Ctrl <= '0';
WAIT;
END PROCESS t_prcs_Ctrl;

-- Rst
t_prcs_Rst: PROCESS
BEGIN
	Rst <= '0';
WAIT;
END PROCESS t_prcs_Rst;
END UART_controller_arch;
