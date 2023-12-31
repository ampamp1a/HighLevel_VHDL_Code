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
-- Generated on "08/26/2023 22:02:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TEST_RAM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TEST_RAM_vhd_vec_tst IS
END TEST_RAM_vhd_vec_tst;
ARCHITECTURE TEST_RAM_arch OF TEST_RAM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aclr : STD_LOGIC;
SIGNAL address : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL wren : STD_LOGIC;
COMPONENT TEST_RAM
	PORT (
	aclr : IN STD_LOGIC;
	address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	clock : IN STD_LOGIC;
	data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	q : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	wren : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TEST_RAM
	PORT MAP (
-- list connections between master ports and signals
	aclr => aclr,
	address => address,
	clock => clock,
	data => data,
	q => q,
	wren => wren
	);

-- aclr
t_prcs_aclr: PROCESS
BEGIN
	aclr <= '1';
	WAIT FOR 200000 ps;
	aclr <= '0';
	WAIT FOR 150000 ps;
	aclr <= '1';
	WAIT FOR 150000 ps;
	aclr <= '0';
WAIT;
END PROCESS t_prcs_aclr;
-- address[4]
t_prcs_address_4: PROCESS
BEGIN
	address(4) <= '0';
	WAIT FOR 1799000 ps;
	address(4) <= '1';
WAIT;
END PROCESS t_prcs_address_4;
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
	address(3) <= '0';
	WAIT FOR 400000 ps;
	address(3) <= '1';
	WAIT FOR 100000 ps;
	address(3) <= '0';
	WAIT FOR 400000 ps;
	address(3) <= '1';
	WAIT FOR 99000 ps;
	address(3) <= '0';
	WAIT FOR 400000 ps;
	address(3) <= '1';
	WAIT FOR 400000 ps;
	address(3) <= '0';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	address(2) <= '0';
	WAIT FOR 200000 ps;
	address(2) <= '1';
	WAIT FOR 200000 ps;
	address(2) <= '0';
	WAIT FOR 300000 ps;
	address(2) <= '1';
	WAIT FOR 200000 ps;
	address(2) <= '0';
	WAIT FOR 299000 ps;
	address(2) <= '1';
	WAIT FOR 200000 ps;
	address(2) <= '0';
	WAIT FOR 200000 ps;
	address(2) <= '1';
	WAIT FOR 200000 ps;
	address(2) <= '0';
	WAIT FOR 200000 ps;
	address(2) <= '1';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		address(1) <= '0';
		WAIT FOR 100000 ps;
		address(1) <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	address(1) <= '0';
	WAIT FOR 200000 ps;
	address(1) <= '1';
	WAIT FOR 100000 ps;
	address(1) <= '0';
	WAIT FOR 100000 ps;
	address(1) <= '1';
	WAIT FOR 100000 ps;
	address(1) <= '0';
	WAIT FOR 199000 ps;
	address(1) <= '1';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 4
	LOOP
		address(1) <= '0';
		WAIT FOR 100000 ps;
		address(1) <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	address(1) <= '0';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		address(0) <= '0';
		WAIT FOR 50000 ps;
		address(0) <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	FOR i IN 1 TO 4
	LOOP
		address(0) <= '0';
		WAIT FOR 50000 ps;
		address(0) <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	address(0) <= '0';
	WAIT FOR 50000 ps;
	address(0) <= '1';
	WAIT FOR 49000 ps;
	FOR i IN 1 TO 10
	LOOP
		address(0) <= '0';
		WAIT FOR 50000 ps;
		address(0) <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	address(0) <= '0';
WAIT;
END PROCESS t_prcs_address_0;

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 19
	LOOP
		clock <= '0';
		WAIT FOR 25000 ps;
		clock <= '1';
		WAIT FOR 25000 ps;
	END LOOP;
	clock <= '0';
	WAIT FOR 25000 ps;
	clock <= '1';
	WAIT FOR 24000 ps;
	FOR i IN 1 TO 20
	LOOP
		clock <= '0';
		WAIT FOR 25000 ps;
		clock <= '1';
		WAIT FOR 25000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;

-- wren
t_prcs_wren: PROCESS
BEGIN
	wren <= '1';
	WAIT FOR 500000 ps;
	wren <= '0';
WAIT;
END PROCESS t_prcs_wren;
-- data[7]
t_prcs_data_7: PROCESS
BEGIN
	data(7) <= '1';
	WAIT FOR 999000 ps;
	data(7) <= '0';
WAIT;
END PROCESS t_prcs_data_7;
-- data[6]
t_prcs_data_6: PROCESS
BEGIN
	data(6) <= '1';
	WAIT FOR 999000 ps;
	data(6) <= '0';
WAIT;
END PROCESS t_prcs_data_6;
-- data[5]
t_prcs_data_5: PROCESS
BEGIN
	data(5) <= '0';
WAIT;
END PROCESS t_prcs_data_5;
-- data[4]
t_prcs_data_4: PROCESS
BEGIN
	data(4) <= '0';
	WAIT FOR 400000 ps;
	data(4) <= '1';
	WAIT FOR 599000 ps;
	data(4) <= '0';
WAIT;
END PROCESS t_prcs_data_4;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= '1';
	WAIT FOR 400000 ps;
	data(3) <= '0';
	WAIT FOR 400000 ps;
	data(3) <= '1';
	WAIT FOR 199000 ps;
	data(3) <= '0';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		data(2) <= '0';
		WAIT FOR 200000 ps;
		data(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		data(1) <= '0';
		WAIT FOR 100000 ps;
		data(1) <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	data(1) <= '0';
	WAIT FOR 100000 ps;
	data(1) <= '1';
	WAIT FOR 99000 ps;
	data(1) <= '0';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	FOR i IN 1 TO 9
	LOOP
		data(0) <= '0';
		WAIT FOR 50000 ps;
		data(0) <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	data(0) <= '0';
	WAIT FOR 50000 ps;
	data(0) <= '1';
	WAIT FOR 49000 ps;
	data(0) <= '0';
WAIT;
END PROCESS t_prcs_data_0;
END TEST_RAM_arch;
