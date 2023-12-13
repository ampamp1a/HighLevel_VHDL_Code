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

-- DATE "08/06/2023 08:59:04"

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

ENTITY 	WS2812_RGB_LED_1 IS
    PORT (
	CLK : IN std_logic;
	RST_N : IN std_logic;
	PB : IN std_logic;
	Q : OUT std_logic
	);
END WS2812_RGB_LED_1;

ARCHITECTURE structure OF WS2812_RGB_LED_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST_N : std_logic;
SIGNAL ww_PB : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \PB~input_o\ : std_logic;
SIGNAL \RST_N~input_o\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \state.S4~q\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \rgb_bits~0_combout\ : std_logic;
SIGNAL \state.S0~q\ : std_logic;
SIGNAL \bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \bit_cnt[2]~1_combout\ : std_logic;
SIGNAL \bit_cnt[0]~2_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \bit_cnt[1]~5_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \bit_cnt[2]~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \bit_cnt[4]~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \state.s5~q\ : std_logic;
SIGNAL \bt~0_combout\ : std_logic;
SIGNAL \bt~q\ : std_logic;
SIGNAL \color_index[0]~0_combout\ : std_logic;
SIGNAL \color_index[1]~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \baudrate_counter[0]~0_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \baudrate_counter[0]~1_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \state.S2~q\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \state.S3~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \state.S1~q\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \Selector29~2_combout\ : std_logic;
SIGNAL \Q~reg0_q\ : std_logic;
SIGNAL baudrate_counter : std_logic_vector(25 DOWNTO 0);
SIGNAL bit_cnt : std_logic_vector(4 DOWNTO 0);
SIGNAL rgb_bits : std_logic_vector(23 DOWNTO 0);
SIGNAL color_index : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_RST_N <= RST_N;
ww_PB <= PB;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Q~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q~reg0_q\,
	devoe => ww_devoe,
	o => \Q~output_o\);

\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

\PB~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB,
	o => \PB~input_o\);

\RST_N~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_N,
	o => \RST_N~input_o\);

\Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\state.S3~q\) # ((\state.S4~q\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S3~q\,
	datab => \state.S4~q\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \Selector34~0_combout\);

\state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector34~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S4~q\);

\Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\Equal0~4_combout\ & (\Equal0~7_combout\ & \state.S4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~7_combout\,
	datac => \state.S4~q\,
	combout => \Selector35~0_combout\);

\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = bit_cnt(0) $ (GND)
-- \Add1~1\ = CARRY(!bit_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

\Selector34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\state.S4~q\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S4~q\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \Selector34~1_combout\);

\rgb_bits~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rgb_bits~0_combout\ = ((\bt~q\) # (\PB~input_o\)) # (!\state.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s5~q\,
	datac => \bt~q\,
	datad => \PB~input_o\,
	combout => \rgb_bits~0_combout\);

\state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \rgb_bits~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S0~q\);

\bit_cnt[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_cnt[2]~0_combout\ = (\state.S0~q\ & (\rgb_bits~0_combout\ & !\state.S4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datac => \rgb_bits~0_combout\,
	datad => \state.S4~q\,
	combout => \bit_cnt[2]~0_combout\);

\bit_cnt[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_cnt[2]~1_combout\ = (!\Selector34~1_combout\ & (!\bit_cnt[2]~0_combout\ & ((!\Equal1~1_combout\) # (!\state.S4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~1_combout\,
	datab => \bit_cnt[2]~0_combout\,
	datac => \state.S4~q\,
	datad => \Equal1~1_combout\,
	combout => \bit_cnt[2]~1_combout\);

\bit_cnt[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_cnt[0]~2_combout\ = (\bit_cnt[2]~1_combout\ & (!\Add1~0_combout\ & (\Selector31~0_combout\))) # (!\bit_cnt[2]~1_combout\ & (((bit_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Selector31~0_combout\,
	datac => \bit_cnt[2]~1_combout\,
	datad => bit_cnt(0),
	combout => \bit_cnt[0]~2_combout\);

\bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \bit_cnt[0]~2_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(0));

\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (bit_cnt(3) & ((\bit_cnt[2]~0_combout\) # ((\Selector34~1_combout\ & \rgb_bits~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(3),
	datab => \bit_cnt[2]~0_combout\,
	datac => \Selector34~1_combout\,
	datad => \rgb_bits~0_combout\,
	combout => \Selector25~0_combout\);

\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (bit_cnt(1) & (!\Add1~1\)) # (!bit_cnt(1) & (\Add1~1\ & VCC))
-- \Add1~3\ = CARRY((bit_cnt(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

\bit_cnt[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_cnt[1]~5_combout\ = (\bit_cnt[2]~1_combout\ & (!\Add1~2_combout\ & (\Selector31~0_combout\))) # (!\bit_cnt[2]~1_combout\ & (((bit_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Selector31~0_combout\,
	datac => \bit_cnt[2]~1_combout\,
	datad => bit_cnt(1),
	combout => \bit_cnt[1]~5_combout\);

\bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \bit_cnt[1]~5_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(1));

\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (bit_cnt(2) & (\Add1~3\ $ (GND))) # (!bit_cnt(2) & ((GND) # (!\Add1~3\)))
-- \Add1~5\ = CARRY((!\Add1~3\) # (!bit_cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

\bit_cnt[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_cnt[2]~4_combout\ = (\bit_cnt[2]~1_combout\ & (!\Add1~4_combout\ & (\Selector31~0_combout\))) # (!\bit_cnt[2]~1_combout\ & (((bit_cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Selector31~0_combout\,
	datac => \bit_cnt[2]~1_combout\,
	datad => bit_cnt(2),
	combout => \bit_cnt[2]~4_combout\);

\bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \bit_cnt[2]~4_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(2));

\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (bit_cnt(3) & (\Add1~5\ & VCC)) # (!bit_cnt(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!bit_cnt(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

\Selector25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\Selector25~0_combout\) # ((\Selector31~0_combout\ & \Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~0_combout\,
	datab => \Selector31~0_combout\,
	datac => \Add1~6_combout\,
	combout => \Selector25~1_combout\);

\bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector25~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(3));

\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = bit_cnt(4) $ (!\Add1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(4),
	cin => \Add1~7\,
	combout => \Add1~8_combout\);

\bit_cnt[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bit_cnt[4]~3_combout\ = (\bit_cnt[2]~1_combout\ & (!\Add1~8_combout\ & (\Selector31~0_combout\))) # (!\bit_cnt[2]~1_combout\ & (((bit_cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Selector31~0_combout\,
	datac => \bit_cnt[2]~1_combout\,
	datad => bit_cnt(4),
	combout => \bit_cnt[4]~3_combout\);

\bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \bit_cnt[4]~3_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(4));

\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (bit_cnt(4) & (bit_cnt(2) & (bit_cnt(1) & !bit_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(4),
	datab => bit_cnt(2),
	datac => bit_cnt(1),
	datad => bit_cnt(3),
	combout => \Equal1~0_combout\);

\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (bit_cnt(0) & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(0),
	datab => \Equal1~0_combout\,
	combout => \Equal1~1_combout\);

\Selector35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (\Selector35~0_combout\ & ((\Equal1~1_combout\) # ((\state.s5~q\ & \rgb_bits~0_combout\)))) # (!\Selector35~0_combout\ & (((\state.s5~q\ & \rgb_bits~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \state.s5~q\,
	datad => \rgb_bits~0_combout\,
	combout => \Selector35~1_combout\);

\state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector35~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s5~q\);

\bt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bt~0_combout\ = (\RST_N~input_o\ & (!\PB~input_o\ & ((\state.s5~q\) # (\bt~q\)))) # (!\RST_N~input_o\ & (((\bt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB~input_o\,
	datab => \RST_N~input_o\,
	datac => \state.s5~q\,
	datad => \bt~q\,
	combout => \bt~0_combout\);

bt : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \bt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bt~q\);

\color_index[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \color_index[0]~0_combout\ = color_index(0) $ (((!\bt~q\ & (!\PB~input_o\ & \state.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => color_index(0),
	datab => \bt~q\,
	datac => \PB~input_o\,
	datad => \state.s5~q\,
	combout => \color_index[0]~0_combout\);

\color_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \color_index[0]~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_index(0));

\color_index[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \color_index[1]~1_combout\ = color_index(1) $ (((!\rgb_bits~0_combout\ & color_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => color_index(1),
	datac => \rgb_bits~0_combout\,
	datad => color_index(0),
	combout => \color_index[1]~1_combout\);

\color_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \color_index[1]~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => color_index(1));

\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (color_index(0) & (color_index(1) & !\state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => color_index(0),
	datab => color_index(1),
	datad => \state.S0~q\,
	combout => \Selector0~0_combout\);

\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (color_index(1) & (!\state.S0~q\ & !color_index(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => color_index(1),
	datac => \state.S0~q\,
	datad => color_index(0),
	combout => \Selector8~0_combout\);

\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (color_index(0) & (!\state.S0~q\ & !color_index(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => color_index(0),
	datac => \state.S0~q\,
	datad => color_index(1),
	combout => \Selector16~0_combout\);

\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\state.S0~q\ & ((\bt~q\) # ((\PB~input_o\) # (!\state.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datab => \bt~q\,
	datac => \PB~input_o\,
	datad => \state.s5~q\,
	combout => \Selector23~0_combout\);

\Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\Selector16~0_combout\) # ((\Selector23~0_combout\ & (rgb_bits(0) & !\Selector31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector23~0_combout\,
	datac => rgb_bits(0),
	datad => \Selector31~0_combout\,
	combout => \Selector23~1_combout\);

\rgb_bits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector23~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(0));

\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\Selector16~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(0),
	combout => \Selector22~0_combout\);

\rgb_bits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector22~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(1));

\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\Selector16~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(1),
	combout => \Selector21~0_combout\);

\rgb_bits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector21~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(2));

\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Selector16~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(2),
	combout => \Selector20~0_combout\);

\rgb_bits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector20~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(3));

\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\Selector16~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(3),
	combout => \Selector19~0_combout\);

\rgb_bits[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector19~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(4));

\Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\Selector16~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(4),
	combout => \Selector18~0_combout\);

\rgb_bits[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector18~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(5));

\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\Selector16~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(5),
	combout => \Selector17~0_combout\);

\rgb_bits[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector17~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(6));

\Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\Selector16~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(6),
	combout => \Selector16~1_combout\);

\rgb_bits[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector16~1_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(7));

\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\Selector8~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(7),
	combout => \Selector15~0_combout\);

\rgb_bits[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector15~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(8));

\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Selector8~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(8),
	combout => \Selector14~0_combout\);

\rgb_bits[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector14~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(9));

\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\Selector8~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(9),
	combout => \Selector13~0_combout\);

\rgb_bits[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector13~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(10));

\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Selector8~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(10),
	combout => \Selector12~0_combout\);

\rgb_bits[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector12~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(11));

\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\Selector8~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(11),
	combout => \Selector11~0_combout\);

\rgb_bits[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector11~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(12));

\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Selector8~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(12),
	combout => \Selector10~0_combout\);

\rgb_bits[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector10~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(13));

\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Selector8~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(13),
	combout => \Selector9~0_combout\);

\rgb_bits[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector9~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(14));

\Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector8~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(14),
	combout => \Selector8~1_combout\);

\rgb_bits[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector8~1_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(15));

\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Selector0~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(15),
	combout => \Selector7~0_combout\);

\rgb_bits[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector7~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(16));

\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Selector0~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(16),
	combout => \Selector6~0_combout\);

\rgb_bits[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector6~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(17));

\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Selector0~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(17),
	combout => \Selector5~0_combout\);

\rgb_bits[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector5~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(18));

\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector0~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(18),
	combout => \Selector4~0_combout\);

\rgb_bits[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector4~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(19));

\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Selector0~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(19),
	combout => \Selector3~0_combout\);

\rgb_bits[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector3~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(20));

\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Selector0~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(20),
	combout => \Selector2~0_combout\);

\rgb_bits[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector2~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(21));

\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Selector0~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(21),
	combout => \Selector1~0_combout\);

\rgb_bits[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector1~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(22));

\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\Selector31~0_combout\ & rgb_bits(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Selector31~0_combout\,
	datac => rgb_bits(22),
	combout => \Selector0~1_combout\);

\rgb_bits[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector0~1_combout\,
	clrn => \RST_N~input_o\,
	ena => \bit_cnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rgb_bits(23));

\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = baudrate_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(baudrate_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (baudrate_counter(1) & (\Add0~1\ & VCC)) # (!baudrate_counter(1) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!baudrate_counter(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

\Selector60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (!\state.S3~q\ & ((\state.S1~q\ & (rgb_bits(23))) # (!\state.S1~q\ & ((\Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rgb_bits(23),
	datab => \Add0~2_combout\,
	datac => \state.S1~q\,
	datad => \state.S3~q\,
	combout => \Selector60~0_combout\);

\baudrate_counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[0]~0_combout\ = (\RST_N~input_o\ & (\state.S0~q\ & !\state.s5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_N~input_o\,
	datab => \state.S0~q\,
	datad => \state.s5~q\,
	combout => \baudrate_counter[0]~0_combout\);

\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~4_combout\ & \Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

\baudrate_counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \baudrate_counter[0]~1_combout\ = (\baudrate_counter[0]~0_combout\ & (!\Selector35~0_combout\ & ((!\Equal0~8_combout\) # (!\state.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baudrate_counter[0]~0_combout\,
	datab => \state.S2~q\,
	datac => \Equal0~8_combout\,
	datad => \Selector35~0_combout\,
	combout => \baudrate_counter[0]~1_combout\);

\baudrate_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector60~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(1));

\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (baudrate_counter(2) & ((GND) # (!\Add0~3\))) # (!baudrate_counter(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((baudrate_counter(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

\Selector59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\Add0~4_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector59~0_combout\);

\baudrate_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector59~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(2));

\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (baudrate_counter(3) & (\Add0~5\ & VCC)) # (!baudrate_counter(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!baudrate_counter(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

\Selector58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\Add0~6_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector58~0_combout\);

\baudrate_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector58~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(3));

\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (baudrate_counter(4) & ((GND) # (!\Add0~7\))) # (!baudrate_counter(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((baudrate_counter(4)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

\Selector57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\Add0~8_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector57~0_combout\);

\baudrate_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector57~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(4));

\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (baudrate_counter(5) & (\Add0~9\ & VCC)) # (!baudrate_counter(5) & (!\Add0~9\))
-- \Add0~11\ = CARRY((!baudrate_counter(5) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

\Selector56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\Add0~10_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector56~0_combout\);

\baudrate_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector56~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(5));

\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (baudrate_counter(6) & ((GND) # (!\Add0~11\))) # (!baudrate_counter(6) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((baudrate_counter(6)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\Selector55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\Add0~12_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector55~0_combout\);

\baudrate_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector55~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(6));

\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (baudrate_counter(7) & (\Add0~13\ & VCC)) # (!baudrate_counter(7) & (!\Add0~13\))
-- \Add0~15\ = CARRY((!baudrate_counter(7) & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

\Selector54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\Add0~14_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector54~0_combout\);

\baudrate_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector54~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(7));

\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (baudrate_counter(8) & ((GND) # (!\Add0~15\))) # (!baudrate_counter(8) & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((baudrate_counter(8)) # (!\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

\Selector53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\Add0~16_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector53~0_combout\);

\baudrate_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector53~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(8));

\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (baudrate_counter(9) & (\Add0~17\ & VCC)) # (!baudrate_counter(9) & (!\Add0~17\))
-- \Add0~19\ = CARRY((!baudrate_counter(9) & !\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

\Selector52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\Add0~18_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector52~0_combout\);

\baudrate_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector52~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(9));

\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (baudrate_counter(10) & ((GND) # (!\Add0~19\))) # (!baudrate_counter(10) & (\Add0~19\ $ (GND)))
-- \Add0~21\ = CARRY((baudrate_counter(10)) # (!\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

\Selector51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\Add0~20_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector51~0_combout\);

\baudrate_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector51~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(10));

\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!baudrate_counter(10) & (!baudrate_counter(9) & (!baudrate_counter(8) & !baudrate_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(10),
	datab => baudrate_counter(9),
	datac => baudrate_counter(8),
	datad => baudrate_counter(7),
	combout => \Equal0~5_combout\);

\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!baudrate_counter(6) & (!baudrate_counter(5) & (!baudrate_counter(4) & !baudrate_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(6),
	datab => baudrate_counter(5),
	datac => baudrate_counter(4),
	datad => baudrate_counter(3),
	combout => \Equal0~6_combout\);

\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (!baudrate_counter(2) & !baudrate_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => baudrate_counter(2),
	datad => baudrate_counter(1),
	combout => \Equal0~7_combout\);

\Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\state.S1~q\) # ((\state.S2~q\ & ((!\Equal0~7_combout\) # (!\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S1~q\,
	datab => \state.S2~q\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \Selector32~0_combout\);

\state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector32~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S2~q\);

\Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\state.S2~q\ & (\Equal0~4_combout\ & \Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S2~q\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	combout => \Selector33~0_combout\);

\state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector33~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S3~q\);

\Selector61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\state.S3~q\) # ((\state.S1~q\ & ((!rgb_bits(23)))) # (!\state.S1~q\ & (\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S3~q\,
	datab => \Add0~0_combout\,
	datac => \state.S1~q\,
	datad => rgb_bits(23),
	combout => \Selector61~0_combout\);

\baudrate_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector61~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(0));

\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (baudrate_counter(11) & (\Add0~21\ & VCC)) # (!baudrate_counter(11) & (!\Add0~21\))
-- \Add0~23\ = CARRY((!baudrate_counter(11) & !\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

\Selector50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\Add0~22_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector50~0_combout\);

\baudrate_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector50~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(11));

\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (baudrate_counter(12) & ((GND) # (!\Add0~23\))) # (!baudrate_counter(12) & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((baudrate_counter(12)) # (!\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

\Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\Add0~24_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector49~0_combout\);

\baudrate_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector49~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(12));

\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (baudrate_counter(13) & (\Add0~25\ & VCC)) # (!baudrate_counter(13) & (!\Add0~25\))
-- \Add0~27\ = CARRY((!baudrate_counter(13) & !\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

\Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\Add0~26_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector48~0_combout\);

\baudrate_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector48~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(13));

\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (baudrate_counter(14) & ((GND) # (!\Add0~27\))) # (!baudrate_counter(14) & (\Add0~27\ $ (GND)))
-- \Add0~29\ = CARRY((baudrate_counter(14)) # (!\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

\Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\Add0~28_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector47~0_combout\);

\baudrate_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector47~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(14));

\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (baudrate_counter(15) & (\Add0~29\ & VCC)) # (!baudrate_counter(15) & (!\Add0~29\))
-- \Add0~31\ = CARRY((!baudrate_counter(15) & !\Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

\Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\Add0~30_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector46~0_combout\);

\baudrate_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector46~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(15));

\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (baudrate_counter(16) & ((GND) # (!\Add0~31\))) # (!baudrate_counter(16) & (\Add0~31\ $ (GND)))
-- \Add0~33\ = CARRY((baudrate_counter(16)) # (!\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

\Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\Add0~32_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector45~0_combout\);

\baudrate_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector45~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(16));

\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (baudrate_counter(17) & (\Add0~33\ & VCC)) # (!baudrate_counter(17) & (!\Add0~33\))
-- \Add0~35\ = CARRY((!baudrate_counter(17) & !\Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

\Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\Add0~34_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector44~0_combout\);

\baudrate_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector44~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(17));

\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (baudrate_counter(18) & ((GND) # (!\Add0~35\))) # (!baudrate_counter(18) & (\Add0~35\ $ (GND)))
-- \Add0~37\ = CARRY((baudrate_counter(18)) # (!\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

\Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\Add0~36_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector43~0_combout\);

\baudrate_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector43~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(18));

\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (baudrate_counter(19) & (\Add0~37\ & VCC)) # (!baudrate_counter(19) & (!\Add0~37\))
-- \Add0~39\ = CARRY((!baudrate_counter(19) & !\Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

\Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\Add0~38_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector42~0_combout\);

\baudrate_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector42~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(19));

\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (baudrate_counter(20) & ((GND) # (!\Add0~39\))) # (!baudrate_counter(20) & (\Add0~39\ $ (GND)))
-- \Add0~41\ = CARRY((baudrate_counter(20)) # (!\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

\Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\Add0~40_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector41~0_combout\);

\baudrate_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector41~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(20));

\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (baudrate_counter(21) & (\Add0~41\ & VCC)) # (!baudrate_counter(21) & (!\Add0~41\))
-- \Add0~43\ = CARRY((!baudrate_counter(21) & !\Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

\Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\Add0~42_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector40~0_combout\);

\baudrate_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector40~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(21));

\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (baudrate_counter(22) & ((GND) # (!\Add0~43\))) # (!baudrate_counter(22) & (\Add0~43\ $ (GND)))
-- \Add0~45\ = CARRY((baudrate_counter(22)) # (!\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

\Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\Add0~44_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector39~0_combout\);

\baudrate_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector39~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(22));

\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (baudrate_counter(23) & (\Add0~45\ & VCC)) # (!baudrate_counter(23) & (!\Add0~45\))
-- \Add0~47\ = CARRY((!baudrate_counter(23) & !\Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

\Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\Add0~46_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~46_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector38~0_combout\);

\baudrate_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector38~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(23));

\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (baudrate_counter(24) & ((GND) # (!\Add0~47\))) # (!baudrate_counter(24) & (\Add0~47\ $ (GND)))
-- \Add0~49\ = CARRY((baudrate_counter(24)) # (!\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

\Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\Add0~48_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~48_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector37~0_combout\);

\baudrate_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector37~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(24));

\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = baudrate_counter(25) $ (!\Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(25),
	cin => \Add0~49\,
	combout => \Add0~50_combout\);

\Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\Add0~50_combout\ & (!\state.S3~q\ & !\state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datac => \state.S3~q\,
	datad => \state.S1~q\,
	combout => \Selector36~0_combout\);

\baudrate_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector36~0_combout\,
	ena => \baudrate_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baudrate_counter(25));

\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!baudrate_counter(0) & (!baudrate_counter(25) & (!baudrate_counter(24) & !baudrate_counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(0),
	datab => baudrate_counter(25),
	datac => baudrate_counter(24),
	datad => baudrate_counter(23),
	combout => \Equal0~0_combout\);

\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!baudrate_counter(22) & (!baudrate_counter(21) & (!baudrate_counter(20) & !baudrate_counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(22),
	datab => baudrate_counter(21),
	datac => baudrate_counter(20),
	datad => baudrate_counter(19),
	combout => \Equal0~1_combout\);

\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!baudrate_counter(18) & (!baudrate_counter(17) & (!baudrate_counter(16) & !baudrate_counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(18),
	datab => baudrate_counter(17),
	datac => baudrate_counter(16),
	datad => baudrate_counter(15),
	combout => \Equal0~2_combout\);

\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!baudrate_counter(14) & (!baudrate_counter(13) & (!baudrate_counter(12) & !baudrate_counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baudrate_counter(14),
	datab => baudrate_counter(13),
	datac => baudrate_counter(12),
	datad => baudrate_counter(11),
	combout => \Equal0~3_combout\);

\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\Equal0~4_combout\ & (\Equal0~7_combout\ & (\state.S4~q\ & !\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~7_combout\,
	datac => \state.S4~q\,
	datad => \Equal1~1_combout\,
	combout => \Selector31~0_combout\);

\Selector31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\Selector31~0_combout\) # (!\state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~0_combout\,
	datad => \state.S0~q\,
	combout => \Selector31~1_combout\);

\state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector31~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S1~q\);

\Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\Q~reg0_q\ & ((\bt~q\) # ((\PB~input_o\) # (!\state.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~reg0_q\,
	datab => \bt~q\,
	datac => \PB~input_o\,
	datad => \state.s5~q\,
	combout => \Selector29~0_combout\);

\Selector29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = (\state.S1~q\) # ((\Selector29~0_combout\ & ((\state.S3~q\) # (\state.S4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S1~q\,
	datab => \Selector29~0_combout\,
	datac => \state.S3~q\,
	datad => \state.S4~q\,
	combout => \Selector29~1_combout\);

\Selector29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~2_combout\ = (\Selector29~1_combout\) # ((\Selector29~0_combout\ & (\state.S2~q\ & !\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~1_combout\,
	datab => \Selector29~0_combout\,
	datac => \state.S2~q\,
	datad => \Equal0~8_combout\,
	combout => \Selector29~2_combout\);

\Q~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector29~2_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q~reg0_q\);

ww_Q <= \Q~output_o\;
END structure;


