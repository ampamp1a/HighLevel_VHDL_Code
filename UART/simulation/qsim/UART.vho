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

-- DATE "09/08/2023 08:39:54"

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

ENTITY 	UART IS
    PORT (
	Clk_I : IN std_logic;
	Rst_I : IN std_logic;
	Rx : IN std_logic;
	Req_O : OUT std_logic;
	Sampling_Rx : OUT std_logic;
	Send_data : IN std_logic;
	Tx : OUT std_logic
	);
END UART;

ARCHITECTURE structure OF UART IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk_I : std_logic;
SIGNAL ww_Rst_I : std_logic;
SIGNAL ww_Rx : std_logic;
SIGNAL ww_Req_O : std_logic;
SIGNAL ww_Sampling_Rx : std_logic;
SIGNAL ww_Send_data : std_logic;
SIGNAL ww_Tx : std_logic;
SIGNAL \Req_O~output_o\ : std_logic;
SIGNAL \Sampling_Rx~output_o\ : std_logic;
SIGNAL \Tx~output_o\ : std_logic;
SIGNAL \Clk_I~input_o\ : std_logic;
SIGNAL \Rst_I~input_o\ : std_logic;
SIGNAL \Rx~input_o\ : std_logic;
SIGNAL \UartRX|Selector7~2_combout\ : std_logic;
SIGNAL \UartRX|state~13_combout\ : std_logic;
SIGNAL \UartRX|state~20_combout\ : std_logic;
SIGNAL \UartRX|state~19_combout\ : std_logic;
SIGNAL \UartRX|state.WAIT_HALF_BIT~q\ : std_logic;
SIGNAL \UartRX|baudrate_counter[0]~0_combout\ : std_logic;
SIGNAL \UartRX|baudrate_counter[0]~4_combout\ : std_logic;
SIGNAL \UartRX|baudrate_counter[1]~5_combout\ : std_logic;
SIGNAL \UartRX|state~14_combout\ : std_logic;
SIGNAL \UartRX|state~15_combout\ : std_logic;
SIGNAL \UartRX|state~17_combout\ : std_logic;
SIGNAL \UartRX|state.WAIT_FOR_RX_START~q\ : std_logic;
SIGNAL \UartRX|baudrate_counter[2]~1_combout\ : std_logic;
SIGNAL \UartRX|baudrate_counter[2]~2_combout\ : std_logic;
SIGNAL \UartRX|state~18_combout\ : std_logic;
SIGNAL \UartRX|state.RECEIVE_BITS~q\ : std_logic;
SIGNAL \UartRX|baudrate_counter[2]~3_combout\ : std_logic;
SIGNAL \UartRX|Equal1~0_combout\ : std_logic;
SIGNAL \UartRX|bit_counter[2]~4_combout\ : std_logic;
SIGNAL \UartRX|bit_counter[0]~0_combout\ : std_logic;
SIGNAL \UartRX|bit_counter[0]~1_combout\ : std_logic;
SIGNAL \UartRX|bit_counter[0]~2_combout\ : std_logic;
SIGNAL \UartRX|bit_counter[1]~3_combout\ : std_logic;
SIGNAL \UartRX|Add1~0_combout\ : std_logic;
SIGNAL \UartRX|state~12_combout\ : std_logic;
SIGNAL \UartRX|state~16_combout\ : std_logic;
SIGNAL \UartRX|state.WAIT_FOR_STOP_BIT~q\ : std_logic;
SIGNAL \UartRX|Selector7~0_combout\ : std_logic;
SIGNAL \UartRX|Selector7~1_combout\ : std_logic;
SIGNAL \UartRX|req_o~q\ : std_logic;
SIGNAL \UartRX|sampling_rx~0_combout\ : std_logic;
SIGNAL \UartRX|sampling_rx~q\ : std_logic;
SIGNAL \Send_data~input_o\ : std_logic;
SIGNAL \UartTx|send_pause~0_combout\ : std_logic;
SIGNAL \UartTx|send_pause~q\ : std_logic;
SIGNAL \UartTx|bit_counter[0]~0_combout\ : std_logic;
SIGNAL \UartTx|state~13_combout\ : std_logic;
SIGNAL \UartTx|state.SET_FOR_TX_START~q\ : std_logic;
SIGNAL \UartTx|Selector2~0_combout\ : std_logic;
SIGNAL \UartTx|Selector2~1_combout\ : std_logic;
SIGNAL \UartTx|state.SENDING_BITS~q\ : std_logic;
SIGNAL \UartTx|baudrate_counter[0]~6_combout\ : std_logic;
SIGNAL \UartTx|baudrate_counter[1]~5_combout\ : std_logic;
SIGNAL \UartTx|Selector4~0_combout\ : std_logic;
SIGNAL \UartTx|state~14_combout\ : std_logic;
SIGNAL \UartTx|state.COUNT_BIT~q\ : std_logic;
SIGNAL \UartTx|baudrate_counter[1]~0_combout\ : std_logic;
SIGNAL \UartTx|baudrate_counter[1]~1_combout\ : std_logic;
SIGNAL \UartTx|baudrate_counter[2]~2_combout\ : std_logic;
SIGNAL \UartTx|baudrate_counter[2]~3_combout\ : std_logic;
SIGNAL \UartTx|baudrate_counter[2]~4_combout\ : std_logic;
SIGNAL \UartTx|Equal0~0_combout\ : std_logic;
SIGNAL \UartTx|baudrate_counter[1]~7_combout\ : std_logic;
SIGNAL \UartTx|state~12_combout\ : std_logic;
SIGNAL \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\ : std_logic;
SIGNAL \UartTx|bit_counter[0]~1_combout\ : std_logic;
SIGNAL \UartTx|bit_counter[0]~5_combout\ : std_logic;
SIGNAL \UartTx|bit_counter[0]~2_combout\ : std_logic;
SIGNAL \UartTx|bit_counter[1]~4_combout\ : std_logic;
SIGNAL \UartTx|Add1~0_combout\ : std_logic;
SIGNAL \UartTx|bit_counter[2]~3_combout\ : std_logic;
SIGNAL \UartTx|Add1~1_combout\ : std_logic;
SIGNAL \UartTx|bit_counter[3]~6_combout\ : std_logic;
SIGNAL \UartTx|Equal1~0_combout\ : std_logic;
SIGNAL \UartRX|receive_register[7]~0_combout\ : std_logic;
SIGNAL \UartRX|data_o~0_combout\ : std_logic;
SIGNAL \UartRX|data_o[7]~1_combout\ : std_logic;
SIGNAL \UartTx|sending_register[7]~0_combout\ : std_logic;
SIGNAL \UartRX|data_o~2_combout\ : std_logic;
SIGNAL \UartRX|data_o~3_combout\ : std_logic;
SIGNAL \UartTx|Mux0~0_combout\ : std_logic;
SIGNAL \UartRX|data_o~4_combout\ : std_logic;
SIGNAL \UartTx|Mux0~1_combout\ : std_logic;
SIGNAL \UartRX|data_o~5_combout\ : std_logic;
SIGNAL \UartRX|data_o~6_combout\ : std_logic;
SIGNAL \UartRX|data_o~7_combout\ : std_logic;
SIGNAL \UartTx|Mux0~2_combout\ : std_logic;
SIGNAL \UartRX|data_o~8_combout\ : std_logic;
SIGNAL \UartTx|Mux0~3_combout\ : std_logic;
SIGNAL \UartTx|Selector4~5_combout\ : std_logic;
SIGNAL \UartTx|Selector4~6_combout\ : std_logic;
SIGNAL \UartTx|Selector4~1_combout\ : std_logic;
SIGNAL \UartTx|Selector4~2_combout\ : std_logic;
SIGNAL \UartTx|Selector4~3_combout\ : std_logic;
SIGNAL \UartTx|Selector4~4_combout\ : std_logic;
SIGNAL \UartTx|tx~q\ : std_logic;
SIGNAL \UartRX|baudrate_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UartRX|data_o\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UartTx|bit_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UartRX|bit_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UartTx|baudrate_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UartRX|receive_register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UartTx|sending_register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Rst_I~input_o\ : std_logic;

BEGIN

ww_Clk_I <= Clk_I;
ww_Rst_I <= Rst_I;
ww_Rx <= Rx;
Req_O <= ww_Req_O;
Sampling_Rx <= ww_Sampling_Rx;
ww_Send_data <= Send_data;
Tx <= ww_Tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Rst_I~input_o\ <= NOT \Rst_I~input_o\;

\Req_O~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UartRX|req_o~q\,
	devoe => ww_devoe,
	o => \Req_O~output_o\);

\Sampling_Rx~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UartRX|sampling_rx~q\,
	devoe => ww_devoe,
	o => \Sampling_Rx~output_o\);

\Tx~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UartTx|tx~q\,
	devoe => ww_devoe,
	o => \Tx~output_o\);

\Clk_I~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk_I,
	o => \Clk_I~input_o\);

\Rst_I~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst_I,
	o => \Rst_I~input_o\);

\Rx~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx,
	o => \Rx~input_o\);

\UartRX|Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector7~2_combout\ = (\Rx~input_o\ & \UartRX|Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rx~input_o\,
	datab => \UartRX|Selector7~0_combout\,
	combout => \UartRX|Selector7~2_combout\);

\UartRX|state~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|state~13_combout\ = (!\Rx~input_o\ & !\UartRX|state.WAIT_FOR_RX_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Rx~input_o\,
	datad => \UartRX|state.WAIT_FOR_RX_START~q\,
	combout => \UartRX|state~13_combout\);

\UartRX|state~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|state~20_combout\ = (!\UartRX|state~14_combout\ & (!\UartRX|state~12_combout\ & ((!\UartRX|Selector7~0_combout\) # (!\Rx~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rx~input_o\,
	datab => \UartRX|Selector7~0_combout\,
	datac => \UartRX|state~14_combout\,
	datad => \UartRX|state~12_combout\,
	combout => \UartRX|state~20_combout\);

\UartRX|state~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|state~19_combout\ = (\Rst_I~input_o\ & ((\UartRX|state~15_combout\ & (\UartRX|state~20_combout\)) # (!\UartRX|state~15_combout\ & ((\UartRX|state.WAIT_HALF_BIT~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \UartRX|state~20_combout\,
	datac => \UartRX|state.WAIT_HALF_BIT~q\,
	datad => \UartRX|state~15_combout\,
	combout => \UartRX|state~19_combout\);

\UartRX|state.WAIT_HALF_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|state.WAIT_HALF_BIT~q\);

\UartRX|baudrate_counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|baudrate_counter[0]~0_combout\ = (\Rst_I~input_o\ & (!\UartRX|Selector7~0_combout\ & ((\UartRX|state.WAIT_FOR_RX_START~q\) # (!\Rx~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \UartRX|state.WAIT_FOR_RX_START~q\,
	datac => \Rx~input_o\,
	datad => \UartRX|Selector7~0_combout\,
	combout => \UartRX|baudrate_counter[0]~0_combout\);

\UartRX|baudrate_counter[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|baudrate_counter[0]~4_combout\ = (\UartRX|baudrate_counter\(0) & ((!\UartRX|state.WAIT_FOR_RX_START~q\) # (!\UartRX|baudrate_counter[0]~0_combout\))) # (!\UartRX|baudrate_counter\(0) & (\UartRX|baudrate_counter[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UartRX|baudrate_counter\(0),
	datac => \UartRX|baudrate_counter[0]~0_combout\,
	datad => \UartRX|state.WAIT_FOR_RX_START~q\,
	combout => \UartRX|baudrate_counter[0]~4_combout\);

\UartRX|baudrate_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|baudrate_counter[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|baudrate_counter\(0));

\UartRX|baudrate_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|baudrate_counter[1]~5_combout\ = (\UartRX|baudrate_counter[0]~0_combout\ & (\UartRX|state.WAIT_FOR_RX_START~q\ & (\UartRX|baudrate_counter\(1) $ (!\UartRX|baudrate_counter\(0))))) # (!\UartRX|baudrate_counter[0]~0_combout\ & 
-- (((\UartRX|baudrate_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|state.WAIT_FOR_RX_START~q\,
	datab => \UartRX|baudrate_counter\(1),
	datac => \UartRX|baudrate_counter\(0),
	datad => \UartRX|baudrate_counter[0]~0_combout\,
	combout => \UartRX|baudrate_counter[1]~5_combout\);

\UartRX|baudrate_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|baudrate_counter[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|baudrate_counter\(1));

\UartRX|state~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|state~14_combout\ = (\UartRX|state.WAIT_HALF_BIT~q\ & (!\UartRX|baudrate_counter\(2) & (!\UartRX|baudrate_counter\(0) & !\UartRX|baudrate_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|state.WAIT_HALF_BIT~q\,
	datab => \UartRX|baudrate_counter\(2),
	datac => \UartRX|baudrate_counter\(0),
	datad => \UartRX|baudrate_counter\(1),
	combout => \UartRX|state~14_combout\);

\UartRX|state~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|state~15_combout\ = (\UartRX|Selector7~2_combout\) # ((\UartRX|state~13_combout\) # ((\UartRX|state~14_combout\) # (\UartRX|state~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|Selector7~2_combout\,
	datab => \UartRX|state~13_combout\,
	datac => \UartRX|state~14_combout\,
	datad => \UartRX|state~12_combout\,
	combout => \UartRX|state~15_combout\);

\UartRX|state~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|state~17_combout\ = (\Rst_I~input_o\ & ((\UartRX|state~15_combout\ & (!\UartRX|Selector7~2_combout\)) # (!\UartRX|state~15_combout\ & ((\UartRX|state.WAIT_FOR_RX_START~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|Selector7~2_combout\,
	datab => \UartRX|state~15_combout\,
	datac => \UartRX|state.WAIT_FOR_RX_START~q\,
	datad => \Rst_I~input_o\,
	combout => \UartRX|state~17_combout\);

\UartRX|state.WAIT_FOR_RX_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|state.WAIT_FOR_RX_START~q\);

\UartRX|baudrate_counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|baudrate_counter[2]~1_combout\ = ((\UartRX|state.WAIT_FOR_RX_START~q\ & ((\UartRX|baudrate_counter\(0)) # (\UartRX|baudrate_counter\(1))))) # (!\UartRX|baudrate_counter[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|state.WAIT_FOR_RX_START~q\,
	datab => \UartRX|baudrate_counter\(0),
	datac => \UartRX|baudrate_counter\(1),
	datad => \UartRX|baudrate_counter[0]~0_combout\,
	combout => \UartRX|baudrate_counter[2]~1_combout\);

\UartRX|baudrate_counter[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|baudrate_counter[2]~2_combout\ = (\UartRX|Equal1~0_combout\ & (\UartRX|state.WAIT_FOR_RX_START~q\ & (\UartRX|baudrate_counter[0]~0_combout\ & !\UartRX|state.WAIT_HALF_BIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|Equal1~0_combout\,
	datab => \UartRX|state.WAIT_FOR_RX_START~q\,
	datac => \UartRX|baudrate_counter[0]~0_combout\,
	datad => \UartRX|state.WAIT_HALF_BIT~q\,
	combout => \UartRX|baudrate_counter[2]~2_combout\);

\UartRX|state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|state~18_combout\ = (\Rst_I~input_o\ & ((\UartRX|state~15_combout\ & (\UartRX|state~14_combout\)) # (!\UartRX|state~15_combout\ & ((\UartRX|state.RECEIVE_BITS~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \UartRX|state~14_combout\,
	datac => \UartRX|state.RECEIVE_BITS~q\,
	datad => \UartRX|state~15_combout\,
	combout => \UartRX|state~18_combout\);

\UartRX|state.RECEIVE_BITS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|state.RECEIVE_BITS~q\);

\UartRX|baudrate_counter[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|baudrate_counter[2]~3_combout\ = (\UartRX|baudrate_counter\(2) & ((\UartRX|baudrate_counter[2]~1_combout\) # ((\UartRX|baudrate_counter[2]~2_combout\ & !\UartRX|state.RECEIVE_BITS~q\)))) # (!\UartRX|baudrate_counter\(2) & 
-- (((\UartRX|baudrate_counter[2]~2_combout\ & !\UartRX|state.RECEIVE_BITS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|baudrate_counter\(2),
	datab => \UartRX|baudrate_counter[2]~1_combout\,
	datac => \UartRX|baudrate_counter[2]~2_combout\,
	datad => \UartRX|state.RECEIVE_BITS~q\,
	combout => \UartRX|baudrate_counter[2]~3_combout\);

\UartRX|baudrate_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|baudrate_counter[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|baudrate_counter\(2));

\UartRX|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Equal1~0_combout\ = (!\UartRX|baudrate_counter\(2) & (!\UartRX|baudrate_counter\(0) & !\UartRX|baudrate_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UartRX|baudrate_counter\(2),
	datac => \UartRX|baudrate_counter\(0),
	datad => \UartRX|baudrate_counter\(1),
	combout => \UartRX|Equal1~0_combout\);

\UartRX|bit_counter[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|bit_counter[2]~4_combout\ = (\UartRX|bit_counter[0]~1_combout\ & ((\UartRX|bit_counter\(2) $ (\UartRX|Add1~0_combout\)) # (!\UartRX|state.RECEIVE_BITS~q\))) # (!\UartRX|bit_counter[0]~1_combout\ & (\UartRX|bit_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|bit_counter\(2),
	datab => \UartRX|bit_counter[0]~1_combout\,
	datac => \UartRX|Add1~0_combout\,
	datad => \UartRX|state.RECEIVE_BITS~q\,
	combout => \UartRX|bit_counter[2]~4_combout\);

\UartRX|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|bit_counter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|bit_counter\(2));

\UartRX|bit_counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|bit_counter[0]~0_combout\ = (\UartRX|Equal1~0_combout\ & (\UartRX|state.RECEIVE_BITS~q\ & ((\UartRX|bit_counter\(2)) # (!\UartRX|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|Equal1~0_combout\,
	datab => \UartRX|state.RECEIVE_BITS~q\,
	datac => \UartRX|bit_counter\(2),
	datad => \UartRX|Add1~0_combout\,
	combout => \UartRX|bit_counter[0]~0_combout\);

\UartRX|bit_counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|bit_counter[0]~1_combout\ = (\Rst_I~input_o\ & ((\UartRX|state~14_combout\) # (\UartRX|bit_counter[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \UartRX|state~14_combout\,
	datac => \UartRX|bit_counter[0]~0_combout\,
	combout => \UartRX|bit_counter[0]~1_combout\);

\UartRX|bit_counter[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|bit_counter[0]~2_combout\ = (\UartRX|bit_counter\(0) & ((!\UartRX|state.RECEIVE_BITS~q\) # (!\UartRX|bit_counter[0]~1_combout\))) # (!\UartRX|bit_counter\(0) & (\UartRX|bit_counter[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UartRX|bit_counter\(0),
	datac => \UartRX|bit_counter[0]~1_combout\,
	datad => \UartRX|state.RECEIVE_BITS~q\,
	combout => \UartRX|bit_counter[0]~2_combout\);

\UartRX|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|bit_counter[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|bit_counter\(0));

\UartRX|bit_counter[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|bit_counter[1]~3_combout\ = (\UartRX|bit_counter[0]~1_combout\ & ((\UartRX|bit_counter\(1) $ (!\UartRX|bit_counter\(0))) # (!\UartRX|state.RECEIVE_BITS~q\))) # (!\UartRX|bit_counter[0]~1_combout\ & (\UartRX|bit_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|bit_counter\(1),
	datab => \UartRX|bit_counter\(0),
	datac => \UartRX|bit_counter[0]~1_combout\,
	datad => \UartRX|state.RECEIVE_BITS~q\,
	combout => \UartRX|bit_counter[1]~3_combout\);

\UartRX|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|bit_counter[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|bit_counter\(1));

\UartRX|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Add1~0_combout\ = (!\UartRX|bit_counter\(0) & !\UartRX|bit_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UartRX|bit_counter\(0),
	datad => \UartRX|bit_counter\(1),
	combout => \UartRX|Add1~0_combout\);

\UartRX|state~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|state~12_combout\ = (\UartRX|Equal1~0_combout\ & (\UartRX|state.RECEIVE_BITS~q\ & (\UartRX|Add1~0_combout\ & !\UartRX|bit_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|Equal1~0_combout\,
	datab => \UartRX|state.RECEIVE_BITS~q\,
	datac => \UartRX|Add1~0_combout\,
	datad => \UartRX|bit_counter\(2),
	combout => \UartRX|state~12_combout\);

\UartRX|state~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|state~16_combout\ = (\Rst_I~input_o\ & ((\UartRX|state~15_combout\ & (\UartRX|state~12_combout\)) # (!\UartRX|state~15_combout\ & ((\UartRX|state.WAIT_FOR_STOP_BIT~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \UartRX|state~12_combout\,
	datac => \UartRX|state.WAIT_FOR_STOP_BIT~q\,
	datad => \UartRX|state~15_combout\,
	combout => \UartRX|state~16_combout\);

\UartRX|state.WAIT_FOR_STOP_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|state.WAIT_FOR_STOP_BIT~q\);

\UartRX|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector7~0_combout\ = (\UartRX|state.WAIT_FOR_STOP_BIT~q\ & (!\UartRX|baudrate_counter\(2) & (!\UartRX|baudrate_counter\(0) & !\UartRX|baudrate_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|state.WAIT_FOR_STOP_BIT~q\,
	datab => \UartRX|baudrate_counter\(2),
	datac => \UartRX|baudrate_counter\(0),
	datad => \UartRX|baudrate_counter\(1),
	combout => \UartRX|Selector7~0_combout\);

\UartRX|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector7~1_combout\ = (\UartRX|req_o~q\ & (((!\UartRX|state.WAIT_FOR_RX_START~q\) # (!\Rx~input_o\)) # (!\UartRX|Selector7~0_combout\))) # (!\UartRX|req_o~q\ & (((!\Rx~input_o\ & !\UartRX|state.WAIT_FOR_RX_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|req_o~q\,
	datab => \UartRX|Selector7~0_combout\,
	datac => \Rx~input_o\,
	datad => \UartRX|state.WAIT_FOR_RX_START~q\,
	combout => \UartRX|Selector7~1_combout\);

\UartRX|req_o\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|Selector7~1_combout\,
	sclr => \ALT_INV_Rst_I~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|req_o~q\);

\UartRX|sampling_rx~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|sampling_rx~0_combout\ = (\Rst_I~input_o\ & ((\UartRX|state.RECEIVE_BITS~q\ & (\UartRX|Equal1~0_combout\)) # (!\UartRX|state.RECEIVE_BITS~q\ & ((\UartRX|sampling_rx~q\))))) # (!\Rst_I~input_o\ & (((\UartRX|sampling_rx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|Equal1~0_combout\,
	datab => \UartRX|sampling_rx~q\,
	datac => \Rst_I~input_o\,
	datad => \UartRX|state.RECEIVE_BITS~q\,
	combout => \UartRX|sampling_rx~0_combout\);

\UartRX|sampling_rx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|sampling_rx~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|sampling_rx~q\);

\Send_data~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Send_data,
	o => \Send_data~input_o\);

\UartTx|send_pause~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|send_pause~0_combout\ = (\Rst_I~input_o\ & ((\UartTx|state.SET_FOR_TX_START~q\ & (\UartTx|send_pause~q\)) # (!\UartTx|state.SET_FOR_TX_START~q\ & ((\Send_data~input_o\))))) # (!\Rst_I~input_o\ & (\UartTx|send_pause~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|send_pause~q\,
	datab => \Send_data~input_o\,
	datac => \Rst_I~input_o\,
	datad => \UartTx|state.SET_FOR_TX_START~q\,
	combout => \UartTx|send_pause~0_combout\);

\UartTx|send_pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartTx|send_pause~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|send_pause~q\);

\UartTx|bit_counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|bit_counter[0]~0_combout\ = (\Rst_I~input_o\ & ((\UartTx|state.SET_FOR_TX_START~q\) # ((\Send_data~input_o\ & !\UartTx|send_pause~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \UartTx|state.SET_FOR_TX_START~q\,
	datac => \Send_data~input_o\,
	datad => \UartTx|send_pause~q\,
	combout => \UartTx|bit_counter[0]~0_combout\);

\UartTx|state~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|state~13_combout\ = (\UartTx|bit_counter[0]~0_combout\ & ((!\UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\) # (!\UartTx|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|Equal0~0_combout\,
	datab => \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\,
	datad => \UartTx|bit_counter[0]~0_combout\,
	combout => \UartTx|state~13_combout\);

\UartTx|state.SET_FOR_TX_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartTx|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|state.SET_FOR_TX_START~q\);

\UartTx|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector2~0_combout\ = (\UartTx|state.COUNT_BIT~q\) # ((\Send_data~input_o\ & (!\UartTx|send_pause~q\ & !\UartTx|state.SET_FOR_TX_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.COUNT_BIT~q\,
	datab => \Send_data~input_o\,
	datac => \UartTx|send_pause~q\,
	datad => \UartTx|state.SET_FOR_TX_START~q\,
	combout => \UartTx|Selector2~0_combout\);

\UartTx|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector2~1_combout\ = (\UartTx|Selector2~0_combout\) # ((\UartTx|state.SENDING_BITS~q\ & !\UartTx|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|Selector2~0_combout\,
	datab => \UartTx|state.SENDING_BITS~q\,
	datad => \UartTx|Equal0~0_combout\,
	combout => \UartTx|Selector2~1_combout\);

\UartTx|state.SENDING_BITS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartTx|Selector2~1_combout\,
	sclr => \ALT_INV_Rst_I~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|state.SENDING_BITS~q\);

\UartTx|baudrate_counter[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|baudrate_counter[0]~6_combout\ = (\UartTx|baudrate_counter\(0) & ((!\UartTx|state.SET_FOR_TX_START~q\) # (!\UartTx|baudrate_counter[1]~1_combout\))) # (!\UartTx|baudrate_counter\(0) & (\UartTx|baudrate_counter[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UartTx|baudrate_counter\(0),
	datac => \UartTx|baudrate_counter[1]~1_combout\,
	datad => \UartTx|state.SET_FOR_TX_START~q\,
	combout => \UartTx|baudrate_counter[0]~6_combout\);

\UartTx|baudrate_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartTx|baudrate_counter[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|baudrate_counter\(0));

\UartTx|baudrate_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|baudrate_counter[1]~5_combout\ = (\UartTx|baudrate_counter[1]~1_combout\ & ((\UartTx|baudrate_counter\(1) $ (!\UartTx|baudrate_counter\(0))) # (!\UartTx|state.SET_FOR_TX_START~q\))) # (!\UartTx|baudrate_counter[1]~1_combout\ & 
-- (\UartTx|baudrate_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|baudrate_counter\(1),
	datab => \UartTx|baudrate_counter\(0),
	datac => \UartTx|baudrate_counter[1]~1_combout\,
	datad => \UartTx|state.SET_FOR_TX_START~q\,
	combout => \UartTx|baudrate_counter[1]~5_combout\);

\UartTx|baudrate_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartTx|baudrate_counter[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|baudrate_counter\(1));

\UartTx|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~0_combout\ = (\UartTx|state.SENDING_BITS~q\ & (!\UartTx|baudrate_counter\(2) & (!\UartTx|baudrate_counter\(1) & !\UartTx|baudrate_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.SENDING_BITS~q\,
	datab => \UartTx|baudrate_counter\(2),
	datac => \UartTx|baudrate_counter\(1),
	datad => \UartTx|baudrate_counter\(0),
	combout => \UartTx|Selector4~0_combout\);

\UartTx|state~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|state~14_combout\ = (\UartTx|Selector4~0_combout\ & (!\UartTx|Equal1~0_combout\ & \UartTx|baudrate_counter[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|Selector4~0_combout\,
	datab => \UartTx|Equal1~0_combout\,
	datac => \UartTx|baudrate_counter[1]~7_combout\,
	combout => \UartTx|state~14_combout\);

\UartTx|state.COUNT_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartTx|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|state.COUNT_BIT~q\);

\UartTx|baudrate_counter[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|baudrate_counter[1]~0_combout\ = (\Rst_I~input_o\ & ((\UartTx|state.SET_FOR_TX_START~q\) # ((\Send_data~input_o\ & !\UartTx|send_pause~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.SET_FOR_TX_START~q\,
	datab => \Send_data~input_o\,
	datac => \UartTx|send_pause~q\,
	datad => \Rst_I~input_o\,
	combout => \UartTx|baudrate_counter[1]~0_combout\);

\UartTx|baudrate_counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|baudrate_counter[1]~1_combout\ = (!\UartTx|state.COUNT_BIT~q\ & (\UartTx|baudrate_counter[1]~0_combout\ & ((!\UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\) # (!\UartTx|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|Equal0~0_combout\,
	datab => \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\,
	datac => \UartTx|state.COUNT_BIT~q\,
	datad => \UartTx|baudrate_counter[1]~0_combout\,
	combout => \UartTx|baudrate_counter[1]~1_combout\);

\UartTx|baudrate_counter[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|baudrate_counter[2]~2_combout\ = (\UartTx|Equal0~0_combout\ & (\UartTx|state.SET_FOR_TX_START~q\ & (\UartTx|baudrate_counter[1]~1_combout\ & !\UartTx|state.SENDING_BITS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|Equal0~0_combout\,
	datab => \UartTx|state.SET_FOR_TX_START~q\,
	datac => \UartTx|baudrate_counter[1]~1_combout\,
	datad => \UartTx|state.SENDING_BITS~q\,
	combout => \UartTx|baudrate_counter[2]~2_combout\);

\UartTx|baudrate_counter[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|baudrate_counter[2]~3_combout\ = (\UartTx|state.SET_FOR_TX_START~q\ & ((\UartTx|baudrate_counter\(1)) # (\UartTx|baudrate_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.SET_FOR_TX_START~q\,
	datab => \UartTx|baudrate_counter\(1),
	datac => \UartTx|baudrate_counter\(0),
	combout => \UartTx|baudrate_counter[2]~3_combout\);

\UartTx|baudrate_counter[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|baudrate_counter[2]~4_combout\ = (\UartTx|baudrate_counter[2]~2_combout\) # ((\UartTx|baudrate_counter\(2) & ((\UartTx|baudrate_counter[2]~3_combout\) # (!\UartTx|baudrate_counter[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|baudrate_counter[2]~2_combout\,
	datab => \UartTx|baudrate_counter\(2),
	datac => \UartTx|baudrate_counter[2]~3_combout\,
	datad => \UartTx|baudrate_counter[1]~1_combout\,
	combout => \UartTx|baudrate_counter[2]~4_combout\);

\UartTx|baudrate_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartTx|baudrate_counter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|baudrate_counter\(2));

\UartTx|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Equal0~0_combout\ = (!\UartTx|baudrate_counter\(2) & (!\UartTx|baudrate_counter\(1) & !\UartTx|baudrate_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UartTx|baudrate_counter\(2),
	datac => \UartTx|baudrate_counter\(1),
	datad => \UartTx|baudrate_counter\(0),
	combout => \UartTx|Equal0~0_combout\);

\UartTx|baudrate_counter[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|baudrate_counter[1]~7_combout\ = (\Rst_I~input_o\ & (!\UartTx|state.COUNT_BIT~q\ & ((!\UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\) # (!\UartTx|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \UartTx|Equal0~0_combout\,
	datac => \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\,
	datad => \UartTx|state.COUNT_BIT~q\,
	combout => \UartTx|baudrate_counter[1]~7_combout\);

\UartTx|state~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|state~12_combout\ = (\UartTx|baudrate_counter[1]~7_combout\ & ((\UartTx|Selector4~0_combout\ & (\UartTx|Equal1~0_combout\)) # (!\UartTx|Selector4~0_combout\ & ((\UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|baudrate_counter[1]~7_combout\,
	datab => \UartTx|Equal1~0_combout\,
	datac => \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\,
	datad => \UartTx|Selector4~0_combout\,
	combout => \UartTx|state~12_combout\);

\UartTx|state.WAIT_FOR_SEND_STOP_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartTx|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\);

\UartTx|bit_counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|bit_counter[0]~1_combout\ = (\UartTx|bit_counter[0]~0_combout\ & (((\UartTx|Equal0~0_combout\ & \UartTx|Equal1~0_combout\)) # (!\UartTx|state.SENDING_BITS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter[0]~0_combout\,
	datab => \UartTx|Equal0~0_combout\,
	datac => \UartTx|Equal1~0_combout\,
	datad => \UartTx|state.SENDING_BITS~q\,
	combout => \UartTx|bit_counter[0]~1_combout\);

\UartTx|bit_counter[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|bit_counter[0]~5_combout\ = (\UartTx|bit_counter\(0) & ((\UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\) # ((!\UartTx|bit_counter[0]~1_combout\)))) # (!\UartTx|bit_counter\(0) & (!\UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\ & (\UartTx|state.COUNT_BIT~q\ & 
-- \UartTx|bit_counter[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter\(0),
	datab => \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\,
	datac => \UartTx|state.COUNT_BIT~q\,
	datad => \UartTx|bit_counter[0]~1_combout\,
	combout => \UartTx|bit_counter[0]~5_combout\);

\UartTx|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartTx|bit_counter[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|bit_counter\(0));

\UartTx|bit_counter[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|bit_counter[0]~2_combout\ = (\UartTx|bit_counter[0]~1_combout\ & !\UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter[0]~1_combout\,
	datad => \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\,
	combout => \UartTx|bit_counter[0]~2_combout\);

\UartTx|bit_counter[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|bit_counter[1]~4_combout\ = (\UartTx|bit_counter[0]~2_combout\ & (\UartTx|state.COUNT_BIT~q\ & (\UartTx|bit_counter\(1) $ (\UartTx|bit_counter\(0))))) # (!\UartTx|bit_counter[0]~2_combout\ & (((\UartTx|bit_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.COUNT_BIT~q\,
	datab => \UartTx|bit_counter\(1),
	datac => \UartTx|bit_counter\(0),
	datad => \UartTx|bit_counter[0]~2_combout\,
	combout => \UartTx|bit_counter[1]~4_combout\);

\UartTx|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartTx|bit_counter[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|bit_counter\(1));

\UartTx|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Add1~0_combout\ = \UartTx|bit_counter\(2) $ (((\UartTx|bit_counter\(0) & \UartTx|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UartTx|bit_counter\(2),
	datac => \UartTx|bit_counter\(0),
	datad => \UartTx|bit_counter\(1),
	combout => \UartTx|Add1~0_combout\);

\UartTx|bit_counter[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|bit_counter[2]~3_combout\ = (\UartTx|bit_counter[0]~2_combout\ & (\UartTx|state.COUNT_BIT~q\ & (\UartTx|Add1~0_combout\))) # (!\UartTx|bit_counter[0]~2_combout\ & (((\UartTx|bit_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.COUNT_BIT~q\,
	datab => \UartTx|Add1~0_combout\,
	datac => \UartTx|bit_counter\(2),
	datad => \UartTx|bit_counter[0]~2_combout\,
	combout => \UartTx|bit_counter[2]~3_combout\);

\UartTx|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartTx|bit_counter[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|bit_counter\(2));

\UartTx|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Add1~1_combout\ = \UartTx|bit_counter\(3) $ (((\UartTx|bit_counter\(0) & (\UartTx|bit_counter\(1) & \UartTx|bit_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter\(3),
	datab => \UartTx|bit_counter\(0),
	datac => \UartTx|bit_counter\(1),
	datad => \UartTx|bit_counter\(2),
	combout => \UartTx|Add1~1_combout\);

\UartTx|bit_counter[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|bit_counter[3]~6_combout\ = (\UartTx|bit_counter[0]~2_combout\ & (\UartTx|state.COUNT_BIT~q\ & (\UartTx|Add1~1_combout\))) # (!\UartTx|bit_counter[0]~2_combout\ & (((\UartTx|bit_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.COUNT_BIT~q\,
	datab => \UartTx|Add1~1_combout\,
	datac => \UartTx|bit_counter\(3),
	datad => \UartTx|bit_counter[0]~2_combout\,
	combout => \UartTx|bit_counter[3]~6_combout\);

\UartTx|bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartTx|bit_counter[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|bit_counter\(3));

\UartTx|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Equal1~0_combout\ = (\UartTx|bit_counter\(0) & (\UartTx|bit_counter\(3) & (!\UartTx|bit_counter\(1) & !\UartTx|bit_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter\(0),
	datab => \UartTx|bit_counter\(3),
	datac => \UartTx|bit_counter\(1),
	datad => \UartTx|bit_counter\(2),
	combout => \UartTx|Equal1~0_combout\);

\UartRX|receive_register[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|receive_register[7]~0_combout\ = (\UartRX|Equal1~0_combout\ & (\Rst_I~input_o\ & \UartRX|state.RECEIVE_BITS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|Equal1~0_combout\,
	datab => \Rst_I~input_o\,
	datac => \UartRX|state.RECEIVE_BITS~q\,
	combout => \UartRX|receive_register[7]~0_combout\);

\UartRX|receive_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \Rx~input_o\,
	ena => \UartRX|receive_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|receive_register\(7));

\UartRX|receive_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|receive_register\(7),
	ena => \UartRX|receive_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|receive_register\(6));

\UartRX|data_o~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|data_o~0_combout\ = (\Rst_I~input_o\ & \UartRX|receive_register\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \UartRX|receive_register\(6),
	combout => \UartRX|data_o~0_combout\);

\UartRX|data_o[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|data_o[7]~1_combout\ = ((\Rx~input_o\ & \UartRX|Selector7~0_combout\)) # (!\Rst_I~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datac => \Rx~input_o\,
	datad => \UartRX|Selector7~0_combout\,
	combout => \UartRX|data_o[7]~1_combout\);

\UartRX|data_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o~0_combout\,
	ena => \UartRX|data_o[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|data_o\(6));

\UartTx|sending_register[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|sending_register[7]~0_combout\ = (\Rst_I~input_o\ & (\Send_data~input_o\ & (!\UartTx|send_pause~q\ & !\UartTx|state.SET_FOR_TX_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \Send_data~input_o\,
	datac => \UartTx|send_pause~q\,
	datad => \UartTx|state.SET_FOR_TX_START~q\,
	combout => \UartTx|sending_register[7]~0_combout\);

\UartTx|sending_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o\(6),
	ena => \UartTx|sending_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|sending_register\(6));

\UartRX|receive_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|receive_register\(6),
	ena => \UartRX|receive_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|receive_register\(5));

\UartRX|data_o~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|data_o~2_combout\ = (\Rst_I~input_o\ & \UartRX|receive_register\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \UartRX|receive_register\(5),
	combout => \UartRX|data_o~2_combout\);

\UartRX|data_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o~2_combout\,
	ena => \UartRX|data_o[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|data_o\(5));

\UartTx|sending_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o\(5),
	ena => \UartTx|sending_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|sending_register\(5));

\UartRX|receive_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|receive_register\(5),
	ena => \UartRX|receive_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|receive_register\(4));

\UartRX|data_o~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|data_o~3_combout\ = (\Rst_I~input_o\ & \UartRX|receive_register\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \UartRX|receive_register\(4),
	combout => \UartRX|data_o~3_combout\);

\UartRX|data_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o~3_combout\,
	ena => \UartRX|data_o[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|data_o\(4));

\UartTx|sending_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o\(4),
	ena => \UartTx|sending_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|sending_register\(4));

\UartTx|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Mux0~0_combout\ = (\UartTx|bit_counter\(1) & (((\UartTx|bit_counter\(0))))) # (!\UartTx|bit_counter\(1) & ((\UartTx|bit_counter\(0) & (\UartTx|sending_register\(5))) # (!\UartTx|bit_counter\(0) & ((\UartTx|sending_register\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter\(1),
	datab => \UartTx|sending_register\(5),
	datac => \UartTx|bit_counter\(0),
	datad => \UartTx|sending_register\(4),
	combout => \UartTx|Mux0~0_combout\);

\UartRX|data_o~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|data_o~4_combout\ = (\Rst_I~input_o\ & \UartRX|receive_register\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \UartRX|receive_register\(7),
	combout => \UartRX|data_o~4_combout\);

\UartRX|data_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o~4_combout\,
	ena => \UartRX|data_o[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|data_o\(7));

\UartTx|sending_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o\(7),
	ena => \UartTx|sending_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|sending_register\(7));

\UartTx|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Mux0~1_combout\ = (\UartTx|bit_counter\(1) & ((\UartTx|Mux0~0_combout\ & ((\UartTx|sending_register\(7)))) # (!\UartTx|Mux0~0_combout\ & (\UartTx|sending_register\(6))))) # (!\UartTx|bit_counter\(1) & (((\UartTx|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|sending_register\(6),
	datab => \UartTx|bit_counter\(1),
	datac => \UartTx|Mux0~0_combout\,
	datad => \UartTx|sending_register\(7),
	combout => \UartTx|Mux0~1_combout\);

\UartRX|receive_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|receive_register\(4),
	ena => \UartRX|receive_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|receive_register\(3));

\UartRX|receive_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|receive_register\(3),
	ena => \UartRX|receive_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|receive_register\(2));

\UartRX|data_o~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|data_o~5_combout\ = (\Rst_I~input_o\ & \UartRX|receive_register\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \UartRX|receive_register\(2),
	combout => \UartRX|data_o~5_combout\);

\UartRX|data_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o~5_combout\,
	ena => \UartRX|data_o[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|data_o\(2));

\UartTx|sending_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o\(2),
	ena => \UartTx|sending_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|sending_register\(2));

\UartRX|receive_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|receive_register\(2),
	ena => \UartRX|receive_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|receive_register\(1));

\UartRX|data_o~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|data_o~6_combout\ = (\Rst_I~input_o\ & \UartRX|receive_register\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \UartRX|receive_register\(1),
	combout => \UartRX|data_o~6_combout\);

\UartRX|data_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o~6_combout\,
	ena => \UartRX|data_o[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|data_o\(1));

\UartTx|sending_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o\(1),
	ena => \UartTx|sending_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|sending_register\(1));

\UartRX|receive_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|receive_register\(1),
	ena => \UartRX|receive_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|receive_register\(0));

\UartRX|data_o~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|data_o~7_combout\ = (\Rst_I~input_o\ & \UartRX|receive_register\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \UartRX|receive_register\(0),
	combout => \UartRX|data_o~7_combout\);

\UartRX|data_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o~7_combout\,
	ena => \UartRX|data_o[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|data_o\(0));

\UartTx|sending_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o\(0),
	ena => \UartTx|sending_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|sending_register\(0));

\UartTx|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Mux0~2_combout\ = (\UartTx|bit_counter\(1) & (((\UartTx|bit_counter\(0))))) # (!\UartTx|bit_counter\(1) & ((\UartTx|bit_counter\(0) & (\UartTx|sending_register\(1))) # (!\UartTx|bit_counter\(0) & ((\UartTx|sending_register\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter\(1),
	datab => \UartTx|sending_register\(1),
	datac => \UartTx|bit_counter\(0),
	datad => \UartTx|sending_register\(0),
	combout => \UartTx|Mux0~2_combout\);

\UartRX|data_o~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|data_o~8_combout\ = (\Rst_I~input_o\ & \UartRX|receive_register\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rst_I~input_o\,
	datab => \UartRX|receive_register\(3),
	combout => \UartRX|data_o~8_combout\);

\UartRX|data_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o~8_combout\,
	ena => \UartRX|data_o[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|data_o\(3));

\UartTx|sending_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartRX|data_o\(3),
	ena => \UartTx|sending_register[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|sending_register\(3));

\UartTx|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Mux0~3_combout\ = (\UartTx|bit_counter\(1) & ((\UartTx|Mux0~2_combout\ & ((\UartTx|sending_register\(3)))) # (!\UartTx|Mux0~2_combout\ & (\UartTx|sending_register\(2))))) # (!\UartTx|bit_counter\(1) & (((\UartTx|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|sending_register\(2),
	datab => \UartTx|bit_counter\(1),
	datac => \UartTx|Mux0~2_combout\,
	datad => \UartTx|sending_register\(3),
	combout => \UartTx|Mux0~3_combout\);

\UartTx|Selector4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~5_combout\ = (\UartTx|bit_counter\(2) & (((\UartTx|Mux0~1_combout\)))) # (!\UartTx|bit_counter\(2) & (!\UartTx|Equal1~0_combout\ & ((\UartTx|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|Equal1~0_combout\,
	datab => \UartTx|Mux0~1_combout\,
	datac => \UartTx|bit_counter\(2),
	datad => \UartTx|Mux0~3_combout\,
	combout => \UartTx|Selector4~5_combout\);

\UartTx|Selector4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~6_combout\ = (\UartTx|Selector4~5_combout\ & (\UartTx|Selector4~0_combout\ & ((\UartTx|Mux0~1_combout\) # (!\UartTx|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|Equal1~0_combout\,
	datab => \UartTx|Selector4~5_combout\,
	datac => \UartTx|Mux0~1_combout\,
	datad => \UartTx|Selector4~0_combout\,
	combout => \UartTx|Selector4~6_combout\);

\UartTx|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~1_combout\ = (\UartTx|Equal0~0_combout\ & ((\UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\) # ((!\UartTx|state.SET_FOR_TX_START~q\ & !\Send_data~input_o\)))) # (!\UartTx|Equal0~0_combout\ & (((!\UartTx|state.SET_FOR_TX_START~q\ & 
-- !\Send_data~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|Equal0~0_combout\,
	datab => \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\,
	datac => \UartTx|state.SET_FOR_TX_START~q\,
	datad => \Send_data~input_o\,
	combout => \UartTx|Selector4~1_combout\);

\UartTx|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~2_combout\ = (\UartTx|state.COUNT_BIT~q\) # ((\UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\) # ((\UartTx|send_pause~q\ & !\UartTx|state.SET_FOR_TX_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.COUNT_BIT~q\,
	datab => \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\,
	datac => \UartTx|send_pause~q\,
	datad => \UartTx|state.SET_FOR_TX_START~q\,
	combout => \UartTx|Selector4~2_combout\);

\UartTx|Selector4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~3_combout\ = (\UartTx|Selector4~2_combout\) # ((\UartTx|state.SENDING_BITS~q\ & ((\UartTx|Equal1~0_combout\) # (!\UartTx|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|Selector4~2_combout\,
	datab => \UartTx|state.SENDING_BITS~q\,
	datac => \UartTx|Equal1~0_combout\,
	datad => \UartTx|Equal0~0_combout\,
	combout => \UartTx|Selector4~3_combout\);

\UartTx|Selector4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~4_combout\ = (\UartTx|Selector4~6_combout\) # ((\UartTx|Selector4~1_combout\) # ((\UartTx|tx~q\ & \UartTx|Selector4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|Selector4~6_combout\,
	datab => \UartTx|Selector4~1_combout\,
	datac => \UartTx|tx~q\,
	datad => \UartTx|Selector4~3_combout\,
	combout => \UartTx|Selector4~4_combout\);

\UartTx|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_I~input_o\,
	d => \UartTx|Selector4~4_combout\,
	asdata => VCC,
	sload => \ALT_INV_Rst_I~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|tx~q\);

ww_Req_O <= \Req_O~output_o\;

ww_Sampling_Rx <= \Sampling_Rx~output_o\;

ww_Tx <= \Tx~output_o\;
END structure;


