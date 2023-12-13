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
-- Generated on "09/07/2023 22:50:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UART_RX
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UART_RX_vhd_vec_tst IS
END UART_RX_vhd_vec_tst;
ARCHITECTURE UART_RX_arch OF UART_RX_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_i : STD_LOGIC;
SIGNAL data_o : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL req_o : STD_LOGIC;
SIGNAL rst_i : STD_LOGIC;
SIGNAL rx : STD_LOGIC;
SIGNAL sampling_rx : STD_LOGIC;
COMPONENT UART_RX
	PORT (
	clk_i : IN STD_LOGIC;
	data_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	req_o : OUT STD_LOGIC;
	rst_i : IN STD_LOGIC;
	rx : IN STD_LOGIC;
	sampling_rx : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UART_RX
	PORT MAP (
-- list connections between master ports and signals
	clk_i => clk_i,
	data_o => data_o,
	req_o => req_o,
	rst_i => rst_i,
	rx => rx,
	sampling_rx => sampling_rx
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

-- rst_i
t_prcs_rst_i: PROCESS
BEGIN
	rst_i <= '1';
WAIT;
END PROCESS t_prcs_rst_i;

-- rx
t_prcs_rx: PROCESS
BEGIN
	rx <= '1';
	WAIT FOR 70000 ps;
	rx <= '0';
	WAIT FOR 80000 ps;
	rx <= '1';
	WAIT FOR 40000 ps;
	rx <= '0';
	WAIT FOR 160000 ps;
	rx <= '1';
	WAIT FOR 40000 ps;
	rx <= '0';
	WAIT FOR 40000 ps;
	rx <= '1';
WAIT;
END PROCESS t_prcs_rx;
END UART_RX_arch;
