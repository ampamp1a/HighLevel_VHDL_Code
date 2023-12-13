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
-- Generated on "07/14/2023 15:55:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          clock_scaler
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clock_scaler_vhd_vec_tst IS
END clock_scaler_vhd_vec_tst;
ARCHITECTURE clock_scaler_arch OF clock_scaler_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_in : STD_LOGIC;
SIGNAL clk_out_1 : STD_LOGIC;
SIGNAL clk_out_2 : STD_LOGIC;
SIGNAL clk_out_3 : STD_LOGIC;
SIGNAL clk_out_4 : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
COMPONENT clock_scaler
	PORT (
	clk_in : IN STD_LOGIC;
	clk_out_1 : OUT STD_LOGIC;
	clk_out_2 : OUT STD_LOGIC;
	clk_out_3 : OUT STD_LOGIC;
	clk_out_4 : OUT STD_LOGIC;
	enable : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : clock_scaler
	PORT MAP (
-- list connections between master ports and signals
	clk_in => clk_in,
	clk_out_1 => clk_out_1,
	clk_out_2 => clk_out_2,
	clk_out_3 => clk_out_3,
	clk_out_4 => clk_out_4,
	enable => enable
	);

-- clk_in
t_prcs_clk_in: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		clk_in <= '0';
		WAIT FOR 15000 ps;
		clk_in <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	clk_in <= '0';
WAIT;
END PROCESS t_prcs_clk_in;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;
END clock_scaler_arch;
