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

-- DATE "07/17/2023 10:03:56"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Clock_Prescaler IS
    PORT (
	Clk_in : IN std_logic;
	Enable : IN std_logic;
	Clk_Selector : IN std_logic_vector(1 DOWNTO 0);
	Clk_Out : BUFFER std_logic
	);
END Clock_Prescaler;

-- Design Ports Information
-- Clk_Out	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk_Selector[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk_Selector[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk_in	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Clock_Prescaler IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk_in : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Clk_Selector : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Clk_Out : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Clk_Out~output_o\ : std_logic;
SIGNAL \Clk_in~input_o\ : std_logic;
SIGNAL \Clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock_scaler|counter_value1[0]~32_combout\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \clock_scaler|counter_value1[0]~33\ : std_logic;
SIGNAL \clock_scaler|counter_value1[1]~34_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[1]~35\ : std_logic;
SIGNAL \clock_scaler|counter_value1[2]~36_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[2]~37\ : std_logic;
SIGNAL \clock_scaler|counter_value1[3]~38_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[3]~39\ : std_logic;
SIGNAL \clock_scaler|counter_value1[4]~40_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[4]~41\ : std_logic;
SIGNAL \clock_scaler|counter_value1[5]~42_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[5]~43\ : std_logic;
SIGNAL \clock_scaler|counter_value1[6]~44_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[6]~45\ : std_logic;
SIGNAL \clock_scaler|counter_value1[7]~46_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[7]~47\ : std_logic;
SIGNAL \clock_scaler|counter_value1[8]~48_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[8]~49\ : std_logic;
SIGNAL \clock_scaler|counter_value1[9]~50_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[9]~51\ : std_logic;
SIGNAL \clock_scaler|counter_value1[10]~52_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[10]~53\ : std_logic;
SIGNAL \clock_scaler|counter_value1[11]~54_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[11]~55\ : std_logic;
SIGNAL \clock_scaler|counter_value1[12]~56_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[12]~57\ : std_logic;
SIGNAL \clock_scaler|counter_value1[13]~58_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[13]~59\ : std_logic;
SIGNAL \clock_scaler|counter_value1[14]~60_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[14]~61\ : std_logic;
SIGNAL \clock_scaler|counter_value1[15]~62_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[15]~63\ : std_logic;
SIGNAL \clock_scaler|counter_value1[16]~64_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[16]~65\ : std_logic;
SIGNAL \clock_scaler|counter_value1[17]~66_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[17]~67\ : std_logic;
SIGNAL \clock_scaler|counter_value1[18]~68_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[18]~69\ : std_logic;
SIGNAL \clock_scaler|counter_value1[19]~70_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[19]~71\ : std_logic;
SIGNAL \clock_scaler|counter_value1[20]~72_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[20]~73\ : std_logic;
SIGNAL \clock_scaler|counter_value1[21]~74_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[21]~75\ : std_logic;
SIGNAL \clock_scaler|counter_value1[22]~76_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[22]~77\ : std_logic;
SIGNAL \clock_scaler|counter_value1[23]~78_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[23]~79\ : std_logic;
SIGNAL \clock_scaler|counter_value1[24]~80_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[24]~81\ : std_logic;
SIGNAL \clock_scaler|counter_value1[25]~82_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[25]~83\ : std_logic;
SIGNAL \clock_scaler|counter_value1[26]~84_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[26]~85\ : std_logic;
SIGNAL \clock_scaler|counter_value1[27]~86_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[27]~87\ : std_logic;
SIGNAL \clock_scaler|counter_value1[28]~88_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[28]~89\ : std_logic;
SIGNAL \clock_scaler|counter_value1[29]~90_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[29]~91\ : std_logic;
SIGNAL \clock_scaler|counter_value1[30]~92_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1[30]~93\ : std_logic;
SIGNAL \clock_scaler|counter_value1[31]~94_combout\ : std_logic;
SIGNAL \clock_scaler|LessThan0~6_combout\ : std_logic;
SIGNAL \clock_scaler|LessThan0~3_combout\ : std_logic;
SIGNAL \clock_scaler|LessThan0~1_combout\ : std_logic;
SIGNAL \clock_scaler|LessThan0~2_combout\ : std_logic;
SIGNAL \clock_scaler|LessThan0~0_combout\ : std_logic;
SIGNAL \clock_scaler|LessThan0~4_combout\ : std_logic;
SIGNAL \clock_scaler|LessThan0~5_combout\ : std_logic;
SIGNAL \clock_scaler|LessThan0~7_combout\ : std_logic;
SIGNAL \clock_scaler|LessThan0~8_combout\ : std_logic;
SIGNAL \clock_scaler|LessThan0~9_combout\ : std_logic;
SIGNAL \clock_scaler|Toggle4~0_combout\ : std_logic;
SIGNAL \clock_scaler|Toggle3~0_combout\ : std_logic;
SIGNAL \clock_scaler|Toggle3~q\ : std_logic;
SIGNAL \clock_scaler|Toggle1~0_combout\ : std_logic;
SIGNAL \clock_scaler|Toggle1~q\ : std_logic;
SIGNAL \Clk_Selector[0]~input_o\ : std_logic;
SIGNAL \Clk_Selector[1]~input_o\ : std_logic;
SIGNAL \clock_scaler|Toggle2~0_combout\ : std_logic;
SIGNAL \clock_scaler|Toggle2~q\ : std_logic;
SIGNAL \clock_multiplexer|Clk_out~0_combout\ : std_logic;
SIGNAL \clock_scaler|Toggle4~1_combout\ : std_logic;
SIGNAL \clock_scaler|Toggle4~2_combout\ : std_logic;
SIGNAL \clock_scaler|Toggle4~q\ : std_logic;
SIGNAL \clock_multiplexer|Clk_out~1_combout\ : std_logic;
SIGNAL \clock_scaler|counter_value1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Enable~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk_in <= Clk_in;
ww_Enable <= Enable;
ww_Clk_Selector <= Clk_Selector;
Clk_Out <= ww_Clk_Out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk_in~input_o\);
\ALT_INV_Enable~input_o\ <= NOT \Enable~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X18_Y0_N23
\Clk_Out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clock_multiplexer|Clk_out~1_combout\,
	devoe => ww_devoe,
	o => \Clk_Out~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\Clk_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk_in,
	o => \Clk_in~input_o\);

-- Location: CLKCTRL_G19
\Clk_in~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk_in~inputclkctrl_outclk\);

-- Location: LCCOMB_X66_Y50_N0
\clock_scaler|counter_value1[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[0]~32_combout\ = \clock_scaler|counter_value1\(0) $ (VCC)
-- \clock_scaler|counter_value1[0]~33\ = CARRY(\clock_scaler|counter_value1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(0),
	datad => VCC,
	combout => \clock_scaler|counter_value1[0]~32_combout\,
	cout => \clock_scaler|counter_value1[0]~33\);

-- Location: IOIBUF_X69_Y54_N1
\Enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: FF_X66_Y50_N1
\clock_scaler|counter_value1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[0]~32_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(0));

-- Location: LCCOMB_X66_Y50_N2
\clock_scaler|counter_value1[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[1]~34_combout\ = (\clock_scaler|counter_value1\(1) & (!\clock_scaler|counter_value1[0]~33\)) # (!\clock_scaler|counter_value1\(1) & ((\clock_scaler|counter_value1[0]~33\) # (GND)))
-- \clock_scaler|counter_value1[1]~35\ = CARRY((!\clock_scaler|counter_value1[0]~33\) # (!\clock_scaler|counter_value1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(1),
	datad => VCC,
	cin => \clock_scaler|counter_value1[0]~33\,
	combout => \clock_scaler|counter_value1[1]~34_combout\,
	cout => \clock_scaler|counter_value1[1]~35\);

-- Location: FF_X66_Y50_N3
\clock_scaler|counter_value1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[1]~34_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(1));

-- Location: LCCOMB_X66_Y50_N4
\clock_scaler|counter_value1[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[2]~36_combout\ = (\clock_scaler|counter_value1\(2) & (\clock_scaler|counter_value1[1]~35\ $ (GND))) # (!\clock_scaler|counter_value1\(2) & (!\clock_scaler|counter_value1[1]~35\ & VCC))
-- \clock_scaler|counter_value1[2]~37\ = CARRY((\clock_scaler|counter_value1\(2) & !\clock_scaler|counter_value1[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(2),
	datad => VCC,
	cin => \clock_scaler|counter_value1[1]~35\,
	combout => \clock_scaler|counter_value1[2]~36_combout\,
	cout => \clock_scaler|counter_value1[2]~37\);

-- Location: FF_X66_Y50_N5
\clock_scaler|counter_value1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[2]~36_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(2));

-- Location: LCCOMB_X66_Y50_N6
\clock_scaler|counter_value1[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[3]~38_combout\ = (\clock_scaler|counter_value1\(3) & (!\clock_scaler|counter_value1[2]~37\)) # (!\clock_scaler|counter_value1\(3) & ((\clock_scaler|counter_value1[2]~37\) # (GND)))
-- \clock_scaler|counter_value1[3]~39\ = CARRY((!\clock_scaler|counter_value1[2]~37\) # (!\clock_scaler|counter_value1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(3),
	datad => VCC,
	cin => \clock_scaler|counter_value1[2]~37\,
	combout => \clock_scaler|counter_value1[3]~38_combout\,
	cout => \clock_scaler|counter_value1[3]~39\);

-- Location: FF_X66_Y50_N7
\clock_scaler|counter_value1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[3]~38_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(3));

-- Location: LCCOMB_X66_Y50_N8
\clock_scaler|counter_value1[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[4]~40_combout\ = (\clock_scaler|counter_value1\(4) & (\clock_scaler|counter_value1[3]~39\ $ (GND))) # (!\clock_scaler|counter_value1\(4) & (!\clock_scaler|counter_value1[3]~39\ & VCC))
-- \clock_scaler|counter_value1[4]~41\ = CARRY((\clock_scaler|counter_value1\(4) & !\clock_scaler|counter_value1[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(4),
	datad => VCC,
	cin => \clock_scaler|counter_value1[3]~39\,
	combout => \clock_scaler|counter_value1[4]~40_combout\,
	cout => \clock_scaler|counter_value1[4]~41\);

-- Location: FF_X66_Y50_N9
\clock_scaler|counter_value1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[4]~40_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(4));

-- Location: LCCOMB_X66_Y50_N10
\clock_scaler|counter_value1[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[5]~42_combout\ = (\clock_scaler|counter_value1\(5) & (!\clock_scaler|counter_value1[4]~41\)) # (!\clock_scaler|counter_value1\(5) & ((\clock_scaler|counter_value1[4]~41\) # (GND)))
-- \clock_scaler|counter_value1[5]~43\ = CARRY((!\clock_scaler|counter_value1[4]~41\) # (!\clock_scaler|counter_value1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(5),
	datad => VCC,
	cin => \clock_scaler|counter_value1[4]~41\,
	combout => \clock_scaler|counter_value1[5]~42_combout\,
	cout => \clock_scaler|counter_value1[5]~43\);

-- Location: FF_X66_Y50_N11
\clock_scaler|counter_value1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[5]~42_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(5));

-- Location: LCCOMB_X66_Y50_N12
\clock_scaler|counter_value1[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[6]~44_combout\ = (\clock_scaler|counter_value1\(6) & (\clock_scaler|counter_value1[5]~43\ $ (GND))) # (!\clock_scaler|counter_value1\(6) & (!\clock_scaler|counter_value1[5]~43\ & VCC))
-- \clock_scaler|counter_value1[6]~45\ = CARRY((\clock_scaler|counter_value1\(6) & !\clock_scaler|counter_value1[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(6),
	datad => VCC,
	cin => \clock_scaler|counter_value1[5]~43\,
	combout => \clock_scaler|counter_value1[6]~44_combout\,
	cout => \clock_scaler|counter_value1[6]~45\);

-- Location: FF_X66_Y50_N13
\clock_scaler|counter_value1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[6]~44_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(6));

-- Location: LCCOMB_X66_Y50_N14
\clock_scaler|counter_value1[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[7]~46_combout\ = (\clock_scaler|counter_value1\(7) & (!\clock_scaler|counter_value1[6]~45\)) # (!\clock_scaler|counter_value1\(7) & ((\clock_scaler|counter_value1[6]~45\) # (GND)))
-- \clock_scaler|counter_value1[7]~47\ = CARRY((!\clock_scaler|counter_value1[6]~45\) # (!\clock_scaler|counter_value1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(7),
	datad => VCC,
	cin => \clock_scaler|counter_value1[6]~45\,
	combout => \clock_scaler|counter_value1[7]~46_combout\,
	cout => \clock_scaler|counter_value1[7]~47\);

-- Location: FF_X66_Y50_N15
\clock_scaler|counter_value1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[7]~46_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(7));

-- Location: LCCOMB_X66_Y50_N16
\clock_scaler|counter_value1[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[8]~48_combout\ = (\clock_scaler|counter_value1\(8) & (\clock_scaler|counter_value1[7]~47\ $ (GND))) # (!\clock_scaler|counter_value1\(8) & (!\clock_scaler|counter_value1[7]~47\ & VCC))
-- \clock_scaler|counter_value1[8]~49\ = CARRY((\clock_scaler|counter_value1\(8) & !\clock_scaler|counter_value1[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(8),
	datad => VCC,
	cin => \clock_scaler|counter_value1[7]~47\,
	combout => \clock_scaler|counter_value1[8]~48_combout\,
	cout => \clock_scaler|counter_value1[8]~49\);

-- Location: FF_X66_Y50_N17
\clock_scaler|counter_value1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[8]~48_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(8));

-- Location: LCCOMB_X66_Y50_N18
\clock_scaler|counter_value1[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[9]~50_combout\ = (\clock_scaler|counter_value1\(9) & (!\clock_scaler|counter_value1[8]~49\)) # (!\clock_scaler|counter_value1\(9) & ((\clock_scaler|counter_value1[8]~49\) # (GND)))
-- \clock_scaler|counter_value1[9]~51\ = CARRY((!\clock_scaler|counter_value1[8]~49\) # (!\clock_scaler|counter_value1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(9),
	datad => VCC,
	cin => \clock_scaler|counter_value1[8]~49\,
	combout => \clock_scaler|counter_value1[9]~50_combout\,
	cout => \clock_scaler|counter_value1[9]~51\);

-- Location: FF_X66_Y50_N19
\clock_scaler|counter_value1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[9]~50_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(9));

-- Location: LCCOMB_X66_Y50_N20
\clock_scaler|counter_value1[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[10]~52_combout\ = (\clock_scaler|counter_value1\(10) & (\clock_scaler|counter_value1[9]~51\ $ (GND))) # (!\clock_scaler|counter_value1\(10) & (!\clock_scaler|counter_value1[9]~51\ & VCC))
-- \clock_scaler|counter_value1[10]~53\ = CARRY((\clock_scaler|counter_value1\(10) & !\clock_scaler|counter_value1[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(10),
	datad => VCC,
	cin => \clock_scaler|counter_value1[9]~51\,
	combout => \clock_scaler|counter_value1[10]~52_combout\,
	cout => \clock_scaler|counter_value1[10]~53\);

-- Location: FF_X66_Y50_N21
\clock_scaler|counter_value1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[10]~52_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(10));

-- Location: LCCOMB_X66_Y50_N22
\clock_scaler|counter_value1[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[11]~54_combout\ = (\clock_scaler|counter_value1\(11) & (!\clock_scaler|counter_value1[10]~53\)) # (!\clock_scaler|counter_value1\(11) & ((\clock_scaler|counter_value1[10]~53\) # (GND)))
-- \clock_scaler|counter_value1[11]~55\ = CARRY((!\clock_scaler|counter_value1[10]~53\) # (!\clock_scaler|counter_value1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(11),
	datad => VCC,
	cin => \clock_scaler|counter_value1[10]~53\,
	combout => \clock_scaler|counter_value1[11]~54_combout\,
	cout => \clock_scaler|counter_value1[11]~55\);

-- Location: FF_X66_Y50_N23
\clock_scaler|counter_value1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[11]~54_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(11));

-- Location: LCCOMB_X66_Y50_N24
\clock_scaler|counter_value1[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[12]~56_combout\ = (\clock_scaler|counter_value1\(12) & (\clock_scaler|counter_value1[11]~55\ $ (GND))) # (!\clock_scaler|counter_value1\(12) & (!\clock_scaler|counter_value1[11]~55\ & VCC))
-- \clock_scaler|counter_value1[12]~57\ = CARRY((\clock_scaler|counter_value1\(12) & !\clock_scaler|counter_value1[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(12),
	datad => VCC,
	cin => \clock_scaler|counter_value1[11]~55\,
	combout => \clock_scaler|counter_value1[12]~56_combout\,
	cout => \clock_scaler|counter_value1[12]~57\);

-- Location: FF_X66_Y50_N25
\clock_scaler|counter_value1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[12]~56_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(12));

-- Location: LCCOMB_X66_Y50_N26
\clock_scaler|counter_value1[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[13]~58_combout\ = (\clock_scaler|counter_value1\(13) & (!\clock_scaler|counter_value1[12]~57\)) # (!\clock_scaler|counter_value1\(13) & ((\clock_scaler|counter_value1[12]~57\) # (GND)))
-- \clock_scaler|counter_value1[13]~59\ = CARRY((!\clock_scaler|counter_value1[12]~57\) # (!\clock_scaler|counter_value1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(13),
	datad => VCC,
	cin => \clock_scaler|counter_value1[12]~57\,
	combout => \clock_scaler|counter_value1[13]~58_combout\,
	cout => \clock_scaler|counter_value1[13]~59\);

-- Location: FF_X66_Y50_N27
\clock_scaler|counter_value1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[13]~58_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(13));

-- Location: LCCOMB_X66_Y50_N28
\clock_scaler|counter_value1[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[14]~60_combout\ = (\clock_scaler|counter_value1\(14) & (\clock_scaler|counter_value1[13]~59\ $ (GND))) # (!\clock_scaler|counter_value1\(14) & (!\clock_scaler|counter_value1[13]~59\ & VCC))
-- \clock_scaler|counter_value1[14]~61\ = CARRY((\clock_scaler|counter_value1\(14) & !\clock_scaler|counter_value1[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(14),
	datad => VCC,
	cin => \clock_scaler|counter_value1[13]~59\,
	combout => \clock_scaler|counter_value1[14]~60_combout\,
	cout => \clock_scaler|counter_value1[14]~61\);

-- Location: FF_X66_Y50_N29
\clock_scaler|counter_value1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[14]~60_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(14));

-- Location: LCCOMB_X66_Y50_N30
\clock_scaler|counter_value1[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[15]~62_combout\ = (\clock_scaler|counter_value1\(15) & (!\clock_scaler|counter_value1[14]~61\)) # (!\clock_scaler|counter_value1\(15) & ((\clock_scaler|counter_value1[14]~61\) # (GND)))
-- \clock_scaler|counter_value1[15]~63\ = CARRY((!\clock_scaler|counter_value1[14]~61\) # (!\clock_scaler|counter_value1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(15),
	datad => VCC,
	cin => \clock_scaler|counter_value1[14]~61\,
	combout => \clock_scaler|counter_value1[15]~62_combout\,
	cout => \clock_scaler|counter_value1[15]~63\);

-- Location: FF_X66_Y50_N31
\clock_scaler|counter_value1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[15]~62_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(15));

-- Location: LCCOMB_X66_Y49_N0
\clock_scaler|counter_value1[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[16]~64_combout\ = (\clock_scaler|counter_value1\(16) & (\clock_scaler|counter_value1[15]~63\ $ (GND))) # (!\clock_scaler|counter_value1\(16) & (!\clock_scaler|counter_value1[15]~63\ & VCC))
-- \clock_scaler|counter_value1[16]~65\ = CARRY((\clock_scaler|counter_value1\(16) & !\clock_scaler|counter_value1[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(16),
	datad => VCC,
	cin => \clock_scaler|counter_value1[15]~63\,
	combout => \clock_scaler|counter_value1[16]~64_combout\,
	cout => \clock_scaler|counter_value1[16]~65\);

-- Location: FF_X66_Y49_N1
\clock_scaler|counter_value1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[16]~64_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(16));

-- Location: LCCOMB_X66_Y49_N2
\clock_scaler|counter_value1[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[17]~66_combout\ = (\clock_scaler|counter_value1\(17) & (!\clock_scaler|counter_value1[16]~65\)) # (!\clock_scaler|counter_value1\(17) & ((\clock_scaler|counter_value1[16]~65\) # (GND)))
-- \clock_scaler|counter_value1[17]~67\ = CARRY((!\clock_scaler|counter_value1[16]~65\) # (!\clock_scaler|counter_value1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(17),
	datad => VCC,
	cin => \clock_scaler|counter_value1[16]~65\,
	combout => \clock_scaler|counter_value1[17]~66_combout\,
	cout => \clock_scaler|counter_value1[17]~67\);

-- Location: FF_X66_Y49_N3
\clock_scaler|counter_value1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[17]~66_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(17));

-- Location: LCCOMB_X66_Y49_N4
\clock_scaler|counter_value1[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[18]~68_combout\ = (\clock_scaler|counter_value1\(18) & (\clock_scaler|counter_value1[17]~67\ $ (GND))) # (!\clock_scaler|counter_value1\(18) & (!\clock_scaler|counter_value1[17]~67\ & VCC))
-- \clock_scaler|counter_value1[18]~69\ = CARRY((\clock_scaler|counter_value1\(18) & !\clock_scaler|counter_value1[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(18),
	datad => VCC,
	cin => \clock_scaler|counter_value1[17]~67\,
	combout => \clock_scaler|counter_value1[18]~68_combout\,
	cout => \clock_scaler|counter_value1[18]~69\);

-- Location: FF_X66_Y49_N5
\clock_scaler|counter_value1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[18]~68_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(18));

-- Location: LCCOMB_X66_Y49_N6
\clock_scaler|counter_value1[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[19]~70_combout\ = (\clock_scaler|counter_value1\(19) & (!\clock_scaler|counter_value1[18]~69\)) # (!\clock_scaler|counter_value1\(19) & ((\clock_scaler|counter_value1[18]~69\) # (GND)))
-- \clock_scaler|counter_value1[19]~71\ = CARRY((!\clock_scaler|counter_value1[18]~69\) # (!\clock_scaler|counter_value1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(19),
	datad => VCC,
	cin => \clock_scaler|counter_value1[18]~69\,
	combout => \clock_scaler|counter_value1[19]~70_combout\,
	cout => \clock_scaler|counter_value1[19]~71\);

-- Location: FF_X66_Y49_N7
\clock_scaler|counter_value1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[19]~70_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(19));

-- Location: LCCOMB_X66_Y49_N8
\clock_scaler|counter_value1[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[20]~72_combout\ = (\clock_scaler|counter_value1\(20) & (\clock_scaler|counter_value1[19]~71\ $ (GND))) # (!\clock_scaler|counter_value1\(20) & (!\clock_scaler|counter_value1[19]~71\ & VCC))
-- \clock_scaler|counter_value1[20]~73\ = CARRY((\clock_scaler|counter_value1\(20) & !\clock_scaler|counter_value1[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(20),
	datad => VCC,
	cin => \clock_scaler|counter_value1[19]~71\,
	combout => \clock_scaler|counter_value1[20]~72_combout\,
	cout => \clock_scaler|counter_value1[20]~73\);

-- Location: FF_X66_Y49_N9
\clock_scaler|counter_value1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[20]~72_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(20));

-- Location: LCCOMB_X66_Y49_N10
\clock_scaler|counter_value1[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[21]~74_combout\ = (\clock_scaler|counter_value1\(21) & (!\clock_scaler|counter_value1[20]~73\)) # (!\clock_scaler|counter_value1\(21) & ((\clock_scaler|counter_value1[20]~73\) # (GND)))
-- \clock_scaler|counter_value1[21]~75\ = CARRY((!\clock_scaler|counter_value1[20]~73\) # (!\clock_scaler|counter_value1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(21),
	datad => VCC,
	cin => \clock_scaler|counter_value1[20]~73\,
	combout => \clock_scaler|counter_value1[21]~74_combout\,
	cout => \clock_scaler|counter_value1[21]~75\);

-- Location: FF_X66_Y49_N11
\clock_scaler|counter_value1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[21]~74_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(21));

-- Location: LCCOMB_X66_Y49_N12
\clock_scaler|counter_value1[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[22]~76_combout\ = (\clock_scaler|counter_value1\(22) & (\clock_scaler|counter_value1[21]~75\ $ (GND))) # (!\clock_scaler|counter_value1\(22) & (!\clock_scaler|counter_value1[21]~75\ & VCC))
-- \clock_scaler|counter_value1[22]~77\ = CARRY((\clock_scaler|counter_value1\(22) & !\clock_scaler|counter_value1[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(22),
	datad => VCC,
	cin => \clock_scaler|counter_value1[21]~75\,
	combout => \clock_scaler|counter_value1[22]~76_combout\,
	cout => \clock_scaler|counter_value1[22]~77\);

-- Location: FF_X66_Y49_N13
\clock_scaler|counter_value1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[22]~76_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(22));

-- Location: LCCOMB_X66_Y49_N14
\clock_scaler|counter_value1[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[23]~78_combout\ = (\clock_scaler|counter_value1\(23) & (!\clock_scaler|counter_value1[22]~77\)) # (!\clock_scaler|counter_value1\(23) & ((\clock_scaler|counter_value1[22]~77\) # (GND)))
-- \clock_scaler|counter_value1[23]~79\ = CARRY((!\clock_scaler|counter_value1[22]~77\) # (!\clock_scaler|counter_value1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(23),
	datad => VCC,
	cin => \clock_scaler|counter_value1[22]~77\,
	combout => \clock_scaler|counter_value1[23]~78_combout\,
	cout => \clock_scaler|counter_value1[23]~79\);

-- Location: FF_X66_Y49_N15
\clock_scaler|counter_value1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[23]~78_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(23));

-- Location: LCCOMB_X66_Y49_N16
\clock_scaler|counter_value1[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[24]~80_combout\ = (\clock_scaler|counter_value1\(24) & (\clock_scaler|counter_value1[23]~79\ $ (GND))) # (!\clock_scaler|counter_value1\(24) & (!\clock_scaler|counter_value1[23]~79\ & VCC))
-- \clock_scaler|counter_value1[24]~81\ = CARRY((\clock_scaler|counter_value1\(24) & !\clock_scaler|counter_value1[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(24),
	datad => VCC,
	cin => \clock_scaler|counter_value1[23]~79\,
	combout => \clock_scaler|counter_value1[24]~80_combout\,
	cout => \clock_scaler|counter_value1[24]~81\);

-- Location: FF_X66_Y49_N17
\clock_scaler|counter_value1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[24]~80_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(24));

-- Location: LCCOMB_X66_Y49_N18
\clock_scaler|counter_value1[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[25]~82_combout\ = (\clock_scaler|counter_value1\(25) & (!\clock_scaler|counter_value1[24]~81\)) # (!\clock_scaler|counter_value1\(25) & ((\clock_scaler|counter_value1[24]~81\) # (GND)))
-- \clock_scaler|counter_value1[25]~83\ = CARRY((!\clock_scaler|counter_value1[24]~81\) # (!\clock_scaler|counter_value1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(25),
	datad => VCC,
	cin => \clock_scaler|counter_value1[24]~81\,
	combout => \clock_scaler|counter_value1[25]~82_combout\,
	cout => \clock_scaler|counter_value1[25]~83\);

-- Location: FF_X66_Y49_N19
\clock_scaler|counter_value1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[25]~82_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(25));

-- Location: LCCOMB_X66_Y49_N20
\clock_scaler|counter_value1[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[26]~84_combout\ = (\clock_scaler|counter_value1\(26) & (\clock_scaler|counter_value1[25]~83\ $ (GND))) # (!\clock_scaler|counter_value1\(26) & (!\clock_scaler|counter_value1[25]~83\ & VCC))
-- \clock_scaler|counter_value1[26]~85\ = CARRY((\clock_scaler|counter_value1\(26) & !\clock_scaler|counter_value1[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(26),
	datad => VCC,
	cin => \clock_scaler|counter_value1[25]~83\,
	combout => \clock_scaler|counter_value1[26]~84_combout\,
	cout => \clock_scaler|counter_value1[26]~85\);

-- Location: FF_X66_Y49_N21
\clock_scaler|counter_value1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[26]~84_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(26));

-- Location: LCCOMB_X66_Y49_N22
\clock_scaler|counter_value1[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[27]~86_combout\ = (\clock_scaler|counter_value1\(27) & (!\clock_scaler|counter_value1[26]~85\)) # (!\clock_scaler|counter_value1\(27) & ((\clock_scaler|counter_value1[26]~85\) # (GND)))
-- \clock_scaler|counter_value1[27]~87\ = CARRY((!\clock_scaler|counter_value1[26]~85\) # (!\clock_scaler|counter_value1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(27),
	datad => VCC,
	cin => \clock_scaler|counter_value1[26]~85\,
	combout => \clock_scaler|counter_value1[27]~86_combout\,
	cout => \clock_scaler|counter_value1[27]~87\);

-- Location: FF_X66_Y49_N23
\clock_scaler|counter_value1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[27]~86_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(27));

-- Location: LCCOMB_X66_Y49_N24
\clock_scaler|counter_value1[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[28]~88_combout\ = (\clock_scaler|counter_value1\(28) & (\clock_scaler|counter_value1[27]~87\ $ (GND))) # (!\clock_scaler|counter_value1\(28) & (!\clock_scaler|counter_value1[27]~87\ & VCC))
-- \clock_scaler|counter_value1[28]~89\ = CARRY((\clock_scaler|counter_value1\(28) & !\clock_scaler|counter_value1[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(28),
	datad => VCC,
	cin => \clock_scaler|counter_value1[27]~87\,
	combout => \clock_scaler|counter_value1[28]~88_combout\,
	cout => \clock_scaler|counter_value1[28]~89\);

-- Location: FF_X66_Y49_N25
\clock_scaler|counter_value1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[28]~88_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(28));

-- Location: LCCOMB_X66_Y49_N26
\clock_scaler|counter_value1[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[29]~90_combout\ = (\clock_scaler|counter_value1\(29) & (!\clock_scaler|counter_value1[28]~89\)) # (!\clock_scaler|counter_value1\(29) & ((\clock_scaler|counter_value1[28]~89\) # (GND)))
-- \clock_scaler|counter_value1[29]~91\ = CARRY((!\clock_scaler|counter_value1[28]~89\) # (!\clock_scaler|counter_value1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(29),
	datad => VCC,
	cin => \clock_scaler|counter_value1[28]~89\,
	combout => \clock_scaler|counter_value1[29]~90_combout\,
	cout => \clock_scaler|counter_value1[29]~91\);

-- Location: FF_X66_Y49_N27
\clock_scaler|counter_value1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[29]~90_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(29));

-- Location: LCCOMB_X66_Y49_N28
\clock_scaler|counter_value1[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[30]~92_combout\ = (\clock_scaler|counter_value1\(30) & (\clock_scaler|counter_value1[29]~91\ $ (GND))) # (!\clock_scaler|counter_value1\(30) & (!\clock_scaler|counter_value1[29]~91\ & VCC))
-- \clock_scaler|counter_value1[30]~93\ = CARRY((\clock_scaler|counter_value1\(30) & !\clock_scaler|counter_value1[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_scaler|counter_value1\(30),
	datad => VCC,
	cin => \clock_scaler|counter_value1[29]~91\,
	combout => \clock_scaler|counter_value1[30]~92_combout\,
	cout => \clock_scaler|counter_value1[30]~93\);

-- Location: FF_X66_Y49_N29
\clock_scaler|counter_value1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[30]~92_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(30));

-- Location: LCCOMB_X66_Y49_N30
\clock_scaler|counter_value1[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|counter_value1[31]~94_combout\ = \clock_scaler|counter_value1\(31) $ (\clock_scaler|counter_value1[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(31),
	cin => \clock_scaler|counter_value1[30]~93\,
	combout => \clock_scaler|counter_value1[31]~94_combout\);

-- Location: FF_X66_Y49_N31
\clock_scaler|counter_value1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|counter_value1[31]~94_combout\,
	sclr => \ALT_INV_Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|counter_value1\(31));

-- Location: LCCOMB_X65_Y49_N22
\clock_scaler|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|LessThan0~6_combout\ = (\clock_scaler|counter_value1\(23)) # ((\clock_scaler|counter_value1\(20)) # ((\clock_scaler|counter_value1\(22)) # (\clock_scaler|counter_value1\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(23),
	datab => \clock_scaler|counter_value1\(20),
	datac => \clock_scaler|counter_value1\(22),
	datad => \clock_scaler|counter_value1\(21),
	combout => \clock_scaler|LessThan0~6_combout\);

-- Location: LCCOMB_X65_Y50_N30
\clock_scaler|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|LessThan0~3_combout\ = (\clock_scaler|counter_value1\(15)) # ((\clock_scaler|counter_value1\(14)) # ((\clock_scaler|counter_value1\(12)) # (\clock_scaler|counter_value1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(15),
	datab => \clock_scaler|counter_value1\(14),
	datac => \clock_scaler|counter_value1\(12),
	datad => \clock_scaler|counter_value1\(13),
	combout => \clock_scaler|LessThan0~3_combout\);

-- Location: LCCOMB_X65_Y50_N14
\clock_scaler|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|LessThan0~1_combout\ = (\clock_scaler|counter_value1\(5)) # ((\clock_scaler|counter_value1\(4)) # ((\clock_scaler|counter_value1\(7)) # (\clock_scaler|counter_value1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(5),
	datab => \clock_scaler|counter_value1\(4),
	datac => \clock_scaler|counter_value1\(7),
	datad => \clock_scaler|counter_value1\(6),
	combout => \clock_scaler|LessThan0~1_combout\);

-- Location: LCCOMB_X65_Y50_N8
\clock_scaler|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|LessThan0~2_combout\ = (\clock_scaler|counter_value1\(10)) # ((\clock_scaler|counter_value1\(8)) # ((\clock_scaler|counter_value1\(11)) # (\clock_scaler|counter_value1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(10),
	datab => \clock_scaler|counter_value1\(8),
	datac => \clock_scaler|counter_value1\(11),
	datad => \clock_scaler|counter_value1\(9),
	combout => \clock_scaler|LessThan0~2_combout\);

-- Location: LCCOMB_X65_Y50_N28
\clock_scaler|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|LessThan0~0_combout\ = (\clock_scaler|counter_value1\(3)) # ((\clock_scaler|counter_value1\(0)) # ((\clock_scaler|counter_value1\(2)) # (\clock_scaler|counter_value1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(3),
	datab => \clock_scaler|counter_value1\(0),
	datac => \clock_scaler|counter_value1\(2),
	datad => \clock_scaler|counter_value1\(1),
	combout => \clock_scaler|LessThan0~0_combout\);

-- Location: LCCOMB_X65_Y50_N0
\clock_scaler|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|LessThan0~4_combout\ = (\clock_scaler|LessThan0~3_combout\) # ((\clock_scaler|LessThan0~1_combout\) # ((\clock_scaler|LessThan0~2_combout\) # (\clock_scaler|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|LessThan0~3_combout\,
	datab => \clock_scaler|LessThan0~1_combout\,
	datac => \clock_scaler|LessThan0~2_combout\,
	datad => \clock_scaler|LessThan0~0_combout\,
	combout => \clock_scaler|LessThan0~4_combout\);

-- Location: LCCOMB_X65_Y49_N8
\clock_scaler|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|LessThan0~5_combout\ = (\clock_scaler|counter_value1\(18)) # ((\clock_scaler|counter_value1\(16)) # ((\clock_scaler|counter_value1\(19)) # (\clock_scaler|counter_value1\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(18),
	datab => \clock_scaler|counter_value1\(16),
	datac => \clock_scaler|counter_value1\(19),
	datad => \clock_scaler|counter_value1\(17),
	combout => \clock_scaler|LessThan0~5_combout\);

-- Location: LCCOMB_X65_Y49_N0
\clock_scaler|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|LessThan0~7_combout\ = (\clock_scaler|counter_value1\(26)) # ((\clock_scaler|counter_value1\(24)) # ((\clock_scaler|counter_value1\(25)) # (\clock_scaler|counter_value1\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(26),
	datab => \clock_scaler|counter_value1\(24),
	datac => \clock_scaler|counter_value1\(25),
	datad => \clock_scaler|counter_value1\(27),
	combout => \clock_scaler|LessThan0~7_combout\);

-- Location: LCCOMB_X65_Y50_N6
\clock_scaler|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|LessThan0~8_combout\ = (\clock_scaler|counter_value1\(30)) # ((\clock_scaler|counter_value1\(28)) # ((\clock_scaler|counter_value1\(29)) # (\clock_scaler|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(30),
	datab => \clock_scaler|counter_value1\(28),
	datac => \clock_scaler|counter_value1\(29),
	datad => \clock_scaler|LessThan0~7_combout\,
	combout => \clock_scaler|LessThan0~8_combout\);

-- Location: LCCOMB_X65_Y50_N16
\clock_scaler|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|LessThan0~9_combout\ = (\clock_scaler|LessThan0~6_combout\) # ((\clock_scaler|LessThan0~4_combout\) # ((\clock_scaler|LessThan0~5_combout\) # (\clock_scaler|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|LessThan0~6_combout\,
	datab => \clock_scaler|LessThan0~4_combout\,
	datac => \clock_scaler|LessThan0~5_combout\,
	datad => \clock_scaler|LessThan0~8_combout\,
	combout => \clock_scaler|LessThan0~9_combout\);

-- Location: LCCOMB_X65_Y50_N10
\clock_scaler|Toggle4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|Toggle4~0_combout\ = (!\clock_scaler|counter_value1\(31) & (\Enable~input_o\ & (!\clock_scaler|counter_value1\(0) & \clock_scaler|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(31),
	datab => \Enable~input_o\,
	datac => \clock_scaler|counter_value1\(0),
	datad => \clock_scaler|LessThan0~9_combout\,
	combout => \clock_scaler|Toggle4~0_combout\);

-- Location: LCCOMB_X65_Y50_N20
\clock_scaler|Toggle3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|Toggle3~0_combout\ = \clock_scaler|Toggle3~q\ $ (((!\clock_scaler|counter_value1\(1) & (!\clock_scaler|counter_value1\(2) & \clock_scaler|Toggle4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(1),
	datab => \clock_scaler|counter_value1\(2),
	datac => \clock_scaler|Toggle3~q\,
	datad => \clock_scaler|Toggle4~0_combout\,
	combout => \clock_scaler|Toggle3~0_combout\);

-- Location: FF_X65_Y50_N21
\clock_scaler|Toggle3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|Toggle3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|Toggle3~q\);

-- Location: LCCOMB_X65_Y50_N4
\clock_scaler|Toggle1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|Toggle1~0_combout\ = \clock_scaler|Toggle1~q\ $ (\clock_scaler|Toggle4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_scaler|Toggle1~q\,
	datad => \clock_scaler|Toggle4~0_combout\,
	combout => \clock_scaler|Toggle1~0_combout\);

-- Location: FF_X65_Y50_N5
\clock_scaler|Toggle1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|Toggle1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|Toggle1~q\);

-- Location: IOIBUF_X51_Y54_N29
\Clk_Selector[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk_Selector(0),
	o => \Clk_Selector[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\Clk_Selector[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk_Selector(1),
	o => \Clk_Selector[1]~input_o\);

-- Location: LCCOMB_X65_Y50_N22
\clock_scaler|Toggle2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|Toggle2~0_combout\ = \clock_scaler|Toggle2~q\ $ (((!\clock_scaler|counter_value1\(1) & \clock_scaler|Toggle4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(1),
	datac => \clock_scaler|Toggle2~q\,
	datad => \clock_scaler|Toggle4~0_combout\,
	combout => \clock_scaler|Toggle2~0_combout\);

-- Location: FF_X65_Y50_N23
\clock_scaler|Toggle2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|Toggle2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|Toggle2~q\);

-- Location: LCCOMB_X64_Y50_N28
\clock_multiplexer|Clk_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_multiplexer|Clk_out~0_combout\ = (\Clk_Selector[0]~input_o\ & (((\Clk_Selector[1]~input_o\) # (\clock_scaler|Toggle2~q\)))) # (!\Clk_Selector[0]~input_o\ & (\clock_scaler|Toggle1~q\ & (!\Clk_Selector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|Toggle1~q\,
	datab => \Clk_Selector[0]~input_o\,
	datac => \Clk_Selector[1]~input_o\,
	datad => \clock_scaler|Toggle2~q\,
	combout => \clock_multiplexer|Clk_out~0_combout\);

-- Location: LCCOMB_X65_Y50_N12
\clock_scaler|Toggle4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|Toggle4~1_combout\ = (!\clock_scaler|counter_value1\(3) & (!\clock_scaler|counter_value1\(2) & !\clock_scaler|counter_value1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|counter_value1\(3),
	datac => \clock_scaler|counter_value1\(2),
	datad => \clock_scaler|counter_value1\(1),
	combout => \clock_scaler|Toggle4~1_combout\);

-- Location: LCCOMB_X65_Y50_N26
\clock_scaler|Toggle4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_scaler|Toggle4~2_combout\ = \clock_scaler|Toggle4~q\ $ (((\clock_scaler|Toggle4~1_combout\ & \clock_scaler|Toggle4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|Toggle4~1_combout\,
	datac => \clock_scaler|Toggle4~q\,
	datad => \clock_scaler|Toggle4~0_combout\,
	combout => \clock_scaler|Toggle4~2_combout\);

-- Location: FF_X65_Y50_N27
\clock_scaler|Toggle4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk_in~inputclkctrl_outclk\,
	d => \clock_scaler|Toggle4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_scaler|Toggle4~q\);

-- Location: LCCOMB_X64_Y50_N10
\clock_multiplexer|Clk_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_multiplexer|Clk_out~1_combout\ = (\clock_multiplexer|Clk_out~0_combout\ & (((\clock_scaler|Toggle4~q\) # (!\Clk_Selector[1]~input_o\)))) # (!\clock_multiplexer|Clk_out~0_combout\ & (\clock_scaler|Toggle3~q\ & (\Clk_Selector[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_scaler|Toggle3~q\,
	datab => \clock_multiplexer|Clk_out~0_combout\,
	datac => \Clk_Selector[1]~input_o\,
	datad => \clock_scaler|Toggle4~q\,
	combout => \clock_multiplexer|Clk_out~1_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Clk_Out <= \Clk_Out~output_o\;
END structure;


