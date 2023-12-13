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

-- DATE "09/08/2023 08:53:10"

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

ENTITY 	UART_controller IS
    PORT (
	Clk_i : IN std_logic;
	CRX : IN std_logic;
	Q : BUFFER std_logic;
	test : BUFFER std_logic;
	DATA : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END UART_controller;

ARCHITECTURE structure OF UART_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk_i : std_logic;
SIGNAL ww_CRX : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_test : std_logic;
SIGNAL ww_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Ram|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Clk_i~input_o\ : std_logic;
SIGNAL \CRX~input_o\ : std_logic;
SIGNAL \UartRX|baudrate_counter[0]~2_combout\ : std_logic;
SIGNAL \UartRX|baudrate_counter[0]~4_combout\ : std_logic;
SIGNAL \UartRX|baudrate_counter[1]~5_combout\ : std_logic;
SIGNAL \UartRX|Equal2~0_combout\ : std_logic;
SIGNAL \UartRX|Selector7~0_combout\ : std_logic;
SIGNAL \UartRX|Selector7~2_combout\ : std_logic;
SIGNAL \UartRX|ramAddr[0]~0_combout\ : std_logic;
SIGNAL \UartRX|Selector7~3_combout\ : std_logic;
SIGNAL \UartRX|state.WAIT_FOR_STOP_BIT~q\ : std_logic;
SIGNAL \UartRX|Selector4~0_combout\ : std_logic;
SIGNAL \UartRX|state.WAIT_FOR_RX_START~q\ : std_logic;
SIGNAL \UartRX|baudrate_counter[2]~0_combout\ : std_logic;
SIGNAL \UartRX|baudrate_counter[2]~1_combout\ : std_logic;
SIGNAL \UartRX|baudrate_counter[2]~3_combout\ : std_logic;
SIGNAL \UartRX|Selector7~1_combout\ : std_logic;
SIGNAL \UartRX|Selector6~0_combout\ : std_logic;
SIGNAL \UartRX|state.RECEIVE_BITS~q\ : std_logic;
SIGNAL \UartRX|bit_counter[0]~1_combout\ : std_logic;
SIGNAL \UartRX|bit_counter[1]~2_combout\ : std_logic;
SIGNAL \UartRX|Add2~0_combout\ : std_logic;
SIGNAL \UartRX|receive_register[0]~0_combout\ : std_logic;
SIGNAL \UartRX|bit_counter[2]~0_combout\ : std_logic;
SIGNAL \UartRX|bit_counter[2]~3_combout\ : std_logic;
SIGNAL \UartRX|Selector5~0_combout\ : std_logic;
SIGNAL \UartRX|Selector5~1_combout\ : std_logic;
SIGNAL \UartRX|state.WAIT_HALF_BIT~q\ : std_logic;
SIGNAL \UartRX|Selector3~0_combout\ : std_logic;
SIGNAL \UartRX|Selector3~1_combout\ : std_logic;
SIGNAL \UartRX|Equal3~0_combout\ : std_logic;
SIGNAL \UartRX|Equal3~1_combout\ : std_logic;
SIGNAL \UartRX|Equal3~2_combout\ : std_logic;
SIGNAL \UartRX|count_frame[0]~5_combout\ : std_logic;
SIGNAL \UartRX|count_frame[0]~15_combout\ : std_logic;
SIGNAL \UartRX|Equal0~0_combout\ : std_logic;
SIGNAL \UartRX|count_frame[0]~16_combout\ : std_logic;
SIGNAL \UartRX|count_frame[0]~6\ : std_logic;
SIGNAL \UartRX|count_frame[1]~7_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \UartRX|count_frame[1]~8\ : std_logic;
SIGNAL \UartRX|count_frame[2]~9_combout\ : std_logic;
SIGNAL \UartRX|count_frame[2]~10\ : std_logic;
SIGNAL \UartRX|count_frame[3]~11_combout\ : std_logic;
SIGNAL \UartRX|count_frame[3]~12\ : std_logic;
SIGNAL \UartRX|count_frame[4]~13_combout\ : std_logic;
SIGNAL \UartRX|Selector14~0_combout\ : std_logic;
SIGNAL \UartRX|set_state~10_combout\ : std_logic;
SIGNAL \UartRX|Selector12~0_combout\ : std_logic;
SIGNAL \UartRX|w~0_combout\ : std_logic;
SIGNAL \UartRX|Selector14~1_combout\ : std_logic;
SIGNAL \UartRX|set_state.get_addr~q\ : std_logic;
SIGNAL \UartRX|Equal4~0_combout\ : std_logic;
SIGNAL \UartRX|w~1_combout\ : std_logic;
SIGNAL \UartRX|w~q\ : std_logic;
SIGNAL \UartRX|Selector15~0_combout\ : std_logic;
SIGNAL \UartRX|set_state.get_data~q\ : std_logic;
SIGNAL \UartRX|Selector12~1_combout\ : std_logic;
SIGNAL \UartRX|Selector12~2_combout\ : std_logic;
SIGNAL \UartRX|set_state.check_start~q\ : std_logic;
SIGNAL \UartRX|set_state.get_cmd~0_combout\ : std_logic;
SIGNAL \UartRX|set_state~11_combout\ : std_logic;
SIGNAL \UartRX|set_state.get_cmd~1_combout\ : std_logic;
SIGNAL \UartRX|set_state.get_cmd~q\ : std_logic;
SIGNAL \UartRX|Selector3~2_combout\ : std_logic;
SIGNAL \UartRX|Selector3~3_combout\ : std_logic;
SIGNAL \UartRX|send~q\ : std_logic;
SIGNAL \UartTx|send_pause~0_combout\ : std_logic;
SIGNAL \UartTx|send_pause~q\ : std_logic;
SIGNAL \UartTx|Selector0~2_combout\ : std_logic;
SIGNAL \UartTx|bit_counter[2]~0_combout\ : std_logic;
SIGNAL \UartTx|Selector4~12_combout\ : std_logic;
SIGNAL \UartTx|bit_counter[2]~1_combout\ : std_logic;
SIGNAL \UartTx|bit_counter[0]~4_combout\ : std_logic;
SIGNAL \UartTx|bit_counter[1]~3_combout\ : std_logic;
SIGNAL \UartTx|Add1~1_combout\ : std_logic;
SIGNAL \UartTx|bit_counter[3]~5_combout\ : std_logic;
SIGNAL \UartTx|Equal1~0_combout\ : std_logic;
SIGNAL \UartTx|Selector4~13_combout\ : std_logic;
SIGNAL \UartTx|Selector3~0_combout\ : std_logic;
SIGNAL \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\ : std_logic;
SIGNAL \UartTx|Selector0~3_combout\ : std_logic;
SIGNAL \UartTx|state.SET_FOR_TX_START~q\ : std_logic;
SIGNAL \UartTx|Selector11~0_combout\ : std_logic;
SIGNAL \UartTx|baudrate_counter[1]~0_combout\ : std_logic;
SIGNAL \UartTx|Selector10~0_combout\ : std_logic;
SIGNAL \UartTx|Selector1~2_combout\ : std_logic;
SIGNAL \UartTx|Selector1~3_combout\ : std_logic;
SIGNAL \UartTx|state.SENDING_BITS~q\ : std_logic;
SIGNAL \UartTx|Selector2~0_combout\ : std_logic;
SIGNAL \UartTx|state.COUNT_BIT~q\ : std_logic;
SIGNAL \UartTx|Add1~0_combout\ : std_logic;
SIGNAL \UartTx|bit_counter[2]~2_combout\ : std_logic;
SIGNAL \UartRX|aclr~0_combout\ : std_logic;
SIGNAL \UartRX|aclr~q\ : std_logic;
SIGNAL \UartRX|ramWrData[0]~0_combout\ : std_logic;
SIGNAL \UartRX|ramAddr[0]~1_combout\ : std_logic;
SIGNAL \UartTx|Mux0~0_combout\ : std_logic;
SIGNAL \UartTx|Selector4~0_combout\ : std_logic;
SIGNAL \UartTx|Selector4~1_combout\ : std_logic;
SIGNAL \UartTx|Selector4~2_combout\ : std_logic;
SIGNAL \UartTx|Selector4~3_combout\ : std_logic;
SIGNAL \UartTx|sending_register[9]~0_combout\ : std_logic;
SIGNAL \UartTx|Selector4~4_combout\ : std_logic;
SIGNAL \UartTx|Selector4~5_combout\ : std_logic;
SIGNAL \UartTx|Selector4~6_combout\ : std_logic;
SIGNAL \UartTx|Selector4~7_combout\ : std_logic;
SIGNAL \UartTx|Mux0~1_combout\ : std_logic;
SIGNAL \UartTx|Selector4~8_combout\ : std_logic;
SIGNAL \UartTx|Selector4~9_combout\ : std_logic;
SIGNAL \UartTx|Selector4~10_combout\ : std_logic;
SIGNAL \UartTx|Selector4~11_combout\ : std_logic;
SIGNAL \UartTx|tx~q\ : std_logic;
SIGNAL \Ram|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UartRX|count_frame\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \UartRX|ramWrData\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UartTx|bit_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UartRX|ramAddr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UartTx|baudrate_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UartRX|receive_register\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \UartTx|sending_register\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \UartRX|baudrate_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UartRX|bit_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_CRX~input_o\ : std_logic;

BEGIN

ww_Clk_i <= Clk_i;
ww_CRX <= CRX;
Q <= ww_Q;
test <= ww_test;
DATA <= ww_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \UartRX|ramWrData\(0);

\Ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\UartRX|ramAddr\(2) & \UartRX|ramAddr\(1) & \UartRX|ramAddr\(0));

\Ram|altsyncram_component|auto_generated|q_a\(0) <= \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\Ram|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \UartRX|ramWrData\(1);

\Ram|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\UartRX|ramAddr\(2) & \UartRX|ramAddr\(1) & \UartRX|ramAddr\(0));

\Ram|altsyncram_component|auto_generated|q_a\(1) <= \Ram|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\Ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \UartRX|ramWrData\(2);

\Ram|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\UartRX|ramAddr\(2) & \UartRX|ramAddr\(1) & \UartRX|ramAddr\(0));

\Ram|altsyncram_component|auto_generated|q_a\(2) <= \Ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\Ram|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \UartRX|ramWrData\(3);

\Ram|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\UartRX|ramAddr\(2) & \UartRX|ramAddr\(1) & \UartRX|ramAddr\(0));

\Ram|altsyncram_component|auto_generated|q_a\(3) <= \Ram|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\Ram|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \UartRX|ramWrData\(4);

\Ram|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\UartRX|ramAddr\(2) & \UartRX|ramAddr\(1) & \UartRX|ramAddr\(0));

\Ram|altsyncram_component|auto_generated|q_a\(4) <= \Ram|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\Ram|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \UartRX|ramWrData\(5);

\Ram|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\UartRX|ramAddr\(2) & \UartRX|ramAddr\(1) & \UartRX|ramAddr\(0));

\Ram|altsyncram_component|auto_generated|q_a\(5) <= \Ram|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\Ram|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \UartRX|ramWrData\(6);

\Ram|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\UartRX|ramAddr\(2) & \UartRX|ramAddr\(1) & \UartRX|ramAddr\(0));

\Ram|altsyncram_component|auto_generated|q_a\(6) <= \Ram|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\Ram|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \UartRX|ramWrData\(7);

\Ram|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\UartRX|ramAddr\(2) & \UartRX|ramAddr\(1) & \UartRX|ramAddr\(0));

\Ram|altsyncram_component|auto_generated|q_a\(7) <= \Ram|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);
\ALT_INV_CRX~input_o\ <= NOT \CRX~input_o\;

\Q~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UartTx|tx~q\,
	devoe => ww_devoe,
	o => ww_Q);

\test~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UartRX|aclr~q\,
	devoe => ww_devoe,
	o => ww_test);

\DATA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ram|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_DATA(0));

\DATA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ram|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_DATA(1));

\DATA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ram|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_DATA(2));

\DATA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ram|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_DATA(3));

\DATA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ram|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_DATA(4));

\DATA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ram|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_DATA(5));

\DATA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ram|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_DATA(6));

\DATA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ram|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_DATA(7));

\Clk_i~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk_i,
	o => \Clk_i~input_o\);

\CRX~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CRX,
	o => \CRX~input_o\);

\UartRX|baudrate_counter[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|baudrate_counter[0]~2_combout\ = (\UartRX|state.WAIT_FOR_STOP_BIT~q\ & ((\UartRX|Equal2~0_combout\) # ((\CRX~input_o\ & !\UartRX|state.WAIT_FOR_RX_START~q\)))) # (!\UartRX|state.WAIT_FOR_STOP_BIT~q\ & (((\CRX~input_o\ & 
-- !\UartRX|state.WAIT_FOR_RX_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|state.WAIT_FOR_STOP_BIT~q\,
	datab => \UartRX|Equal2~0_combout\,
	datac => \CRX~input_o\,
	datad => \UartRX|state.WAIT_FOR_RX_START~q\,
	combout => \UartRX|baudrate_counter[0]~2_combout\);

\UartRX|baudrate_counter[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|baudrate_counter[0]~4_combout\ = (\UartRX|baudrate_counter\(0) & ((\UartRX|baudrate_counter[0]~2_combout\) # (!\UartRX|state.WAIT_FOR_RX_START~q\))) # (!\UartRX|baudrate_counter\(0) & (!\UartRX|baudrate_counter[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|baudrate_counter\(0),
	datab => \UartRX|baudrate_counter[0]~2_combout\,
	datad => \UartRX|state.WAIT_FOR_RX_START~q\,
	combout => \UartRX|baudrate_counter[0]~4_combout\);

\UartRX|baudrate_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|baudrate_counter[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|baudrate_counter\(0));

\UartRX|baudrate_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|baudrate_counter[1]~5_combout\ = (\UartRX|baudrate_counter[0]~2_combout\ & (\UartRX|baudrate_counter\(1))) # (!\UartRX|baudrate_counter[0]~2_combout\ & (\UartRX|state.WAIT_FOR_RX_START~q\ & (\UartRX|baudrate_counter\(1) $ 
-- (!\UartRX|baudrate_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|baudrate_counter\(1),
	datab => \UartRX|baudrate_counter[0]~2_combout\,
	datac => \UartRX|state.WAIT_FOR_RX_START~q\,
	datad => \UartRX|baudrate_counter\(0),
	combout => \UartRX|baudrate_counter[1]~5_combout\);

\UartRX|baudrate_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|baudrate_counter[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|baudrate_counter\(1));

\UartRX|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Equal2~0_combout\ = (!\UartRX|baudrate_counter\(2) & (!\UartRX|baudrate_counter\(0) & !\UartRX|baudrate_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UartRX|baudrate_counter\(2),
	datac => \UartRX|baudrate_counter\(0),
	datad => \UartRX|baudrate_counter\(1),
	combout => \UartRX|Equal2~0_combout\);

\UartRX|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector7~0_combout\ = (\UartRX|Equal2~0_combout\ & (\UartRX|state.RECEIVE_BITS~q\ & (\UartRX|Add2~0_combout\ & !\UartRX|bit_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|Equal2~0_combout\,
	datab => \UartRX|state.RECEIVE_BITS~q\,
	datac => \UartRX|Add2~0_combout\,
	datad => \UartRX|bit_counter\(2),
	combout => \UartRX|Selector7~0_combout\);

\UartRX|Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector7~2_combout\ = (!\UartRX|Selector7~1_combout\ & (!\UartRX|Selector7~0_combout\ & ((\CRX~input_o\) # (\UartRX|state.WAIT_FOR_RX_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRX~input_o\,
	datab => \UartRX|state.WAIT_FOR_RX_START~q\,
	datac => \UartRX|Selector7~1_combout\,
	datad => \UartRX|Selector7~0_combout\,
	combout => \UartRX|Selector7~2_combout\);

\UartRX|ramAddr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|ramAddr[0]~0_combout\ = (\CRX~input_o\ & (\UartRX|state.WAIT_FOR_STOP_BIT~q\ & \UartRX|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRX~input_o\,
	datab => \UartRX|state.WAIT_FOR_STOP_BIT~q\,
	datac => \UartRX|Equal2~0_combout\,
	combout => \UartRX|ramAddr[0]~0_combout\);

\UartRX|Selector7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector7~3_combout\ = (!\UartRX|ramAddr[0]~0_combout\ & ((\UartRX|Selector7~2_combout\ & (\UartRX|state.WAIT_FOR_STOP_BIT~q\)) # (!\UartRX|Selector7~2_combout\ & ((\UartRX|Selector7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|state.WAIT_FOR_STOP_BIT~q\,
	datab => \UartRX|Selector7~0_combout\,
	datac => \UartRX|Selector7~2_combout\,
	datad => \UartRX|ramAddr[0]~0_combout\,
	combout => \UartRX|Selector7~3_combout\);

\UartRX|state.WAIT_FOR_STOP_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|Selector7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|state.WAIT_FOR_STOP_BIT~q\);

\UartRX|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector4~0_combout\ = ((\UartRX|state.WAIT_FOR_RX_START~q\ & ((!\UartRX|Equal2~0_combout\) # (!\UartRX|state.WAIT_FOR_STOP_BIT~q\)))) # (!\CRX~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRX~input_o\,
	datab => \UartRX|state.WAIT_FOR_STOP_BIT~q\,
	datac => \UartRX|Equal2~0_combout\,
	datad => \UartRX|state.WAIT_FOR_RX_START~q\,
	combout => \UartRX|Selector4~0_combout\);

\UartRX|state.WAIT_FOR_RX_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|state.WAIT_FOR_RX_START~q\);

\UartRX|baudrate_counter[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|baudrate_counter[2]~0_combout\ = (\UartRX|Equal2~0_combout\ & (!\UartRX|state.WAIT_FOR_STOP_BIT~q\ & (!\UartRX|state.WAIT_HALF_BIT~q\ & !\UartRX|state.RECEIVE_BITS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|Equal2~0_combout\,
	datab => \UartRX|state.WAIT_FOR_STOP_BIT~q\,
	datac => \UartRX|state.WAIT_HALF_BIT~q\,
	datad => \UartRX|state.RECEIVE_BITS~q\,
	combout => \UartRX|baudrate_counter[2]~0_combout\);

\UartRX|baudrate_counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|baudrate_counter[2]~1_combout\ = (\UartRX|baudrate_counter[2]~0_combout\) # ((\UartRX|baudrate_counter\(2) & ((\UartRX|baudrate_counter\(0)) # (\UartRX|baudrate_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|baudrate_counter[2]~0_combout\,
	datab => \UartRX|baudrate_counter\(2),
	datac => \UartRX|baudrate_counter\(0),
	datad => \UartRX|baudrate_counter\(1),
	combout => \UartRX|baudrate_counter[2]~1_combout\);

\UartRX|baudrate_counter[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|baudrate_counter[2]~3_combout\ = (\UartRX|baudrate_counter\(2) & ((\UartRX|baudrate_counter[0]~2_combout\) # ((\UartRX|state.WAIT_FOR_RX_START~q\ & \UartRX|baudrate_counter[2]~1_combout\)))) # (!\UartRX|baudrate_counter\(2) & 
-- (\UartRX|state.WAIT_FOR_RX_START~q\ & (\UartRX|baudrate_counter[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|baudrate_counter\(2),
	datab => \UartRX|state.WAIT_FOR_RX_START~q\,
	datac => \UartRX|baudrate_counter[2]~1_combout\,
	datad => \UartRX|baudrate_counter[0]~2_combout\,
	combout => \UartRX|baudrate_counter[2]~3_combout\);

\UartRX|baudrate_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|baudrate_counter[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|baudrate_counter\(2));

\UartRX|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector7~1_combout\ = (\UartRX|state.WAIT_HALF_BIT~q\ & (!\UartRX|baudrate_counter\(2) & (!\UartRX|baudrate_counter\(0) & !\UartRX|baudrate_counter\(1))))

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
	combout => \UartRX|Selector7~1_combout\);

\UartRX|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector6~0_combout\ = (!\UartRX|ramAddr[0]~0_combout\ & ((\UartRX|Selector7~2_combout\ & (\UartRX|state.RECEIVE_BITS~q\)) # (!\UartRX|Selector7~2_combout\ & ((\UartRX|Selector7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|state.RECEIVE_BITS~q\,
	datab => \UartRX|Selector7~1_combout\,
	datac => \UartRX|Selector7~2_combout\,
	datad => \UartRX|ramAddr[0]~0_combout\,
	combout => \UartRX|Selector6~0_combout\);

\UartRX|state.RECEIVE_BITS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|state.RECEIVE_BITS~q\);

\UartRX|bit_counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|bit_counter[0]~1_combout\ = (\UartRX|bit_counter\(0) & ((\UartRX|bit_counter[2]~0_combout\) # (!\UartRX|state.RECEIVE_BITS~q\))) # (!\UartRX|bit_counter\(0) & (!\UartRX|bit_counter[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|bit_counter\(0),
	datab => \UartRX|bit_counter[2]~0_combout\,
	datad => \UartRX|state.RECEIVE_BITS~q\,
	combout => \UartRX|bit_counter[0]~1_combout\);

\UartRX|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|bit_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|bit_counter\(0));

\UartRX|bit_counter[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|bit_counter[1]~2_combout\ = (\UartRX|bit_counter[2]~0_combout\ & (\UartRX|bit_counter\(1))) # (!\UartRX|bit_counter[2]~0_combout\ & ((\UartRX|bit_counter\(1) $ (!\UartRX|bit_counter\(0))) # (!\UartRX|state.RECEIVE_BITS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|bit_counter\(1),
	datab => \UartRX|bit_counter\(0),
	datac => \UartRX|bit_counter[2]~0_combout\,
	datad => \UartRX|state.RECEIVE_BITS~q\,
	combout => \UartRX|bit_counter[1]~2_combout\);

\UartRX|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|bit_counter[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|bit_counter\(1));

\UartRX|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Add2~0_combout\ = (!\UartRX|bit_counter\(0) & !\UartRX|bit_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UartRX|bit_counter\(0),
	datad => \UartRX|bit_counter\(1),
	combout => \UartRX|Add2~0_combout\);

\UartRX|receive_register[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|receive_register[0]~0_combout\ = (\UartRX|state.RECEIVE_BITS~q\ & (!\UartRX|baudrate_counter\(2) & (!\UartRX|baudrate_counter\(0) & !\UartRX|baudrate_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|state.RECEIVE_BITS~q\,
	datab => \UartRX|baudrate_counter\(2),
	datac => \UartRX|baudrate_counter\(0),
	datad => \UartRX|baudrate_counter\(1),
	combout => \UartRX|receive_register[0]~0_combout\);

\UartRX|bit_counter[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|bit_counter[2]~0_combout\ = (!\UartRX|Selector7~1_combout\ & (((\UartRX|Add2~0_combout\ & !\UartRX|bit_counter\(2))) # (!\UartRX|receive_register[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|Add2~0_combout\,
	datab => \UartRX|bit_counter\(2),
	datac => \UartRX|receive_register[0]~0_combout\,
	datad => \UartRX|Selector7~1_combout\,
	combout => \UartRX|bit_counter[2]~0_combout\);

\UartRX|bit_counter[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|bit_counter[2]~3_combout\ = (\UartRX|bit_counter[2]~0_combout\ & (\UartRX|bit_counter\(2))) # (!\UartRX|bit_counter[2]~0_combout\ & ((\UartRX|bit_counter\(2) $ (\UartRX|Add2~0_combout\)) # (!\UartRX|state.RECEIVE_BITS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|bit_counter\(2),
	datab => \UartRX|bit_counter[2]~0_combout\,
	datac => \UartRX|Add2~0_combout\,
	datad => \UartRX|state.RECEIVE_BITS~q\,
	combout => \UartRX|bit_counter[2]~3_combout\);

\UartRX|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|bit_counter[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|bit_counter\(2));

\UartRX|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector5~0_combout\ = (!\UartRX|Selector7~1_combout\ & ((\UartRX|bit_counter\(2)) # ((!\UartRX|receive_register[0]~0_combout\) # (!\UartRX|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|bit_counter\(2),
	datab => \UartRX|Add2~0_combout\,
	datac => \UartRX|receive_register[0]~0_combout\,
	datad => \UartRX|Selector7~1_combout\,
	combout => \UartRX|Selector5~0_combout\);

\UartRX|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector5~1_combout\ = (!\UartRX|ramAddr[0]~0_combout\ & ((\UartRX|Selector7~2_combout\ & (\UartRX|state.WAIT_HALF_BIT~q\)) # (!\UartRX|Selector7~2_combout\ & ((\UartRX|Selector5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|state.WAIT_HALF_BIT~q\,
	datab => \UartRX|Selector5~0_combout\,
	datac => \UartRX|Selector7~2_combout\,
	datad => \UartRX|ramAddr[0]~0_combout\,
	combout => \UartRX|Selector5~1_combout\);

\UartRX|state.WAIT_HALF_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|state.WAIT_HALF_BIT~q\);

\UartRX|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector3~0_combout\ = (\UartRX|send~q\ & ((\UartRX|state.WAIT_HALF_BIT~q\) # (\UartRX|state.RECEIVE_BITS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|send~q\,
	datab => \UartRX|state.WAIT_HALF_BIT~q\,
	datac => \UartRX|state.RECEIVE_BITS~q\,
	combout => \UartRX|Selector3~0_combout\);

\UartRX|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector3~1_combout\ = (\UartRX|baudrate_counter\(2)) # ((\UartRX|baudrate_counter\(0)) # ((\UartRX|baudrate_counter\(1)) # (!\CRX~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|baudrate_counter\(2),
	datab => \UartRX|baudrate_counter\(0),
	datac => \UartRX|baudrate_counter\(1),
	datad => \CRX~input_o\,
	combout => \UartRX|Selector3~1_combout\);

\UartRX|receive_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \CRX~input_o\,
	ena => \UartRX|receive_register[0]~0_combout\,
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
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(7),
	ena => \UartRX|receive_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|receive_register\(6));

\UartRX|receive_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(6),
	ena => \UartRX|receive_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|receive_register\(5));

\UartRX|receive_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(5),
	ena => \UartRX|receive_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|receive_register\(4));

\UartRX|receive_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(4),
	ena => \UartRX|receive_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|receive_register\(3));

\UartRX|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Equal3~0_combout\ = (\UartRX|receive_register\(5) & (!\UartRX|receive_register\(3) & (!\UartRX|receive_register\(4) & !\UartRX|receive_register\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|receive_register\(5),
	datab => \UartRX|receive_register\(3),
	datac => \UartRX|receive_register\(4),
	datad => \UartRX|receive_register\(6),
	combout => \UartRX|Equal3~0_combout\);

\UartRX|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Equal3~1_combout\ = (\UartRX|Equal3~0_combout\ & !\UartRX|receive_register\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|Equal3~0_combout\,
	datad => \UartRX|receive_register\(7),
	combout => \UartRX|Equal3~1_combout\);

\UartRX|receive_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(3),
	ena => \UartRX|receive_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|receive_register\(2));

\UartRX|receive_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(2),
	ena => \UartRX|receive_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|receive_register\(1));

\UartRX|receive_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(1),
	ena => \UartRX|receive_register[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|receive_register\(0));

\UartRX|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Equal3~2_combout\ = (\UartRX|receive_register\(0) & (\UartRX|receive_register\(1) & !\UartRX|receive_register\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|receive_register\(0),
	datab => \UartRX|receive_register\(1),
	datad => \UartRX|receive_register\(2),
	combout => \UartRX|Equal3~2_combout\);

\UartRX|count_frame[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|count_frame[0]~5_combout\ = \UartRX|count_frame\(0) $ (VCC)
-- \UartRX|count_frame[0]~6\ = CARRY(\UartRX|count_frame\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|count_frame\(0),
	datad => VCC,
	combout => \UartRX|count_frame[0]~5_combout\,
	cout => \UartRX|count_frame[0]~6\);

\UartRX|count_frame[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|count_frame[0]~15_combout\ = (\UartRX|state.WAIT_FOR_RX_START~q\) # ((\CRX~input_o\ & !\UartRX|set_state.check_start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|state.WAIT_FOR_RX_START~q\,
	datab => \CRX~input_o\,
	datad => \UartRX|set_state.check_start~q\,
	combout => \UartRX|count_frame[0]~15_combout\);

\UartRX|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Equal0~0_combout\ = (!\UartRX|count_frame\(0) & (!\UartRX|count_frame\(1) & (!\UartRX|count_frame\(2) & !\UartRX|count_frame\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|count_frame\(0),
	datab => \UartRX|count_frame\(1),
	datac => \UartRX|count_frame\(2),
	datad => \UartRX|count_frame\(3),
	combout => \UartRX|Equal0~0_combout\);

\UartRX|count_frame[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|count_frame[0]~16_combout\ = (!\UartRX|count_frame[0]~15_combout\ & (((!\UartRX|Equal0~0_combout\) # (!\UartRX|count_frame\(4))) # (!\CRX~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|count_frame[0]~15_combout\,
	datab => \CRX~input_o\,
	datac => \UartRX|count_frame\(4),
	datad => \UartRX|Equal0~0_combout\,
	combout => \UartRX|count_frame[0]~16_combout\);

\UartRX|count_frame[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|count_frame[0]~5_combout\,
	asdata => VCC,
	sload => \ALT_INV_CRX~input_o\,
	ena => \UartRX|count_frame[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|count_frame\(0));

\UartRX|count_frame[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|count_frame[1]~7_combout\ = (\UartRX|count_frame\(1) & (!\UartRX|count_frame[0]~6\)) # (!\UartRX|count_frame\(1) & ((\UartRX|count_frame[0]~6\) # (GND)))
-- \UartRX|count_frame[1]~8\ = CARRY((!\UartRX|count_frame[0]~6\) # (!\UartRX|count_frame\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|count_frame\(1),
	datad => VCC,
	cin => \UartRX|count_frame[0]~6\,
	combout => \UartRX|count_frame[1]~7_combout\,
	cout => \UartRX|count_frame[1]~8\);

\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\UartRX|count_frame[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|count_frame[1]~7_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_CRX~input_o\,
	ena => \UartRX|count_frame[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|count_frame\(1));

\UartRX|count_frame[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|count_frame[2]~9_combout\ = (\UartRX|count_frame\(2) & (\UartRX|count_frame[1]~8\ $ (GND))) # (!\UartRX|count_frame\(2) & (!\UartRX|count_frame[1]~8\ & VCC))
-- \UartRX|count_frame[2]~10\ = CARRY((\UartRX|count_frame\(2) & !\UartRX|count_frame[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|count_frame\(2),
	datad => VCC,
	cin => \UartRX|count_frame[1]~8\,
	combout => \UartRX|count_frame[2]~9_combout\,
	cout => \UartRX|count_frame[2]~10\);

\UartRX|count_frame[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|count_frame[2]~9_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_CRX~input_o\,
	ena => \UartRX|count_frame[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|count_frame\(2));

\UartRX|count_frame[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|count_frame[3]~11_combout\ = (\UartRX|count_frame\(3) & (!\UartRX|count_frame[2]~10\)) # (!\UartRX|count_frame\(3) & ((\UartRX|count_frame[2]~10\) # (GND)))
-- \UartRX|count_frame[3]~12\ = CARRY((!\UartRX|count_frame[2]~10\) # (!\UartRX|count_frame\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|count_frame\(3),
	datad => VCC,
	cin => \UartRX|count_frame[2]~10\,
	combout => \UartRX|count_frame[3]~11_combout\,
	cout => \UartRX|count_frame[3]~12\);

\UartRX|count_frame[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|count_frame[3]~11_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_CRX~input_o\,
	ena => \UartRX|count_frame[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|count_frame\(3));

\UartRX|count_frame[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|count_frame[4]~13_combout\ = \UartRX|count_frame\(4) $ (!\UartRX|count_frame[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|count_frame\(4),
	cin => \UartRX|count_frame[3]~12\,
	combout => \UartRX|count_frame[4]~13_combout\);

\UartRX|count_frame[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|count_frame[4]~13_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_CRX~input_o\,
	ena => \UartRX|count_frame[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|count_frame\(4));

\UartRX|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector14~0_combout\ = (\CRX~input_o\ & (\UartRX|count_frame\(4) & (\UartRX|Equal0~0_combout\ & !\UartRX|state.WAIT_FOR_RX_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRX~input_o\,
	datab => \UartRX|count_frame\(4),
	datac => \UartRX|Equal0~0_combout\,
	datad => \UartRX|state.WAIT_FOR_RX_START~q\,
	combout => \UartRX|Selector14~0_combout\);

\UartRX|set_state~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|set_state~10_combout\ = (\CRX~input_o\ & (\UartRX|state.WAIT_FOR_STOP_BIT~q\ & (\UartRX|Equal2~0_combout\ & \UartRX|state.WAIT_FOR_RX_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRX~input_o\,
	datab => \UartRX|state.WAIT_FOR_STOP_BIT~q\,
	datac => \UartRX|Equal2~0_combout\,
	datad => \UartRX|state.WAIT_FOR_RX_START~q\,
	combout => \UartRX|set_state~10_combout\);

\UartRX|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector12~0_combout\ = (!\UartRX|set_state.check_start~q\ & (((!\UartRX|Equal3~2_combout\) # (!\UartRX|set_state~10_combout\)) # (!\UartRX|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|Equal3~1_combout\,
	datab => \UartRX|set_state~10_combout\,
	datac => \UartRX|Equal3~2_combout\,
	datad => \UartRX|set_state.check_start~q\,
	combout => \UartRX|Selector12~0_combout\);

\UartRX|w~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|w~0_combout\ = (\UartRX|set_state.get_cmd~q\ & (\CRX~input_o\ & (\UartRX|state.WAIT_FOR_STOP_BIT~q\ & \UartRX|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|set_state.get_cmd~q\,
	datab => \CRX~input_o\,
	datac => \UartRX|state.WAIT_FOR_STOP_BIT~q\,
	datad => \UartRX|Equal2~0_combout\,
	combout => \UartRX|w~0_combout\);

\UartRX|Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector14~1_combout\ = (\UartRX|ramAddr[0]~0_combout\) # ((\UartRX|set_state.check_start~q\ & \UartRX|Selector14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|ramAddr[0]~0_combout\,
	datab => \UartRX|set_state.check_start~q\,
	datac => \UartRX|Selector14~0_combout\,
	combout => \UartRX|Selector14~1_combout\);

\UartRX|set_state.get_addr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|w~0_combout\,
	ena => \UartRX|Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|set_state.get_addr~q\);

\UartRX|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Equal4~0_combout\ = (\UartRX|receive_register\(0)) # ((\UartRX|receive_register\(1)) # ((!\UartRX|receive_register\(2)) # (!\UartRX|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|receive_register\(0),
	datab => \UartRX|receive_register\(1),
	datac => \UartRX|Equal3~1_combout\,
	datad => \UartRX|receive_register\(2),
	combout => \UartRX|Equal4~0_combout\);

\UartRX|w~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|w~1_combout\ = (\UartRX|w~q\) # ((\UartRX|w~0_combout\ & !\UartRX|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|w~q\,
	datab => \UartRX|w~0_combout\,
	datad => \UartRX|Equal4~0_combout\,
	combout => \UartRX|w~1_combout\);

\UartRX|w\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|w~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|w~q\);

\UartRX|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector15~0_combout\ = (\UartRX|ramAddr[0]~0_combout\ & (\UartRX|set_state.get_addr~q\ & \UartRX|w~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|ramAddr[0]~0_combout\,
	datab => \UartRX|set_state.get_addr~q\,
	datac => \UartRX|w~q\,
	combout => \UartRX|Selector15~0_combout\);

\UartRX|set_state.get_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|Selector15~0_combout\,
	ena => \UartRX|Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|set_state.get_data~q\);

\UartRX|Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector12~1_combout\ = (\UartRX|set_state.get_data~q\) # ((\UartRX|set_state.get_addr~q\ & !\UartRX|w~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|set_state.get_data~q\,
	datab => \UartRX|set_state.get_addr~q\,
	datad => \UartRX|w~q\,
	combout => \UartRX|Selector12~1_combout\);

\UartRX|Selector12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector12~2_combout\ = (!\UartRX|Selector14~0_combout\ & (!\UartRX|Selector12~0_combout\ & ((!\UartRX|Selector12~1_combout\) # (!\UartRX|set_state~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|Selector14~0_combout\,
	datab => \UartRX|Selector12~0_combout\,
	datac => \UartRX|set_state~10_combout\,
	datad => \UartRX|Selector12~1_combout\,
	combout => \UartRX|Selector12~2_combout\);

\UartRX|set_state.check_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|set_state.check_start~q\);

\UartRX|set_state.get_cmd~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|set_state.get_cmd~0_combout\ = (\UartRX|Equal3~1_combout\ & (\UartRX|state.WAIT_FOR_RX_START~q\ & (\UartRX|Equal3~2_combout\ & !\UartRX|set_state.check_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|Equal3~1_combout\,
	datab => \UartRX|state.WAIT_FOR_RX_START~q\,
	datac => \UartRX|Equal3~2_combout\,
	datad => \UartRX|set_state.check_start~q\,
	combout => \UartRX|set_state.get_cmd~0_combout\);

\UartRX|set_state~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|set_state~11_combout\ = (\UartRX|set_state~10_combout\) # ((\UartRX|set_state.check_start~q\ & \UartRX|Selector14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|set_state~10_combout\,
	datab => \UartRX|set_state.check_start~q\,
	datac => \UartRX|Selector14~0_combout\,
	combout => \UartRX|set_state~11_combout\);

\UartRX|set_state.get_cmd~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|set_state.get_cmd~1_combout\ = (\UartRX|set_state~11_combout\ & (\UartRX|set_state.get_cmd~0_combout\)) # (!\UartRX|set_state~11_combout\ & ((\UartRX|set_state.get_cmd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|set_state.get_cmd~0_combout\,
	datab => \UartRX|set_state.get_cmd~q\,
	datad => \UartRX|set_state~11_combout\,
	combout => \UartRX|set_state.get_cmd~1_combout\);

\UartRX|set_state.get_cmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|set_state.get_cmd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|set_state.get_cmd~q\);

\UartRX|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector3~2_combout\ = (\UartRX|send~q\ & (\UartRX|state.WAIT_FOR_STOP_BIT~q\ & ((\UartRX|Selector3~1_combout\) # (!\UartRX|set_state.get_cmd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|send~q\,
	datab => \UartRX|state.WAIT_FOR_STOP_BIT~q\,
	datac => \UartRX|Selector3~1_combout\,
	datad => \UartRX|set_state.get_cmd~q\,
	combout => \UartRX|Selector3~2_combout\);

\UartRX|Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|Selector3~3_combout\ = (\UartRX|Selector3~0_combout\) # ((\UartRX|Selector3~2_combout\) # ((\UartRX|w~0_combout\ & \UartRX|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|Selector3~0_combout\,
	datab => \UartRX|Selector3~2_combout\,
	datac => \UartRX|w~0_combout\,
	datad => \UartRX|Equal4~0_combout\,
	combout => \UartRX|Selector3~3_combout\);

\UartRX|send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|send~q\);

\UartTx|send_pause~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|send_pause~0_combout\ = (\UartTx|state.SET_FOR_TX_START~q\ & (\UartTx|send_pause~q\)) # (!\UartTx|state.SET_FOR_TX_START~q\ & ((\UartRX|send~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|send_pause~q\,
	datab => \UartRX|send~q\,
	datad => \UartTx|state.SET_FOR_TX_START~q\,
	combout => \UartTx|send_pause~0_combout\);

\UartTx|send_pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartTx|send_pause~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|send_pause~q\);

\UartTx|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector0~2_combout\ = (!\UartTx|state.SET_FOR_TX_START~q\ & ((\UartTx|send_pause~q\) # (!\UartRX|send~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|send_pause~q\,
	datac => \UartRX|send~q\,
	datad => \UartTx|state.SET_FOR_TX_START~q\,
	combout => \UartTx|Selector0~2_combout\);

\UartTx|bit_counter[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|bit_counter[2]~0_combout\ = (\UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\) # ((!\UartTx|state.SET_FOR_TX_START~q\ & ((\UartTx|send_pause~q\) # (!\UartRX|send~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\,
	datab => \UartTx|send_pause~q\,
	datac => \UartRX|send~q\,
	datad => \UartTx|state.SET_FOR_TX_START~q\,
	combout => \UartTx|bit_counter[2]~0_combout\);

\UartTx|Selector4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~12_combout\ = (!\UartTx|baudrate_counter\(1) & !\UartTx|baudrate_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UartTx|baudrate_counter\(1),
	datad => \UartTx|baudrate_counter\(0),
	combout => \UartTx|Selector4~12_combout\);

\UartTx|bit_counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|bit_counter[2]~1_combout\ = (\UartTx|bit_counter[2]~0_combout\) # ((\UartTx|state.SENDING_BITS~q\ & ((!\UartTx|Selector4~12_combout\) # (!\UartTx|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter[2]~0_combout\,
	datab => \UartTx|state.SENDING_BITS~q\,
	datac => \UartTx|Equal1~0_combout\,
	datad => \UartTx|Selector4~12_combout\,
	combout => \UartTx|bit_counter[2]~1_combout\);

\UartTx|bit_counter[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|bit_counter[0]~4_combout\ = (\UartTx|bit_counter\(0) & (\UartTx|bit_counter[2]~1_combout\)) # (!\UartTx|bit_counter\(0) & (!\UartTx|bit_counter[2]~1_combout\ & \UartTx|state.COUNT_BIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter\(0),
	datab => \UartTx|bit_counter[2]~1_combout\,
	datac => \UartTx|state.COUNT_BIT~q\,
	combout => \UartTx|bit_counter[0]~4_combout\);

\UartTx|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartTx|bit_counter[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|bit_counter\(0));

\UartTx|bit_counter[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|bit_counter[1]~3_combout\ = (\UartTx|bit_counter[2]~1_combout\ & (\UartTx|bit_counter\(1))) # (!\UartTx|bit_counter[2]~1_combout\ & (\UartTx|state.COUNT_BIT~q\ & (\UartTx|bit_counter\(1) $ (\UartTx|bit_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter\(1),
	datab => \UartTx|bit_counter[2]~1_combout\,
	datac => \UartTx|state.COUNT_BIT~q\,
	datad => \UartTx|bit_counter\(0),
	combout => \UartTx|bit_counter[1]~3_combout\);

\UartTx|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartTx|bit_counter[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|bit_counter\(1));

\UartTx|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Add1~1_combout\ = \UartTx|bit_counter\(3) $ (((\UartTx|bit_counter\(2) & (\UartTx|bit_counter\(1) & \UartTx|bit_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter\(3),
	datab => \UartTx|bit_counter\(2),
	datac => \UartTx|bit_counter\(1),
	datad => \UartTx|bit_counter\(0),
	combout => \UartTx|Add1~1_combout\);

\UartTx|bit_counter[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|bit_counter[3]~5_combout\ = (\UartTx|bit_counter[2]~1_combout\ & (\UartTx|bit_counter\(3))) # (!\UartTx|bit_counter[2]~1_combout\ & (((\UartTx|state.COUNT_BIT~q\ & \UartTx|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter\(3),
	datab => \UartTx|state.COUNT_BIT~q\,
	datac => \UartTx|Add1~1_combout\,
	datad => \UartTx|bit_counter[2]~1_combout\,
	combout => \UartTx|bit_counter[3]~5_combout\);

\UartTx|bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartTx|bit_counter[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|bit_counter\(3));

\UartTx|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Equal1~0_combout\ = (\UartTx|bit_counter\(0) & (\UartTx|bit_counter\(3) & (!\UartTx|bit_counter\(2) & !\UartTx|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter\(0),
	datab => \UartTx|bit_counter\(3),
	datac => \UartTx|bit_counter\(2),
	datad => \UartTx|bit_counter\(1),
	combout => \UartTx|Equal1~0_combout\);

\UartTx|Selector4~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~13_combout\ = (\UartTx|state.SENDING_BITS~q\ & \UartTx|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.SENDING_BITS~q\,
	datab => \UartTx|Equal1~0_combout\,
	combout => \UartTx|Selector4~13_combout\);

\UartTx|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector3~0_combout\ = (!\UartTx|state.COUNT_BIT~q\ & ((\UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\ & ((!\UartTx|Selector4~12_combout\))) # (!\UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\ & (\UartTx|Selector4~13_combout\ & \UartTx|Selector4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|Selector4~13_combout\,
	datab => \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\,
	datac => \UartTx|Selector4~12_combout\,
	datad => \UartTx|state.COUNT_BIT~q\,
	combout => \UartTx|Selector3~0_combout\);

\UartTx|state.WAIT_FOR_SEND_STOP_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartTx|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\);

\UartTx|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector0~3_combout\ = (!\UartTx|Selector0~2_combout\ & ((\UartTx|baudrate_counter\(1)) # ((\UartTx|baudrate_counter\(0)) # (!\UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|baudrate_counter\(1),
	datab => \UartTx|baudrate_counter\(0),
	datac => \UartTx|Selector0~2_combout\,
	datad => \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\,
	combout => \UartTx|Selector0~3_combout\);

\UartTx|state.SET_FOR_TX_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartTx|Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|state.SET_FOR_TX_START~q\);

\UartTx|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector11~0_combout\ = (!\UartTx|state.SET_FOR_TX_START~q\) # (!\UartTx|baudrate_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UartTx|baudrate_counter\(0),
	datad => \UartTx|state.SET_FOR_TX_START~q\,
	combout => \UartTx|Selector11~0_combout\);

\UartTx|baudrate_counter[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|baudrate_counter[1]~0_combout\ = (!\UartTx|state.COUNT_BIT~q\ & ((\UartTx|state.SET_FOR_TX_START~q\) # ((!\UartTx|send_pause~q\ & \UartRX|send~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.COUNT_BIT~q\,
	datab => \UartTx|send_pause~q\,
	datac => \UartRX|send~q\,
	datad => \UartTx|state.SET_FOR_TX_START~q\,
	combout => \UartTx|baudrate_counter[1]~0_combout\);

\UartTx|baudrate_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartTx|Selector11~0_combout\,
	ena => \UartTx|baudrate_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|baudrate_counter\(0));

\UartTx|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector10~0_combout\ = (\UartTx|baudrate_counter\(1) $ (!\UartTx|baudrate_counter\(0))) # (!\UartTx|state.SET_FOR_TX_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|baudrate_counter\(1),
	datab => \UartTx|baudrate_counter\(0),
	datad => \UartTx|state.SET_FOR_TX_START~q\,
	combout => \UartTx|Selector10~0_combout\);

\UartTx|baudrate_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartTx|Selector10~0_combout\,
	ena => \UartTx|baudrate_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|baudrate_counter\(1));

\UartTx|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector1~2_combout\ = (\UartTx|state.COUNT_BIT~q\) # ((\UartRX|send~q\ & (!\UartTx|send_pause~q\ & !\UartTx|state.SET_FOR_TX_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.COUNT_BIT~q\,
	datab => \UartRX|send~q\,
	datac => \UartTx|send_pause~q\,
	datad => \UartTx|state.SET_FOR_TX_START~q\,
	combout => \UartTx|Selector1~2_combout\);

\UartTx|Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector1~3_combout\ = (\UartTx|Selector1~2_combout\) # ((\UartTx|state.SENDING_BITS~q\ & ((\UartTx|baudrate_counter\(1)) # (\UartTx|baudrate_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|baudrate_counter\(1),
	datab => \UartTx|baudrate_counter\(0),
	datac => \UartTx|Selector1~2_combout\,
	datad => \UartTx|state.SENDING_BITS~q\,
	combout => \UartTx|Selector1~3_combout\);

\UartTx|state.SENDING_BITS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartTx|Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|state.SENDING_BITS~q\);

\UartTx|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector2~0_combout\ = (\UartTx|state.SENDING_BITS~q\ & (!\UartTx|Equal1~0_combout\ & (!\UartTx|baudrate_counter\(1) & !\UartTx|baudrate_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.SENDING_BITS~q\,
	datab => \UartTx|Equal1~0_combout\,
	datac => \UartTx|baudrate_counter\(1),
	datad => \UartTx|baudrate_counter\(0),
	combout => \UartTx|Selector2~0_combout\);

\UartTx|state.COUNT_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartTx|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|state.COUNT_BIT~q\);

\UartTx|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Add1~0_combout\ = \UartTx|bit_counter\(2) $ (((\UartTx|bit_counter\(1) & \UartTx|bit_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UartTx|bit_counter\(2),
	datac => \UartTx|bit_counter\(1),
	datad => \UartTx|bit_counter\(0),
	combout => \UartTx|Add1~0_combout\);

\UartTx|bit_counter[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|bit_counter[2]~2_combout\ = (\UartTx|bit_counter[2]~1_combout\ & (\UartTx|bit_counter\(2))) # (!\UartTx|bit_counter[2]~1_combout\ & (((\UartTx|state.COUNT_BIT~q\ & \UartTx|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter\(2),
	datab => \UartTx|state.COUNT_BIT~q\,
	datac => \UartTx|Add1~0_combout\,
	datad => \UartTx|bit_counter[2]~1_combout\,
	combout => \UartTx|bit_counter[2]~2_combout\);

\UartTx|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartTx|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|bit_counter\(2));

\UartRX|aclr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|aclr~0_combout\ = (\UartRX|w~0_combout\ & ((!\UartRX|Equal4~0_combout\))) # (!\UartRX|w~0_combout\ & (\UartRX|aclr~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartRX|aclr~q\,
	datac => \UartRX|w~0_combout\,
	datad => \UartRX|Equal4~0_combout\,
	combout => \UartRX|aclr~0_combout\);

\UartRX|aclr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|aclr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|aclr~q\);

\UartRX|ramWrData[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|ramWrData[0]~0_combout\ = (\CRX~input_o\ & (\UartRX|state.WAIT_FOR_STOP_BIT~q\ & (\UartRX|Equal2~0_combout\ & \UartRX|set_state.get_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRX~input_o\,
	datab => \UartRX|state.WAIT_FOR_STOP_BIT~q\,
	datac => \UartRX|Equal2~0_combout\,
	datad => \UartRX|set_state.get_data~q\,
	combout => \UartRX|ramWrData[0]~0_combout\);

\UartRX|ramWrData[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(1),
	ena => \UartRX|ramWrData[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|ramWrData\(1));

\UartRX|ramAddr[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartRX|ramAddr[0]~1_combout\ = (\CRX~input_o\ & (\UartRX|state.WAIT_FOR_STOP_BIT~q\ & (\UartRX|Equal2~0_combout\ & \UartRX|set_state.get_addr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CRX~input_o\,
	datab => \UartRX|state.WAIT_FOR_STOP_BIT~q\,
	datac => \UartRX|Equal2~0_combout\,
	datad => \UartRX|set_state.get_addr~q\,
	combout => \UartRX|ramAddr[0]~1_combout\);

\UartRX|ramAddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(0),
	ena => \UartRX|ramAddr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|ramAddr\(0));

\UartRX|ramAddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(1),
	ena => \UartRX|ramAddr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|ramAddr\(1));

\UartRX|ramAddr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(2),
	ena => \UartRX|ramAddr[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|ramAddr\(2));

\Ram|altsyncram_component|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:Ram|altsyncram:altsyncram_component|altsyncram_g3p3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 3,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \UartRX|aclr~q\,
	portare => VCC,
	clk0 => \Clk_i~input_o\,
	clr0 => \UartRX|aclr~q\,
	portadatain => \Ram|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \Ram|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Ram|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\UartRX|ramWrData[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(0),
	ena => \UartRX|ramWrData[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|ramWrData\(0));

\Ram|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:Ram|altsyncram:altsyncram_component|altsyncram_g3p3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 3,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \UartRX|aclr~q\,
	portare => VCC,
	clk0 => \Clk_i~input_o\,
	clr0 => \UartRX|aclr~q\,
	portadatain => \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\UartTx|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Mux0~0_combout\ = (\UartTx|bit_counter\(1) & (((\UartTx|bit_counter\(0))))) # (!\UartTx|bit_counter\(1) & ((\UartTx|bit_counter\(0) & (\Ram|altsyncram_component|auto_generated|q_a\(1))) # (!\UartTx|bit_counter\(0) & 
-- ((\Ram|altsyncram_component|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter\(1),
	datab => \Ram|altsyncram_component|auto_generated|q_a\(1),
	datac => \UartTx|bit_counter\(0),
	datad => \Ram|altsyncram_component|auto_generated|q_a\(0),
	combout => \UartTx|Mux0~0_combout\);

\UartRX|ramWrData[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(3),
	ena => \UartRX|ramWrData[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|ramWrData\(3));

\Ram|altsyncram_component|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:Ram|altsyncram:altsyncram_component|altsyncram_g3p3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 3,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \UartRX|aclr~q\,
	portare => VCC,
	clk0 => \Clk_i~input_o\,
	clr0 => \UartRX|aclr~q\,
	portadatain => \Ram|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \Ram|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Ram|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\UartTx|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~0_combout\ = (!\UartTx|bit_counter\(2) & ((\UartTx|bit_counter\(1) & ((\Ram|altsyncram_component|auto_generated|q_a\(3)) # (!\UartTx|Mux0~0_combout\))) # (!\UartTx|bit_counter\(1) & (\UartTx|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter\(2),
	datab => \UartTx|bit_counter\(1),
	datac => \UartTx|Mux0~0_combout\,
	datad => \Ram|altsyncram_component|auto_generated|q_a\(3),
	combout => \UartTx|Selector4~0_combout\);

\UartTx|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~1_combout\ = (\UartTx|state.SENDING_BITS~q\ & (((\UartTx|baudrate_counter\(1)) # (\UartTx|baudrate_counter\(0))))) # (!\UartTx|state.SENDING_BITS~q\ & (\UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\ & ((\UartTx|baudrate_counter\(1)) # 
-- (\UartTx|baudrate_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.SENDING_BITS~q\,
	datab => \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\,
	datac => \UartTx|baudrate_counter\(1),
	datad => \UartTx|baudrate_counter\(0),
	combout => \UartTx|Selector4~1_combout\);

\UartTx|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~2_combout\ = (\UartTx|state.COUNT_BIT~q\) # ((\UartTx|send_pause~q\ & !\UartTx|state.SET_FOR_TX_START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.COUNT_BIT~q\,
	datab => \UartTx|send_pause~q\,
	datad => \UartTx|state.SET_FOR_TX_START~q\,
	combout => \UartTx|Selector4~2_combout\);

\UartTx|Selector4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~3_combout\ = (\UartTx|Selector4~1_combout\) # ((\UartTx|Selector4~2_combout\) # ((\UartTx|state.SENDING_BITS~q\ & \UartTx|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|Selector4~1_combout\,
	datab => \UartTx|Selector4~2_combout\,
	datac => \UartTx|state.SENDING_BITS~q\,
	datad => \UartTx|Equal1~0_combout\,
	combout => \UartTx|Selector4~3_combout\);

\UartTx|sending_register[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|sending_register[9]~0_combout\ = (\UartTx|sending_register\(9)) # ((\UartRX|send~q\ & (!\UartTx|send_pause~q\ & !\UartTx|state.SET_FOR_TX_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|sending_register\(9),
	datab => \UartRX|send~q\,
	datac => \UartTx|send_pause~q\,
	datad => \UartTx|state.SET_FOR_TX_START~q\,
	combout => \UartTx|sending_register[9]~0_combout\);

\UartTx|sending_register[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartTx|sending_register[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|sending_register\(9));

\UartTx|Selector4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~4_combout\ = (\UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\ & (\UartTx|sending_register\(9) & (!\UartTx|baudrate_counter\(1) & !\UartTx|baudrate_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.WAIT_FOR_SEND_STOP_BIT~q\,
	datab => \UartTx|sending_register\(9),
	datac => \UartTx|baudrate_counter\(1),
	datad => \UartTx|baudrate_counter\(0),
	combout => \UartTx|Selector4~4_combout\);

\UartTx|Selector4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~5_combout\ = (!\UartTx|state.SET_FOR_TX_START~q\ & !\UartRX|send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.SET_FOR_TX_START~q\,
	datab => \UartRX|send~q\,
	combout => \UartTx|Selector4~5_combout\);

\UartTx|Selector4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~6_combout\ = (\UartTx|Selector4~4_combout\) # ((\UartTx|Selector4~5_combout\) # ((\UartTx|tx~q\ & \UartTx|Selector4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|tx~q\,
	datab => \UartTx|Selector4~3_combout\,
	datac => \UartTx|Selector4~4_combout\,
	datad => \UartTx|Selector4~5_combout\,
	combout => \UartTx|Selector4~6_combout\);

\UartRX|ramWrData[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(2),
	ena => \UartRX|ramWrData[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|ramWrData\(2));

\Ram|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:Ram|altsyncram:altsyncram_component|altsyncram_g3p3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 3,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \UartRX|aclr~q\,
	portare => VCC,
	clk0 => \Clk_i~input_o\,
	clr0 => \UartRX|aclr~q\,
	portadatain => \Ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \Ram|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\UartTx|Selector4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~7_combout\ = (\UartTx|Selector4~6_combout\) # ((\UartTx|Selector2~0_combout\ & ((\Ram|altsyncram_component|auto_generated|q_a\(2)) # (\UartTx|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|Selector2~0_combout\,
	datab => \Ram|altsyncram_component|auto_generated|q_a\(2),
	datac => \UartTx|Mux0~0_combout\,
	datad => \UartTx|Selector4~6_combout\,
	combout => \UartTx|Selector4~7_combout\);

\UartRX|ramWrData[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(6),
	ena => \UartRX|ramWrData[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|ramWrData\(6));

\Ram|altsyncram_component|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:Ram|altsyncram:altsyncram_component|altsyncram_g3p3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 3,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \UartRX|aclr~q\,
	portare => VCC,
	clk0 => \Clk_i~input_o\,
	clr0 => \UartRX|aclr~q\,
	portadatain => \Ram|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \Ram|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Ram|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\UartRX|ramWrData[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(5),
	ena => \UartRX|ramWrData[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|ramWrData\(5));

\Ram|altsyncram_component|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:Ram|altsyncram:altsyncram_component|altsyncram_g3p3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 3,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \UartRX|aclr~q\,
	portare => VCC,
	clk0 => \Clk_i~input_o\,
	clr0 => \UartRX|aclr~q\,
	portadatain => \Ram|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \Ram|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Ram|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\UartRX|ramWrData[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(4),
	ena => \UartRX|ramWrData[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|ramWrData\(4));

\Ram|altsyncram_component|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:Ram|altsyncram:altsyncram_component|altsyncram_g3p3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 3,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \UartRX|aclr~q\,
	portare => VCC,
	clk0 => \Clk_i~input_o\,
	clr0 => \UartRX|aclr~q\,
	portadatain => \Ram|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \Ram|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Ram|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\UartTx|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Mux0~1_combout\ = (\UartTx|bit_counter\(1) & (((\UartTx|bit_counter\(0))))) # (!\UartTx|bit_counter\(1) & ((\UartTx|bit_counter\(0) & (\Ram|altsyncram_component|auto_generated|q_a\(5))) # (!\UartTx|bit_counter\(0) & 
-- ((\Ram|altsyncram_component|auto_generated|q_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|bit_counter\(1),
	datab => \Ram|altsyncram_component|auto_generated|q_a\(5),
	datac => \UartTx|bit_counter\(0),
	datad => \Ram|altsyncram_component|auto_generated|q_a\(4),
	combout => \UartTx|Mux0~1_combout\);

\UartTx|Selector4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~8_combout\ = (\UartTx|state.SENDING_BITS~q\ & (\UartTx|bit_counter\(2) & (!\UartTx|baudrate_counter\(1) & !\UartTx|baudrate_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|state.SENDING_BITS~q\,
	datab => \UartTx|bit_counter\(2),
	datac => \UartTx|baudrate_counter\(1),
	datad => \UartTx|baudrate_counter\(0),
	combout => \UartTx|Selector4~8_combout\);

\UartRX|ramWrData[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartRX|receive_register\(7),
	ena => \UartRX|ramWrData[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartRX|ramWrData\(7));

\Ram|altsyncram_component|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:Ram|altsyncram:altsyncram_component|altsyncram_g3p3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 3,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \UartRX|aclr~q\,
	portare => VCC,
	clk0 => \Clk_i~input_o\,
	clr0 => \UartRX|aclr~q\,
	portadatain => \Ram|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \Ram|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Ram|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\UartTx|Selector4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~9_combout\ = (\UartTx|Selector4~8_combout\ & ((\UartTx|bit_counter\(1) & ((\Ram|altsyncram_component|auto_generated|q_a\(7)) # (!\UartTx|Mux0~1_combout\))) # (!\UartTx|bit_counter\(1) & (\UartTx|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|Selector4~8_combout\,
	datab => \UartTx|bit_counter\(1),
	datac => \UartTx|Mux0~1_combout\,
	datad => \Ram|altsyncram_component|auto_generated|q_a\(7),
	combout => \UartTx|Selector4~9_combout\);

\UartTx|Selector4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~10_combout\ = (\UartTx|Selector4~9_combout\ & ((\Ram|altsyncram_component|auto_generated|q_a\(6)) # (\UartTx|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ram|altsyncram_component|auto_generated|q_a\(6),
	datab => \UartTx|Mux0~1_combout\,
	datac => \UartTx|Selector4~9_combout\,
	combout => \UartTx|Selector4~10_combout\);

\UartTx|Selector4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UartTx|Selector4~11_combout\ = (\UartTx|Selector4~10_combout\) # ((\UartTx|Selector4~0_combout\ & ((\UartTx|Selector4~7_combout\))) # (!\UartTx|Selector4~0_combout\ & (\UartTx|Selector4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UartTx|Selector4~0_combout\,
	datab => \UartTx|Selector4~6_combout\,
	datac => \UartTx|Selector4~7_combout\,
	datad => \UartTx|Selector4~10_combout\,
	combout => \UartTx|Selector4~11_combout\);

\UartTx|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_i~input_o\,
	d => \UartTx|Selector4~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UartTx|tx~q\);
END structure;


