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

-- DATE "09/08/2023 16:05:52"

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

ENTITY 	graph IS
    PORT (
	clk_in : IN std_logic;
	PB : IN std_logic;
	x : BUFFER std_logic;
	y : BUFFER std_logic;
	z : BUFFER std_logic
	);
END graph;

-- Design Ports Information
-- x	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF graph IS
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
SIGNAL ww_PB : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \x~output_o\ : std_logic;
SIGNAL \y~output_o\ : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \PB~input_o\ : std_logic;
SIGNAL \state.S3~q\ : std_logic;
SIGNAL \tx[2]~2_combout\ : std_logic;
SIGNAL \state.S0~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \state.S1~q\ : std_logic;
SIGNAL \tx[2]~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \tx[25]~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \state.S2~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \ty[0]~23_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Selector56~1_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \ty[3]~22_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \ty[4]~21_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \ty[5]~20_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \ty[6]~19_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \ty[7]~18_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \ty[8]~17_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \ty[9]~16_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \ty[10]~15_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \ty[11]~14_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \ty[12]~13_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \ty[13]~12_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \ty[14]~11_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \ty[15]~10_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \ty[16]~9_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \ty[17]~8_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \ty[18]~7_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \ty[19]~6_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \ty[20]~5_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \ty[21]~4_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \ty[22]~3_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \ty[23]~2_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \ty[24]~1_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \ty[25]~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \state2.y4~q\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \state2.y1~q\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \state2.y2~q\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \state2.y3~q\ : std_logic;
SIGNAL \x~0_combout\ : std_logic;
SIGNAL \x~1_combout\ : std_logic;
SIGNAL \x~reg0_q\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Selector59~1_combout\ : std_logic;
SIGNAL \y~reg0_q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \tz[0]~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3_combout\ : std_logic;
SIGNAL \Add2~77_combout\ : std_logic;
SIGNAL \tz[2]~1_combout\ : std_logic;
SIGNAL \Add2~4\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add2~76_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~7_combout\ : std_logic;
SIGNAL \Add2~75_combout\ : std_logic;
SIGNAL \Add2~8\ : std_logic;
SIGNAL \Add2~9_combout\ : std_logic;
SIGNAL \Add2~74_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~11_combout\ : std_logic;
SIGNAL \Add2~73_combout\ : std_logic;
SIGNAL \Add2~12\ : std_logic;
SIGNAL \Add2~13_combout\ : std_logic;
SIGNAL \Add2~72_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add2~71_combout\ : std_logic;
SIGNAL \Add2~16\ : std_logic;
SIGNAL \Add2~17_combout\ : std_logic;
SIGNAL \Add2~70_combout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~19_combout\ : std_logic;
SIGNAL \Add2~69_combout\ : std_logic;
SIGNAL \Add2~20\ : std_logic;
SIGNAL \Add2~21_combout\ : std_logic;
SIGNAL \Add2~68_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~23_combout\ : std_logic;
SIGNAL \Add2~67_combout\ : std_logic;
SIGNAL \Add2~24\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \Add2~66_combout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~27_combout\ : std_logic;
SIGNAL \Add2~65_combout\ : std_logic;
SIGNAL \Add2~28\ : std_logic;
SIGNAL \Add2~29_combout\ : std_logic;
SIGNAL \Add2~64_combout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~31_combout\ : std_logic;
SIGNAL \Add2~63_combout\ : std_logic;
SIGNAL \Add2~32\ : std_logic;
SIGNAL \Add2~33_combout\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;
SIGNAL \Add2~61_combout\ : std_logic;
SIGNAL \Add2~36\ : std_logic;
SIGNAL \Add2~37_combout\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~39_combout\ : std_logic;
SIGNAL \Add2~59_combout\ : std_logic;
SIGNAL \Add2~40\ : std_logic;
SIGNAL \Add2~41_combout\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~43_combout\ : std_logic;
SIGNAL \Add2~57_combout\ : std_logic;
SIGNAL \Add2~44\ : std_logic;
SIGNAL \Add2~45_combout\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~47_combout\ : std_logic;
SIGNAL \Add2~55_combout\ : std_logic;
SIGNAL \Add2~48\ : std_logic;
SIGNAL \Add2~49_combout\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~51_combout\ : std_logic;
SIGNAL \Add2~53_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \state3.S3~q\ : std_logic;
SIGNAL \tz[2]~2_combout\ : std_logic;
SIGNAL \state3.S0~q\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \state3.S1~q\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \state3.S2~q\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \Selector90~1_combout\ : std_logic;
SIGNAL \z~reg0_q\ : std_logic;
SIGNAL tx : std_logic_vector(25 DOWNTO 0);
SIGNAL ty : std_logic_vector(25 DOWNTO 0);
SIGNAL tz : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_x~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_in <= clk_in;
ww_PB <= PB;
x <= ww_x;
y <= ww_y;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);
\ALT_INV_x~reg0_q\ <= NOT \x~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X24_Y0_N16
\x~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_x~reg0_q\,
	devoe => ww_devoe,
	o => \x~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\y~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y~reg0_q\,
	devoe => ww_devoe,
	o => \y~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~reg0_q\,
	devoe => ww_devoe,
	o => \z~output_o\);

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: CLKCTRL_G19
\clk_in~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

-- Location: LCCOMB_X18_Y17_N2
\Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\state.S2~q\) # ((!\Equal0~8_combout\ & \state.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datac => \state.S3~q\,
	datad => \state.S2~q\,
	combout => \Selector30~0_combout\);

-- Location: IOIBUF_X49_Y54_N29
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

-- Location: FF_X18_Y17_N3
\state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector30~0_combout\,
	clrn => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S3~q\);

-- Location: LCCOMB_X18_Y17_N14
\tx[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx[2]~2_combout\ = (!\state.S3~q\) # (!\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \state.S3~q\,
	combout => \tx[2]~2_combout\);

-- Location: FF_X18_Y17_N15
\state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \tx[2]~2_combout\,
	clrn => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S0~q\);

-- Location: LCCOMB_X20_Y18_N6
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = tx(0) $ (VCC)
-- \Add0~1\ = CARRY(tx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X21_Y17_N4
\Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\state.S2~q\) # ((\Add0~0_combout\ & \state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S2~q\,
	datac => \Add0~0_combout\,
	datad => \state.S0~q\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X18_Y17_N20
\Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = ((\state.S1~q\ & !\Equal0~8_combout\)) # (!\state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S0~q\,
	datac => \state.S1~q\,
	datad => \Equal0~8_combout\,
	combout => \Selector28~0_combout\);

-- Location: FF_X18_Y17_N21
\state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector28~0_combout\,
	clrn => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S1~q\);

-- Location: LCCOMB_X21_Y17_N18
\tx[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx[2]~1_combout\ = (\PB~input_o\ & (((!\state.S3~q\ & !\state.S1~q\)) # (!\Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB~input_o\,
	datab => \state.S3~q\,
	datac => \state.S1~q\,
	datad => \Equal0~8_combout\,
	combout => \tx[2]~1_combout\);

-- Location: FF_X21_Y17_N5
\tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	ena => \tx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(0));

-- Location: LCCOMB_X20_Y18_N8
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (tx(1) & (\Add0~1\ & VCC)) # (!tx(1) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!tx(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X20_Y18_N0
\Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\state.S2~q\) # ((\Add0~2_combout\) # (!\state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S2~q\,
	datac => \Add0~2_combout\,
	datad => \state.S0~q\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X19_Y17_N18
\tx[25]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx[25]~0_combout\ = (\PB~input_o\ & (((\state.S2~q\) # (!\Equal0~8_combout\)) # (!\state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datab => \PB~input_o\,
	datac => \state.S2~q\,
	datad => \Equal0~8_combout\,
	combout => \tx[25]~0_combout\);

-- Location: FF_X20_Y18_N1
\tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(1));

-- Location: LCCOMB_X20_Y18_N10
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (tx(2) & ((GND) # (!\Add0~3\))) # (!tx(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((tx(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X21_Y17_N0
\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\state.S2~q\) # ((\state.S0~q\ & \Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datac => \state.S2~q\,
	datad => \Add0~4_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X21_Y17_N1
\tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	ena => \tx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(2));

-- Location: LCCOMB_X20_Y18_N12
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (tx(3) & (\Add0~5\ & VCC)) # (!tx(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!tx(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X21_Y17_N26
\Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\state.S2~q\ & (\Add0~6_combout\ & \state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S2~q\,
	datac => \Add0~6_combout\,
	datad => \state.S0~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X21_Y17_N27
\tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(3));

-- Location: LCCOMB_X20_Y18_N14
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (tx(4) & ((GND) # (!\Add0~7\))) # (!tx(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((tx(4)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X19_Y18_N16
\Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (!\state.S2~q\ & (\Add0~8_combout\ & \state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S2~q\,
	datac => \Add0~8_combout\,
	datad => \state.S0~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X20_Y18_N19
\tx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \Selector21~0_combout\,
	sload => VCC,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(4));

-- Location: LCCOMB_X20_Y18_N16
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (tx(5) & (\Add0~9\ & VCC)) # (!tx(5) & (!\Add0~9\))
-- \Add0~11\ = CARRY((!tx(5) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X21_Y17_N12
\Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (!\state.S2~q\ & (\Add0~10_combout\ & \state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S2~q\,
	datac => \Add0~10_combout\,
	datad => \state.S0~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X20_Y17_N9
\tx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \Selector20~0_combout\,
	sload => VCC,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(5));

-- Location: LCCOMB_X20_Y18_N18
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (tx(6) & ((GND) # (!\Add0~11\))) # (!tx(6) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((tx(6)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X19_Y18_N12
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state.S0~q\ & (!\state.S2~q\ & \Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datac => \state.S2~q\,
	datad => \Add0~12_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X19_Y18_N13
\tx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(6));

-- Location: LCCOMB_X20_Y18_N20
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (tx(7) & (\Add0~13\ & VCC)) # (!tx(7) & (!\Add0~13\))
-- \Add0~15\ = CARRY((!tx(7) & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X19_Y18_N14
\Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!\state.S2~q\ & (\Add0~14_combout\ & \state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S2~q\,
	datac => \Add0~14_combout\,
	datad => \state.S0~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X19_Y18_N15
\tx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(7));

-- Location: LCCOMB_X20_Y18_N22
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (tx(8) & ((GND) # (!\Add0~15\))) # (!tx(8) & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((tx(8)) # (!\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X20_Y18_N2
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\state.S2~q\ & (\Add0~16_combout\ & \state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S2~q\,
	datac => \Add0~16_combout\,
	datad => \state.S0~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X20_Y18_N3
\tx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(8));

-- Location: LCCOMB_X20_Y18_N24
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (tx(9) & (\Add0~17\ & VCC)) # (!tx(9) & (!\Add0~17\))
-- \Add0~19\ = CARRY((!tx(9) & !\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X19_Y18_N28
\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.S0~q\ & (!\state.S2~q\ & \Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datac => \state.S2~q\,
	datad => \Add0~18_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X19_Y18_N29
\tx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(9));

-- Location: LCCOMB_X19_Y18_N30
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!tx(6) & (!tx(9) & (!tx(7) & !tx(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx(6),
	datab => tx(9),
	datac => tx(7),
	datad => tx(8),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X21_Y17_N6
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!tx(0) & !tx(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tx(0),
	datad => tx(1),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X21_Y17_N22
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!tx(3) & (!tx(2) & (!tx(4) & !tx(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx(3),
	datab => tx(2),
	datac => tx(4),
	datad => tx(5),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X20_Y18_N26
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (tx(10) & ((GND) # (!\Add0~19\))) # (!tx(10) & (\Add0~19\ $ (GND)))
-- \Add0~21\ = CARRY((tx(10)) # (!\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X20_Y18_N4
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (!\state.S2~q\ & (\Add0~20_combout\ & \state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S2~q\,
	datac => \Add0~20_combout\,
	datad => \state.S0~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X20_Y18_N5
\tx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(10));

-- Location: LCCOMB_X20_Y18_N28
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (tx(11) & (\Add0~21\ & VCC)) # (!tx(11) & (!\Add0~21\))
-- \Add0~23\ = CARRY((!tx(11) & !\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X19_Y17_N22
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\state.S0~q\ & (!\state.S2~q\ & \Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datac => \state.S2~q\,
	datad => \Add0~22_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X19_Y17_N23
\tx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(11));

-- Location: LCCOMB_X20_Y18_N30
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (tx(12) & ((GND) # (!\Add0~23\))) # (!tx(12) & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((tx(12)) # (!\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X19_Y17_N0
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.S0~q\ & (!\state.S2~q\ & \Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datac => \state.S2~q\,
	datad => \Add0~24_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X19_Y17_N1
\tx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(12));

-- Location: LCCOMB_X20_Y17_N0
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (tx(13) & (\Add0~25\ & VCC)) # (!tx(13) & (!\Add0~25\))
-- \Add0~27\ = CARRY((!tx(13) & !\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X19_Y17_N14
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\state.S2~q\ & (\Add0~26_combout\ & \state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S2~q\,
	datac => \Add0~26_combout\,
	datad => \state.S0~q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X19_Y17_N15
\tx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(13));

-- Location: LCCOMB_X20_Y17_N2
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (tx(14) & ((GND) # (!\Add0~27\))) # (!tx(14) & (\Add0~27\ $ (GND)))
-- \Add0~29\ = CARRY((tx(14)) # (!\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X19_Y17_N2
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.S0~q\ & (!\state.S2~q\ & \Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datac => \state.S2~q\,
	datad => \Add0~28_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X19_Y17_N3
\tx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(14));

-- Location: LCCOMB_X20_Y17_N4
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (tx(15) & (\Add0~29\ & VCC)) # (!tx(15) & (!\Add0~29\))
-- \Add0~31\ = CARRY((!tx(15) & !\Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X19_Y17_N16
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.S0~q\ & (!\state.S2~q\ & \Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datac => \state.S2~q\,
	datad => \Add0~30_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X19_Y17_N17
\tx[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(15));

-- Location: LCCOMB_X20_Y17_N6
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (tx(16) & ((GND) # (!\Add0~31\))) # (!tx(16) & (\Add0~31\ $ (GND)))
-- \Add0~33\ = CARRY((tx(16)) # (!\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X19_Y17_N26
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state.S0~q\ & (!\state.S2~q\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datac => \state.S2~q\,
	datad => \Add0~32_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X19_Y17_N27
\tx[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(16));

-- Location: LCCOMB_X20_Y17_N8
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (tx(17) & (\Add0~33\ & VCC)) # (!tx(17) & (!\Add0~33\))
-- \Add0~35\ = CARRY((!tx(17) & !\Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X19_Y17_N8
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (!\state.S2~q\ & (\state.S0~q\ & \Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S2~q\,
	datac => \state.S0~q\,
	datad => \Add0~34_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X19_Y17_N9
\tx[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(17));

-- Location: LCCOMB_X20_Y17_N10
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (tx(18) & ((GND) # (!\Add0~35\))) # (!tx(18) & (\Add0~35\ $ (GND)))
-- \Add0~37\ = CARRY((tx(18)) # (!\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X20_Y17_N26
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.S0~q\ & (!\state.S2~q\ & \Add0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S0~q\,
	datac => \state.S2~q\,
	datad => \Add0~36_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X20_Y17_N27
\tx[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(18));

-- Location: LCCOMB_X20_Y17_N12
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (tx(19) & (\Add0~37\ & VCC)) # (!tx(19) & (!\Add0~37\))
-- \Add0~39\ = CARRY((!tx(19) & !\Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X18_Y17_N6
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\state.S2~q\ & (\state.S0~q\ & \Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S2~q\,
	datac => \state.S0~q\,
	datad => \Add0~38_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X18_Y17_N7
\tx[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(19));

-- Location: LCCOMB_X20_Y17_N14
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (tx(20) & ((GND) # (!\Add0~39\))) # (!tx(20) & (\Add0~39\ $ (GND)))
-- \Add0~41\ = CARRY((tx(20)) # (!\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X19_Y17_N4
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\state.S2~q\ & (\Add0~40_combout\ & \state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S2~q\,
	datac => \Add0~40_combout\,
	datad => \state.S0~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X19_Y17_N5
\tx[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(20));

-- Location: LCCOMB_X20_Y17_N16
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (tx(21) & (\Add0~41\ & VCC)) # (!tx(21) & (!\Add0~41\))
-- \Add0~43\ = CARRY((!tx(21) & !\Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X18_Y17_N28
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\state.S2~q\ & (\state.S0~q\ & \Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S2~q\,
	datac => \state.S0~q\,
	datad => \Add0~42_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X18_Y17_N29
\tx[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(21));

-- Location: LCCOMB_X19_Y17_N10
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!tx(18) & (!tx(19) & (!tx(20) & !tx(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx(18),
	datab => tx(19),
	datac => tx(20),
	datad => tx(21),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X19_Y17_N28
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!tx(16) & (!tx(15) & (!tx(17) & !tx(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx(16),
	datab => tx(15),
	datac => tx(17),
	datad => tx(14),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X20_Y17_N18
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (tx(22) & ((GND) # (!\Add0~43\))) # (!tx(22) & (\Add0~43\ $ (GND)))
-- \Add0~45\ = CARRY((tx(22)) # (!\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X20_Y17_N28
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.S0~q\ & (!\state.S2~q\ & \Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S0~q\,
	datac => \state.S2~q\,
	datad => \Add0~44_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X20_Y17_N29
\tx[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(22));

-- Location: LCCOMB_X20_Y17_N20
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (tx(23) & (\Add0~45\ & VCC)) # (!tx(23) & (!\Add0~45\))
-- \Add0~47\ = CARRY((!tx(23) & !\Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X19_Y17_N20
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\state.S2~q\ & (\Add0~46_combout\ & \state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S2~q\,
	datac => \Add0~46_combout\,
	datad => \state.S0~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X19_Y17_N21
\tx[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(23));

-- Location: LCCOMB_X20_Y17_N22
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (tx(24) & ((GND) # (!\Add0~47\))) # (!tx(24) & (\Add0~47\ $ (GND)))
-- \Add0~49\ = CARRY((tx(24)) # (!\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X20_Y17_N30
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.S0~q\ & (\Add0~48_combout\ & !\state.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S0~q\,
	datac => \Add0~48_combout\,
	datad => \state.S2~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X20_Y17_N31
\tx[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(24));

-- Location: LCCOMB_X20_Y17_N24
\Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \Add0~49\ $ (!tx(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => tx(25),
	cin => \Add0~49\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X21_Y17_N8
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.S0~q\ & (!\state.S2~q\ & \Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datac => \state.S2~q\,
	datad => \Add0~50_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X21_Y17_N9
\tx[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \tx[25]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx(25));

-- Location: LCCOMB_X19_Y17_N30
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!tx(23) & (!tx(22) & (!tx(24) & !tx(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx(23),
	datab => tx(22),
	datac => tx(24),
	datad => tx(25),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X19_Y17_N24
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!tx(11) & (!tx(12) & (!tx(13) & !tx(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx(11),
	datab => tx(12),
	datac => tx(13),
	datad => tx(10),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X19_Y17_N6
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X19_Y17_N12
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~5_combout\ & (\Equal0~7_combout\ & (\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X18_Y17_N16
\Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\Equal0~8_combout\ & \state.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \state.S1~q\,
	combout => \Selector29~0_combout\);

-- Location: FF_X18_Y17_N17
\state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector29~0_combout\,
	clrn => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S2~q\);

-- Location: LCCOMB_X56_Y43_N6
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ty(0) $ (VCC)
-- \Add1~1\ = CARRY(ty(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ty(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X56_Y43_N0
\ty[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[0]~23_combout\ = ((\state2.y3~q\) # ((\Add1~0_combout\ & !\Equal1~8_combout\))) # (!\state2.y1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \state2.y1~q\,
	datac => \state2.y3~q\,
	datad => \Equal1~8_combout\,
	combout => \ty[0]~23_combout\);

-- Location: FF_X56_Y43_N1
\ty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[0]~23_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(0));

-- Location: LCCOMB_X56_Y43_N8
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (ty(1) & (\Add1~1\ & VCC)) # (!ty(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!ty(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ty(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X55_Y43_N2
\Selector56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (!\Equal1~8_combout\ & ((\state2.y2~q\) # (\state2.y4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state2.y2~q\,
	datac => \state2.y4~q\,
	datad => \Equal1~8_combout\,
	combout => \Selector56~0_combout\);

-- Location: LCCOMB_X55_Y43_N12
\Selector57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = ((\Add1~2_combout\ & \Selector56~0_combout\)) # (!\state2.y1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state2.y1~q\,
	datac => \Add1~2_combout\,
	datad => \Selector56~0_combout\,
	combout => \Selector57~0_combout\);

-- Location: FF_X55_Y43_N13
\ty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector57~0_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(1));

-- Location: LCCOMB_X56_Y43_N10
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (ty(2) & ((GND) # (!\Add1~3\))) # (!ty(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((ty(2)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ty(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X55_Y43_N0
\Selector56~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector56~1_combout\ = (\state2.y3~q\) # ((\Add1~4_combout\ & \Selector56~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y3~q\,
	datac => \Add1~4_combout\,
	datad => \Selector56~0_combout\,
	combout => \Selector56~1_combout\);

-- Location: FF_X55_Y43_N1
\ty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector56~1_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(2));

-- Location: LCCOMB_X56_Y43_N12
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (ty(3) & (\Add1~5\ & VCC)) # (!ty(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!ty(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ty(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X55_Y43_N14
\ty[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[3]~22_combout\ = (!\state2.y3~q\ & (\state2.y1~q\ & (\Add1~6_combout\ & !\Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y3~q\,
	datab => \state2.y1~q\,
	datac => \Add1~6_combout\,
	datad => \Equal1~8_combout\,
	combout => \ty[3]~22_combout\);

-- Location: FF_X55_Y43_N15
\ty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[3]~22_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(3));

-- Location: LCCOMB_X56_Y43_N14
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (ty(4) & ((GND) # (!\Add1~7\))) # (!ty(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((ty(4)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ty(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X55_Y43_N28
\ty[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[4]~21_combout\ = (!\state2.y3~q\ & (\state2.y1~q\ & (\Add1~8_combout\ & !\Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y3~q\,
	datab => \state2.y1~q\,
	datac => \Add1~8_combout\,
	datad => \Equal1~8_combout\,
	combout => \ty[4]~21_combout\);

-- Location: FF_X55_Y43_N29
\ty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[4]~21_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(4));

-- Location: LCCOMB_X56_Y43_N16
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (ty(5) & (\Add1~9\ & VCC)) # (!ty(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((!ty(5) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ty(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X56_Y43_N2
\ty[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[5]~20_combout\ = (!\Equal1~8_combout\ & (\state2.y1~q\ & (!\state2.y3~q\ & \Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~8_combout\,
	datab => \state2.y1~q\,
	datac => \state2.y3~q\,
	datad => \Add1~10_combout\,
	combout => \ty[5]~20_combout\);

-- Location: FF_X56_Y43_N3
\ty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[5]~20_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(5));

-- Location: LCCOMB_X55_Y43_N10
\Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!ty(2) & (!ty(4) & (!ty(3) & !ty(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ty(2),
	datab => ty(4),
	datac => ty(3),
	datad => ty(5),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X55_Y43_N26
\Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!ty(0) & !ty(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ty(0),
	datad => ty(1),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X56_Y43_N18
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (ty(6) & ((GND) # (!\Add1~11\))) # (!ty(6) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((ty(6)) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ty(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X55_Y43_N4
\ty[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[6]~19_combout\ = (!\state2.y3~q\ & (\state2.y1~q\ & (\Add1~12_combout\ & !\Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y3~q\,
	datab => \state2.y1~q\,
	datac => \Add1~12_combout\,
	datad => \Equal1~8_combout\,
	combout => \ty[6]~19_combout\);

-- Location: FF_X55_Y43_N5
\ty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[6]~19_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(6));

-- Location: LCCOMB_X56_Y43_N20
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (ty(7) & (\Add1~13\ & VCC)) # (!ty(7) & (!\Add1~13\))
-- \Add1~15\ = CARRY((!ty(7) & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ty(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X56_Y43_N4
\ty[7]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[7]~18_combout\ = (!\Equal1~8_combout\ & (\state2.y1~q\ & (!\state2.y3~q\ & \Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~8_combout\,
	datab => \state2.y1~q\,
	datac => \state2.y3~q\,
	datad => \Add1~14_combout\,
	combout => \ty[7]~18_combout\);

-- Location: FF_X56_Y43_N5
\ty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[7]~18_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(7));

-- Location: LCCOMB_X56_Y43_N22
\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (ty(8) & ((GND) # (!\Add1~15\))) # (!ty(8) & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((ty(8)) # (!\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ty(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X55_Y43_N6
\ty[8]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[8]~17_combout\ = (!\Equal1~8_combout\ & (\state2.y1~q\ & (!\state2.y3~q\ & \Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~8_combout\,
	datab => \state2.y1~q\,
	datac => \state2.y3~q\,
	datad => \Add1~16_combout\,
	combout => \ty[8]~17_combout\);

-- Location: FF_X55_Y43_N7
\ty[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[8]~17_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(8));

-- Location: LCCOMB_X56_Y43_N24
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (ty(9) & (\Add1~17\ & VCC)) # (!ty(9) & (!\Add1~17\))
-- \Add1~19\ = CARRY((!ty(9) & !\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ty(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X55_Y43_N24
\ty[9]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[9]~16_combout\ = (!\state2.y3~q\ & (\state2.y1~q\ & (\Add1~18_combout\ & !\Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y3~q\,
	datab => \state2.y1~q\,
	datac => \Add1~18_combout\,
	datad => \Equal1~8_combout\,
	combout => \ty[9]~16_combout\);

-- Location: FF_X55_Y43_N25
\ty[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[9]~16_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(9));

-- Location: LCCOMB_X56_Y43_N26
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (ty(10) & ((GND) # (!\Add1~19\))) # (!ty(10) & (\Add1~19\ $ (GND)))
-- \Add1~21\ = CARRY((ty(10)) # (!\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ty(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X55_Y43_N30
\ty[10]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[10]~15_combout\ = (!\Equal1~8_combout\ & (\state2.y1~q\ & (!\state2.y3~q\ & \Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~8_combout\,
	datab => \state2.y1~q\,
	datac => \state2.y3~q\,
	datad => \Add1~20_combout\,
	combout => \ty[10]~15_combout\);

-- Location: FF_X55_Y43_N31
\ty[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[10]~15_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(10));

-- Location: LCCOMB_X56_Y43_N28
\Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (ty(11) & (\Add1~21\ & VCC)) # (!ty(11) & (!\Add1~21\))
-- \Add1~23\ = CARRY((!ty(11) & !\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ty(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X55_Y42_N0
\ty[11]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[11]~14_combout\ = (\state2.y1~q\ & (!\Equal1~8_combout\ & (!\state2.y3~q\ & \Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y1~q\,
	datab => \Equal1~8_combout\,
	datac => \state2.y3~q\,
	datad => \Add1~22_combout\,
	combout => \ty[11]~14_combout\);

-- Location: FF_X55_Y42_N1
\ty[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[11]~14_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(11));

-- Location: LCCOMB_X56_Y43_N30
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (ty(12) & ((GND) # (!\Add1~23\))) # (!ty(12) & (\Add1~23\ $ (GND)))
-- \Add1~25\ = CARRY((ty(12)) # (!\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ty(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X55_Y42_N10
\ty[12]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[12]~13_combout\ = (\state2.y1~q\ & (!\state2.y3~q\ & (\Add1~24_combout\ & !\Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y1~q\,
	datab => \state2.y3~q\,
	datac => \Add1~24_combout\,
	datad => \Equal1~8_combout\,
	combout => \ty[12]~13_combout\);

-- Location: FF_X55_Y42_N11
\ty[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[12]~13_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(12));

-- Location: LCCOMB_X56_Y42_N0
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (ty(13) & (\Add1~25\ & VCC)) # (!ty(13) & (!\Add1~25\))
-- \Add1~27\ = CARRY((!ty(13) & !\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ty(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X55_Y42_N20
\ty[13]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[13]~12_combout\ = (\state2.y1~q\ & (!\state2.y3~q\ & (\Add1~26_combout\ & !\Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y1~q\,
	datab => \state2.y3~q\,
	datac => \Add1~26_combout\,
	datad => \Equal1~8_combout\,
	combout => \ty[13]~12_combout\);

-- Location: FF_X55_Y42_N21
\ty[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[13]~12_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(13));

-- Location: LCCOMB_X56_Y42_N2
\Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (ty(14) & ((GND) # (!\Add1~27\))) # (!ty(14) & (\Add1~27\ $ (GND)))
-- \Add1~29\ = CARRY((ty(14)) # (!\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ty(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X57_Y42_N20
\ty[14]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[14]~11_combout\ = (!\state2.y3~q\ & (\state2.y1~q\ & (!\Equal1~8_combout\ & \Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y3~q\,
	datab => \state2.y1~q\,
	datac => \Equal1~8_combout\,
	datad => \Add1~28_combout\,
	combout => \ty[14]~11_combout\);

-- Location: FF_X57_Y42_N21
\ty[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[14]~11_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(14));

-- Location: LCCOMB_X56_Y42_N4
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (ty(15) & (\Add1~29\ & VCC)) # (!ty(15) & (!\Add1~29\))
-- \Add1~31\ = CARRY((!ty(15) & !\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ty(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X55_Y42_N16
\ty[15]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[15]~10_combout\ = (\Add1~30_combout\ & (!\state2.y3~q\ & (\state2.y1~q\ & !\Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \state2.y3~q\,
	datac => \state2.y1~q\,
	datad => \Equal1~8_combout\,
	combout => \ty[15]~10_combout\);

-- Location: FF_X55_Y42_N17
\ty[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[15]~10_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(15));

-- Location: LCCOMB_X56_Y42_N6
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (ty(16) & ((GND) # (!\Add1~31\))) # (!ty(16) & (\Add1~31\ $ (GND)))
-- \Add1~33\ = CARRY((ty(16)) # (!\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ty(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X55_Y42_N26
\ty[16]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[16]~9_combout\ = (\Add1~32_combout\ & (!\state2.y3~q\ & (\state2.y1~q\ & !\Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datab => \state2.y3~q\,
	datac => \state2.y1~q\,
	datad => \Equal1~8_combout\,
	combout => \ty[16]~9_combout\);

-- Location: FF_X55_Y42_N27
\ty[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[16]~9_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(16));

-- Location: LCCOMB_X56_Y42_N8
\Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (ty(17) & (\Add1~33\ & VCC)) # (!ty(17) & (!\Add1~33\))
-- \Add1~35\ = CARRY((!ty(17) & !\Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ty(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X55_Y42_N12
\ty[17]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[17]~8_combout\ = (\state2.y1~q\ & (!\state2.y3~q\ & (\Add1~34_combout\ & !\Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y1~q\,
	datab => \state2.y3~q\,
	datac => \Add1~34_combout\,
	datad => \Equal1~8_combout\,
	combout => \ty[17]~8_combout\);

-- Location: FF_X55_Y42_N13
\ty[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[17]~8_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(17));

-- Location: LCCOMB_X56_Y42_N10
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (ty(18) & ((GND) # (!\Add1~35\))) # (!ty(18) & (\Add1~35\ $ (GND)))
-- \Add1~37\ = CARRY((ty(18)) # (!\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ty(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X55_Y42_N28
\ty[18]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[18]~7_combout\ = (\state2.y1~q\ & (!\state2.y3~q\ & (\Add1~36_combout\ & !\Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y1~q\,
	datab => \state2.y3~q\,
	datac => \Add1~36_combout\,
	datad => \Equal1~8_combout\,
	combout => \ty[18]~7_combout\);

-- Location: FF_X55_Y42_N29
\ty[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[18]~7_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(18));

-- Location: LCCOMB_X56_Y42_N12
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (ty(19) & (\Add1~37\ & VCC)) # (!ty(19) & (!\Add1~37\))
-- \Add1~39\ = CARRY((!ty(19) & !\Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ty(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X55_Y42_N6
\ty[19]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[19]~6_combout\ = (\state2.y1~q\ & (!\state2.y3~q\ & (\Add1~38_combout\ & !\Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y1~q\,
	datab => \state2.y3~q\,
	datac => \Add1~38_combout\,
	datad => \Equal1~8_combout\,
	combout => \ty[19]~6_combout\);

-- Location: FF_X55_Y42_N7
\ty[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[19]~6_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(19));

-- Location: LCCOMB_X56_Y42_N14
\Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (ty(20) & ((GND) # (!\Add1~39\))) # (!ty(20) & (\Add1~39\ $ (GND)))
-- \Add1~41\ = CARRY((ty(20)) # (!\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ty(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X55_Y42_N8
\ty[20]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[20]~5_combout\ = (\state2.y1~q\ & (!\state2.y3~q\ & (\Add1~40_combout\ & !\Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y1~q\,
	datab => \state2.y3~q\,
	datac => \Add1~40_combout\,
	datad => \Equal1~8_combout\,
	combout => \ty[20]~5_combout\);

-- Location: FF_X55_Y42_N9
\ty[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[20]~5_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(20));

-- Location: LCCOMB_X56_Y42_N16
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (ty(21) & (\Add1~41\ & VCC)) # (!ty(21) & (!\Add1~41\))
-- \Add1~43\ = CARRY((!ty(21) & !\Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ty(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X55_Y42_N22
\ty[21]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[21]~4_combout\ = (\state2.y1~q\ & (!\Equal1~8_combout\ & (!\state2.y3~q\ & \Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y1~q\,
	datab => \Equal1~8_combout\,
	datac => \state2.y3~q\,
	datad => \Add1~42_combout\,
	combout => \ty[21]~4_combout\);

-- Location: FF_X55_Y42_N23
\ty[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[21]~4_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(21));

-- Location: LCCOMB_X55_Y42_N30
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!ty(19) & (!ty(20) & (!ty(21) & !ty(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ty(19),
	datab => ty(20),
	datac => ty(21),
	datad => ty(18),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X56_Y42_N18
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (ty(22) & ((GND) # (!\Add1~43\))) # (!ty(22) & (\Add1~43\ $ (GND)))
-- \Add1~45\ = CARRY((ty(22)) # (!\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ty(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X56_Y42_N26
\ty[22]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[22]~3_combout\ = (!\Equal1~8_combout\ & (\state2.y1~q\ & (!\state2.y3~q\ & \Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~8_combout\,
	datab => \state2.y1~q\,
	datac => \state2.y3~q\,
	datad => \Add1~44_combout\,
	combout => \ty[22]~3_combout\);

-- Location: FF_X56_Y42_N27
\ty[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[22]~3_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(22));

-- Location: LCCOMB_X56_Y42_N20
\Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (ty(23) & (\Add1~45\ & VCC)) # (!ty(23) & (!\Add1~45\))
-- \Add1~47\ = CARRY((!ty(23) & !\Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ty(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X56_Y42_N28
\ty[23]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[23]~2_combout\ = (!\Equal1~8_combout\ & (\state2.y1~q\ & (!\state2.y3~q\ & \Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~8_combout\,
	datab => \state2.y1~q\,
	datac => \state2.y3~q\,
	datad => \Add1~46_combout\,
	combout => \ty[23]~2_combout\);

-- Location: FF_X56_Y42_N29
\ty[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[23]~2_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(23));

-- Location: LCCOMB_X56_Y42_N22
\Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (ty(24) & ((GND) # (!\Add1~47\))) # (!ty(24) & (\Add1~47\ $ (GND)))
-- \Add1~49\ = CARRY((ty(24)) # (!\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ty(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X56_Y42_N30
\ty[24]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[24]~1_combout\ = (!\state2.y3~q\ & (\state2.y1~q\ & (\Add1~48_combout\ & !\Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y3~q\,
	datab => \state2.y1~q\,
	datac => \Add1~48_combout\,
	datad => \Equal1~8_combout\,
	combout => \ty[24]~1_combout\);

-- Location: FF_X56_Y42_N31
\ty[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[24]~1_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(24));

-- Location: LCCOMB_X56_Y42_N24
\Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = \Add1~49\ $ (!ty(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ty(25),
	cin => \Add1~49\,
	combout => \Add1~50_combout\);

-- Location: LCCOMB_X57_Y42_N22
\ty[25]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ty[25]~0_combout\ = (!\state2.y3~q\ & (\state2.y1~q\ & (!\Equal1~8_combout\ & \Add1~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y3~q\,
	datab => \state2.y1~q\,
	datac => \Equal1~8_combout\,
	datad => \Add1~50_combout\,
	combout => \ty[25]~0_combout\);

-- Location: FF_X57_Y42_N23
\ty[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \ty[25]~0_combout\,
	ena => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ty(25));

-- Location: LCCOMB_X55_Y42_N24
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!ty(24) & (!ty(22) & (!ty(25) & !ty(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ty(24),
	datab => ty(22),
	datac => ty(25),
	datad => ty(23),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X55_Y42_N14
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!ty(12) & (!ty(11) & (!ty(10) & !ty(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ty(12),
	datab => ty(11),
	datac => ty(10),
	datad => ty(13),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X55_Y42_N18
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!ty(17) & (!ty(15) & (!ty(16) & !ty(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ty(17),
	datab => ty(15),
	datac => ty(16),
	datad => ty(14),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X55_Y42_N4
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & (\Equal1~3_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X55_Y43_N18
\Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!ty(7) & (!ty(9) & (!ty(6) & !ty(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ty(7),
	datab => ty(9),
	datac => ty(6),
	datad => ty(8),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X55_Y42_N2
\Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (\Equal1~6_combout\ & (\Equal1~7_combout\ & (\Equal1~4_combout\ & \Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => \Equal1~7_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~5_combout\,
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X55_Y43_N22
\Selector63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\state2.y3~q\) # ((\state2.y4~q\ & !\Equal1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y3~q\,
	datac => \state2.y4~q\,
	datad => \Equal1~8_combout\,
	combout => \Selector63~0_combout\);

-- Location: FF_X55_Y43_N23
\state2.y4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector63~0_combout\,
	clrn => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state2.y4~q\);

-- Location: LCCOMB_X55_Y43_N20
\Selector60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (!\Equal1~8_combout\) # (!\state2.y4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state2.y4~q\,
	datad => \Equal1~8_combout\,
	combout => \Selector60~0_combout\);

-- Location: FF_X55_Y43_N21
\state2.y1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector60~0_combout\,
	clrn => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state2.y1~q\);

-- Location: LCCOMB_X57_Y42_N0
\Selector61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = ((\state2.y2~q\ & !\Equal1~8_combout\)) # (!\state2.y1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state2.y1~q\,
	datac => \state2.y2~q\,
	datad => \Equal1~8_combout\,
	combout => \Selector61~0_combout\);

-- Location: FF_X57_Y42_N1
\state2.y2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector61~0_combout\,
	clrn => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state2.y2~q\);

-- Location: LCCOMB_X54_Y42_N20
\Selector62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (\state2.y2~q\ & \Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y2~q\,
	datad => \Equal1~8_combout\,
	combout => \Selector62~0_combout\);

-- Location: FF_X54_Y42_N21
\state2.y3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector62~0_combout\,
	clrn => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state2.y3~q\);

-- Location: LCCOMB_X18_Y15_N18
\x~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x~0_combout\ = (\Equal0~8_combout\ & (((\state.S1~q\)))) # (!\Equal0~8_combout\ & (!\x~reg0_q\ & ((\state.S3~q\) # (\state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S3~q\,
	datab => \x~reg0_q\,
	datac => \state.S1~q\,
	datad => \Equal0~8_combout\,
	combout => \x~0_combout\);

-- Location: LCCOMB_X18_Y15_N16
\x~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \x~1_combout\ = (!\state.S2~q\ & (!\state2.y3~q\ & !\x~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S2~q\,
	datac => \state2.y3~q\,
	datad => \x~0_combout\,
	combout => \x~1_combout\);

-- Location: FF_X18_Y15_N17
\x~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \x~1_combout\,
	clrn => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x~reg0_q\);

-- Location: LCCOMB_X55_Y43_N16
\Selector59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\state2.y2~q\ & (((\y~reg0_q\) # (\Equal1~8_combout\)))) # (!\state2.y2~q\ & (\state2.y3~q\ & (\y~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y3~q\,
	datab => \state2.y2~q\,
	datac => \y~reg0_q\,
	datad => \Equal1~8_combout\,
	combout => \Selector59~0_combout\);

-- Location: LCCOMB_X55_Y43_N8
\Selector59~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector59~1_combout\ = (\Selector59~0_combout\) # ((\state2.y4~q\ & (!\Equal1~8_combout\ & \y~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state2.y4~q\,
	datab => \Equal1~8_combout\,
	datac => \y~reg0_q\,
	datad => \Selector59~0_combout\,
	combout => \Selector59~1_combout\);

-- Location: FF_X55_Y43_N9
\y~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector59~1_combout\,
	clrn => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y~reg0_q\);

-- Location: LCCOMB_X66_Y33_N6
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = tz(0) $ (VCC)
-- \Add2~1\ = CARRY(tz(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tz(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X65_Y33_N12
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\state3.S2~q\) # ((\Add2~0_combout\) # (!\state3.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~0_combout\,
	combout => \Add2~2_combout\);

-- Location: LCCOMB_X65_Y32_N12
\tz[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tz[0]~0_combout\ = (\PB~input_o\ & ((\state3.S2~q\) # ((!\Equal2~8_combout\) # (!\state3.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB~input_o\,
	datab => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Equal2~8_combout\,
	combout => \tz[0]~0_combout\);

-- Location: FF_X65_Y33_N13
\tz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(0));

-- Location: LCCOMB_X66_Y33_N8
\Add2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~3_combout\ = (tz(1) & (\Add2~1\ & VCC)) # (!tz(1) & (!\Add2~1\))
-- \Add2~4\ = CARRY((!tz(1) & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tz(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~3_combout\,
	cout => \Add2~4\);

-- Location: LCCOMB_X65_Y33_N16
\Add2~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~77_combout\ = (!\state3.S2~q\ & ((\Add2~3_combout\) # (!\state3.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state3.S0~q\,
	datac => \Add2~3_combout\,
	datad => \state3.S2~q\,
	combout => \Add2~77_combout\);

-- Location: LCCOMB_X65_Y32_N30
\tz[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tz[2]~1_combout\ = (\PB~input_o\ & (((!\state3.S1~q\ & !\state3.S3~q\)) # (!\Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB~input_o\,
	datab => \state3.S1~q\,
	datac => \state3.S3~q\,
	datad => \Equal2~8_combout\,
	combout => \tz[2]~1_combout\);

-- Location: FF_X66_Y33_N17
\tz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \Add2~77_combout\,
	sload => VCC,
	ena => \tz[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(1));

-- Location: LCCOMB_X66_Y33_N10
\Add2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~5_combout\ = (tz(2) & ((GND) # (!\Add2~4\))) # (!tz(2) & (\Add2~4\ $ (GND)))
-- \Add2~6\ = CARRY((tz(2)) # (!\Add2~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tz(2),
	datad => VCC,
	cin => \Add2~4\,
	combout => \Add2~5_combout\,
	cout => \Add2~6\);

-- Location: LCCOMB_X65_Y32_N0
\Add2~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~76_combout\ = (!\state3.S2~q\ & ((\Add2~5_combout\) # (!\state3.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~5_combout\,
	combout => \Add2~76_combout\);

-- Location: FF_X65_Y32_N1
\tz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~76_combout\,
	ena => \tz[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(2));

-- Location: LCCOMB_X66_Y33_N12
\Add2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~7_combout\ = (tz(3) & (\Add2~6\ & VCC)) # (!tz(3) & (!\Add2~6\))
-- \Add2~8\ = CARRY((!tz(3) & !\Add2~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tz(3),
	datad => VCC,
	cin => \Add2~6\,
	combout => \Add2~7_combout\,
	cout => \Add2~8\);

-- Location: LCCOMB_X66_Y33_N0
\Add2~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~75_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~7_combout\,
	combout => \Add2~75_combout\);

-- Location: FF_X66_Y33_N1
\tz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~75_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(3));

-- Location: LCCOMB_X66_Y33_N14
\Add2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~9_combout\ = (tz(4) & ((GND) # (!\Add2~8\))) # (!tz(4) & (\Add2~8\ $ (GND)))
-- \Add2~10\ = CARRY((tz(4)) # (!\Add2~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tz(4),
	datad => VCC,
	cin => \Add2~8\,
	combout => \Add2~9_combout\,
	cout => \Add2~10\);

-- Location: LCCOMB_X65_Y33_N4
\Add2~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~74_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state3.S2~q\,
	datab => \state3.S0~q\,
	datad => \Add2~9_combout\,
	combout => \Add2~74_combout\);

-- Location: FF_X65_Y33_N5
\tz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~74_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(4));

-- Location: LCCOMB_X66_Y33_N16
\Add2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~11_combout\ = (tz(5) & (\Add2~10\ & VCC)) # (!tz(5) & (!\Add2~10\))
-- \Add2~12\ = CARRY((!tz(5) & !\Add2~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tz(5),
	datad => VCC,
	cin => \Add2~10\,
	combout => \Add2~11_combout\,
	cout => \Add2~12\);

-- Location: LCCOMB_X66_Y33_N2
\Add2~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~73_combout\ = (\Add2~11_combout\ & (!\state3.S2~q\ & \state3.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~11_combout\,
	datab => \state3.S2~q\,
	datac => \state3.S0~q\,
	combout => \Add2~73_combout\);

-- Location: FF_X66_Y33_N3
\tz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~73_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(5));

-- Location: LCCOMB_X66_Y33_N18
\Add2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~13_combout\ = (tz(6) & ((GND) # (!\Add2~12\))) # (!tz(6) & (\Add2~12\ $ (GND)))
-- \Add2~14\ = CARRY((tz(6)) # (!\Add2~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tz(6),
	datad => VCC,
	cin => \Add2~12\,
	combout => \Add2~13_combout\,
	cout => \Add2~14\);

-- Location: LCCOMB_X65_Y33_N10
\Add2~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~72_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~13_combout\,
	combout => \Add2~72_combout\);

-- Location: FF_X65_Y33_N11
\tz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~72_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(6));

-- Location: LCCOMB_X65_Y33_N30
\Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!tz(6) & (!tz(4) & (!tz(3) & !tz(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tz(6),
	datab => tz(4),
	datac => tz(3),
	datad => tz(5),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X65_Y32_N18
\Equal2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!tz(1) & !tz(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tz(1),
	datad => tz(2),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X66_Y33_N20
\Add2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~15_combout\ = (tz(7) & (\Add2~14\ & VCC)) # (!tz(7) & (!\Add2~14\))
-- \Add2~16\ = CARRY((!tz(7) & !\Add2~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tz(7),
	datad => VCC,
	cin => \Add2~14\,
	combout => \Add2~15_combout\,
	cout => \Add2~16\);

-- Location: LCCOMB_X65_Y33_N14
\Add2~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~71_combout\ = (\state3.S0~q\ & (\Add2~15_combout\ & !\state3.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state3.S0~q\,
	datac => \Add2~15_combout\,
	datad => \state3.S2~q\,
	combout => \Add2~71_combout\);

-- Location: FF_X65_Y33_N15
\tz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~71_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(7));

-- Location: LCCOMB_X66_Y33_N22
\Add2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~17_combout\ = (tz(8) & ((GND) # (!\Add2~16\))) # (!tz(8) & (\Add2~16\ $ (GND)))
-- \Add2~18\ = CARRY((tz(8)) # (!\Add2~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tz(8),
	datad => VCC,
	cin => \Add2~16\,
	combout => \Add2~17_combout\,
	cout => \Add2~18\);

-- Location: LCCOMB_X65_Y33_N20
\Add2~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~70_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~17_combout\,
	combout => \Add2~70_combout\);

-- Location: FF_X65_Y33_N21
\tz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~70_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(8));

-- Location: LCCOMB_X66_Y33_N24
\Add2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~19_combout\ = (tz(9) & (\Add2~18\ & VCC)) # (!tz(9) & (!\Add2~18\))
-- \Add2~20\ = CARRY((!tz(9) & !\Add2~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tz(9),
	datad => VCC,
	cin => \Add2~18\,
	combout => \Add2~19_combout\,
	cout => \Add2~20\);

-- Location: LCCOMB_X66_Y33_N4
\Add2~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~69_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~19_combout\,
	combout => \Add2~69_combout\);

-- Location: FF_X66_Y33_N5
\tz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~69_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(9));

-- Location: LCCOMB_X66_Y33_N26
\Add2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~21_combout\ = (tz(10) & ((GND) # (!\Add2~20\))) # (!tz(10) & (\Add2~20\ $ (GND)))
-- \Add2~22\ = CARRY((tz(10)) # (!\Add2~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tz(10),
	datad => VCC,
	cin => \Add2~20\,
	combout => \Add2~21_combout\,
	cout => \Add2~22\);

-- Location: LCCOMB_X65_Y33_N6
\Add2~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~68_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~21_combout\,
	combout => \Add2~68_combout\);

-- Location: FF_X65_Y33_N7
\tz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~68_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(10));

-- Location: LCCOMB_X65_Y33_N24
\Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!tz(10) & (!tz(8) & (!tz(7) & !tz(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tz(10),
	datab => tz(8),
	datac => tz(7),
	datad => tz(9),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X66_Y33_N28
\Add2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~23_combout\ = (tz(11) & (\Add2~22\ & VCC)) # (!tz(11) & (!\Add2~22\))
-- \Add2~24\ = CARRY((!tz(11) & !\Add2~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tz(11),
	datad => VCC,
	cin => \Add2~22\,
	combout => \Add2~23_combout\,
	cout => \Add2~24\);

-- Location: LCCOMB_X67_Y32_N0
\Add2~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~67_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~23_combout\,
	combout => \Add2~67_combout\);

-- Location: FF_X67_Y32_N1
\tz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~67_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(11));

-- Location: LCCOMB_X66_Y33_N30
\Add2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~25_combout\ = (tz(12) & ((GND) # (!\Add2~24\))) # (!tz(12) & (\Add2~24\ $ (GND)))
-- \Add2~26\ = CARRY((tz(12)) # (!\Add2~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tz(12),
	datad => VCC,
	cin => \Add2~24\,
	combout => \Add2~25_combout\,
	cout => \Add2~26\);

-- Location: LCCOMB_X67_Y32_N30
\Add2~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~66_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~25_combout\,
	combout => \Add2~66_combout\);

-- Location: FF_X67_Y32_N31
\tz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~66_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(12));

-- Location: LCCOMB_X66_Y32_N0
\Add2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~27_combout\ = (tz(13) & (\Add2~26\ & VCC)) # (!tz(13) & (!\Add2~26\))
-- \Add2~28\ = CARRY((!tz(13) & !\Add2~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tz(13),
	datad => VCC,
	cin => \Add2~26\,
	combout => \Add2~27_combout\,
	cout => \Add2~28\);

-- Location: LCCOMB_X67_Y32_N28
\Add2~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~65_combout\ = (\state3.S0~q\ & (!\state3.S2~q\ & \Add2~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state3.S0~q\,
	datab => \state3.S2~q\,
	datac => \Add2~27_combout\,
	combout => \Add2~65_combout\);

-- Location: FF_X67_Y32_N29
\tz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~65_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(13));

-- Location: LCCOMB_X66_Y32_N2
\Add2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~29_combout\ = (tz(14) & ((GND) # (!\Add2~28\))) # (!tz(14) & (\Add2~28\ $ (GND)))
-- \Add2~30\ = CARRY((tz(14)) # (!\Add2~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tz(14),
	datad => VCC,
	cin => \Add2~28\,
	combout => \Add2~29_combout\,
	cout => \Add2~30\);

-- Location: LCCOMB_X67_Y32_N26
\Add2~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~64_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~29_combout\,
	combout => \Add2~64_combout\);

-- Location: FF_X67_Y32_N27
\tz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~64_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(14));

-- Location: LCCOMB_X66_Y32_N4
\Add2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~31_combout\ = (tz(15) & (\Add2~30\ & VCC)) # (!tz(15) & (!\Add2~30\))
-- \Add2~32\ = CARRY((!tz(15) & !\Add2~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tz(15),
	datad => VCC,
	cin => \Add2~30\,
	combout => \Add2~31_combout\,
	cout => \Add2~32\);

-- Location: LCCOMB_X67_Y32_N18
\Add2~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~63_combout\ = (\state3.S0~q\ & (!\state3.S2~q\ & \Add2~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state3.S0~q\,
	datab => \state3.S2~q\,
	datac => \Add2~31_combout\,
	combout => \Add2~63_combout\);

-- Location: FF_X67_Y32_N19
\tz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~63_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(15));

-- Location: LCCOMB_X66_Y32_N6
\Add2~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~33_combout\ = (tz(16) & ((GND) # (!\Add2~32\))) # (!tz(16) & (\Add2~32\ $ (GND)))
-- \Add2~34\ = CARRY((tz(16)) # (!\Add2~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tz(16),
	datad => VCC,
	cin => \Add2~32\,
	combout => \Add2~33_combout\,
	cout => \Add2~34\);

-- Location: LCCOMB_X67_Y32_N20
\Add2~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = (\state3.S0~q\ & (!\state3.S2~q\ & \Add2~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state3.S0~q\,
	datab => \state3.S2~q\,
	datac => \Add2~33_combout\,
	combout => \Add2~62_combout\);

-- Location: FF_X67_Y32_N21
\tz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~62_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(16));

-- Location: LCCOMB_X66_Y32_N8
\Add2~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~35_combout\ = (tz(17) & (\Add2~34\ & VCC)) # (!tz(17) & (!\Add2~34\))
-- \Add2~36\ = CARRY((!tz(17) & !\Add2~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tz(17),
	datad => VCC,
	cin => \Add2~34\,
	combout => \Add2~35_combout\,
	cout => \Add2~36\);

-- Location: LCCOMB_X67_Y32_N22
\Add2~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~61_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~35_combout\,
	combout => \Add2~61_combout\);

-- Location: FF_X67_Y32_N23
\tz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~61_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(17));

-- Location: LCCOMB_X66_Y32_N10
\Add2~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~37_combout\ = (tz(18) & ((GND) # (!\Add2~36\))) # (!tz(18) & (\Add2~36\ $ (GND)))
-- \Add2~38\ = CARRY((tz(18)) # (!\Add2~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tz(18),
	datad => VCC,
	cin => \Add2~36\,
	combout => \Add2~37_combout\,
	cout => \Add2~38\);

-- Location: LCCOMB_X67_Y32_N8
\Add2~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~37_combout\,
	combout => \Add2~60_combout\);

-- Location: FF_X67_Y32_N9
\tz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~60_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(18));

-- Location: LCCOMB_X66_Y32_N12
\Add2~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~39_combout\ = (tz(19) & (\Add2~38\ & VCC)) # (!tz(19) & (!\Add2~38\))
-- \Add2~40\ = CARRY((!tz(19) & !\Add2~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tz(19),
	datad => VCC,
	cin => \Add2~38\,
	combout => \Add2~39_combout\,
	cout => \Add2~40\);

-- Location: LCCOMB_X66_Y32_N26
\Add2~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~59_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~39_combout\,
	combout => \Add2~59_combout\);

-- Location: FF_X66_Y32_N27
\tz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~59_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(19));

-- Location: LCCOMB_X66_Y32_N14
\Add2~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~41_combout\ = (tz(20) & ((GND) # (!\Add2~40\))) # (!tz(20) & (\Add2~40\ $ (GND)))
-- \Add2~42\ = CARRY((tz(20)) # (!\Add2~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tz(20),
	datad => VCC,
	cin => \Add2~40\,
	combout => \Add2~41_combout\,
	cout => \Add2~42\);

-- Location: LCCOMB_X67_Y32_N12
\Add2~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~41_combout\,
	combout => \Add2~58_combout\);

-- Location: FF_X67_Y32_N13
\tz[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~58_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(20));

-- Location: LCCOMB_X66_Y32_N16
\Add2~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~43_combout\ = (tz(21) & (\Add2~42\ & VCC)) # (!tz(21) & (!\Add2~42\))
-- \Add2~44\ = CARRY((!tz(21) & !\Add2~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tz(21),
	datad => VCC,
	cin => \Add2~42\,
	combout => \Add2~43_combout\,
	cout => \Add2~44\);

-- Location: LCCOMB_X66_Y32_N28
\Add2~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~57_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~43_combout\,
	combout => \Add2~57_combout\);

-- Location: FF_X66_Y32_N29
\tz[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~57_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(21));

-- Location: LCCOMB_X66_Y32_N18
\Add2~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~45_combout\ = (tz(22) & ((GND) # (!\Add2~44\))) # (!tz(22) & (\Add2~44\ $ (GND)))
-- \Add2~46\ = CARRY((tz(22)) # (!\Add2~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tz(22),
	datad => VCC,
	cin => \Add2~44\,
	combout => \Add2~45_combout\,
	cout => \Add2~46\);

-- Location: LCCOMB_X66_Y32_N30
\Add2~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~45_combout\,
	combout => \Add2~56_combout\);

-- Location: FF_X66_Y32_N31
\tz[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~56_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(22));

-- Location: LCCOMB_X66_Y32_N20
\Add2~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~47_combout\ = (tz(23) & (\Add2~46\ & VCC)) # (!tz(23) & (!\Add2~46\))
-- \Add2~48\ = CARRY((!tz(23) & !\Add2~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tz(23),
	datad => VCC,
	cin => \Add2~46\,
	combout => \Add2~47_combout\,
	cout => \Add2~48\);

-- Location: LCCOMB_X65_Y33_N18
\Add2~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~55_combout\ = (!\state3.S2~q\ & (\state3.S0~q\ & \Add2~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state3.S2~q\,
	datac => \state3.S0~q\,
	datad => \Add2~47_combout\,
	combout => \Add2~55_combout\);

-- Location: FF_X65_Y33_N19
\tz[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~55_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(23));

-- Location: LCCOMB_X66_Y32_N22
\Add2~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~49_combout\ = (tz(24) & ((GND) # (!\Add2~48\))) # (!tz(24) & (\Add2~48\ $ (GND)))
-- \Add2~50\ = CARRY((tz(24)) # (!\Add2~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tz(24),
	datad => VCC,
	cin => \Add2~48\,
	combout => \Add2~49_combout\,
	cout => \Add2~50\);

-- Location: LCCOMB_X65_Y33_N8
\Add2~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (\state3.S0~q\ & (\Add2~49_combout\ & !\state3.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state3.S0~q\,
	datac => \Add2~49_combout\,
	datad => \state3.S2~q\,
	combout => \Add2~54_combout\);

-- Location: FF_X65_Y33_N9
\tz[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~54_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(24));

-- Location: LCCOMB_X66_Y32_N24
\Add2~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~51_combout\ = tz(25) $ (!\Add2~50\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tz(25),
	cin => \Add2~50\,
	combout => \Add2~51_combout\);

-- Location: LCCOMB_X65_Y33_N22
\Add2~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~53_combout\ = (\state3.S0~q\ & (\Add2~51_combout\ & !\state3.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state3.S0~q\,
	datac => \Add2~51_combout\,
	datad => \state3.S2~q\,
	combout => \Add2~53_combout\);

-- Location: FF_X65_Y33_N23
\tz[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Add2~53_combout\,
	ena => \tz[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tz(25));

-- Location: LCCOMB_X65_Y33_N28
\Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!tz(0) & (!tz(24) & (!tz(25) & !tz(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tz(0),
	datab => tz(24),
	datac => tz(25),
	datad => tz(23),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X67_Y32_N4
\Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!tz(17) & (!tz(15) & (!tz(18) & !tz(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tz(17),
	datab => tz(15),
	datac => tz(18),
	datad => tz(16),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X67_Y32_N14
\Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!tz(20) & (!tz(21) & (!tz(19) & !tz(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tz(20),
	datab => tz(21),
	datac => tz(19),
	datad => tz(22),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X67_Y32_N10
\Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!tz(12) & (!tz(11) & (!tz(14) & !tz(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tz(12),
	datab => tz(11),
	datac => tz(14),
	datad => tz(13),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X65_Y32_N6
\Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~0_combout\ & (\Equal2~2_combout\ & (\Equal2~1_combout\ & \Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal2~2_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal2~3_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X65_Y32_N24
\Equal2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (\Equal2~6_combout\ & (\Equal2~7_combout\ & (\Equal2~5_combout\ & \Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~6_combout\,
	datab => \Equal2~7_combout\,
	datac => \Equal2~5_combout\,
	datad => \Equal2~4_combout\,
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X65_Y32_N8
\Selector94~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\state3.S2~q\) # ((\state3.S3~q\ & !\Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state3.S2~q\,
	datac => \state3.S3~q\,
	datad => \Equal2~8_combout\,
	combout => \Selector94~0_combout\);

-- Location: FF_X65_Y32_N9
\state3.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector94~0_combout\,
	clrn => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state3.S3~q\);

-- Location: LCCOMB_X65_Y32_N22
\tz[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tz[2]~2_combout\ = (!\Equal2~8_combout\) # (!\state3.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state3.S3~q\,
	datad => \Equal2~8_combout\,
	combout => \tz[2]~2_combout\);

-- Location: FF_X65_Y32_N23
\state3.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \tz[2]~2_combout\,
	clrn => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state3.S0~q\);

-- Location: LCCOMB_X65_Y32_N16
\Selector92~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = ((\state3.S1~q\ & !\Equal2~8_combout\)) # (!\state3.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state3.S0~q\,
	datac => \state3.S1~q\,
	datad => \Equal2~8_combout\,
	combout => \Selector92~0_combout\);

-- Location: FF_X65_Y32_N17
\state3.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector92~0_combout\,
	clrn => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state3.S1~q\);

-- Location: LCCOMB_X65_Y32_N14
\Selector93~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\state3.S1~q\ & \Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state3.S1~q\,
	datad => \Equal2~8_combout\,
	combout => \Selector93~0_combout\);

-- Location: FF_X65_Y32_N15
\state3.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector93~0_combout\,
	clrn => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state3.S2~q\);

-- Location: LCCOMB_X65_Y32_N26
\Selector90~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (\state3.S2~q\) # ((\state3.S1~q\ & ((\z~reg0_q\) # (\Equal2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state3.S2~q\,
	datab => \state3.S1~q\,
	datac => \z~reg0_q\,
	datad => \Equal2~8_combout\,
	combout => \Selector90~0_combout\);

-- Location: LCCOMB_X65_Y32_N28
\Selector90~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector90~1_combout\ = (\Selector90~0_combout\) # ((\state3.S3~q\ & (\z~reg0_q\ & !\Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector90~0_combout\,
	datab => \state3.S3~q\,
	datac => \z~reg0_q\,
	datad => \Equal2~8_combout\,
	combout => \Selector90~1_combout\);

-- Location: FF_X65_Y32_N29
\z~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \Selector90~1_combout\,
	clrn => \PB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \z~reg0_q\);

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

ww_x <= \x~output_o\;

ww_y <= \y~output_o\;

ww_z <= \z~output_o\;
END structure;


