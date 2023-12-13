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
-- Generated on "09/07/2023 23:07:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UART_TX
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UART_TX_vhd_vec_tst IS
END UART_TX_vhd_vec_tst;
ARCHITECTURE UART_TX_arch OF UART_TX_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_i : STD_LOGIC;
SIGNAL Data_TX : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL rst_i : STD_LOGIC;
SIGNAL send_data : STD_LOGIC;
SIGNAL tx : STD_LOGIC;
COMPONENT UART_TX
	PORT (
	clk_i : IN STD_LOGIC;
	Data_TX : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	rst_i : IN STD_LOGIC;
	send_data : IN STD_LOGIC;
	tx : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UART_TX
	PORT MAP (
-- list connections between master ports and signals
	clk_i => clk_i,
	Data_TX => Data_TX,
	rst_i => rst_i,
	send_data => send_data,
	tx => tx
	);

-- clk_i
t_prcs_clk_i: PROCESS
BEGIN
LOOP
	clk_i <= '0';
	WAIT FOR 5000 ps;
	clk_i <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_i;
-- Data_TX[7]
t_prcs_Data_TX_7: PROCESS
BEGIN
	Data_TX(7) <= '0';
WAIT;
END PROCESS t_prcs_Data_TX_7;
-- Data_TX[6]
t_prcs_Data_TX_6: PROCESS
BEGIN
	Data_TX(6) <= '1';
WAIT;
END PROCESS t_prcs_Data_TX_6;
-- Data_TX[5]
t_prcs_Data_TX_5: PROCESS
BEGIN
	Data_TX(5) <= '1';
	WAIT FOR 480000 ps;
	Data_TX(5) <= '0';
WAIT;
END PROCESS t_prcs_Data_TX_5;
-- Data_TX[4]
t_prcs_Data_TX_4: PROCESS
BEGIN
	Data_TX(4) <= '0';
WAIT;
END PROCESS t_prcs_Data_TX_4;
-- Data_TX[3]
t_prcs_Data_TX_3: PROCESS
BEGIN
	Data_TX(3) <= '0';
WAIT;
END PROCESS t_prcs_Data_TX_3;
-- Data_TX[2]
t_prcs_Data_TX_2: PROCESS
BEGIN
	Data_TX(2) <= '0';
WAIT;
END PROCESS t_prcs_Data_TX_2;
-- Data_TX[1]
t_prcs_Data_TX_1: PROCESS
BEGIN
	Data_TX(1) <= '0';
	WAIT FOR 480000 ps;
	Data_TX(1) <= '1';
WAIT;
END PROCESS t_prcs_Data_TX_1;
-- Data_TX[0]
t_prcs_Data_TX_0: PROCESS
BEGIN
	Data_TX(0) <= '1';
	WAIT FOR 480000 ps;
	Data_TX(0) <= '0';
WAIT;
END PROCESS t_prcs_Data_TX_0;

-- rst_i
t_prcs_rst_i: PROCESS
BEGIN
	rst_i <= '1';
WAIT;
END PROCESS t_prcs_rst_i;

-- send_data
t_prcs_send_data: PROCESS
BEGIN
	send_data <= '0';
	WAIT FOR 60000 ps;
	send_data <= '1';
	WAIT FOR 40000 ps;
	send_data <= '0';
	WAIT FOR 420000 ps;
	send_data <= '1';
	WAIT FOR 40000 ps;
	send_data <= '0';
WAIT;
END PROCESS t_prcs_send_data;
END UART_TX_arch;
