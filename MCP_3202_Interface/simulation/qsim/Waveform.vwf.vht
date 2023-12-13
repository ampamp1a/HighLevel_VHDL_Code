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
-- Generated on "09/28/2023 22:08:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MCP_3202_Interface
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MCP_3202_Interface_vhd_vec_tst IS
END MCP_3202_Interface_vhd_vec_tst;
ARCHITECTURE MCP_3202_Interface_arch OF MCP_3202_Interface_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL DONE : STD_LOGIC;
SIGNAL HOLD_SS_N : STD_LOGIC;
SIGNAL RDATA : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL RST_N : STD_LOGIC;
SIGNAL S_CH : STD_LOGIC;
SIGNAL SPI_MISO : STD_LOGIC;
SIGNAL SPI_MOSI : STD_LOGIC;
SIGNAL SPI_SCK : STD_LOGIC;
SIGNAL SPI_SS_N : STD_LOGIC;
SIGNAL START : STD_LOGIC;
COMPONENT MCP_3202_Interface
	PORT (
	CLK : IN STD_LOGIC;
	DONE : OUT STD_LOGIC;
	HOLD_SS_N : IN STD_LOGIC;
	RDATA : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	RST_N : IN STD_LOGIC;
	S_CH : IN STD_LOGIC;
	SPI_MISO : IN STD_LOGIC;
	SPI_MOSI : OUT STD_LOGIC;
	SPI_SCK : OUT STD_LOGIC;
	SPI_SS_N : OUT STD_LOGIC;
	START : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MCP_3202_Interface
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	DONE => DONE,
	HOLD_SS_N => HOLD_SS_N,
	RDATA => RDATA,
	RST_N => RST_N,
	S_CH => S_CH,
	SPI_MISO => SPI_MISO,
	SPI_MOSI => SPI_MOSI,
	SPI_SCK => SPI_SCK,
	SPI_SS_N => SPI_SS_N,
	START => START
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- HOLD_SS_N
t_prcs_HOLD_SS_N: PROCESS
BEGIN
	HOLD_SS_N <= '1';
WAIT;
END PROCESS t_prcs_HOLD_SS_N;

-- RST_N
t_prcs_RST_N: PROCESS
BEGIN
	RST_N <= '1';
WAIT;
END PROCESS t_prcs_RST_N;

-- S_CH
t_prcs_S_CH: PROCESS
BEGIN
	S_CH <= '1';
	WAIT FOR 35840000 ps;
	S_CH <= '0';
WAIT;
END PROCESS t_prcs_S_CH;

-- START
t_prcs_START: PROCESS
BEGIN
	START <= '1';
	WAIT FOR 2800000 ps;
	START <= '0';
	WAIT FOR 800000 ps;
	START <= '1';
	WAIT FOR 40560000 ps;
	START <= '0';
	WAIT FOR 1920000 ps;
	START <= '1';
WAIT;
END PROCESS t_prcs_START;

-- SPI_MISO
t_prcs_SPI_MISO: PROCESS
BEGIN
	SPI_MISO <= '0';
	WAIT FOR 13440000 ps;
	SPI_MISO <= '1';
	WAIT FOR 1920000 ps;
	SPI_MISO <= '0';
	WAIT FOR 2560000 ps;
	SPI_MISO <= '1';
	WAIT FOR 1920000 ps;
	SPI_MISO <= '0';
	WAIT FOR 1920000 ps;
	SPI_MISO <= '1';
	WAIT FOR 1920000 ps;
	SPI_MISO <= '0';
	WAIT FOR 8320000 ps;
	SPI_MISO <= '1';
	WAIT FOR 1920000 ps;
	SPI_MISO <= '0';
	WAIT FOR 1920000 ps;
	SPI_MISO <= '1';
	WAIT FOR 2560000 ps;
	SPI_MISO <= '0';
WAIT;
END PROCESS t_prcs_SPI_MISO;
END MCP_3202_Interface_arch;
