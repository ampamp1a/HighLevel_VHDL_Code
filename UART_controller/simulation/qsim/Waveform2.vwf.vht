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
-- Generated on "08/26/2023 18:18:34"
                                                             
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
SIGNAL Clk_i : STD_LOGIC;
SIGNAL CRX : STD_LOGIC;
SIGNAL DATA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Q : STD_LOGIC;
SIGNAL test : STD_LOGIC;
COMPONENT UART_controller
	PORT (
	Clk_i : IN STD_LOGIC;
	CRX : IN STD_LOGIC;
	DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Q : OUT STD_LOGIC;
	test : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UART_controller
	PORT MAP (
-- list connections between master ports and signals
	Clk_i => Clk_i,
	CRX => CRX,
	DATA => DATA,
	Q => Q,
	test => test
	);

-- Clk_i
t_prcs_Clk_i: PROCESS
BEGIN
LOOP
	Clk_i <= '0';
	WAIT FOR 5000 ps;
	Clk_i <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 5000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk_i;

-- CRX
t_prcs_CRX: PROCESS
BEGIN
	CRX <= '1';
	WAIT FOR 40000 ps;
	CRX <= '0';
	WAIT FOR 40000 ps;
	CRX <= '1';
	WAIT FOR 80000 ps;
	CRX <= '0';
	WAIT FOR 120000 ps;
	CRX <= '1';
	WAIT FOR 40000 ps;
	CRX <= '0';
	WAIT FOR 80000 ps;
	CRX <= '1';
	WAIT FOR 40000 ps;
	CRX <= '0';
	WAIT FOR 120000 ps;
	CRX <= '1';
	WAIT FOR 40000 ps;
	CRX <= '0';
	WAIT FOR 80000 ps;
	CRX <= '1';
	WAIT FOR 40000 ps;
	CRX <= '0';
	WAIT FOR 80000 ps;
	CRX <= '1';
	WAIT FOR 40000 ps;
	CRX <= '0';
	WAIT FOR 360000 ps;
	CRX <= '1';
	WAIT FOR 40000 ps;
	CRX <= '0';
	WAIT FOR 40000 ps;
	CRX <= '1';
	WAIT FOR 40000 ps;
	CRX <= '0';
	WAIT FOR 200000 ps;
	CRX <= '1';
	WAIT FOR 40000 ps;
	CRX <= '0';
	WAIT FOR 40000 ps;
	CRX <= '1';
	WAIT FOR 1080000 ps;
	CRX <= '0';
	WAIT FOR 40000 ps;
	CRX <= '1';
	WAIT FOR 80000 ps;
	CRX <= '0';
	WAIT FOR 120000 ps;
	CRX <= '1';
	WAIT FOR 40000 ps;
	CRX <= '0';
	WAIT FOR 80000 ps;
	CRX <= '1';
	WAIT FOR 40000 ps;
	CRX <= '0';
	WAIT FOR 40000 ps;
	CRX <= '1';
	WAIT FOR 40000 ps;
	CRX <= '0';
	WAIT FOR 40000 ps;
	CRX <= '1';
	WAIT FOR 40000 ps;
	CRX <= '0';
	WAIT FOR 80000 ps;
	CRX <= '1';
	WAIT FOR 40000 ps;
	CRX <= '0';
	WAIT FOR 40000 ps;
	CRX <= '1';
	WAIT FOR 40000 ps;
	CRX <= '0';
	WAIT FOR 360000 ps;
	CRX <= '1';
WAIT;
END PROCESS t_prcs_CRX;
END UART_controller_arch;
