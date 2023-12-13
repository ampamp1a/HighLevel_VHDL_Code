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
-- Generated on "07/17/2023 10:03:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Clock_Prescaler
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Clock_Prescaler_vhd_vec_tst IS
END Clock_Prescaler_vhd_vec_tst;
ARCHITECTURE Clock_Prescaler_arch OF Clock_Prescaler_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk_in : STD_LOGIC;
SIGNAL Clk_Out : STD_LOGIC;
SIGNAL Clk_Selector : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Enable : STD_LOGIC;
COMPONENT Clock_Prescaler
	PORT (
	Clk_in : IN STD_LOGIC;
	Clk_Out : BUFFER STD_LOGIC;
	Clk_Selector : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Enable : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Clock_Prescaler
	PORT MAP (
-- list connections between master ports and signals
	Clk_in => Clk_in,
	Clk_Out => Clk_Out,
	Clk_Selector => Clk_Selector,
	Enable => Enable
	);

-- Clk_in
t_prcs_Clk_in: PROCESS
BEGIN
LOOP
	Clk_in <= '0';
	WAIT FOR 10000 ps;
	Clk_in <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk_in;
-- Clk_Selector[1]
t_prcs_Clk_Selector_1: PROCESS
BEGIN
	Clk_Selector(1) <= '1';
WAIT;
END PROCESS t_prcs_Clk_Selector_1;
-- Clk_Selector[0]
t_prcs_Clk_Selector_0: PROCESS
BEGIN
	Clk_Selector(0) <= '1';
WAIT;
END PROCESS t_prcs_Clk_Selector_0;

-- Enable
t_prcs_Enable: PROCESS
BEGIN
	Enable <= '1';
WAIT;
END PROCESS t_prcs_Enable;
END Clock_Prescaler_arch;
