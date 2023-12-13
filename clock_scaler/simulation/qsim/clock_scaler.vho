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

-- DATE "09/07/2023 21:29:20"

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

ENTITY 	clock_scaler IS
    PORT (
	clk_in : IN std_logic;
	enable : IN std_logic;
	clk_out_1 : OUT std_logic;
	clk_out_2 : OUT std_logic;
	clk_out_3 : OUT std_logic;
	clk_out_4 : OUT std_logic
	);
END clock_scaler;

ARCHITECTURE structure OF clock_scaler IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_clk_out_1 : std_logic;
SIGNAL ww_clk_out_2 : std_logic;
SIGNAL ww_clk_out_3 : std_logic;
SIGNAL ww_clk_out_4 : std_logic;
SIGNAL \clk_out_1~output_o\ : std_logic;
SIGNAL \clk_out_2~output_o\ : std_logic;
SIGNAL \clk_out_3~output_o\ : std_logic;
SIGNAL \clk_out_4~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \counter_value1[0]~32_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \counter_value1[0]~33\ : std_logic;
SIGNAL \counter_value1[1]~34_combout\ : std_logic;
SIGNAL \counter_value1[1]~35\ : std_logic;
SIGNAL \counter_value1[2]~36_combout\ : std_logic;
SIGNAL \counter_value1[2]~37\ : std_logic;
SIGNAL \counter_value1[3]~38_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \counter_value1[3]~39\ : std_logic;
SIGNAL \counter_value1[4]~40_combout\ : std_logic;
SIGNAL \counter_value1[4]~41\ : std_logic;
SIGNAL \counter_value1[5]~42_combout\ : std_logic;
SIGNAL \counter_value1[5]~43\ : std_logic;
SIGNAL \counter_value1[6]~44_combout\ : std_logic;
SIGNAL \counter_value1[6]~45\ : std_logic;
SIGNAL \counter_value1[7]~46_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \counter_value1[7]~47\ : std_logic;
SIGNAL \counter_value1[8]~48_combout\ : std_logic;
SIGNAL \counter_value1[8]~49\ : std_logic;
SIGNAL \counter_value1[9]~50_combout\ : std_logic;
SIGNAL \counter_value1[9]~51\ : std_logic;
SIGNAL \counter_value1[10]~52_combout\ : std_logic;
SIGNAL \counter_value1[10]~53\ : std_logic;
SIGNAL \counter_value1[11]~54_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \counter_value1[11]~55\ : std_logic;
SIGNAL \counter_value1[12]~56_combout\ : std_logic;
SIGNAL \counter_value1[12]~57\ : std_logic;
SIGNAL \counter_value1[13]~58_combout\ : std_logic;
SIGNAL \counter_value1[13]~59\ : std_logic;
SIGNAL \counter_value1[14]~60_combout\ : std_logic;
SIGNAL \counter_value1[14]~61\ : std_logic;
SIGNAL \counter_value1[15]~62_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \counter_value1[15]~63\ : std_logic;
SIGNAL \counter_value1[16]~64_combout\ : std_logic;
SIGNAL \counter_value1[16]~65\ : std_logic;
SIGNAL \counter_value1[17]~66_combout\ : std_logic;
SIGNAL \counter_value1[17]~67\ : std_logic;
SIGNAL \counter_value1[18]~68_combout\ : std_logic;
SIGNAL \counter_value1[18]~69\ : std_logic;
SIGNAL \counter_value1[19]~70_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \counter_value1[19]~71\ : std_logic;
SIGNAL \counter_value1[20]~72_combout\ : std_logic;
SIGNAL \counter_value1[20]~73\ : std_logic;
SIGNAL \counter_value1[21]~74_combout\ : std_logic;
SIGNAL \counter_value1[21]~75\ : std_logic;
SIGNAL \counter_value1[22]~76_combout\ : std_logic;
SIGNAL \counter_value1[22]~77\ : std_logic;
SIGNAL \counter_value1[23]~78_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \counter_value1[23]~79\ : std_logic;
SIGNAL \counter_value1[24]~80_combout\ : std_logic;
SIGNAL \counter_value1[24]~81\ : std_logic;
SIGNAL \counter_value1[25]~82_combout\ : std_logic;
SIGNAL \counter_value1[25]~83\ : std_logic;
SIGNAL \counter_value1[26]~84_combout\ : std_logic;
SIGNAL \counter_value1[26]~85\ : std_logic;
SIGNAL \counter_value1[27]~86_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \counter_value1[27]~87\ : std_logic;
SIGNAL \counter_value1[28]~88_combout\ : std_logic;
SIGNAL \counter_value1[28]~89\ : std_logic;
SIGNAL \counter_value1[29]~90_combout\ : std_logic;
SIGNAL \counter_value1[29]~91\ : std_logic;
SIGNAL \counter_value1[30]~92_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \counter_value1[30]~93\ : std_logic;
SIGNAL \counter_value1[31]~94_combout\ : std_logic;
SIGNAL \Toggle4~0_combout\ : std_logic;
SIGNAL \Toggle1~0_combout\ : std_logic;
SIGNAL \Toggle1~q\ : std_logic;
SIGNAL \Toggle2~0_combout\ : std_logic;
SIGNAL \Toggle2~q\ : std_logic;
SIGNAL \Toggle3~0_combout\ : std_logic;
SIGNAL \Toggle3~q\ : std_logic;
SIGNAL \Toggle4~1_combout\ : std_logic;
SIGNAL \Toggle4~2_combout\ : std_logic;
SIGNAL \Toggle4~q\ : std_logic;
SIGNAL counter_value1 : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_enable~input_o\ : std_logic;

BEGIN

ww_clk_in <= clk_in;
ww_enable <= enable;
clk_out_1 <= ww_clk_out_1;
clk_out_2 <= ww_clk_out_2;
clk_out_3 <= ww_clk_out_3;
clk_out_4 <= ww_clk_out_4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;

\clk_out_1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Toggle1~q\,
	devoe => ww_devoe,
	o => \clk_out_1~output_o\);

\clk_out_2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Toggle2~q\,
	devoe => ww_devoe,
	o => \clk_out_2~output_o\);

\clk_out_3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Toggle3~q\,
	devoe => ww_devoe,
	o => \clk_out_3~output_o\);

\clk_out_4~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Toggle4~q\,
	devoe => ww_devoe,
	o => \clk_out_4~output_o\);

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

\counter_value1[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[0]~32_combout\ = counter_value1(0) $ (VCC)
-- \counter_value1[0]~33\ = CARRY(counter_value1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(0),
	datad => VCC,
	combout => \counter_value1[0]~32_combout\,
	cout => \counter_value1[0]~33\);

\enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\counter_value1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[0]~32_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(0));

\counter_value1[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[1]~34_combout\ = (counter_value1(1) & (!\counter_value1[0]~33\)) # (!counter_value1(1) & ((\counter_value1[0]~33\) # (GND)))
-- \counter_value1[1]~35\ = CARRY((!\counter_value1[0]~33\) # (!counter_value1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(1),
	datad => VCC,
	cin => \counter_value1[0]~33\,
	combout => \counter_value1[1]~34_combout\,
	cout => \counter_value1[1]~35\);

\counter_value1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[1]~34_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(1));

\counter_value1[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[2]~36_combout\ = (counter_value1(2) & (\counter_value1[1]~35\ $ (GND))) # (!counter_value1(2) & (!\counter_value1[1]~35\ & VCC))
-- \counter_value1[2]~37\ = CARRY((counter_value1(2) & !\counter_value1[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(2),
	datad => VCC,
	cin => \counter_value1[1]~35\,
	combout => \counter_value1[2]~36_combout\,
	cout => \counter_value1[2]~37\);

\counter_value1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[2]~36_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(2));

\counter_value1[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[3]~38_combout\ = (counter_value1(3) & (!\counter_value1[2]~37\)) # (!counter_value1(3) & ((\counter_value1[2]~37\) # (GND)))
-- \counter_value1[3]~39\ = CARRY((!\counter_value1[2]~37\) # (!counter_value1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(3),
	datad => VCC,
	cin => \counter_value1[2]~37\,
	combout => \counter_value1[3]~38_combout\,
	cout => \counter_value1[3]~39\);

\counter_value1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[3]~38_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(3));

\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (counter_value1(0)) # ((counter_value1(1)) # ((counter_value1(2)) # (counter_value1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(0),
	datab => counter_value1(1),
	datac => counter_value1(2),
	datad => counter_value1(3),
	combout => \LessThan0~0_combout\);

\counter_value1[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[4]~40_combout\ = (counter_value1(4) & (\counter_value1[3]~39\ $ (GND))) # (!counter_value1(4) & (!\counter_value1[3]~39\ & VCC))
-- \counter_value1[4]~41\ = CARRY((counter_value1(4) & !\counter_value1[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(4),
	datad => VCC,
	cin => \counter_value1[3]~39\,
	combout => \counter_value1[4]~40_combout\,
	cout => \counter_value1[4]~41\);

\counter_value1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[4]~40_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(4));

\counter_value1[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[5]~42_combout\ = (counter_value1(5) & (!\counter_value1[4]~41\)) # (!counter_value1(5) & ((\counter_value1[4]~41\) # (GND)))
-- \counter_value1[5]~43\ = CARRY((!\counter_value1[4]~41\) # (!counter_value1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(5),
	datad => VCC,
	cin => \counter_value1[4]~41\,
	combout => \counter_value1[5]~42_combout\,
	cout => \counter_value1[5]~43\);

\counter_value1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[5]~42_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(5));

\counter_value1[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[6]~44_combout\ = (counter_value1(6) & (\counter_value1[5]~43\ $ (GND))) # (!counter_value1(6) & (!\counter_value1[5]~43\ & VCC))
-- \counter_value1[6]~45\ = CARRY((counter_value1(6) & !\counter_value1[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(6),
	datad => VCC,
	cin => \counter_value1[5]~43\,
	combout => \counter_value1[6]~44_combout\,
	cout => \counter_value1[6]~45\);

\counter_value1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[6]~44_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(6));

\counter_value1[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[7]~46_combout\ = (counter_value1(7) & (!\counter_value1[6]~45\)) # (!counter_value1(7) & ((\counter_value1[6]~45\) # (GND)))
-- \counter_value1[7]~47\ = CARRY((!\counter_value1[6]~45\) # (!counter_value1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(7),
	datad => VCC,
	cin => \counter_value1[6]~45\,
	combout => \counter_value1[7]~46_combout\,
	cout => \counter_value1[7]~47\);

\counter_value1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[7]~46_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(7));

\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (counter_value1(4)) # ((counter_value1(5)) # ((counter_value1(6)) # (counter_value1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(4),
	datab => counter_value1(5),
	datac => counter_value1(6),
	datad => counter_value1(7),
	combout => \LessThan0~1_combout\);

\counter_value1[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[8]~48_combout\ = (counter_value1(8) & (\counter_value1[7]~47\ $ (GND))) # (!counter_value1(8) & (!\counter_value1[7]~47\ & VCC))
-- \counter_value1[8]~49\ = CARRY((counter_value1(8) & !\counter_value1[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(8),
	datad => VCC,
	cin => \counter_value1[7]~47\,
	combout => \counter_value1[8]~48_combout\,
	cout => \counter_value1[8]~49\);

\counter_value1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[8]~48_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(8));

\counter_value1[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[9]~50_combout\ = (counter_value1(9) & (!\counter_value1[8]~49\)) # (!counter_value1(9) & ((\counter_value1[8]~49\) # (GND)))
-- \counter_value1[9]~51\ = CARRY((!\counter_value1[8]~49\) # (!counter_value1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(9),
	datad => VCC,
	cin => \counter_value1[8]~49\,
	combout => \counter_value1[9]~50_combout\,
	cout => \counter_value1[9]~51\);

\counter_value1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[9]~50_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(9));

\counter_value1[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[10]~52_combout\ = (counter_value1(10) & (\counter_value1[9]~51\ $ (GND))) # (!counter_value1(10) & (!\counter_value1[9]~51\ & VCC))
-- \counter_value1[10]~53\ = CARRY((counter_value1(10) & !\counter_value1[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(10),
	datad => VCC,
	cin => \counter_value1[9]~51\,
	combout => \counter_value1[10]~52_combout\,
	cout => \counter_value1[10]~53\);

\counter_value1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[10]~52_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(10));

\counter_value1[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[11]~54_combout\ = (counter_value1(11) & (!\counter_value1[10]~53\)) # (!counter_value1(11) & ((\counter_value1[10]~53\) # (GND)))
-- \counter_value1[11]~55\ = CARRY((!\counter_value1[10]~53\) # (!counter_value1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(11),
	datad => VCC,
	cin => \counter_value1[10]~53\,
	combout => \counter_value1[11]~54_combout\,
	cout => \counter_value1[11]~55\);

\counter_value1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[11]~54_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(11));

\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (counter_value1(8)) # ((counter_value1(9)) # ((counter_value1(10)) # (counter_value1(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(8),
	datab => counter_value1(9),
	datac => counter_value1(10),
	datad => counter_value1(11),
	combout => \LessThan0~2_combout\);

\counter_value1[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[12]~56_combout\ = (counter_value1(12) & (\counter_value1[11]~55\ $ (GND))) # (!counter_value1(12) & (!\counter_value1[11]~55\ & VCC))
-- \counter_value1[12]~57\ = CARRY((counter_value1(12) & !\counter_value1[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(12),
	datad => VCC,
	cin => \counter_value1[11]~55\,
	combout => \counter_value1[12]~56_combout\,
	cout => \counter_value1[12]~57\);

\counter_value1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[12]~56_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(12));

\counter_value1[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[13]~58_combout\ = (counter_value1(13) & (!\counter_value1[12]~57\)) # (!counter_value1(13) & ((\counter_value1[12]~57\) # (GND)))
-- \counter_value1[13]~59\ = CARRY((!\counter_value1[12]~57\) # (!counter_value1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(13),
	datad => VCC,
	cin => \counter_value1[12]~57\,
	combout => \counter_value1[13]~58_combout\,
	cout => \counter_value1[13]~59\);

\counter_value1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[13]~58_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(13));

\counter_value1[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[14]~60_combout\ = (counter_value1(14) & (\counter_value1[13]~59\ $ (GND))) # (!counter_value1(14) & (!\counter_value1[13]~59\ & VCC))
-- \counter_value1[14]~61\ = CARRY((counter_value1(14) & !\counter_value1[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(14),
	datad => VCC,
	cin => \counter_value1[13]~59\,
	combout => \counter_value1[14]~60_combout\,
	cout => \counter_value1[14]~61\);

\counter_value1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[14]~60_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(14));

\counter_value1[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[15]~62_combout\ = (counter_value1(15) & (!\counter_value1[14]~61\)) # (!counter_value1(15) & ((\counter_value1[14]~61\) # (GND)))
-- \counter_value1[15]~63\ = CARRY((!\counter_value1[14]~61\) # (!counter_value1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(15),
	datad => VCC,
	cin => \counter_value1[14]~61\,
	combout => \counter_value1[15]~62_combout\,
	cout => \counter_value1[15]~63\);

\counter_value1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[15]~62_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(15));

\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (counter_value1(12)) # ((counter_value1(13)) # ((counter_value1(14)) # (counter_value1(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(12),
	datab => counter_value1(13),
	datac => counter_value1(14),
	datad => counter_value1(15),
	combout => \LessThan0~3_combout\);

\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~0_combout\) # ((\LessThan0~1_combout\) # ((\LessThan0~2_combout\) # (\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

\counter_value1[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[16]~64_combout\ = (counter_value1(16) & (\counter_value1[15]~63\ $ (GND))) # (!counter_value1(16) & (!\counter_value1[15]~63\ & VCC))
-- \counter_value1[16]~65\ = CARRY((counter_value1(16) & !\counter_value1[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(16),
	datad => VCC,
	cin => \counter_value1[15]~63\,
	combout => \counter_value1[16]~64_combout\,
	cout => \counter_value1[16]~65\);

\counter_value1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[16]~64_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(16));

\counter_value1[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[17]~66_combout\ = (counter_value1(17) & (!\counter_value1[16]~65\)) # (!counter_value1(17) & ((\counter_value1[16]~65\) # (GND)))
-- \counter_value1[17]~67\ = CARRY((!\counter_value1[16]~65\) # (!counter_value1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(17),
	datad => VCC,
	cin => \counter_value1[16]~65\,
	combout => \counter_value1[17]~66_combout\,
	cout => \counter_value1[17]~67\);

\counter_value1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[17]~66_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(17));

\counter_value1[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[18]~68_combout\ = (counter_value1(18) & (\counter_value1[17]~67\ $ (GND))) # (!counter_value1(18) & (!\counter_value1[17]~67\ & VCC))
-- \counter_value1[18]~69\ = CARRY((counter_value1(18) & !\counter_value1[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(18),
	datad => VCC,
	cin => \counter_value1[17]~67\,
	combout => \counter_value1[18]~68_combout\,
	cout => \counter_value1[18]~69\);

\counter_value1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[18]~68_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(18));

\counter_value1[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[19]~70_combout\ = (counter_value1(19) & (!\counter_value1[18]~69\)) # (!counter_value1(19) & ((\counter_value1[18]~69\) # (GND)))
-- \counter_value1[19]~71\ = CARRY((!\counter_value1[18]~69\) # (!counter_value1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(19),
	datad => VCC,
	cin => \counter_value1[18]~69\,
	combout => \counter_value1[19]~70_combout\,
	cout => \counter_value1[19]~71\);

\counter_value1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[19]~70_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(19));

\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (counter_value1(16)) # ((counter_value1(17)) # ((counter_value1(18)) # (counter_value1(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(16),
	datab => counter_value1(17),
	datac => counter_value1(18),
	datad => counter_value1(19),
	combout => \LessThan0~5_combout\);

\counter_value1[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[20]~72_combout\ = (counter_value1(20) & (\counter_value1[19]~71\ $ (GND))) # (!counter_value1(20) & (!\counter_value1[19]~71\ & VCC))
-- \counter_value1[20]~73\ = CARRY((counter_value1(20) & !\counter_value1[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(20),
	datad => VCC,
	cin => \counter_value1[19]~71\,
	combout => \counter_value1[20]~72_combout\,
	cout => \counter_value1[20]~73\);

\counter_value1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[20]~72_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(20));

\counter_value1[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[21]~74_combout\ = (counter_value1(21) & (!\counter_value1[20]~73\)) # (!counter_value1(21) & ((\counter_value1[20]~73\) # (GND)))
-- \counter_value1[21]~75\ = CARRY((!\counter_value1[20]~73\) # (!counter_value1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(21),
	datad => VCC,
	cin => \counter_value1[20]~73\,
	combout => \counter_value1[21]~74_combout\,
	cout => \counter_value1[21]~75\);

\counter_value1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[21]~74_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(21));

\counter_value1[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[22]~76_combout\ = (counter_value1(22) & (\counter_value1[21]~75\ $ (GND))) # (!counter_value1(22) & (!\counter_value1[21]~75\ & VCC))
-- \counter_value1[22]~77\ = CARRY((counter_value1(22) & !\counter_value1[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(22),
	datad => VCC,
	cin => \counter_value1[21]~75\,
	combout => \counter_value1[22]~76_combout\,
	cout => \counter_value1[22]~77\);

\counter_value1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[22]~76_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(22));

\counter_value1[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[23]~78_combout\ = (counter_value1(23) & (!\counter_value1[22]~77\)) # (!counter_value1(23) & ((\counter_value1[22]~77\) # (GND)))
-- \counter_value1[23]~79\ = CARRY((!\counter_value1[22]~77\) # (!counter_value1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(23),
	datad => VCC,
	cin => \counter_value1[22]~77\,
	combout => \counter_value1[23]~78_combout\,
	cout => \counter_value1[23]~79\);

\counter_value1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[23]~78_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(23));

\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (counter_value1(20)) # ((counter_value1(21)) # ((counter_value1(22)) # (counter_value1(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(20),
	datab => counter_value1(21),
	datac => counter_value1(22),
	datad => counter_value1(23),
	combout => \LessThan0~6_combout\);

\counter_value1[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[24]~80_combout\ = (counter_value1(24) & (\counter_value1[23]~79\ $ (GND))) # (!counter_value1(24) & (!\counter_value1[23]~79\ & VCC))
-- \counter_value1[24]~81\ = CARRY((counter_value1(24) & !\counter_value1[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(24),
	datad => VCC,
	cin => \counter_value1[23]~79\,
	combout => \counter_value1[24]~80_combout\,
	cout => \counter_value1[24]~81\);

\counter_value1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[24]~80_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(24));

\counter_value1[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[25]~82_combout\ = (counter_value1(25) & (!\counter_value1[24]~81\)) # (!counter_value1(25) & ((\counter_value1[24]~81\) # (GND)))
-- \counter_value1[25]~83\ = CARRY((!\counter_value1[24]~81\) # (!counter_value1(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(25),
	datad => VCC,
	cin => \counter_value1[24]~81\,
	combout => \counter_value1[25]~82_combout\,
	cout => \counter_value1[25]~83\);

\counter_value1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[25]~82_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(25));

\counter_value1[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[26]~84_combout\ = (counter_value1(26) & (\counter_value1[25]~83\ $ (GND))) # (!counter_value1(26) & (!\counter_value1[25]~83\ & VCC))
-- \counter_value1[26]~85\ = CARRY((counter_value1(26) & !\counter_value1[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(26),
	datad => VCC,
	cin => \counter_value1[25]~83\,
	combout => \counter_value1[26]~84_combout\,
	cout => \counter_value1[26]~85\);

\counter_value1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[26]~84_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(26));

\counter_value1[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[27]~86_combout\ = (counter_value1(27) & (!\counter_value1[26]~85\)) # (!counter_value1(27) & ((\counter_value1[26]~85\) # (GND)))
-- \counter_value1[27]~87\ = CARRY((!\counter_value1[26]~85\) # (!counter_value1(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(27),
	datad => VCC,
	cin => \counter_value1[26]~85\,
	combout => \counter_value1[27]~86_combout\,
	cout => \counter_value1[27]~87\);

\counter_value1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[27]~86_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(27));

\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (counter_value1(24)) # ((counter_value1(25)) # ((counter_value1(26)) # (counter_value1(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(24),
	datab => counter_value1(25),
	datac => counter_value1(26),
	datad => counter_value1(27),
	combout => \LessThan0~7_combout\);

\counter_value1[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[28]~88_combout\ = (counter_value1(28) & (\counter_value1[27]~87\ $ (GND))) # (!counter_value1(28) & (!\counter_value1[27]~87\ & VCC))
-- \counter_value1[28]~89\ = CARRY((counter_value1(28) & !\counter_value1[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(28),
	datad => VCC,
	cin => \counter_value1[27]~87\,
	combout => \counter_value1[28]~88_combout\,
	cout => \counter_value1[28]~89\);

\counter_value1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[28]~88_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(28));

\counter_value1[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[29]~90_combout\ = (counter_value1(29) & (!\counter_value1[28]~89\)) # (!counter_value1(29) & ((\counter_value1[28]~89\) # (GND)))
-- \counter_value1[29]~91\ = CARRY((!\counter_value1[28]~89\) # (!counter_value1(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(29),
	datad => VCC,
	cin => \counter_value1[28]~89\,
	combout => \counter_value1[29]~90_combout\,
	cout => \counter_value1[29]~91\);

\counter_value1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[29]~90_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(29));

\counter_value1[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[30]~92_combout\ = (counter_value1(30) & (\counter_value1[29]~91\ $ (GND))) # (!counter_value1(30) & (!\counter_value1[29]~91\ & VCC))
-- \counter_value1[30]~93\ = CARRY((counter_value1(30) & !\counter_value1[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(30),
	datad => VCC,
	cin => \counter_value1[29]~91\,
	combout => \counter_value1[30]~92_combout\,
	cout => \counter_value1[30]~93\);

\counter_value1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[30]~92_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(30));

\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\LessThan0~7_combout\) # ((counter_value1(28)) # ((counter_value1(29)) # (counter_value1(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => counter_value1(28),
	datac => counter_value1(29),
	datad => counter_value1(30),
	combout => \LessThan0~8_combout\);

\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~4_combout\) # ((\LessThan0~5_combout\) # ((\LessThan0~6_combout\) # (\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

\counter_value1[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter_value1[31]~94_combout\ = counter_value1(31) $ (\counter_value1[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_value1(31),
	cin => \counter_value1[30]~93\,
	combout => \counter_value1[31]~94_combout\);

\counter_value1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \counter_value1[31]~94_combout\,
	sclr => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_value1(31));

\Toggle4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Toggle4~0_combout\ = (\LessThan0~9_combout\ & (\enable~input_o\ & (!counter_value1(0) & !counter_value1(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~9_combout\,
	datab => \enable~input_o\,
	datac => counter_value1(0),
	datad => counter_value1(31),
	combout => \Toggle4~0_combout\);

\Toggle1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Toggle1~0_combout\ = \Toggle1~q\ $ (\Toggle4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Toggle1~q\,
	datad => \Toggle4~0_combout\,
	combout => \Toggle1~0_combout\);

Toggle1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \Toggle1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Toggle1~q\);

\Toggle2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Toggle2~0_combout\ = \Toggle2~q\ $ (((!counter_value1(1) & \Toggle4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Toggle2~q\,
	datab => counter_value1(1),
	datad => \Toggle4~0_combout\,
	combout => \Toggle2~0_combout\);

Toggle2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \Toggle2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Toggle2~q\);

\Toggle3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Toggle3~0_combout\ = \Toggle3~q\ $ (((!counter_value1(1) & (!counter_value1(2) & \Toggle4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Toggle3~q\,
	datab => counter_value1(1),
	datac => counter_value1(2),
	datad => \Toggle4~0_combout\,
	combout => \Toggle3~0_combout\);

Toggle3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \Toggle3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Toggle3~q\);

\Toggle4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Toggle4~1_combout\ = (!counter_value1(1) & (!counter_value1(2) & !counter_value1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_value1(1),
	datac => counter_value1(2),
	datad => counter_value1(3),
	combout => \Toggle4~1_combout\);

\Toggle4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Toggle4~2_combout\ = \Toggle4~q\ $ (((\Toggle4~1_combout\ & \Toggle4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Toggle4~q\,
	datac => \Toggle4~1_combout\,
	datad => \Toggle4~0_combout\,
	combout => \Toggle4~2_combout\);

Toggle4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~input_o\,
	d => \Toggle4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Toggle4~q\);

ww_clk_out_1 <= \clk_out_1~output_o\;

ww_clk_out_2 <= \clk_out_2~output_o\;

ww_clk_out_3 <= \clk_out_3~output_o\;

ww_clk_out_4 <= \clk_out_4~output_o\;
END structure;


