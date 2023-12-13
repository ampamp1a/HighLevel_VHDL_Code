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

-- DATE "09/18/2023 09:28:10"

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

ENTITY 	spi_controller IS
    PORT (
	i_clk : IN std_logic;
	i_rstb : IN std_logic;
	i_tx_start : IN std_logic;
	o_tx_end : OUT std_logic;
	i_data_parallel : IN std_logic_vector(7 DOWNTO 0);
	o_data_parallel : OUT std_logic_vector(7 DOWNTO 0);
	o_sclk : OUT std_logic;
	o_ss : OUT std_logic;
	o_mosi : OUT std_logic;
	i_miso : IN std_logic
	);
END spi_controller;

ARCHITECTURE structure OF spi_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_rstb : std_logic;
SIGNAL ww_i_tx_start : std_logic;
SIGNAL ww_o_tx_end : std_logic;
SIGNAL ww_i_data_parallel : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_data_parallel : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_sclk : std_logic;
SIGNAL ww_o_ss : std_logic;
SIGNAL ww_o_mosi : std_logic;
SIGNAL ww_i_miso : std_logic;
SIGNAL \o_tx_end~output_o\ : std_logic;
SIGNAL \o_data_parallel[0]~output_o\ : std_logic;
SIGNAL \o_data_parallel[1]~output_o\ : std_logic;
SIGNAL \o_data_parallel[2]~output_o\ : std_logic;
SIGNAL \o_data_parallel[3]~output_o\ : std_logic;
SIGNAL \o_data_parallel[4]~output_o\ : std_logic;
SIGNAL \o_data_parallel[5]~output_o\ : std_logic;
SIGNAL \o_data_parallel[6]~output_o\ : std_logic;
SIGNAL \o_data_parallel[7]~output_o\ : std_logic;
SIGNAL \o_sclk~output_o\ : std_logic;
SIGNAL \o_ss~output_o\ : std_logic;
SIGNAL \o_mosi~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \r_counter_clock[0]~8_combout\ : std_logic;
SIGNAL \i_rstb~input_o\ : std_logic;
SIGNAL \i_tx_start~input_o\ : std_logic;
SIGNAL \r_tx_start~q\ : std_logic;
SIGNAL \r_counter_clock[6]~21\ : std_logic;
SIGNAL \r_counter_clock[7]~23_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \r_sclk_fall~0_combout\ : std_logic;
SIGNAL \r_sclk_rise~0_combout\ : std_logic;
SIGNAL \r_sclk_rise~q\ : std_logic;
SIGNAL \r_counter_data[2]~1_combout\ : std_logic;
SIGNAL \r_counter_data[0]~3_combout\ : std_logic;
SIGNAL \r_counter_data[1]~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \r_counter_data[2]~0_combout\ : std_logic;
SIGNAL \p_comb~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \r_st_present.ST_TX_RX~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \r_st_present.ST_END~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \r_st_present.ST_RESET~q\ : std_logic;
SIGNAL \r_counter_clock_ena~q\ : std_logic;
SIGNAL \r_counter_clock[7]~22_combout\ : std_logic;
SIGNAL \r_counter_clock[0]~9\ : std_logic;
SIGNAL \r_counter_clock[1]~10_combout\ : std_logic;
SIGNAL \r_counter_clock[1]~11\ : std_logic;
SIGNAL \r_counter_clock[2]~12_combout\ : std_logic;
SIGNAL \r_counter_clock[2]~13\ : std_logic;
SIGNAL \r_counter_clock[3]~14_combout\ : std_logic;
SIGNAL \r_counter_clock[3]~15\ : std_logic;
SIGNAL \r_counter_clock[4]~16_combout\ : std_logic;
SIGNAL \r_counter_clock[4]~17\ : std_logic;
SIGNAL \r_counter_clock[5]~18_combout\ : std_logic;
SIGNAL \r_counter_clock[5]~19\ : std_logic;
SIGNAL \r_counter_clock[6]~20_combout\ : std_logic;
SIGNAL \r_sclk_fall~1_combout\ : std_logic;
SIGNAL \r_sclk_fall~2_combout\ : std_logic;
SIGNAL \r_sclk_fall~q\ : std_logic;
SIGNAL \o_tx_end~0_combout\ : std_logic;
SIGNAL \o_tx_end~reg0_q\ : std_logic;
SIGNAL \i_miso~input_o\ : std_logic;
SIGNAL \r_rx_data[0]~0_combout\ : std_logic;
SIGNAL \o_data_parallel[0]~reg0_q\ : std_logic;
SIGNAL \o_data_parallel[1]~reg0_q\ : std_logic;
SIGNAL \o_data_parallel[2]~reg0_q\ : std_logic;
SIGNAL \o_data_parallel[3]~reg0_q\ : std_logic;
SIGNAL \o_data_parallel[4]~reg0_q\ : std_logic;
SIGNAL \o_data_parallel[5]~reg0_q\ : std_logic;
SIGNAL \o_data_parallel[6]~reg0_q\ : std_logic;
SIGNAL \o_data_parallel[7]~reg0_q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \o_sclk~reg0_q\ : std_logic;
SIGNAL \o_ss~reg0_q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \i_data_parallel[0]~input_o\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \i_data_parallel[1]~input_o\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \r_tx_data[7]~0_combout\ : std_logic;
SIGNAL \i_data_parallel[2]~input_o\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \i_data_parallel[3]~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \i_data_parallel[4]~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \i_data_parallel[5]~input_o\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \i_data_parallel[6]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \i_data_parallel[7]~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \o_mosi~reg0_q\ : std_logic;
SIGNAL r_counter_clock : std_logic_vector(7 DOWNTO 0);
SIGNAL r_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL r_tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL r_counter_data : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_o_mosi~reg0_q\ : std_logic;
SIGNAL \ALT_INV_o_ss~reg0_q\ : std_logic;
SIGNAL \ALT_INV_o_sclk~reg0_q\ : std_logic;

BEGIN

ww_i_clk <= i_clk;
ww_i_rstb <= i_rstb;
ww_i_tx_start <= i_tx_start;
o_tx_end <= ww_o_tx_end;
ww_i_data_parallel <= i_data_parallel;
o_data_parallel <= ww_o_data_parallel;
o_sclk <= ww_o_sclk;
o_ss <= ww_o_ss;
o_mosi <= ww_o_mosi;
ww_i_miso <= i_miso;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_o_mosi~reg0_q\ <= NOT \o_mosi~reg0_q\;
\ALT_INV_o_ss~reg0_q\ <= NOT \o_ss~reg0_q\;
\ALT_INV_o_sclk~reg0_q\ <= NOT \o_sclk~reg0_q\;

\o_tx_end~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_tx_end~reg0_q\,
	devoe => ww_devoe,
	o => \o_tx_end~output_o\);

\o_data_parallel[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[0]~output_o\);

\o_data_parallel[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[1]~output_o\);

\o_data_parallel[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[2]~output_o\);

\o_data_parallel[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[3]~output_o\);

\o_data_parallel[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[4]~output_o\);

\o_data_parallel[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[5]~output_o\);

\o_data_parallel[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[6]~output_o\);

\o_data_parallel[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[7]~output_o\);

\o_sclk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_sclk~reg0_q\,
	devoe => ww_devoe,
	o => \o_sclk~output_o\);

\o_ss~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_ss~reg0_q\,
	devoe => ww_devoe,
	o => \o_ss~output_o\);

\o_mosi~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_mosi~reg0_q\,
	devoe => ww_devoe,
	o => \o_mosi~output_o\);

\i_clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

\r_counter_clock[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_counter_clock[0]~8_combout\ = r_counter_clock(0) $ (VCC)
-- \r_counter_clock[0]~9\ = CARRY(r_counter_clock(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_clock(0),
	datad => VCC,
	combout => \r_counter_clock[0]~8_combout\,
	cout => \r_counter_clock[0]~9\);

\i_rstb~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rstb,
	o => \i_rstb~input_o\);

\i_tx_start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_tx_start,
	o => \i_tx_start~input_o\);

r_tx_start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \i_tx_start~input_o\,
	clrn => \i_rstb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_tx_start~q\);

\r_counter_clock[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_counter_clock[6]~20_combout\ = (r_counter_clock(6) & (\r_counter_clock[5]~19\ $ (GND))) # (!r_counter_clock(6) & (!\r_counter_clock[5]~19\ & VCC))
-- \r_counter_clock[6]~21\ = CARRY((r_counter_clock(6) & !\r_counter_clock[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_clock(6),
	datad => VCC,
	cin => \r_counter_clock[5]~19\,
	combout => \r_counter_clock[6]~20_combout\,
	cout => \r_counter_clock[6]~21\);

\r_counter_clock[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_counter_clock[7]~23_combout\ = r_counter_clock(7) $ (\r_counter_clock[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_clock(7),
	cin => \r_counter_clock[6]~21\,
	combout => \r_counter_clock[7]~23_combout\);

\r_counter_clock[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_counter_clock[7]~23_combout\,
	clrn => \i_rstb~input_o\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(7));

\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (r_counter_clock(5)) # ((!r_counter_clock(7)) # (!r_counter_clock(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_clock(5),
	datac => r_counter_clock(2),
	datad => r_counter_clock(7),
	combout => \Equal1~0_combout\);

\r_sclk_fall~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_sclk_fall~0_combout\ = (r_counter_clock(0) & (r_counter_clock(1) & (!r_counter_clock(3) & !r_counter_clock(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_clock(0),
	datab => r_counter_clock(1),
	datac => r_counter_clock(3),
	datad => r_counter_clock(4),
	combout => \r_sclk_fall~0_combout\);

\r_sclk_rise~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_sclk_rise~0_combout\ = (!\Equal1~0_combout\ & (r_counter_clock(6) & (\r_sclk_fall~0_combout\ & \r_counter_clock_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => r_counter_clock(6),
	datac => \r_sclk_fall~0_combout\,
	datad => \r_counter_clock_ena~q\,
	combout => \r_sclk_rise~0_combout\);

r_sclk_rise : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_sclk_rise~0_combout\,
	clrn => \i_rstb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sclk_rise~q\);

\r_counter_data[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_counter_data[2]~1_combout\ = (\r_st_present.ST_TX_RX~q\ & (((r_counter_data(2) & \Add0~0_combout\)) # (!\r_sclk_rise~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_st_present.ST_TX_RX~q\,
	datab => r_counter_data(2),
	datac => \Add0~0_combout\,
	datad => \r_sclk_rise~q\,
	combout => \r_counter_data[2]~1_combout\);

\r_counter_data[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_counter_data[0]~3_combout\ = (r_counter_data(0) & ((\r_counter_data[2]~1_combout\))) # (!r_counter_data(0) & (\r_st_present.ST_TX_RX~q\ & !\r_counter_data[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_st_present.ST_TX_RX~q\,
	datac => r_counter_data(0),
	datad => \r_counter_data[2]~1_combout\,
	combout => \r_counter_data[0]~3_combout\);

\r_counter_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_counter_data[0]~3_combout\,
	clrn => \i_rstb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_data(0));

\r_counter_data[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_counter_data[1]~2_combout\ = (\r_counter_data[2]~1_combout\ & (((r_counter_data(1))))) # (!\r_counter_data[2]~1_combout\ & (\r_st_present.ST_TX_RX~q\ & (r_counter_data(0) $ (r_counter_data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_data(0),
	datab => \r_st_present.ST_TX_RX~q\,
	datac => \r_counter_data[2]~1_combout\,
	datad => r_counter_data(1),
	combout => \r_counter_data[1]~2_combout\);

\r_counter_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_counter_data[1]~2_combout\,
	clrn => \i_rstb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_data(1));

\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (r_counter_data(1) & r_counter_data(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_data(1),
	datab => r_counter_data(0),
	combout => \Add0~0_combout\);

\r_counter_data[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_counter_data[2]~0_combout\ = (\r_st_present.ST_TX_RX~q\ & ((r_counter_data(2)) # ((\r_sclk_rise~q\ & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sclk_rise~q\,
	datab => \Add0~0_combout\,
	datac => r_counter_data(2),
	datad => \r_st_present.ST_TX_RX~q\,
	combout => \r_counter_data[2]~0_combout\);

\r_counter_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_counter_data[2]~0_combout\,
	clrn => \i_rstb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_data(2));

\p_comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \p_comb~0_combout\ = (\r_sclk_rise~q\ & (r_counter_data(2) & (r_counter_data(1) & r_counter_data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sclk_rise~q\,
	datab => r_counter_data(2),
	datac => r_counter_data(1),
	datad => r_counter_data(0),
	combout => \p_comb~0_combout\);

\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\r_st_present.ST_TX_RX~q\ & (((\r_tx_start~q\ & !\r_st_present.ST_RESET~q\)) # (!\p_comb~0_combout\))) # (!\r_st_present.ST_TX_RX~q\ & (\r_tx_start~q\ & ((!\r_st_present.ST_RESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_st_present.ST_TX_RX~q\,
	datab => \r_tx_start~q\,
	datac => \p_comb~0_combout\,
	datad => \r_st_present.ST_RESET~q\,
	combout => \Selector1~0_combout\);

\r_st_present.ST_TX_RX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \Selector1~0_combout\,
	clrn => \i_rstb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_st_present.ST_TX_RX~q\);

\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\r_st_present.ST_TX_RX~q\ & ((\p_comb~0_combout\) # ((\r_st_present.ST_END~q\ & !\r_sclk_fall~q\)))) # (!\r_st_present.ST_TX_RX~q\ & (((\r_st_present.ST_END~q\ & !\r_sclk_fall~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_st_present.ST_TX_RX~q\,
	datab => \p_comb~0_combout\,
	datac => \r_st_present.ST_END~q\,
	datad => \r_sclk_fall~q\,
	combout => \Selector2~0_combout\);

\r_st_present.ST_END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \Selector2~0_combout\,
	clrn => \i_rstb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_st_present.ST_END~q\);

\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\r_sclk_fall~q\ & (!\r_st_present.ST_END~q\ & ((\r_st_present.ST_RESET~q\) # (\r_tx_start~q\)))) # (!\r_sclk_fall~q\ & (((\r_st_present.ST_RESET~q\) # (\r_tx_start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sclk_fall~q\,
	datab => \r_st_present.ST_END~q\,
	datac => \r_st_present.ST_RESET~q\,
	datad => \r_tx_start~q\,
	combout => \Selector0~0_combout\);

\r_st_present.ST_RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \Selector0~0_combout\,
	clrn => \i_rstb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_st_present.ST_RESET~q\);

r_counter_clock_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_st_present.ST_RESET~q\,
	clrn => \i_rstb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_counter_clock_ena~q\);

\r_counter_clock[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_counter_clock[7]~22_combout\ = ((!\Equal1~0_combout\ & (r_counter_clock(6) & \r_sclk_fall~0_combout\))) # (!\r_counter_clock_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_counter_clock_ena~q\,
	datab => \Equal1~0_combout\,
	datac => r_counter_clock(6),
	datad => \r_sclk_fall~0_combout\,
	combout => \r_counter_clock[7]~22_combout\);

\r_counter_clock[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_counter_clock[0]~8_combout\,
	clrn => \i_rstb~input_o\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(0));

\r_counter_clock[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_counter_clock[1]~10_combout\ = (r_counter_clock(1) & (!\r_counter_clock[0]~9\)) # (!r_counter_clock(1) & ((\r_counter_clock[0]~9\) # (GND)))
-- \r_counter_clock[1]~11\ = CARRY((!\r_counter_clock[0]~9\) # (!r_counter_clock(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_clock(1),
	datad => VCC,
	cin => \r_counter_clock[0]~9\,
	combout => \r_counter_clock[1]~10_combout\,
	cout => \r_counter_clock[1]~11\);

\r_counter_clock[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_counter_clock[1]~10_combout\,
	clrn => \i_rstb~input_o\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(1));

\r_counter_clock[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_counter_clock[2]~12_combout\ = (r_counter_clock(2) & (\r_counter_clock[1]~11\ $ (GND))) # (!r_counter_clock(2) & (!\r_counter_clock[1]~11\ & VCC))
-- \r_counter_clock[2]~13\ = CARRY((r_counter_clock(2) & !\r_counter_clock[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_clock(2),
	datad => VCC,
	cin => \r_counter_clock[1]~11\,
	combout => \r_counter_clock[2]~12_combout\,
	cout => \r_counter_clock[2]~13\);

\r_counter_clock[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_counter_clock[2]~12_combout\,
	clrn => \i_rstb~input_o\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(2));

\r_counter_clock[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_counter_clock[3]~14_combout\ = (r_counter_clock(3) & (!\r_counter_clock[2]~13\)) # (!r_counter_clock(3) & ((\r_counter_clock[2]~13\) # (GND)))
-- \r_counter_clock[3]~15\ = CARRY((!\r_counter_clock[2]~13\) # (!r_counter_clock(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_clock(3),
	datad => VCC,
	cin => \r_counter_clock[2]~13\,
	combout => \r_counter_clock[3]~14_combout\,
	cout => \r_counter_clock[3]~15\);

\r_counter_clock[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_counter_clock[3]~14_combout\,
	clrn => \i_rstb~input_o\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(3));

\r_counter_clock[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_counter_clock[4]~16_combout\ = (r_counter_clock(4) & (\r_counter_clock[3]~15\ $ (GND))) # (!r_counter_clock(4) & (!\r_counter_clock[3]~15\ & VCC))
-- \r_counter_clock[4]~17\ = CARRY((r_counter_clock(4) & !\r_counter_clock[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_clock(4),
	datad => VCC,
	cin => \r_counter_clock[3]~15\,
	combout => \r_counter_clock[4]~16_combout\,
	cout => \r_counter_clock[4]~17\);

\r_counter_clock[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_counter_clock[4]~16_combout\,
	clrn => \i_rstb~input_o\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(4));

\r_counter_clock[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_counter_clock[5]~18_combout\ = (r_counter_clock(5) & (!\r_counter_clock[4]~17\)) # (!r_counter_clock(5) & ((\r_counter_clock[4]~17\) # (GND)))
-- \r_counter_clock[5]~19\ = CARRY((!\r_counter_clock[4]~17\) # (!r_counter_clock(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_clock(5),
	datad => VCC,
	cin => \r_counter_clock[4]~17\,
	combout => \r_counter_clock[5]~18_combout\,
	cout => \r_counter_clock[5]~19\);

\r_counter_clock[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_counter_clock[5]~18_combout\,
	clrn => \i_rstb~input_o\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(5));

\r_counter_clock[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_counter_clock[6]~20_combout\,
	clrn => \i_rstb~input_o\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(6));

\r_sclk_fall~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_sclk_fall~1_combout\ = (\r_counter_clock_ena~q\ & (r_counter_clock(5) & (!r_counter_clock(2) & !r_counter_clock(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_counter_clock_ena~q\,
	datab => r_counter_clock(5),
	datac => r_counter_clock(2),
	datad => r_counter_clock(7),
	combout => \r_sclk_fall~1_combout\);

\r_sclk_fall~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_sclk_fall~2_combout\ = (r_counter_clock(6) & (\r_sclk_fall~0_combout\ & \r_sclk_fall~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_clock(6),
	datab => \r_sclk_fall~0_combout\,
	datac => \r_sclk_fall~1_combout\,
	combout => \r_sclk_fall~2_combout\);

r_sclk_fall : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_sclk_fall~2_combout\,
	clrn => \i_rstb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sclk_fall~q\);

\o_tx_end~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \o_tx_end~0_combout\ = (\r_sclk_fall~q\ & \r_st_present.ST_END~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sclk_fall~q\,
	datab => \r_st_present.ST_END~q\,
	combout => \o_tx_end~0_combout\);

\o_tx_end~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \o_tx_end~0_combout\,
	clrn => \i_rstb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_tx_end~reg0_q\);

\i_miso~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_miso,
	o => \i_miso~input_o\);

\r_rx_data[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_rx_data[0]~0_combout\ = (\r_sclk_rise~q\ & \r_st_present.ST_TX_RX~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sclk_rise~q\,
	datab => \r_st_present.ST_TX_RX~q\,
	combout => \r_rx_data[0]~0_combout\);

\r_rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \i_miso~input_o\,
	clrn => \i_rstb~input_o\,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(0));

\o_data_parallel[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => r_rx_data(0),
	clrn => \i_rstb~input_o\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[0]~reg0_q\);

\r_rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => r_rx_data(0),
	clrn => \i_rstb~input_o\,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(1));

\o_data_parallel[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => r_rx_data(1),
	clrn => \i_rstb~input_o\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[1]~reg0_q\);

\r_rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => r_rx_data(1),
	clrn => \i_rstb~input_o\,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(2));

\o_data_parallel[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => r_rx_data(2),
	clrn => \i_rstb~input_o\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[2]~reg0_q\);

\r_rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => r_rx_data(2),
	clrn => \i_rstb~input_o\,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(3));

\o_data_parallel[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => r_rx_data(3),
	clrn => \i_rstb~input_o\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[3]~reg0_q\);

\r_rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => r_rx_data(3),
	clrn => \i_rstb~input_o\,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(4));

\o_data_parallel[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => r_rx_data(4),
	clrn => \i_rstb~input_o\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[4]~reg0_q\);

\r_rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => r_rx_data(4),
	clrn => \i_rstb~input_o\,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(5));

\o_data_parallel[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => r_rx_data(5),
	clrn => \i_rstb~input_o\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[5]~reg0_q\);

\r_rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => r_rx_data(5),
	clrn => \i_rstb~input_o\,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(6));

\o_data_parallel[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => r_rx_data(6),
	clrn => \i_rstb~input_o\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[6]~reg0_q\);

\r_rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => r_rx_data(6),
	clrn => \i_rstb~input_o\,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(7));

\o_data_parallel[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => r_rx_data(7),
	clrn => \i_rstb~input_o\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[7]~reg0_q\);

\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\r_sclk_rise~q\) # (((!\o_sclk~reg0_q\ & !\r_sclk_fall~q\)) # (!\r_st_present.ST_TX_RX~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sclk_rise~q\,
	datab => \o_sclk~reg0_q\,
	datac => \r_sclk_fall~q\,
	datad => \r_st_present.ST_TX_RX~q\,
	combout => \Selector3~0_combout\);

\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ((\o_sclk~reg0_q\ & \r_st_present.ST_END~q\)) # (!\Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datac => \o_sclk~reg0_q\,
	datad => \r_st_present.ST_END~q\,
	combout => \Selector3~1_combout\);

\o_sclk~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \Selector3~1_combout\,
	clrn => \i_rstb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_sclk~reg0_q\);

\o_ss~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \r_st_present.ST_RESET~q\,
	clrn => \i_rstb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_ss~reg0_q\);

\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\r_sclk_fall~q\ & (\r_st_present.ST_RESET~q\ & (!\r_st_present.ST_END~q\ & !\r_sclk_rise~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sclk_fall~q\,
	datab => \r_st_present.ST_RESET~q\,
	datac => \r_st_present.ST_END~q\,
	datad => \r_sclk_rise~q\,
	combout => \Selector12~0_combout\);

\i_data_parallel[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_parallel(0),
	o => \i_data_parallel[0]~input_o\);

\Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\Selector12~0_combout\) # ((\r_st_present.ST_RESET~q\ & (r_tx_data(0))) # (!\r_st_present.ST_RESET~q\ & ((\i_data_parallel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => r_tx_data(0),
	datac => \i_data_parallel[0]~input_o\,
	datad => \r_st_present.ST_RESET~q\,
	combout => \Selector12~1_combout\);

\r_tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \Selector12~1_combout\,
	clrn => \i_rstb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(0));

\i_data_parallel[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_parallel(1),
	o => \i_data_parallel[1]~input_o\);

\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\r_st_present.ST_RESET~q\ & (r_tx_data(0))) # (!\r_st_present.ST_RESET~q\ & ((\i_data_parallel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_tx_data(0),
	datab => \i_data_parallel[1]~input_o\,
	datad => \r_st_present.ST_RESET~q\,
	combout => \Selector11~0_combout\);

\r_tx_data[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \r_tx_data[7]~0_combout\ = (!\r_st_present.ST_END~q\ & (((!\r_sclk_rise~q\ & \r_sclk_fall~q\)) # (!\r_st_present.ST_TX_RX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_st_present.ST_END~q\,
	datab => \r_st_present.ST_TX_RX~q\,
	datac => \r_sclk_rise~q\,
	datad => \r_sclk_fall~q\,
	combout => \r_tx_data[7]~0_combout\);

\r_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \Selector11~0_combout\,
	clrn => \i_rstb~input_o\,
	ena => \r_tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(1));

\i_data_parallel[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_parallel(2),
	o => \i_data_parallel[2]~input_o\);

\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\r_st_present.ST_RESET~q\ & (r_tx_data(1))) # (!\r_st_present.ST_RESET~q\ & ((\i_data_parallel[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_tx_data(1),
	datab => \i_data_parallel[2]~input_o\,
	datad => \r_st_present.ST_RESET~q\,
	combout => \Selector10~0_combout\);

\r_tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \Selector10~0_combout\,
	clrn => \i_rstb~input_o\,
	ena => \r_tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(2));

\i_data_parallel[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_parallel(3),
	o => \i_data_parallel[3]~input_o\);

\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\r_st_present.ST_RESET~q\ & (r_tx_data(2))) # (!\r_st_present.ST_RESET~q\ & ((\i_data_parallel[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_tx_data(2),
	datab => \i_data_parallel[3]~input_o\,
	datad => \r_st_present.ST_RESET~q\,
	combout => \Selector9~0_combout\);

\r_tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \Selector9~0_combout\,
	clrn => \i_rstb~input_o\,
	ena => \r_tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(3));

\i_data_parallel[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_parallel(4),
	o => \i_data_parallel[4]~input_o\);

\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\r_st_present.ST_RESET~q\ & (r_tx_data(3))) # (!\r_st_present.ST_RESET~q\ & ((\i_data_parallel[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_tx_data(3),
	datab => \i_data_parallel[4]~input_o\,
	datad => \r_st_present.ST_RESET~q\,
	combout => \Selector8~0_combout\);

\r_tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \Selector8~0_combout\,
	clrn => \i_rstb~input_o\,
	ena => \r_tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(4));

\i_data_parallel[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_parallel(5),
	o => \i_data_parallel[5]~input_o\);

\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\r_st_present.ST_RESET~q\ & (r_tx_data(4))) # (!\r_st_present.ST_RESET~q\ & ((\i_data_parallel[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_tx_data(4),
	datab => \i_data_parallel[5]~input_o\,
	datad => \r_st_present.ST_RESET~q\,
	combout => \Selector7~0_combout\);

\r_tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \Selector7~0_combout\,
	clrn => \i_rstb~input_o\,
	ena => \r_tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(5));

\i_data_parallel[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_parallel(6),
	o => \i_data_parallel[6]~input_o\);

\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\r_st_present.ST_RESET~q\ & (r_tx_data(5))) # (!\r_st_present.ST_RESET~q\ & ((\i_data_parallel[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_tx_data(5),
	datab => \i_data_parallel[6]~input_o\,
	datad => \r_st_present.ST_RESET~q\,
	combout => \Selector6~0_combout\);

\r_tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \Selector6~0_combout\,
	clrn => \i_rstb~input_o\,
	ena => \r_tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(6));

\i_data_parallel[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data_parallel(7),
	o => \i_data_parallel[7]~input_o\);

\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\r_st_present.ST_RESET~q\ & (r_tx_data(6))) # (!\r_st_present.ST_RESET~q\ & ((\i_data_parallel[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_tx_data(6),
	datab => \i_data_parallel[7]~input_o\,
	datad => \r_st_present.ST_RESET~q\,
	combout => \Selector5~0_combout\);

\r_tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \Selector5~0_combout\,
	clrn => \i_rstb~input_o\,
	ena => \r_tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(7));

\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\r_sclk_fall~q\ & (!\r_sclk_rise~q\ & (r_tx_data(7) $ (!\o_mosi~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sclk_fall~q\,
	datab => r_tx_data(7),
	datac => \r_sclk_rise~q\,
	datad => \o_mosi~reg0_q\,
	combout => \Selector4~0_combout\);

\Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\o_mosi~reg0_q\ & ((\r_st_present.ST_END~q\) # ((\r_st_present.ST_TX_RX~q\ & !\Selector4~0_combout\)))) # (!\o_mosi~reg0_q\ & (((\r_st_present.ST_TX_RX~q\ & \Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_st_present.ST_END~q\,
	datab => \r_st_present.ST_TX_RX~q\,
	datac => \o_mosi~reg0_q\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

\o_mosi~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \Selector4~1_combout\,
	clrn => \i_rstb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_mosi~reg0_q\);

ww_o_tx_end <= \o_tx_end~output_o\;

ww_o_data_parallel(0) <= \o_data_parallel[0]~output_o\;

ww_o_data_parallel(1) <= \o_data_parallel[1]~output_o\;

ww_o_data_parallel(2) <= \o_data_parallel[2]~output_o\;

ww_o_data_parallel(3) <= \o_data_parallel[3]~output_o\;

ww_o_data_parallel(4) <= \o_data_parallel[4]~output_o\;

ww_o_data_parallel(5) <= \o_data_parallel[5]~output_o\;

ww_o_data_parallel(6) <= \o_data_parallel[6]~output_o\;

ww_o_data_parallel(7) <= \o_data_parallel[7]~output_o\;

ww_o_sclk <= \o_sclk~output_o\;

ww_o_ss <= \o_ss~output_o\;

ww_o_mosi <= \o_mosi~output_o\;
END structure;


