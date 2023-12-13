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
-- Generated on "09/18/2023 09:28:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          spi_controller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY spi_controller_vhd_vec_tst IS
END spi_controller_vhd_vec_tst;
ARCHITECTURE spi_controller_arch OF spi_controller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL i_clk : STD_LOGIC;
SIGNAL i_data_parallel : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL i_miso : STD_LOGIC;
SIGNAL i_rstb : STD_LOGIC;
SIGNAL i_tx_start : STD_LOGIC;
SIGNAL o_data_parallel : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL o_mosi : STD_LOGIC;
SIGNAL o_sclk : STD_LOGIC;
SIGNAL o_ss : STD_LOGIC;
SIGNAL o_tx_end : STD_LOGIC;
COMPONENT spi_controller
	PORT (
	i_clk : IN STD_LOGIC;
	i_data_parallel : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	i_miso : IN STD_LOGIC;
	i_rstb : IN STD_LOGIC;
	i_tx_start : IN STD_LOGIC;
	o_data_parallel : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	o_mosi : OUT STD_LOGIC;
	o_sclk : OUT STD_LOGIC;
	o_ss : OUT STD_LOGIC;
	o_tx_end : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : spi_controller
	PORT MAP (
-- list connections between master ports and signals
	i_clk => i_clk,
	i_data_parallel => i_data_parallel,
	i_miso => i_miso,
	i_rstb => i_rstb,
	i_tx_start => i_tx_start,
	o_data_parallel => o_data_parallel,
	o_mosi => o_mosi,
	o_sclk => o_sclk,
	o_ss => o_ss,
	o_tx_end => o_tx_end
	);

-- i_clk
t_prcs_i_clk: PROCESS
BEGIN
LOOP
	i_clk <= '0';
	WAIT FOR 5000 ps;
	i_clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 50000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_i_clk;
-- i_data_parallel[7]
t_prcs_i_data_parallel_7: PROCESS
BEGIN
	i_data_parallel(7) <= '0';
WAIT;
END PROCESS t_prcs_i_data_parallel_7;
-- i_data_parallel[6]
t_prcs_i_data_parallel_6: PROCESS
BEGIN
	i_data_parallel(6) <= '0';
WAIT;
END PROCESS t_prcs_i_data_parallel_6;
-- i_data_parallel[5]
t_prcs_i_data_parallel_5: PROCESS
BEGIN
	i_data_parallel(5) <= '0';
WAIT;
END PROCESS t_prcs_i_data_parallel_5;
-- i_data_parallel[4]
t_prcs_i_data_parallel_4: PROCESS
BEGIN
	i_data_parallel(4) <= '0';
WAIT;
END PROCESS t_prcs_i_data_parallel_4;
-- i_data_parallel[3]
t_prcs_i_data_parallel_3: PROCESS
BEGIN
	i_data_parallel(3) <= '0';
WAIT;
END PROCESS t_prcs_i_data_parallel_3;
-- i_data_parallel[2]
t_prcs_i_data_parallel_2: PROCESS
BEGIN
	i_data_parallel(2) <= '0';
WAIT;
END PROCESS t_prcs_i_data_parallel_2;
-- i_data_parallel[1]
t_prcs_i_data_parallel_1: PROCESS
BEGIN
	i_data_parallel(1) <= '0';
WAIT;
END PROCESS t_prcs_i_data_parallel_1;
-- i_data_parallel[0]
t_prcs_i_data_parallel_0: PROCESS
BEGIN
	i_data_parallel(0) <= '0';
WAIT;
END PROCESS t_prcs_i_data_parallel_0;

-- i_miso
t_prcs_i_miso: PROCESS
BEGIN
	i_miso <= '0';
WAIT;
END PROCESS t_prcs_i_miso;

-- i_rstb
t_prcs_i_rstb: PROCESS
BEGIN
	i_rstb <= '1';
WAIT;
END PROCESS t_prcs_i_rstb;

-- i_tx_start
t_prcs_i_tx_start: PROCESS
BEGIN
	i_tx_start <= '0';
	WAIT FOR 320000 ps;
	i_tx_start <= '1';
	WAIT FOR 640000 ps;
	i_tx_start <= '0';
WAIT;
END PROCESS t_prcs_i_tx_start;
END spi_controller_arch;
