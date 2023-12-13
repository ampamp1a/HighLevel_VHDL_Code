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
-- Generated on "10/16/2023 11:14:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Test_divide_IP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Test_divide_IP_vhd_vec_tst IS
END Test_divide_IP_vhd_vec_tst;
ARCHITECTURE Test_divide_IP_arch OF Test_divide_IP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ascii_sign_digit : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL binary_digit_0 : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL binary_digit_1 : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL binary_digit_2 : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL binary_digit_3 : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL clk_i : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL rst_i : STD_LOGIC;
SIGNAL seven_seg_digit_0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seven_seg_digit_1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seven_seg_digit_2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seven_seg_digit_3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT Test_divide_IP
	PORT (
	ascii_sign_digit : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	binary_digit_0 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	binary_digit_1 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	binary_digit_2 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	binary_digit_3 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	clk_i : IN STD_LOGIC;
	data : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
	rst_i : IN STD_LOGIC;
	seven_seg_digit_0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seven_seg_digit_1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seven_seg_digit_2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	seven_seg_digit_3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Test_divide_IP
	PORT MAP (
-- list connections between master ports and signals
	ascii_sign_digit => ascii_sign_digit,
	binary_digit_0 => binary_digit_0,
	binary_digit_1 => binary_digit_1,
	binary_digit_2 => binary_digit_2,
	binary_digit_3 => binary_digit_3,
	clk_i => clk_i,
	data => data,
	rst_i => rst_i,
	seven_seg_digit_0 => seven_seg_digit_0,
	seven_seg_digit_1 => seven_seg_digit_1,
	seven_seg_digit_2 => seven_seg_digit_2,
	seven_seg_digit_3 => seven_seg_digit_3
	);

-- clk_i
t_prcs_clk_i: PROCESS
BEGIN
LOOP
	clk_i <= '0';
	WAIT FOR 10000 ps;
	clk_i <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_i;

-- rst_i
t_prcs_rst_i: PROCESS
BEGIN
	rst_i <= '0';
WAIT;
END PROCESS t_prcs_rst_i;
-- data[12]
t_prcs_data_12: PROCESS
BEGIN
	data(12) <= '1';
	WAIT FOR 150000 ps;
	data(12) <= '0';
	WAIT FOR 300000 ps;
	data(12) <= '1';
	WAIT FOR 150000 ps;
	data(12) <= '0';
	WAIT FOR 150000 ps;
	data(12) <= '1';
WAIT;
END PROCESS t_prcs_data_12;
-- data[11]
t_prcs_data_11: PROCESS
BEGIN
	data(11) <= '1';
	WAIT FOR 300000 ps;
	data(11) <= '0';
	WAIT FOR 150000 ps;
	data(11) <= '1';
	WAIT FOR 150000 ps;
	data(11) <= '0';
	WAIT FOR 150000 ps;
	data(11) <= '1';
WAIT;
END PROCESS t_prcs_data_11;
-- data[10]
t_prcs_data_10: PROCESS
BEGIN
	data(10) <= '0';
	WAIT FOR 300000 ps;
	data(10) <= '1';
	WAIT FOR 300000 ps;
	data(10) <= '0';
	WAIT FOR 150000 ps;
	data(10) <= '1';
WAIT;
END PROCESS t_prcs_data_10;
-- data[9]
t_prcs_data_9: PROCESS
BEGIN
	data(9) <= '1';
	WAIT FOR 150000 ps;
	data(9) <= '0';
	WAIT FOR 300000 ps;
	data(9) <= '1';
	WAIT FOR 150000 ps;
	data(9) <= '0';
WAIT;
END PROCESS t_prcs_data_9;
-- data[8]
t_prcs_data_8: PROCESS
BEGIN
	data(8) <= '1';
	WAIT FOR 300000 ps;
	data(8) <= '0';
	WAIT FOR 150000 ps;
	data(8) <= '1';
	WAIT FOR 300000 ps;
	data(8) <= '0';
WAIT;
END PROCESS t_prcs_data_8;
-- data[7]
t_prcs_data_7: PROCESS
BEGIN
	data(7) <= '0';
	WAIT FOR 300000 ps;
	data(7) <= '1';
	WAIT FOR 300000 ps;
	data(7) <= '0';
	WAIT FOR 150000 ps;
	data(7) <= '1';
WAIT;
END PROCESS t_prcs_data_7;
-- data[6]
t_prcs_data_6: PROCESS
BEGIN
	data(6) <= '0';
	WAIT FOR 300000 ps;
	data(6) <= '1';
	WAIT FOR 150000 ps;
	data(6) <= '0';
	WAIT FOR 150000 ps;
	data(6) <= '1';
WAIT;
END PROCESS t_prcs_data_6;
-- data[5]
t_prcs_data_5: PROCESS
BEGIN
	data(5) <= '1';
	WAIT FOR 300000 ps;
	data(5) <= '0';
	WAIT FOR 450000 ps;
	data(5) <= '1';
WAIT;
END PROCESS t_prcs_data_5;
-- data[4]
t_prcs_data_4: PROCESS
BEGIN
	data(4) <= '0';
	WAIT FOR 300000 ps;
	data(4) <= '1';
	WAIT FOR 150000 ps;
	data(4) <= '0';
	WAIT FOR 150000 ps;
	data(4) <= '1';
	WAIT FOR 150000 ps;
	data(4) <= '0';
WAIT;
END PROCESS t_prcs_data_4;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= '1';
	WAIT FOR 300000 ps;
	data(3) <= '0';
	WAIT FOR 300000 ps;
	data(3) <= '1';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	data(2) <= '1';
	WAIT FOR 150000 ps;
	data(2) <= '0';
	WAIT FOR 300000 ps;
	data(2) <= '1';
	WAIT FOR 150000 ps;
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	data(1) <= '1';
	WAIT FOR 150000 ps;
	data(1) <= '0';
	WAIT FOR 150000 ps;
	data(1) <= '1';
	WAIT FOR 150000 ps;
	data(1) <= '0';
	WAIT FOR 300000 ps;
	data(1) <= '1';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	data(0) <= '0';
	WAIT FOR 150000 ps;
	data(0) <= '1';
	WAIT FOR 150000 ps;
	data(0) <= '0';
	WAIT FOR 150000 ps;
	data(0) <= '1';
WAIT;
END PROCESS t_prcs_data_0;
END Test_divide_IP_arch;
