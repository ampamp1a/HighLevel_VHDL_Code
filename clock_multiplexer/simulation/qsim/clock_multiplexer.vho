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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "07/17/2023 14:14:23"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clock_multiplexer IS
    PORT (
	clk_out_1 : IN std_logic;
	clk_out_2 : IN std_logic;
	clk_out_3 : IN std_logic;
	clk_out_4 : IN std_logic;
	Clk_selector : IN std_logic_vector(1 DOWNTO 0);
	Clk_out : OUT std_logic
	);
END clock_multiplexer;

ARCHITECTURE structure OF clock_multiplexer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_out_1 : std_logic;
SIGNAL ww_clk_out_2 : std_logic;
SIGNAL ww_clk_out_3 : std_logic;
SIGNAL ww_clk_out_4 : std_logic;
SIGNAL ww_Clk_selector : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Clk_out : std_logic;
SIGNAL \Clk_out~output_o\ : std_logic;
SIGNAL \clk_out_3~input_o\ : std_logic;
SIGNAL \Clk_selector[1]~input_o\ : std_logic;
SIGNAL \clk_out_2~input_o\ : std_logic;
SIGNAL \Clk_selector[0]~input_o\ : std_logic;
SIGNAL \clk_out_1~input_o\ : std_logic;
SIGNAL \Clk_out~0_combout\ : std_logic;
SIGNAL \clk_out_4~input_o\ : std_logic;
SIGNAL \Clk_out~1_combout\ : std_logic;

BEGIN

ww_clk_out_1 <= clk_out_1;
ww_clk_out_2 <= clk_out_2;
ww_clk_out_3 <= clk_out_3;
ww_clk_out_4 <= clk_out_4;
ww_Clk_selector <= Clk_selector;
Clk_out <= ww_Clk_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Clk_out~1_combout\,
	devoe => ww_devoe,
	o => \Clk_out~output_o\);

\clk_out_3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_out_3,
	o => \clk_out_3~input_o\);

\Clk_selector[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk_selector(1),
	o => \Clk_selector[1]~input_o\);

\clk_out_2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_out_2,
	o => \clk_out_2~input_o\);

\Clk_selector[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk_selector(0),
	o => \Clk_selector[0]~input_o\);

\clk_out_1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_out_1,
	o => \clk_out_1~input_o\);

\Clk_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clk_out~0_combout\ = (\Clk_selector[1]~input_o\ & (((\Clk_selector[0]~input_o\)))) # (!\Clk_selector[1]~input_o\ & ((\Clk_selector[0]~input_o\ & (\clk_out_2~input_o\)) # (!\Clk_selector[0]~input_o\ & ((\clk_out_1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clk_selector[1]~input_o\,
	datab => \clk_out_2~input_o\,
	datac => \Clk_selector[0]~input_o\,
	datad => \clk_out_1~input_o\,
	combout => \Clk_out~0_combout\);

\clk_out_4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_out_4,
	o => \clk_out_4~input_o\);

\Clk_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clk_out~1_combout\ = (\Clk_selector[1]~input_o\ & ((\Clk_out~0_combout\ & ((\clk_out_4~input_o\))) # (!\Clk_out~0_combout\ & (\clk_out_3~input_o\)))) # (!\Clk_selector[1]~input_o\ & (((\Clk_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_out_3~input_o\,
	datab => \Clk_selector[1]~input_o\,
	datac => \Clk_out~0_combout\,
	datad => \clk_out_4~input_o\,
	combout => \Clk_out~1_combout\);

ww_Clk_out <= \Clk_out~output_o\;
END structure;


