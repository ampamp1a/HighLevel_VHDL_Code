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
-- Generated on "08/17/2023 22:20:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UART
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UART_vhd_vec_tst IS
END UART_vhd_vec_tst;
ARCHITECTURE UART_arch OF UART_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk_I : STD_LOGIC;
SIGNAL Req_O : STD_LOGIC;
SIGNAL Rst_I : STD_LOGIC;
SIGNAL Rx : STD_LOGIC;
SIGNAL Sampling_Rx : STD_LOGIC;
SIGNAL Send_data : STD_LOGIC;
SIGNAL Tx : STD_LOGIC;
COMPONENT UART
	PORT (
	Clk_I : IN STD_LOGIC;
	Req_O : BUFFER STD_LOGIC;
	Rst_I : IN STD_LOGIC;
	Rx : IN STD_LOGIC;
	Sampling_Rx : BUFFER STD_LOGIC;
	Send_data : IN STD_LOGIC;
	Tx : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UART
	PORT MAP (
-- list connections between master ports and signals
	Clk_I => Clk_I,
	Req_O => Req_O,
	Rst_I => Rst_I,
	Rx => Rx,
	Sampling_Rx => Sampling_Rx,
	Send_data => Send_data,
	Tx => Tx
	);

-- Clk_I
t_prcs_Clk_I: PROCESS
BEGIN
LOOP
	Clk_I <= '0';
	WAIT FOR 5000 ps;
	Clk_I <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk_I;

-- Rst_I
t_prcs_Rst_I: PROCESS
BEGIN
	Rst_I <= '1';
WAIT;
END PROCESS t_prcs_Rst_I;

-- Send_data
t_prcs_Send_data: PROCESS
BEGIN
	Send_data <= '0';
	WAIT FOR 880000 ps;
	Send_data <= '1';
	WAIT FOR 140000 ps;
	Send_data <= '0';
WAIT;
END PROCESS t_prcs_Send_data;

-- Rx
t_prcs_Rx: PROCESS
BEGIN
	Rx <= '1';
	WAIT FOR 60000 ps;
	Rx <= '0';
	WAIT FOR 80000 ps;
	Rx <= '1';
	WAIT FOR 160000 ps;
	Rx <= '0';
	WAIT FOR 320000 ps;
	Rx <= '1';
WAIT;
END PROCESS t_prcs_Rx;
END UART_arch;
