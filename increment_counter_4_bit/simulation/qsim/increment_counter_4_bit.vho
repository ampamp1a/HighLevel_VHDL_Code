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

-- DATE "09/07/2023 21:13:30"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	increment_counter_4_bit IS
    PORT (
	clk_in : IN std_logic;
	reset : IN std_logic;
	logic_out_1 : OUT std_logic;
	logic_out_2 : OUT std_logic
	);
END increment_counter_4_bit;

ARCHITECTURE structure OF increment_counter_4_bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_logic_out_1 : std_logic;
SIGNAL ww_logic_out_2 : std_logic;
SIGNAL \logic_out_1~output_o\ : std_logic;
SIGNAL \logic_out_2~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \counter_value~2_combout\ : std_logic;
SIGNAL \counter_value~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \counter_value~4_combout\ : std_logic;
SIGNAL \counter_value~0_combout\ : std_logic;
SIGNAL \counter_value~1_combout\ : std_logic;
SIGNAL \Toggle_output~0_combout\ : std_logic;
SIGNAL \logic_out_1~0_combout\ : std_logic;
SIGNAL \logic_out_1~reg0_q\ : std_logic;
SIGNAL \Toggle_output~1_combout\ : std_logic;
SIGNAL \Toggle_output~q\ : std_logic;
SIGNAL counter_value : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk_in <= clk_in;
ww_reset <= reset;
logic_out_1 <= ww_logic_out_1;
logic_out_2 <= ww_logic_out_2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\logic_out_1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \logic_out_1~reg0_q\,
	devoe => ww_devoe,
	o => \logic_out_1~output_o\);

\logic_out_2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Toggle_output~q\,
	devoe => ww_devoe,
	o => \logic_out_2~output_o\);

\clk_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\counter_value~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value~2_combout\ = (\reset~input_o\ & !counter_value(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => counter_value(0),
	combout => \counter_value~2_combout\);

\counter_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value(0));

\counter_value~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value~3_combout\ = (\reset~input_o\ & (!\Toggle_output~0_combout\ & (counter_value(0) $ (counter_value(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => counter_value(0),
	datac => counter_value(1),
	datad => \Toggle_output~0_combout\,
	combout => \counter_value~3_combout\);

\counter_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value(1));

\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter_value(2) $ (((counter_value(0) & counter_value(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_value(2),
	datac => counter_value(0),
	datad => counter_value(1),
	combout => \Add0~0_combout\);

\counter_value~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value~4_combout\ = (\reset~input_o\ & (\Add0~0_combout\ & !\Toggle_output~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Add0~0_combout\,
	datad => \Toggle_output~0_combout\,
	combout => \counter_value~4_combout\);

\counter_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value(2));

\counter_value~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value~0_combout\ = (counter_value(0) & ((!counter_value(2)) # (!counter_value(1)))) # (!counter_value(0) & ((counter_value(1)) # (counter_value(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_value(0),
	datab => counter_value(1),
	datac => counter_value(2),
	combout => \counter_value~0_combout\);

\counter_value~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value~1_combout\ = (\reset~input_o\ & ((counter_value(3) & ((\counter_value~0_combout\))) # (!counter_value(3) & (counter_value(2) & !\counter_value~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => counter_value(3),
	datac => counter_value(2),
	datad => \counter_value~0_combout\,
	combout => \counter_value~1_combout\);

\counter_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value(3));

\Toggle_output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Toggle_output~0_combout\ = (counter_value(3) & (!counter_value(0) & (!counter_value(1) & !counter_value(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_value(3),
	datab => counter_value(0),
	datac => counter_value(1),
	datad => counter_value(2),
	combout => \Toggle_output~0_combout\);

\logic_out_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \logic_out_1~0_combout\ = (\reset~input_o\ & (\Toggle_output~0_combout\)) # (!\reset~input_o\ & ((\logic_out_1~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Toggle_output~0_combout\,
	datab => \logic_out_1~reg0_q\,
	datad => \reset~input_o\,
	combout => \logic_out_1~0_combout\);

\logic_out_1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \logic_out_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logic_out_1~reg0_q\);

\Toggle_output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Toggle_output~1_combout\ = \Toggle_output~q\ $ (((\reset~input_o\ & \Toggle_output~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Toggle_output~q\,
	datac => \reset~input_o\,
	datad => \Toggle_output~0_combout\,
	combout => \Toggle_output~1_combout\);

Toggle_output : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \Toggle_output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Toggle_output~q\);

ww_logic_out_1 <= \logic_out_1~output_o\;

ww_logic_out_2 <= \logic_out_2~output_o\;
END structure;


