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

-- DATE "09/07/2023 22:50:52"

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

ENTITY 	UART_RX IS
    PORT (
	clk_i : IN std_logic;
	rst_i : IN std_logic;
	req_o : OUT std_logic;
	data_o : OUT std_logic_vector(7 DOWNTO 0);
	sampling_rx : OUT std_logic;
	rx : IN std_logic
	);
END UART_RX;

ARCHITECTURE structure OF UART_RX IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_i : std_logic;
SIGNAL ww_rst_i : std_logic;
SIGNAL ww_req_o : std_logic;
SIGNAL ww_data_o : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sampling_rx : std_logic;
SIGNAL ww_rx : std_logic;
SIGNAL \req_o~output_o\ : std_logic;
SIGNAL \data_o[0]~output_o\ : std_logic;
SIGNAL \data_o[1]~output_o\ : std_logic;
SIGNAL \data_o[2]~output_o\ : std_logic;
SIGNAL \data_o[3]~output_o\ : std_logic;
SIGNAL \data_o[4]~output_o\ : std_logic;
SIGNAL \data_o[5]~output_o\ : std_logic;
SIGNAL \data_o[6]~output_o\ : std_logic;
SIGNAL \data_o[7]~output_o\ : std_logic;
SIGNAL \sampling_rx~output_o\ : std_logic;
SIGNAL \clk_i~input_o\ : std_logic;
SIGNAL \rst_i~input_o\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state.WAIT_HALF_BIT~q\ : std_logic;
SIGNAL \baudrate_counter[0]~0_combout\ : std_logic;
SIGNAL \baudrate_counter[0]~4_combout\ : std_logic;
SIGNAL \baudrate_counter[1]~5_combout\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state.WAIT_FOR_RX_START~q\ : std_logic;
SIGNAL \baudrate_counter[2]~1_combout\ : std_logic;
SIGNAL \baudrate_counter[2]~2_combout\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state.RECEIVE_BITS~q\ : std_logic;
SIGNAL \baudrate_counter[2]~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \bit_counter[2]~4_combout\ : std_logic;
SIGNAL \bit_counter[0]~0_combout\ : std_logic;
SIGNAL \bit_counter[0]~1_combout\ : std_logic;
SIGNAL \bit_counter[0]~2_combout\ : std_logic;
SIGNAL \bit_counter[1]~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state.WAIT_FOR_STOP_BIT~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \req_o~reg0_q\ : std_logic;
SIGNAL \receive_register[0]~0_combout\ : std_logic;
SIGNAL \data_o~0_combout\ : std_logic;
SIGNAL \data_o[0]~1_combout\ : std_logic;
SIGNAL \data_o[0]~reg0_q\ : std_logic;
SIGNAL \data_o~2_combout\ : std_logic;
SIGNAL \data_o[1]~reg0_q\ : std_logic;
SIGNAL \data_o~3_combout\ : std_logic;
SIGNAL \data_o[2]~reg0_q\ : std_logic;
SIGNAL \data_o~4_combout\ : std_logic;
SIGNAL \data_o[3]~reg0_q\ : std_logic;
SIGNAL \data_o~5_combout\ : std_logic;
SIGNAL \data_o[4]~reg0_q\ : std_logic;
SIGNAL \data_o~6_combout\ : std_logic;
SIGNAL \data_o[5]~reg0_q\ : std_logic;
SIGNAL \data_o~7_combout\ : std_logic;
SIGNAL \data_o[6]~reg0_q\ : std_logic;
SIGNAL \data_o~8_combout\ : std_logic;
SIGNAL \data_o[7]~reg0_q\ : std_logic;
SIGNAL \sampling_rx~0_combout\ : std_logic;
SIGNAL \sampling_rx~reg0_q\ : std_logic;
SIGNAL baudrate_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL receive_register : std_logic_vector(7 DOWNTO 0);
SIGNAL bit_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rst_i~input_o\ : std_logic;

BEGIN

ww_clk_i <= clk_i;
ww_rst_i <= rst_i;
req_o <= ww_req_o;
data_o <= ww_data_o;
sampling_rx <= ww_sampling_rx;
ww_rx <= rx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst_i~input_o\ <= NOT \rst_i~input_o\;

\req_o~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \req_o~reg0_q\,
	devoe => ww_devoe,
	o => \req_o~output_o\);

\data_o[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_o[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_o[0]~output_o\);

\data_o[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_o[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_o[1]~output_o\);

\data_o[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_o[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_o[2]~output_o\);

\data_o[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_o[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_o[3]~output_o\);

\data_o[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_o[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data_o[4]~output_o\);

\data_o[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_o[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data_o[5]~output_o\);

\data_o[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_o[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data_o[6]~output_o\);

\data_o[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_o[7]~reg0_q\,
	devoe => ww_devoe,
	o => \data_o[7]~output_o\);

\sampling_rx~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sampling_rx~reg0_q\,
	devoe => ww_devoe,
	o => \sampling_rx~output_o\);

\clk_i~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_i,
	o => \clk_i~input_o\);

\rst_i~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_i,
	o => \rst_i~input_o\);

\rx~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

\Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\rx~input_o\ & \Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \Selector7~0_combout\,
	combout => \Selector7~2_combout\);

\state~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (!\rx~input_o\ & !\state.WAIT_FOR_RX_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx~input_o\,
	datad => \state.WAIT_FOR_RX_START~q\,
	combout => \state~13_combout\);

\state~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (!\state~14_combout\ & (!\state~12_combout\ & ((!\Selector7~0_combout\) # (!\rx~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \Selector7~0_combout\,
	datac => \state~14_combout\,
	datad => \state~12_combout\,
	combout => \state~20_combout\);

\state~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (\rst_i~input_o\ & ((\state~15_combout\ & (\state~20_combout\)) # (!\state~15_combout\ & ((\state.WAIT_HALF_BIT~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => \state~20_combout\,
	datac => \state.WAIT_HALF_BIT~q\,
	datad => \state~15_combout\,
	combout => \state~19_combout\);

\state.WAIT_HALF_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WAIT_HALF_BIT~q\);

\baudrate_counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[0]~0_combout\ = (\rst_i~input_o\ & (!\Selector7~0_combout\ & ((\state.WAIT_FOR_RX_START~q\) # (!\rx~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => \state.WAIT_FOR_RX_START~q\,
	datac => \rx~input_o\,
	datad => \Selector7~0_combout\,
	combout => \baudrate_counter[0]~0_combout\);

\baudrate_counter[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[0]~4_combout\ = (baudrate_counter(0) & ((!\state.WAIT_FOR_RX_START~q\) # (!\baudrate_counter[0]~0_combout\))) # (!baudrate_counter(0) & (\baudrate_counter[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baudrate_counter(0),
	datac => \baudrate_counter[0]~0_combout\,
	datad => \state.WAIT_FOR_RX_START~q\,
	combout => \baudrate_counter[0]~4_combout\);

\baudrate_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \baudrate_counter[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(0));

\baudrate_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[1]~5_combout\ = (\baudrate_counter[0]~0_combout\ & (\state.WAIT_FOR_RX_START~q\ & (baudrate_counter(1) $ (!baudrate_counter(0))))) # (!\baudrate_counter[0]~0_combout\ & (((baudrate_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WAIT_FOR_RX_START~q\,
	datab => baudrate_counter(1),
	datac => baudrate_counter(0),
	datad => \baudrate_counter[0]~0_combout\,
	combout => \baudrate_counter[1]~5_combout\);

\baudrate_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \baudrate_counter[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(1));

\state~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (\state.WAIT_HALF_BIT~q\ & (!baudrate_counter(2) & (!baudrate_counter(0) & !baudrate_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WAIT_HALF_BIT~q\,
	datab => baudrate_counter(2),
	datac => baudrate_counter(0),
	datad => baudrate_counter(1),
	combout => \state~14_combout\);

\state~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (\Selector7~2_combout\) # ((\state~13_combout\) # ((\state~14_combout\) # (\state~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datab => \state~13_combout\,
	datac => \state~14_combout\,
	datad => \state~12_combout\,
	combout => \state~15_combout\);

\state~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (\rst_i~input_o\ & ((\state~15_combout\ & (!\Selector7~2_combout\)) # (!\state~15_combout\ & ((\state.WAIT_FOR_RX_START~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~2_combout\,
	datab => \state~15_combout\,
	datac => \state.WAIT_FOR_RX_START~q\,
	datad => \rst_i~input_o\,
	combout => \state~17_combout\);

\state.WAIT_FOR_RX_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WAIT_FOR_RX_START~q\);

\baudrate_counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[2]~1_combout\ = ((\state.WAIT_FOR_RX_START~q\ & ((baudrate_counter(0)) # (baudrate_counter(1))))) # (!\baudrate_counter[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WAIT_FOR_RX_START~q\,
	datab => baudrate_counter(0),
	datac => baudrate_counter(1),
	datad => \baudrate_counter[0]~0_combout\,
	combout => \baudrate_counter[2]~1_combout\);

\baudrate_counter[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[2]~2_combout\ = (\Equal1~0_combout\ & (\state.WAIT_FOR_RX_START~q\ & (\baudrate_counter[0]~0_combout\ & !\state.WAIT_HALF_BIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \state.WAIT_FOR_RX_START~q\,
	datac => \baudrate_counter[0]~0_combout\,
	datad => \state.WAIT_HALF_BIT~q\,
	combout => \baudrate_counter[2]~2_combout\);

\state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (\rst_i~input_o\ & ((\state~15_combout\ & (\state~14_combout\)) # (!\state~15_combout\ & ((\state.RECEIVE_BITS~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => \state~14_combout\,
	datac => \state.RECEIVE_BITS~q\,
	datad => \state~15_combout\,
	combout => \state~18_combout\);

\state.RECEIVE_BITS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RECEIVE_BITS~q\);

\baudrate_counter[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[2]~3_combout\ = (baudrate_counter(2) & ((\baudrate_counter[2]~1_combout\) # ((\baudrate_counter[2]~2_combout\ & !\state.RECEIVE_BITS~q\)))) # (!baudrate_counter(2) & (((\baudrate_counter[2]~2_combout\ & !\state.RECEIVE_BITS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(2),
	datab => \baudrate_counter[2]~1_combout\,
	datac => \baudrate_counter[2]~2_combout\,
	datad => \state.RECEIVE_BITS~q\,
	combout => \baudrate_counter[2]~3_combout\);

\baudrate_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \baudrate_counter[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(2));

\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!baudrate_counter(2) & (!baudrate_counter(0) & !baudrate_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baudrate_counter(2),
	datac => baudrate_counter(0),
	datad => baudrate_counter(1),
	combout => \Equal1~0_combout\);

\bit_counter[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[2]~4_combout\ = (\bit_counter[0]~1_combout\ & ((bit_counter(2) $ (\Add1~0_combout\)) # (!\state.RECEIVE_BITS~q\))) # (!\bit_counter[0]~1_combout\ & (bit_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => \bit_counter[0]~1_combout\,
	datac => \Add1~0_combout\,
	datad => \state.RECEIVE_BITS~q\,
	combout => \bit_counter[2]~4_combout\);

\bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \bit_counter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(2));

\bit_counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[0]~0_combout\ = (\Equal1~0_combout\ & (\state.RECEIVE_BITS~q\ & ((bit_counter(2)) # (!\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \state.RECEIVE_BITS~q\,
	datac => bit_counter(2),
	datad => \Add1~0_combout\,
	combout => \bit_counter[0]~0_combout\);

\bit_counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[0]~1_combout\ = (\rst_i~input_o\ & ((\state~14_combout\) # (\bit_counter[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => \state~14_combout\,
	datac => \bit_counter[0]~0_combout\,
	combout => \bit_counter[0]~1_combout\);

\bit_counter[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[0]~2_combout\ = (bit_counter(0) & ((!\state.RECEIVE_BITS~q\) # (!\bit_counter[0]~1_combout\))) # (!bit_counter(0) & (\bit_counter[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_counter(0),
	datac => \bit_counter[0]~1_combout\,
	datad => \state.RECEIVE_BITS~q\,
	combout => \bit_counter[0]~2_combout\);

\bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \bit_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(0));

\bit_counter[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[1]~3_combout\ = (\bit_counter[0]~1_combout\ & ((bit_counter(1) $ (!bit_counter(0))) # (!\state.RECEIVE_BITS~q\))) # (!\bit_counter[0]~1_combout\ & (bit_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => bit_counter(0),
	datac => \bit_counter[0]~1_combout\,
	datad => \state.RECEIVE_BITS~q\,
	combout => \bit_counter[1]~3_combout\);

\bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \bit_counter[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(1));

\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (!bit_counter(0) & !bit_counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bit_counter(0),
	datad => bit_counter(1),
	combout => \Add1~0_combout\);

\state~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~12_combout\ = (\Equal1~0_combout\ & (\state.RECEIVE_BITS~q\ & (\Add1~0_combout\ & !bit_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \state.RECEIVE_BITS~q\,
	datac => \Add1~0_combout\,
	datad => bit_counter(2),
	combout => \state~12_combout\);

\state~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (\rst_i~input_o\ & ((\state~15_combout\ & (\state~12_combout\)) # (!\state~15_combout\ & ((\state.WAIT_FOR_STOP_BIT~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => \state~12_combout\,
	datac => \state.WAIT_FOR_STOP_BIT~q\,
	datad => \state~15_combout\,
	combout => \state~16_combout\);

\state.WAIT_FOR_STOP_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WAIT_FOR_STOP_BIT~q\);

\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.WAIT_FOR_STOP_BIT~q\ & (!baudrate_counter(2) & (!baudrate_counter(0) & !baudrate_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WAIT_FOR_STOP_BIT~q\,
	datab => baudrate_counter(2),
	datac => baudrate_counter(0),
	datad => baudrate_counter(1),
	combout => \Selector7~0_combout\);

\Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\req_o~reg0_q\ & (((!\state.WAIT_FOR_RX_START~q\) # (!\rx~input_o\)) # (!\Selector7~0_combout\))) # (!\req_o~reg0_q\ & (((!\rx~input_o\ & !\state.WAIT_FOR_RX_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \req_o~reg0_q\,
	datab => \Selector7~0_combout\,
	datac => \rx~input_o\,
	datad => \state.WAIT_FOR_RX_START~q\,
	combout => \Selector7~1_combout\);

\req_o~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \Selector7~1_combout\,
	sclr => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \req_o~reg0_q\);

\receive_register[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \receive_register[0]~0_combout\ = (\Equal1~0_combout\ & (\rst_i~input_o\ & \state.RECEIVE_BITS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \rst_i~input_o\,
	datac => \state.RECEIVE_BITS~q\,
	combout => \receive_register[0]~0_combout\);

\receive_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \rx~input_o\,
	ena => \receive_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => receive_register(7));

\receive_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => receive_register(7),
	ena => \receive_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => receive_register(6));

\receive_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => receive_register(6),
	ena => \receive_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => receive_register(5));

\receive_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => receive_register(5),
	ena => \receive_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => receive_register(4));

\receive_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => receive_register(4),
	ena => \receive_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => receive_register(3));

\receive_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => receive_register(3),
	ena => \receive_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => receive_register(2));

\receive_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => receive_register(2),
	ena => \receive_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => receive_register(1));

\receive_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => receive_register(1),
	ena => \receive_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => receive_register(0));

\data_o~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_o~0_combout\ = (\rst_i~input_o\ & receive_register(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => receive_register(0),
	combout => \data_o~0_combout\);

\data_o[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_o[0]~1_combout\ = ((\rx~input_o\ & \Selector7~0_combout\)) # (!\rst_i~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datac => \rx~input_o\,
	datad => \Selector7~0_combout\,
	combout => \data_o[0]~1_combout\);

\data_o[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \data_o~0_combout\,
	ena => \data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_o[0]~reg0_q\);

\data_o~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_o~2_combout\ = (\rst_i~input_o\ & receive_register(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => receive_register(1),
	combout => \data_o~2_combout\);

\data_o[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \data_o~2_combout\,
	ena => \data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_o[1]~reg0_q\);

\data_o~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_o~3_combout\ = (\rst_i~input_o\ & receive_register(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => receive_register(2),
	combout => \data_o~3_combout\);

\data_o[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \data_o~3_combout\,
	ena => \data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_o[2]~reg0_q\);

\data_o~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_o~4_combout\ = (\rst_i~input_o\ & receive_register(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => receive_register(3),
	combout => \data_o~4_combout\);

\data_o[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \data_o~4_combout\,
	ena => \data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_o[3]~reg0_q\);

\data_o~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_o~5_combout\ = (\rst_i~input_o\ & receive_register(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => receive_register(4),
	combout => \data_o~5_combout\);

\data_o[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \data_o~5_combout\,
	ena => \data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_o[4]~reg0_q\);

\data_o~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_o~6_combout\ = (\rst_i~input_o\ & receive_register(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => receive_register(5),
	combout => \data_o~6_combout\);

\data_o[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \data_o~6_combout\,
	ena => \data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_o[5]~reg0_q\);

\data_o~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_o~7_combout\ = (\rst_i~input_o\ & receive_register(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => receive_register(6),
	combout => \data_o~7_combout\);

\data_o[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \data_o~7_combout\,
	ena => \data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_o[6]~reg0_q\);

\data_o~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \data_o~8_combout\ = (\rst_i~input_o\ & receive_register(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => receive_register(7),
	combout => \data_o~8_combout\);

\data_o[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \data_o~8_combout\,
	ena => \data_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_o[7]~reg0_q\);

\sampling_rx~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sampling_rx~0_combout\ = (\rst_i~input_o\ & ((\state.RECEIVE_BITS~q\ & (\Equal1~0_combout\)) # (!\state.RECEIVE_BITS~q\ & ((\sampling_rx~reg0_q\))))) # (!\rst_i~input_o\ & (((\sampling_rx~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \sampling_rx~reg0_q\,
	datac => \rst_i~input_o\,
	datad => \state.RECEIVE_BITS~q\,
	combout => \sampling_rx~0_combout\);

\sampling_rx~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \sampling_rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sampling_rx~reg0_q\);

ww_req_o <= \req_o~output_o\;

ww_data_o(0) <= \data_o[0]~output_o\;

ww_data_o(1) <= \data_o[1]~output_o\;

ww_data_o(2) <= \data_o[2]~output_o\;

ww_data_o(3) <= \data_o[3]~output_o\;

ww_data_o(4) <= \data_o[4]~output_o\;

ww_data_o(5) <= \data_o[5]~output_o\;

ww_data_o(6) <= \data_o[6]~output_o\;

ww_data_o(7) <= \data_o[7]~output_o\;

ww_sampling_rx <= \sampling_rx~output_o\;
END structure;


