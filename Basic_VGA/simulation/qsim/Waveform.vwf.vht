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
-- Generated on "08/24/2023 17:40:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Basic_VGA
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Basic_VGA_vhd_vec_tst IS
END Basic_VGA_vhd_vec_tst;
ARCHITECTURE Basic_VGA_arch OF Basic_VGA_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Blue : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL Green : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Red : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL VGA_HS : STD_LOGIC;
SIGNAL VGA_VS : STD_LOGIC;
SIGNAL X : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT Basic_VGA
	PORT (
	Blue : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	clock : IN STD_LOGIC;
	Green : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Red : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	VGA_HS : BUFFER STD_LOGIC;
	VGA_VS : BUFFER STD_LOGIC;
	X : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	Y : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Basic_VGA
	PORT MAP (
-- list connections between master ports and signals
	Blue => Blue,
	clock => clock,
	Green => Green,
	Red => Red,
	reset => reset,
	VGA_HS => VGA_HS,
	VGA_VS => VGA_VS,
	X => X,
	Y => Y
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END Basic_VGA_arch;
