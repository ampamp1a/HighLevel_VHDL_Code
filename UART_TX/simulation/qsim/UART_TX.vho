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

-- DATE "09/07/2023 23:07:19"

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

ENTITY 	UART_TX IS
    PORT (
	clk_i : IN std_logic;
	rst_i : IN std_logic;
	send_data : IN std_logic;
	Data_TX : IN std_logic_vector(7 DOWNTO 0);
	tx : OUT std_logic
	);
END UART_TX;

ARCHITECTURE structure OF UART_TX IS
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
SIGNAL ww_send_data : std_logic;
SIGNAL ww_Data_TX : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_tx : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \clk_i~input_o\ : std_logic;
SIGNAL \rst_i~input_o\ : std_logic;
SIGNAL \send_data~input_o\ : std_logic;
SIGNAL \send_pause~0_combout\ : std_logic;
SIGNAL \send_pause~q\ : std_logic;
SIGNAL \baudrate_counter[0]~1_combout\ : std_logic;
SIGNAL \baudrate_counter[0]~3_combout\ : std_logic;
SIGNAL \baudrate_counter[0]~6_combout\ : std_logic;
SIGNAL \baudrate_counter[1]~7_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \baudrate_counter[2]~2_combout\ : std_logic;
SIGNAL \baudrate_counter[2]~4_combout\ : std_logic;
SIGNAL \baudrate_counter[2]~5_combout\ : std_logic;
SIGNAL \bit_counter[3]~0_combout\ : std_logic;
SIGNAL \bit_counter~4_combout\ : std_logic;
SIGNAL \bit_counter[3]~2_combout\ : std_logic;
SIGNAL \bit_counter[2]~3_combout\ : std_logic;
SIGNAL \bit_counter~5_combout\ : std_logic;
SIGNAL \bit_counter~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state.WAIT_FOR_SEND_STOP_BIT~q\ : std_logic;
SIGNAL \baudrate_counter[0]~0_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state.WAIT_FOR_TX_START~q\ : std_logic;
SIGNAL \sending_register[9]~0_combout\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state.SEND_START_BIT~q\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state.SENDING_BITS~q\ : std_logic;
SIGNAL \tx~0_combout\ : std_logic;
SIGNAL \tx~1_combout\ : std_logic;
SIGNAL \tx~2_combout\ : std_logic;
SIGNAL \tx~3_combout\ : std_logic;
SIGNAL \tx~4_combout\ : std_logic;
SIGNAL \Data_TX[1]~input_o\ : std_logic;
SIGNAL \Data_TX[2]~input_o\ : std_logic;
SIGNAL \tx~5_combout\ : std_logic;
SIGNAL \Data_TX[7]~input_o\ : std_logic;
SIGNAL \Data_TX[0]~input_o\ : std_logic;
SIGNAL \tx~6_combout\ : std_logic;
SIGNAL \tx~7_combout\ : std_logic;
SIGNAL \Data_TX[5]~input_o\ : std_logic;
SIGNAL \Data_TX[4]~input_o\ : std_logic;
SIGNAL \Data_TX[3]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Data_TX[6]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \tx~8_combout\ : std_logic;
SIGNAL \tx~9_combout\ : std_logic;
SIGNAL \tx~reg0_q\ : std_logic;
SIGNAL bit_counter : std_logic_vector(3 DOWNTO 0);
SIGNAL baudrate_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL sending_register : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_clk_i <= clk_i;
ww_rst_i <= rst_i;
ww_send_data <= send_data;
ww_Data_TX <= Data_TX;
tx <= ww_tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\tx~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx~reg0_q\,
	devoe => ww_devoe,
	o => \tx~output_o\);

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

\send_data~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_send_data,
	o => \send_data~input_o\);

\send_pause~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \send_pause~0_combout\ = (\rst_i~input_o\ & ((\state.WAIT_FOR_TX_START~q\ & (\send_pause~q\)) # (!\state.WAIT_FOR_TX_START~q\ & ((\send_data~input_o\))))) # (!\rst_i~input_o\ & (\send_pause~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \send_pause~q\,
	datab => \send_data~input_o\,
	datac => \rst_i~input_o\,
	datad => \state.WAIT_FOR_TX_START~q\,
	combout => \send_pause~0_combout\);

send_pause : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \send_pause~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_pause~q\);

\baudrate_counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[0]~1_combout\ = (\send_data~input_o\ & !\send_pause~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \send_data~input_o\,
	datad => \send_pause~q\,
	combout => \baudrate_counter[0]~1_combout\);

\baudrate_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[0]~3_combout\ = (\rst_i~input_o\ & (!\baudrate_counter[0]~0_combout\ & ((\state.WAIT_FOR_TX_START~q\) # (\baudrate_counter[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => \state.WAIT_FOR_TX_START~q\,
	datac => \baudrate_counter[0]~1_combout\,
	datad => \baudrate_counter[0]~0_combout\,
	combout => \baudrate_counter[0]~3_combout\);

\baudrate_counter[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[0]~6_combout\ = (baudrate_counter(0) & ((!\state.WAIT_FOR_TX_START~q\) # (!\baudrate_counter[0]~3_combout\))) # (!baudrate_counter(0) & (\baudrate_counter[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baudrate_counter(0),
	datac => \baudrate_counter[0]~3_combout\,
	datad => \state.WAIT_FOR_TX_START~q\,
	combout => \baudrate_counter[0]~6_combout\);

\baudrate_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \baudrate_counter[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(0));

\baudrate_counter[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[1]~7_combout\ = (\baudrate_counter[0]~3_combout\ & ((baudrate_counter(1) $ (!baudrate_counter(0))) # (!\state.WAIT_FOR_TX_START~q\))) # (!\baudrate_counter[0]~3_combout\ & (baudrate_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(1),
	datab => baudrate_counter(0),
	datac => \baudrate_counter[0]~3_combout\,
	datad => \state.WAIT_FOR_TX_START~q\,
	combout => \baudrate_counter[1]~7_combout\);

\baudrate_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \baudrate_counter[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(1));

\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!baudrate_counter(2) & (!baudrate_counter(0) & !baudrate_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => baudrate_counter(2),
	datac => baudrate_counter(0),
	datad => baudrate_counter(1),
	combout => \Equal0~0_combout\);

\baudrate_counter[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[2]~2_combout\ = (\Equal0~0_combout\ & (\state.WAIT_FOR_TX_START~q\ & (!\state.SENDING_BITS~q\ & !\state.SEND_START_BIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \state.WAIT_FOR_TX_START~q\,
	datac => \state.SENDING_BITS~q\,
	datad => \state.SEND_START_BIT~q\,
	combout => \baudrate_counter[2]~2_combout\);

\baudrate_counter[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[2]~4_combout\ = (\state.WAIT_FOR_TX_START~q\ & ((baudrate_counter(0)) # (baudrate_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WAIT_FOR_TX_START~q\,
	datab => baudrate_counter(0),
	datac => baudrate_counter(1),
	combout => \baudrate_counter[2]~4_combout\);

\baudrate_counter[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[2]~5_combout\ = (\baudrate_counter[0]~3_combout\ & ((\baudrate_counter[2]~2_combout\) # ((baudrate_counter(2) & \baudrate_counter[2]~4_combout\)))) # (!\baudrate_counter[0]~3_combout\ & (baudrate_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(2),
	datab => \baudrate_counter[2]~2_combout\,
	datac => \baudrate_counter[0]~3_combout\,
	datad => \baudrate_counter[2]~4_combout\,
	combout => \baudrate_counter[2]~5_combout\);

\baudrate_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \baudrate_counter[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(2));

\bit_counter[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[3]~0_combout\ = (\state.SENDING_BITS~q\ & (!baudrate_counter(2) & (!baudrate_counter(0) & !baudrate_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SENDING_BITS~q\,
	datab => baudrate_counter(2),
	datac => baudrate_counter(0),
	datad => baudrate_counter(1),
	combout => \bit_counter[3]~0_combout\);

\bit_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter~4_combout\ = (bit_counter(1) & (bit_counter(0))) # (!bit_counter(1) & (!bit_counter(0) & ((bit_counter(2)) # (!bit_counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => bit_counter(0),
	datac => bit_counter(2),
	datad => bit_counter(3),
	combout => \bit_counter~4_combout\);

\bit_counter[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[3]~2_combout\ = (\bit_counter[3]~0_combout\ & \rst_i~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[3]~0_combout\,
	datab => \rst_i~input_o\,
	combout => \bit_counter[3]~2_combout\);

\bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \bit_counter~4_combout\,
	ena => \bit_counter[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(1));

\bit_counter[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter[2]~3_combout\ = bit_counter(2) $ (((!bit_counter(0) & (bit_counter(1) & \bit_counter[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(2),
	datab => bit_counter(0),
	datac => bit_counter(1),
	datad => \bit_counter[3]~2_combout\,
	combout => \bit_counter[2]~3_combout\);

\bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \bit_counter[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(2));

\bit_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter~5_combout\ = (!bit_counter(0) & (((bit_counter(2)) # (bit_counter(1))) # (!bit_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datab => bit_counter(3),
	datac => bit_counter(2),
	datad => bit_counter(1),
	combout => \bit_counter~5_combout\);

\bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \bit_counter~5_combout\,
	ena => \bit_counter[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(0));

\bit_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_counter~1_combout\ = (bit_counter(3) & ((bit_counter(0)) # (bit_counter(2) $ (bit_counter(1))))) # (!bit_counter(3) & (!bit_counter(0) & (bit_counter(2) & bit_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datab => bit_counter(0),
	datac => bit_counter(2),
	datad => bit_counter(1),
	combout => \bit_counter~1_combout\);

\bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \bit_counter~1_combout\,
	ena => \bit_counter[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(3));

\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (bit_counter(3) & (!bit_counter(2) & (!bit_counter(1) & !bit_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datab => bit_counter(2),
	datac => bit_counter(1),
	datad => bit_counter(0),
	combout => \Equal1~0_combout\);

\state~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (\bit_counter[3]~0_combout\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_counter[3]~0_combout\,
	datab => \Equal1~0_combout\,
	combout => \state~14_combout\);

\state~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~11_combout\ = (\state.WAIT_FOR_TX_START~q\ & (((!\Equal1~0_combout\) # (!\bit_counter[3]~0_combout\)))) # (!\state.WAIT_FOR_TX_START~q\ & (!\baudrate_counter[0]~1_combout\ & ((!\Equal1~0_combout\) # (!\bit_counter[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WAIT_FOR_TX_START~q\,
	datab => \baudrate_counter[0]~1_combout\,
	datac => \bit_counter[3]~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \state~11_combout\);

\state~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (!\state.WAIT_FOR_SEND_STOP_BIT~q\ & !\state.SEND_START_BIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.WAIT_FOR_SEND_STOP_BIT~q\,
	datad => \state.SEND_START_BIT~q\,
	combout => \state~15_combout\);

\state~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (\rst_i~input_o\ & (\state~11_combout\ & ((\state~15_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => \state~11_combout\,
	datac => \state~15_combout\,
	datad => \Equal0~0_combout\,
	combout => \state~16_combout\);

\state~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (\state.WAIT_FOR_SEND_STOP_BIT~q\ & ((\state~16_combout\) # ((\rst_i~input_o\ & \state~14_combout\)))) # (!\state.WAIT_FOR_SEND_STOP_BIT~q\ & (\rst_i~input_o\ & (\state~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WAIT_FOR_SEND_STOP_BIT~q\,
	datab => \rst_i~input_o\,
	datac => \state~14_combout\,
	datad => \state~16_combout\,
	combout => \state~17_combout\);

\state.WAIT_FOR_SEND_STOP_BIT\ : dffeas
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
	q => \state.WAIT_FOR_SEND_STOP_BIT~q\);

\baudrate_counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[0]~0_combout\ = (\state.WAIT_FOR_SEND_STOP_BIT~q\ & (!baudrate_counter(2) & (!baudrate_counter(0) & !baudrate_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WAIT_FOR_SEND_STOP_BIT~q\,
	datab => baudrate_counter(2),
	datac => baudrate_counter(0),
	datad => baudrate_counter(1),
	combout => \baudrate_counter[0]~0_combout\);

\state~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (\state~10_combout\) # ((\state~14_combout\) # ((!\rst_i~input_o\) # (!\state.WAIT_FOR_TX_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~10_combout\,
	datab => \state~14_combout\,
	datac => \state.WAIT_FOR_TX_START~q\,
	datad => \rst_i~input_o\,
	combout => \state~19_combout\);

\state~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~12_combout\ = (\state~11_combout\ & (!\baudrate_counter[0]~0_combout\ & !\state~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~11_combout\,
	datac => \baudrate_counter[0]~0_combout\,
	datad => \state~10_combout\,
	combout => \state~12_combout\);

\state~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (!\baudrate_counter[0]~0_combout\ & (((!\state~12_combout\ & \rst_i~input_o\)) # (!\state~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_counter[0]~0_combout\,
	datab => \state~19_combout\,
	datac => \state~12_combout\,
	datad => \rst_i~input_o\,
	combout => \state~20_combout\);

\state.WAIT_FOR_TX_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WAIT_FOR_TX_START~q\);

\sending_register[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sending_register[9]~0_combout\ = (\rst_i~input_o\ & (\send_data~input_o\ & (!\state.WAIT_FOR_TX_START~q\ & !\send_pause~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => \send_data~input_o\,
	datac => \state.WAIT_FOR_TX_START~q\,
	datad => \send_pause~q\,
	combout => \sending_register[9]~0_combout\);

\state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (\sending_register[9]~0_combout\) # ((\state.SEND_START_BIT~q\ & \state~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sending_register[9]~0_combout\,
	datab => \state.SEND_START_BIT~q\,
	datac => \state~16_combout\,
	combout => \state~18_combout\);

\state.SEND_START_BIT\ : dffeas
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
	q => \state.SEND_START_BIT~q\);

\state~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~10_combout\ = (\state.SEND_START_BIT~q\ & (!baudrate_counter(2) & (!baudrate_counter(0) & !baudrate_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SEND_START_BIT~q\,
	datab => baudrate_counter(2),
	datac => baudrate_counter(0),
	datad => baudrate_counter(1),
	combout => \state~10_combout\);

\state~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (\rst_i~input_o\ & ((\state~12_combout\ & (\state.SENDING_BITS~q\)) # (!\state~12_combout\ & ((\state~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_i~input_o\,
	datab => \state.SENDING_BITS~q\,
	datac => \state~10_combout\,
	datad => \state~12_combout\,
	combout => \state~13_combout\);

\state.SENDING_BITS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SENDING_BITS~q\);

\tx~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx~0_combout\ = (\state.SENDING_BITS~q\) # ((\state.WAIT_FOR_SEND_STOP_BIT~q\) # (\state.SEND_START_BIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SENDING_BITS~q\,
	datab => \state.WAIT_FOR_SEND_STOP_BIT~q\,
	datac => \state.SEND_START_BIT~q\,
	combout => \tx~0_combout\);

\tx~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx~1_combout\ = (\state.SENDING_BITS~q\ & ((\Equal1~0_combout\) # ((\tx~0_combout\ & !\Equal0~0_combout\)))) # (!\state.SENDING_BITS~q\ & (((\tx~0_combout\ & !\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SENDING_BITS~q\,
	datab => \Equal1~0_combout\,
	datac => \tx~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \tx~1_combout\);

\tx~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx~2_combout\ = (\tx~reg0_q\ & ((\tx~1_combout\) # (!\state.WAIT_FOR_TX_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx~reg0_q\,
	datab => \tx~1_combout\,
	datad => \state.WAIT_FOR_TX_START~q\,
	combout => \tx~2_combout\);

\tx~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx~3_combout\ = ((!\state.WAIT_FOR_TX_START~q\ & !\send_data~input_o\)) # (!\rst_i~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.WAIT_FOR_TX_START~q\,
	datac => \send_data~input_o\,
	datad => \rst_i~input_o\,
	combout => \tx~3_combout\);

\sending_register[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => VCC,
	ena => \sending_register[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sending_register(9));

\tx~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx~4_combout\ = (\tx~3_combout\) # ((sending_register(9) & \baudrate_counter[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx~3_combout\,
	datab => sending_register(9),
	datac => \baudrate_counter[0]~0_combout\,
	combout => \tx~4_combout\);

\Data_TX[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_TX(1),
	o => \Data_TX[1]~input_o\);

\sending_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \Data_TX[1]~input_o\,
	ena => \sending_register[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sending_register(2));

\Data_TX[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_TX(2),
	o => \Data_TX[2]~input_o\);

\sending_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \Data_TX[2]~input_o\,
	ena => \sending_register[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sending_register(3));

\tx~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx~5_combout\ = (bit_counter(0) & (sending_register(2))) # (!bit_counter(0) & ((sending_register(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(0),
	datab => sending_register(2),
	datac => sending_register(3),
	combout => \tx~5_combout\);

\Data_TX[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_TX(7),
	o => \Data_TX[7]~input_o\);

\sending_register[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \Data_TX[7]~input_o\,
	ena => \sending_register[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sending_register(8));

\Data_TX[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_TX(0),
	o => \Data_TX[0]~input_o\);

\sending_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \Data_TX[0]~input_o\,
	ena => \sending_register[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sending_register(1));

\tx~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx~6_combout\ = (bit_counter(3) & (sending_register(8) & ((bit_counter(0))))) # (!bit_counter(3) & (((sending_register(1) & !bit_counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(3),
	datab => sending_register(8),
	datac => sending_register(1),
	datad => bit_counter(0),
	combout => \tx~6_combout\);

\tx~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx~7_combout\ = (bit_counter(1) & (\tx~5_combout\ & (!bit_counter(3)))) # (!bit_counter(1) & (((\tx~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => \tx~5_combout\,
	datac => bit_counter(3),
	datad => \tx~6_combout\,
	combout => \tx~7_combout\);

\Data_TX[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_TX(5),
	o => \Data_TX[5]~input_o\);

\sending_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \Data_TX[5]~input_o\,
	ena => \sending_register[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sending_register(6));

\Data_TX[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_TX(4),
	o => \Data_TX[4]~input_o\);

\sending_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \Data_TX[4]~input_o\,
	ena => \sending_register[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sending_register(5));

\Data_TX[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_TX(3),
	o => \Data_TX[3]~input_o\);

\sending_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \Data_TX[3]~input_o\,
	ena => \sending_register[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sending_register(4));

\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (bit_counter(1) & (((!bit_counter(0))))) # (!bit_counter(1) & ((bit_counter(0) & ((sending_register(4)))) # (!bit_counter(0) & (sending_register(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_counter(1),
	datab => sending_register(5),
	datac => bit_counter(0),
	datad => sending_register(4),
	combout => \Mux0~0_combout\);

\Data_TX[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_TX(6),
	o => \Data_TX[6]~input_o\);

\sending_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \Data_TX[6]~input_o\,
	ena => \sending_register[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sending_register(7));

\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (bit_counter(1) & ((\Mux0~0_combout\ & ((sending_register(7)))) # (!\Mux0~0_combout\ & (sending_register(6))))) # (!bit_counter(1) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sending_register(6),
	datab => bit_counter(1),
	datac => \Mux0~0_combout\,
	datad => sending_register(7),
	combout => \Mux0~1_combout\);

\tx~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx~8_combout\ = (bit_counter(2) & (((\Mux0~1_combout\ & !bit_counter(3))))) # (!bit_counter(2) & (\tx~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx~7_combout\,
	datab => \Mux0~1_combout\,
	datac => bit_counter(2),
	datad => bit_counter(3),
	combout => \tx~8_combout\);

\tx~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx~9_combout\ = (\tx~2_combout\) # ((\tx~4_combout\) # ((\tx~8_combout\ & \bit_counter[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx~2_combout\,
	datab => \tx~4_combout\,
	datac => \tx~8_combout\,
	datad => \bit_counter[3]~0_combout\,
	combout => \tx~9_combout\);

\tx~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \tx~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx~reg0_q\);

ww_tx <= \tx~output_o\;
END structure;


