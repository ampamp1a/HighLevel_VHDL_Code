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
-- Generated on "09/07/2023 21:13:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          increment_counter_4_bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY increment_counter_4_bit_vhd_vec_tst IS
END increment_counter_4_bit_vhd_vec_tst;
ARCHITECTURE increment_counter_4_bit_arch OF increment_counter_4_bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_in : STD_LOGIC;
SIGNAL logic_out_1 : STD_LOGIC;
SIGNAL logic_out_2 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT increment_counter_4_bit
	PORT (
	clk_in : IN STD_LOGIC;
	logic_out_1 : OUT STD_LOGIC;
	logic_out_2 : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : increment_counter_4_bit
	PORT MAP (
-- list connections between master ports and signals
	clk_in => clk_in,
	logic_out_1 => logic_out_1,
	logic_out_2 => logic_out_2,
	reset => reset
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

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
END increment_counter_4_bit_arch;
