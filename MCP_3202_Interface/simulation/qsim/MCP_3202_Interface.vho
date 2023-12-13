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

-- DATE "09/28/2023 22:08:17"

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

ENTITY 	MCP_3202_Interface IS
    PORT (
	CLK : IN std_logic;
	HOLD_SS_N : IN std_logic;
	START : IN std_logic;
	RST_N : IN std_logic;
	S_CH : IN std_logic;
	SPI_MISO : IN std_logic;
	DONE : OUT std_logic;
	RDATA : OUT std_logic_vector(11 DOWNTO 0);
	SPI_MOSI : OUT std_logic;
	SPI_SCK : OUT std_logic;
	SPI_SS_N : OUT std_logic
	);
END MCP_3202_Interface;

-- Design Ports Information
-- HOLD_SS_N	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DONE	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RDATA[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RDATA[1]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RDATA[2]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RDATA[3]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RDATA[4]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RDATA[5]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RDATA[6]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RDATA[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RDATA[8]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RDATA[9]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RDATA[10]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RDATA[11]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SPI_MOSI	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SPI_SCK	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SPI_SS_N	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- START	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RST_N	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SPI_MISO	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S_CH	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MCP_3202_Interface IS
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
SIGNAL ww_HOLD_SS_N : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_RST_N : std_logic;
SIGNAL ww_S_CH : std_logic;
SIGNAL ww_SPI_MISO : std_logic;
SIGNAL ww_DONE : std_logic;
SIGNAL ww_RDATA : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_SPI_MOSI : std_logic;
SIGNAL ww_SPI_SCK : std_logic;
SIGNAL ww_SPI_SS_N : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HOLD_SS_N~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \DONE~output_o\ : std_logic;
SIGNAL \RDATA[0]~output_o\ : std_logic;
SIGNAL \RDATA[1]~output_o\ : std_logic;
SIGNAL \RDATA[2]~output_o\ : std_logic;
SIGNAL \RDATA[3]~output_o\ : std_logic;
SIGNAL \RDATA[4]~output_o\ : std_logic;
SIGNAL \RDATA[5]~output_o\ : std_logic;
SIGNAL \RDATA[6]~output_o\ : std_logic;
SIGNAL \RDATA[7]~output_o\ : std_logic;
SIGNAL \RDATA[8]~output_o\ : std_logic;
SIGNAL \RDATA[9]~output_o\ : std_logic;
SIGNAL \RDATA[10]~output_o\ : std_logic;
SIGNAL \RDATA[11]~output_o\ : std_logic;
SIGNAL \SPI_MOSI~output_o\ : std_logic;
SIGNAL \SPI_SCK~output_o\ : std_logic;
SIGNAL \SPI_SS_N~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \bt2~0_combout\ : std_logic;
SIGNAL \RST_N~input_o\ : std_logic;
SIGNAL \bt2~q\ : std_logic;
SIGNAL \Gen_Clk[0]~33_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Gen_Clk[2]~32_combout\ : std_logic;
SIGNAL \Gen_Clk[31]~35_combout\ : std_logic;
SIGNAL \Gen_Clk[31]~36_combout\ : std_logic;
SIGNAL \Gen_Clk[0]~34\ : std_logic;
SIGNAL \Gen_Clk[1]~37_combout\ : std_logic;
SIGNAL \Gen_Clk[1]~38\ : std_logic;
SIGNAL \Gen_Clk[2]~39_combout\ : std_logic;
SIGNAL \Gen_Clk[2]~40\ : std_logic;
SIGNAL \Gen_Clk[3]~41_combout\ : std_logic;
SIGNAL \Gen_Clk[3]~42\ : std_logic;
SIGNAL \Gen_Clk[4]~43_combout\ : std_logic;
SIGNAL \Gen_Clk[4]~44\ : std_logic;
SIGNAL \Gen_Clk[5]~45_combout\ : std_logic;
SIGNAL \Gen_Clk[5]~46\ : std_logic;
SIGNAL \Gen_Clk[6]~47_combout\ : std_logic;
SIGNAL \Gen_Clk[6]~48\ : std_logic;
SIGNAL \Gen_Clk[7]~49_combout\ : std_logic;
SIGNAL \Gen_Clk[7]~50\ : std_logic;
SIGNAL \Gen_Clk[8]~51_combout\ : std_logic;
SIGNAL \Gen_Clk[8]~52\ : std_logic;
SIGNAL \Gen_Clk[9]~53_combout\ : std_logic;
SIGNAL \Gen_Clk[9]~54\ : std_logic;
SIGNAL \Gen_Clk[10]~55_combout\ : std_logic;
SIGNAL \Gen_Clk[10]~56\ : std_logic;
SIGNAL \Gen_Clk[11]~57_combout\ : std_logic;
SIGNAL \Gen_Clk[11]~58\ : std_logic;
SIGNAL \Gen_Clk[12]~59_combout\ : std_logic;
SIGNAL \Gen_Clk[12]~60\ : std_logic;
SIGNAL \Gen_Clk[13]~61_combout\ : std_logic;
SIGNAL \Gen_Clk[13]~62\ : std_logic;
SIGNAL \Gen_Clk[14]~63_combout\ : std_logic;
SIGNAL \Gen_Clk[14]~64\ : std_logic;
SIGNAL \Gen_Clk[15]~65_combout\ : std_logic;
SIGNAL \Gen_Clk[15]~66\ : std_logic;
SIGNAL \Gen_Clk[16]~67_combout\ : std_logic;
SIGNAL \Gen_Clk[16]~68\ : std_logic;
SIGNAL \Gen_Clk[17]~69_combout\ : std_logic;
SIGNAL \Gen_Clk[17]~70\ : std_logic;
SIGNAL \Gen_Clk[18]~71_combout\ : std_logic;
SIGNAL \Gen_Clk[18]~72\ : std_logic;
SIGNAL \Gen_Clk[19]~73_combout\ : std_logic;
SIGNAL \Gen_Clk[19]~74\ : std_logic;
SIGNAL \Gen_Clk[20]~75_combout\ : std_logic;
SIGNAL \Gen_Clk[20]~76\ : std_logic;
SIGNAL \Gen_Clk[21]~77_combout\ : std_logic;
SIGNAL \Gen_Clk[21]~78\ : std_logic;
SIGNAL \Gen_Clk[22]~79_combout\ : std_logic;
SIGNAL \Gen_Clk[22]~80\ : std_logic;
SIGNAL \Gen_Clk[23]~81_combout\ : std_logic;
SIGNAL \Gen_Clk[23]~82\ : std_logic;
SIGNAL \Gen_Clk[24]~83_combout\ : std_logic;
SIGNAL \Gen_Clk[24]~84\ : std_logic;
SIGNAL \Gen_Clk[25]~85_combout\ : std_logic;
SIGNAL \Gen_Clk[25]~86\ : std_logic;
SIGNAL \Gen_Clk[26]~87_combout\ : std_logic;
SIGNAL \Gen_Clk[26]~88\ : std_logic;
SIGNAL \Gen_Clk[27]~89_combout\ : std_logic;
SIGNAL \Gen_Clk[27]~90\ : std_logic;
SIGNAL \Gen_Clk[28]~91_combout\ : std_logic;
SIGNAL \Gen_Clk[28]~92\ : std_logic;
SIGNAL \Gen_Clk[29]~93_combout\ : std_logic;
SIGNAL \Gen_Clk[29]~94\ : std_logic;
SIGNAL \Gen_Clk[30]~95_combout\ : std_logic;
SIGNAL \Gen_Clk[30]~96\ : std_logic;
SIGNAL \Gen_Clk[31]~97_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \clock~q\ : std_logic;
SIGNAL \Result[0]~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector138~0_combout\ : std_logic;
SIGNAL \Selector138~1_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Selector137~0_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Selector136~0_combout\ : std_logic;
SIGNAL \Selector136~1_combout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~7_combout\ : std_logic;
SIGNAL \Add3~66_combout\ : std_logic;
SIGNAL \Selector135~0_combout\ : std_logic;
SIGNAL \Add3~8\ : std_logic;
SIGNAL \Add3~9_combout\ : std_logic;
SIGNAL \Selector134~0_combout\ : std_logic;
SIGNAL \Selector134~1_combout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~11_combout\ : std_logic;
SIGNAL \Selector133~0_combout\ : std_logic;
SIGNAL \Selector133~1_combout\ : std_logic;
SIGNAL \Add3~12\ : std_logic;
SIGNAL \Add3~13_combout\ : std_logic;
SIGNAL \Selector132~0_combout\ : std_logic;
SIGNAL \Selector132~1_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~15_combout\ : std_logic;
SIGNAL \Selector131~0_combout\ : std_logic;
SIGNAL \Selector131~1_combout\ : std_logic;
SIGNAL \Add3~16\ : std_logic;
SIGNAL \Add3~17_combout\ : std_logic;
SIGNAL \Add3~65_combout\ : std_logic;
SIGNAL \Selector130~0_combout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~19_combout\ : std_logic;
SIGNAL \Add3~64_combout\ : std_logic;
SIGNAL \Selector129~0_combout\ : std_logic;
SIGNAL \Add3~20\ : std_logic;
SIGNAL \Add3~21_combout\ : std_logic;
SIGNAL \Selector128~0_combout\ : std_logic;
SIGNAL \Selector128~1_combout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~23_combout\ : std_logic;
SIGNAL \Selector127~0_combout\ : std_logic;
SIGNAL \Selector127~1_combout\ : std_logic;
SIGNAL \Add3~24\ : std_logic;
SIGNAL \Add3~25_combout\ : std_logic;
SIGNAL \Selector126~0_combout\ : std_logic;
SIGNAL \Selector126~1_combout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~27_combout\ : std_logic;
SIGNAL \Add3~63_combout\ : std_logic;
SIGNAL \Selector125~0_combout\ : std_logic;
SIGNAL \Add3~28\ : std_logic;
SIGNAL \Add3~29_combout\ : std_logic;
SIGNAL \Selector107~0_combout\ : std_logic;
SIGNAL \Selector124~0_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~31_combout\ : std_logic;
SIGNAL \Selector123~0_combout\ : std_logic;
SIGNAL \Add3~32\ : std_logic;
SIGNAL \Add3~33_combout\ : std_logic;
SIGNAL \Selector122~0_combout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~35_combout\ : std_logic;
SIGNAL \Selector121~0_combout\ : std_logic;
SIGNAL \Add3~36\ : std_logic;
SIGNAL \Add3~37_combout\ : std_logic;
SIGNAL \Selector120~0_combout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~39_combout\ : std_logic;
SIGNAL \Selector119~0_combout\ : std_logic;
SIGNAL \Add3~40\ : std_logic;
SIGNAL \Add3~41_combout\ : std_logic;
SIGNAL \Selector118~0_combout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~43_combout\ : std_logic;
SIGNAL \Selector117~0_combout\ : std_logic;
SIGNAL \Add3~44\ : std_logic;
SIGNAL \Add3~45_combout\ : std_logic;
SIGNAL \Selector116~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~47_combout\ : std_logic;
SIGNAL \Selector115~0_combout\ : std_logic;
SIGNAL \Add3~48\ : std_logic;
SIGNAL \Add3~49_combout\ : std_logic;
SIGNAL \Selector114~0_combout\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~51_combout\ : std_logic;
SIGNAL \Selector113~0_combout\ : std_logic;
SIGNAL \Add3~52\ : std_logic;
SIGNAL \Add3~53_combout\ : std_logic;
SIGNAL \Selector112~0_combout\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~55_combout\ : std_logic;
SIGNAL \Selector111~0_combout\ : std_logic;
SIGNAL \Add3~56\ : std_logic;
SIGNAL \Add3~57_combout\ : std_logic;
SIGNAL \Selector110~0_combout\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~59_combout\ : std_logic;
SIGNAL \Selector109~0_combout\ : std_logic;
SIGNAL \Add3~60\ : std_logic;
SIGNAL \Add3~61_combout\ : std_logic;
SIGNAL \Selector108~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~67_combout\ : std_logic;
SIGNAL \Selector107~1_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \state.s0~0_combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \rise~0_combout\ : std_logic;
SIGNAL \DONE~0_combout\ : std_logic;
SIGNAL \DONE~reg0_q\ : std_logic;
SIGNAL \SPI_MISO~input_o\ : std_logic;
SIGNAL \Result[0]~2_combout\ : std_logic;
SIGNAL \Result[0]~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \SPI_MOSI~2_combout\ : std_logic;
SIGNAL \Result[0]~1_combout\ : std_logic;
SIGNAL \Result[0]~4_combout\ : std_logic;
SIGNAL \rise~1_combout\ : std_logic;
SIGNAL \rise~q\ : std_logic;
SIGNAL \RDATA~0_combout\ : std_logic;
SIGNAL \RDATA[0]~reg0_q\ : std_logic;
SIGNAL \Result[1]~feeder_combout\ : std_logic;
SIGNAL \RDATA~1_combout\ : std_logic;
SIGNAL \RDATA[1]~reg0_q\ : std_logic;
SIGNAL \Result[2]~feeder_combout\ : std_logic;
SIGNAL \RDATA~2_combout\ : std_logic;
SIGNAL \RDATA[2]~reg0_q\ : std_logic;
SIGNAL \Result[3]~feeder_combout\ : std_logic;
SIGNAL \RDATA~3_combout\ : std_logic;
SIGNAL \RDATA[3]~reg0_q\ : std_logic;
SIGNAL \Result[4]~feeder_combout\ : std_logic;
SIGNAL \RDATA~4_combout\ : std_logic;
SIGNAL \RDATA[4]~reg0_q\ : std_logic;
SIGNAL \Result[5]~feeder_combout\ : std_logic;
SIGNAL \RDATA~5_combout\ : std_logic;
SIGNAL \RDATA[5]~reg0_q\ : std_logic;
SIGNAL \Result[6]~feeder_combout\ : std_logic;
SIGNAL \RDATA~6_combout\ : std_logic;
SIGNAL \RDATA[6]~reg0_q\ : std_logic;
SIGNAL \Result[7]~feeder_combout\ : std_logic;
SIGNAL \RDATA~7_combout\ : std_logic;
SIGNAL \RDATA[7]~reg0_q\ : std_logic;
SIGNAL \Result[8]~feeder_combout\ : std_logic;
SIGNAL \RDATA~8_combout\ : std_logic;
SIGNAL \RDATA[8]~reg0_q\ : std_logic;
SIGNAL \Result[9]~feeder_combout\ : std_logic;
SIGNAL \RDATA~9_combout\ : std_logic;
SIGNAL \RDATA[9]~reg0_q\ : std_logic;
SIGNAL \Result[10]~feeder_combout\ : std_logic;
SIGNAL \RDATA~10_combout\ : std_logic;
SIGNAL \RDATA[10]~reg0_q\ : std_logic;
SIGNAL \Result[11]~feeder_combout\ : std_logic;
SIGNAL \RDATA~11_combout\ : std_logic;
SIGNAL \RDATA[11]~reg0_q\ : std_logic;
SIGNAL \SPI_MOSI~3_combout\ : std_logic;
SIGNAL \SPI_MOSI~0_combout\ : std_logic;
SIGNAL \S_CH~input_o\ : std_logic;
SIGNAL \WDATA[2]~0_combout\ : std_logic;
SIGNAL \SPI_MOSI~1_combout\ : std_logic;
SIGNAL \SPI_MOSI~4_combout\ : std_logic;
SIGNAL \SPI_MOSI~5_combout\ : std_logic;
SIGNAL \SPI_MOSI~6_combout\ : std_logic;
SIGNAL \SPI_MOSI~7_combout\ : std_logic;
SIGNAL \SPI_MOSI~reg0_q\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector42~1_combout\ : std_logic;
SIGNAL \SPI_SCK~reg0_q\ : std_logic;
SIGNAL Gen_Clk : std_logic_vector(31 DOWNTO 0);
SIGNAL Result : std_logic_vector(11 DOWNTO 0);
SIGNAL Count_12 : std_logic_vector(31 DOWNTO 0);
SIGNAL WDATA : std_logic_vector(0 TO 3);
SIGNAL \ALT_INV_DONE~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_HOLD_SS_N <= HOLD_SS_N;
ww_START <= START;
ww_RST_N <= RST_N;
ww_S_CH <= S_CH;
ww_SPI_MISO <= SPI_MISO;
DONE <= ww_DONE;
RDATA <= ww_RDATA;
SPI_MOSI <= ww_SPI_MOSI;
SPI_SCK <= ww_SPI_SCK;
SPI_SS_N <= ww_SPI_SS_N;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_DONE~reg0_q\ <= NOT \DONE~reg0_q\;
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

-- Location: IOOBUF_X24_Y0_N16
\DONE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DONE~reg0_q\,
	devoe => ww_devoe,
	o => \DONE~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\RDATA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RDATA[0]~reg0_q\,
	devoe => ww_devoe,
	o => \RDATA[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\RDATA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RDATA[1]~reg0_q\,
	devoe => ww_devoe,
	o => \RDATA[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\RDATA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RDATA[2]~reg0_q\,
	devoe => ww_devoe,
	o => \RDATA[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\RDATA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RDATA[3]~reg0_q\,
	devoe => ww_devoe,
	o => \RDATA[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\RDATA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RDATA[4]~reg0_q\,
	devoe => ww_devoe,
	o => \RDATA[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\RDATA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RDATA[5]~reg0_q\,
	devoe => ww_devoe,
	o => \RDATA[5]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\RDATA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RDATA[6]~reg0_q\,
	devoe => ww_devoe,
	o => \RDATA[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\RDATA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RDATA[7]~reg0_q\,
	devoe => ww_devoe,
	o => \RDATA[7]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\RDATA[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RDATA[8]~reg0_q\,
	devoe => ww_devoe,
	o => \RDATA[8]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\RDATA[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RDATA[9]~reg0_q\,
	devoe => ww_devoe,
	o => \RDATA[9]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\RDATA[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RDATA[10]~reg0_q\,
	devoe => ww_devoe,
	o => \RDATA[10]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\RDATA[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RDATA[11]~reg0_q\,
	devoe => ww_devoe,
	o => \RDATA[11]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\SPI_MOSI~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SPI_MOSI~reg0_q\,
	devoe => ww_devoe,
	o => \SPI_MOSI~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\SPI_SCK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SPI_SCK~reg0_q\,
	devoe => ww_devoe,
	o => \SPI_SCK~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\SPI_SS_N~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_DONE~reg0_q\,
	devoe => ww_devoe,
	o => \SPI_SS_N~output_o\);

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X49_Y54_N29
\START~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: LCCOMB_X49_Y48_N14
\bt2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bt2~0_combout\ = (\state.s1~q\ & (((\bt2~q\)))) # (!\state.s1~q\ & ((\state.s2~q\ & ((\bt2~q\))) # (!\state.s2~q\ & (!\START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \state.s1~q\,
	datac => \bt2~q\,
	datad => \state.s2~q\,
	combout => \bt2~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: FF_X49_Y48_N15
bt2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \bt2~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bt2~q\);

-- Location: LCCOMB_X49_Y52_N0
\Gen_Clk[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[0]~33_combout\ = Gen_Clk(0) $ (VCC)
-- \Gen_Clk[0]~34\ = CARRY(Gen_Clk(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(0),
	datad => VCC,
	combout => \Gen_Clk[0]~33_combout\,
	cout => \Gen_Clk[0]~34\);

-- Location: LCCOMB_X50_Y52_N12
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (Gen_Clk(8)) # ((Gen_Clk(9)) # ((Gen_Clk(10)) # (Gen_Clk(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(8),
	datab => Gen_Clk(9),
	datac => Gen_Clk(10),
	datad => Gen_Clk(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X50_Y52_N24
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (Gen_Clk(0)) # ((Gen_Clk(3)) # ((Gen_Clk(1)) # (!Gen_Clk(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(0),
	datab => Gen_Clk(3),
	datac => Gen_Clk(2),
	datad => Gen_Clk(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X50_Y52_N22
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (Gen_Clk(13)) # ((Gen_Clk(14)) # ((Gen_Clk(15)) # (Gen_Clk(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(13),
	datab => Gen_Clk(14),
	datac => Gen_Clk(15),
	datad => Gen_Clk(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X50_Y52_N2
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (Gen_Clk(4)) # (((Gen_Clk(7)) # (!Gen_Clk(6))) # (!Gen_Clk(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(4),
	datab => Gen_Clk(5),
	datac => Gen_Clk(6),
	datad => Gen_Clk(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X50_Y52_N20
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\) # ((\Equal0~0_combout\) # ((\Equal0~3_combout\) # (\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X50_Y52_N4
\Gen_Clk[2]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[2]~32_combout\ = ((!\Equal0~4_combout\ & !\Equal0~9_combout\)) # (!\state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \state.s1~q\,
	datad => \Equal0~9_combout\,
	combout => \Gen_Clk[2]~32_combout\);

-- Location: LCCOMB_X49_Y48_N26
\Gen_Clk[31]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[31]~35_combout\ = (\RST_N~input_o\ & ((\state.s0~q\) # ((!\START~input_o\ & !\bt2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \state.s0~q\,
	datac => \bt2~q\,
	datad => \RST_N~input_o\,
	combout => \Gen_Clk[31]~35_combout\);

-- Location: LCCOMB_X49_Y48_N4
\Gen_Clk[31]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[31]~36_combout\ = (\Gen_Clk[31]~35_combout\ & !\state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gen_Clk[31]~35_combout\,
	datad => \state.s2~q\,
	combout => \Gen_Clk[31]~36_combout\);

-- Location: FF_X49_Y52_N1
\Gen_Clk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[0]~33_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(0));

-- Location: LCCOMB_X49_Y52_N2
\Gen_Clk[1]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[1]~37_combout\ = (Gen_Clk(1) & (!\Gen_Clk[0]~34\)) # (!Gen_Clk(1) & ((\Gen_Clk[0]~34\) # (GND)))
-- \Gen_Clk[1]~38\ = CARRY((!\Gen_Clk[0]~34\) # (!Gen_Clk(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(1),
	datad => VCC,
	cin => \Gen_Clk[0]~34\,
	combout => \Gen_Clk[1]~37_combout\,
	cout => \Gen_Clk[1]~38\);

-- Location: FF_X49_Y52_N3
\Gen_Clk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[1]~37_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(1));

-- Location: LCCOMB_X49_Y52_N4
\Gen_Clk[2]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[2]~39_combout\ = (Gen_Clk(2) & (\Gen_Clk[1]~38\ $ (GND))) # (!Gen_Clk(2) & (!\Gen_Clk[1]~38\ & VCC))
-- \Gen_Clk[2]~40\ = CARRY((Gen_Clk(2) & !\Gen_Clk[1]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(2),
	datad => VCC,
	cin => \Gen_Clk[1]~38\,
	combout => \Gen_Clk[2]~39_combout\,
	cout => \Gen_Clk[2]~40\);

-- Location: FF_X49_Y52_N5
\Gen_Clk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[2]~39_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(2));

-- Location: LCCOMB_X49_Y52_N6
\Gen_Clk[3]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[3]~41_combout\ = (Gen_Clk(3) & (!\Gen_Clk[2]~40\)) # (!Gen_Clk(3) & ((\Gen_Clk[2]~40\) # (GND)))
-- \Gen_Clk[3]~42\ = CARRY((!\Gen_Clk[2]~40\) # (!Gen_Clk(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(3),
	datad => VCC,
	cin => \Gen_Clk[2]~40\,
	combout => \Gen_Clk[3]~41_combout\,
	cout => \Gen_Clk[3]~42\);

-- Location: FF_X49_Y52_N7
\Gen_Clk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[3]~41_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(3));

-- Location: LCCOMB_X49_Y52_N8
\Gen_Clk[4]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[4]~43_combout\ = (Gen_Clk(4) & (\Gen_Clk[3]~42\ $ (GND))) # (!Gen_Clk(4) & (!\Gen_Clk[3]~42\ & VCC))
-- \Gen_Clk[4]~44\ = CARRY((Gen_Clk(4) & !\Gen_Clk[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(4),
	datad => VCC,
	cin => \Gen_Clk[3]~42\,
	combout => \Gen_Clk[4]~43_combout\,
	cout => \Gen_Clk[4]~44\);

-- Location: FF_X49_Y52_N9
\Gen_Clk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[4]~43_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(4));

-- Location: LCCOMB_X49_Y52_N10
\Gen_Clk[5]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[5]~45_combout\ = (Gen_Clk(5) & (!\Gen_Clk[4]~44\)) # (!Gen_Clk(5) & ((\Gen_Clk[4]~44\) # (GND)))
-- \Gen_Clk[5]~46\ = CARRY((!\Gen_Clk[4]~44\) # (!Gen_Clk(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(5),
	datad => VCC,
	cin => \Gen_Clk[4]~44\,
	combout => \Gen_Clk[5]~45_combout\,
	cout => \Gen_Clk[5]~46\);

-- Location: FF_X49_Y52_N11
\Gen_Clk[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[5]~45_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(5));

-- Location: LCCOMB_X49_Y52_N12
\Gen_Clk[6]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[6]~47_combout\ = (Gen_Clk(6) & (\Gen_Clk[5]~46\ $ (GND))) # (!Gen_Clk(6) & (!\Gen_Clk[5]~46\ & VCC))
-- \Gen_Clk[6]~48\ = CARRY((Gen_Clk(6) & !\Gen_Clk[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(6),
	datad => VCC,
	cin => \Gen_Clk[5]~46\,
	combout => \Gen_Clk[6]~47_combout\,
	cout => \Gen_Clk[6]~48\);

-- Location: FF_X49_Y52_N13
\Gen_Clk[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[6]~47_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(6));

-- Location: LCCOMB_X49_Y52_N14
\Gen_Clk[7]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[7]~49_combout\ = (Gen_Clk(7) & (!\Gen_Clk[6]~48\)) # (!Gen_Clk(7) & ((\Gen_Clk[6]~48\) # (GND)))
-- \Gen_Clk[7]~50\ = CARRY((!\Gen_Clk[6]~48\) # (!Gen_Clk(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(7),
	datad => VCC,
	cin => \Gen_Clk[6]~48\,
	combout => \Gen_Clk[7]~49_combout\,
	cout => \Gen_Clk[7]~50\);

-- Location: FF_X49_Y52_N15
\Gen_Clk[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[7]~49_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(7));

-- Location: LCCOMB_X49_Y52_N16
\Gen_Clk[8]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[8]~51_combout\ = (Gen_Clk(8) & (\Gen_Clk[7]~50\ $ (GND))) # (!Gen_Clk(8) & (!\Gen_Clk[7]~50\ & VCC))
-- \Gen_Clk[8]~52\ = CARRY((Gen_Clk(8) & !\Gen_Clk[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(8),
	datad => VCC,
	cin => \Gen_Clk[7]~50\,
	combout => \Gen_Clk[8]~51_combout\,
	cout => \Gen_Clk[8]~52\);

-- Location: FF_X49_Y52_N17
\Gen_Clk[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[8]~51_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(8));

-- Location: LCCOMB_X49_Y52_N18
\Gen_Clk[9]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[9]~53_combout\ = (Gen_Clk(9) & (!\Gen_Clk[8]~52\)) # (!Gen_Clk(9) & ((\Gen_Clk[8]~52\) # (GND)))
-- \Gen_Clk[9]~54\ = CARRY((!\Gen_Clk[8]~52\) # (!Gen_Clk(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(9),
	datad => VCC,
	cin => \Gen_Clk[8]~52\,
	combout => \Gen_Clk[9]~53_combout\,
	cout => \Gen_Clk[9]~54\);

-- Location: FF_X49_Y52_N19
\Gen_Clk[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[9]~53_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(9));

-- Location: LCCOMB_X49_Y52_N20
\Gen_Clk[10]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[10]~55_combout\ = (Gen_Clk(10) & (\Gen_Clk[9]~54\ $ (GND))) # (!Gen_Clk(10) & (!\Gen_Clk[9]~54\ & VCC))
-- \Gen_Clk[10]~56\ = CARRY((Gen_Clk(10) & !\Gen_Clk[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(10),
	datad => VCC,
	cin => \Gen_Clk[9]~54\,
	combout => \Gen_Clk[10]~55_combout\,
	cout => \Gen_Clk[10]~56\);

-- Location: FF_X49_Y52_N21
\Gen_Clk[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[10]~55_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(10));

-- Location: LCCOMB_X49_Y52_N22
\Gen_Clk[11]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[11]~57_combout\ = (Gen_Clk(11) & (!\Gen_Clk[10]~56\)) # (!Gen_Clk(11) & ((\Gen_Clk[10]~56\) # (GND)))
-- \Gen_Clk[11]~58\ = CARRY((!\Gen_Clk[10]~56\) # (!Gen_Clk(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(11),
	datad => VCC,
	cin => \Gen_Clk[10]~56\,
	combout => \Gen_Clk[11]~57_combout\,
	cout => \Gen_Clk[11]~58\);

-- Location: FF_X49_Y52_N23
\Gen_Clk[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[11]~57_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(11));

-- Location: LCCOMB_X49_Y52_N24
\Gen_Clk[12]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[12]~59_combout\ = (Gen_Clk(12) & (\Gen_Clk[11]~58\ $ (GND))) # (!Gen_Clk(12) & (!\Gen_Clk[11]~58\ & VCC))
-- \Gen_Clk[12]~60\ = CARRY((Gen_Clk(12) & !\Gen_Clk[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(12),
	datad => VCC,
	cin => \Gen_Clk[11]~58\,
	combout => \Gen_Clk[12]~59_combout\,
	cout => \Gen_Clk[12]~60\);

-- Location: FF_X49_Y52_N25
\Gen_Clk[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[12]~59_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(12));

-- Location: LCCOMB_X49_Y52_N26
\Gen_Clk[13]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[13]~61_combout\ = (Gen_Clk(13) & (!\Gen_Clk[12]~60\)) # (!Gen_Clk(13) & ((\Gen_Clk[12]~60\) # (GND)))
-- \Gen_Clk[13]~62\ = CARRY((!\Gen_Clk[12]~60\) # (!Gen_Clk(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(13),
	datad => VCC,
	cin => \Gen_Clk[12]~60\,
	combout => \Gen_Clk[13]~61_combout\,
	cout => \Gen_Clk[13]~62\);

-- Location: FF_X49_Y52_N27
\Gen_Clk[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[13]~61_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(13));

-- Location: LCCOMB_X49_Y52_N28
\Gen_Clk[14]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[14]~63_combout\ = (Gen_Clk(14) & (\Gen_Clk[13]~62\ $ (GND))) # (!Gen_Clk(14) & (!\Gen_Clk[13]~62\ & VCC))
-- \Gen_Clk[14]~64\ = CARRY((Gen_Clk(14) & !\Gen_Clk[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(14),
	datad => VCC,
	cin => \Gen_Clk[13]~62\,
	combout => \Gen_Clk[14]~63_combout\,
	cout => \Gen_Clk[14]~64\);

-- Location: FF_X49_Y52_N29
\Gen_Clk[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[14]~63_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(14));

-- Location: LCCOMB_X49_Y52_N30
\Gen_Clk[15]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[15]~65_combout\ = (Gen_Clk(15) & (!\Gen_Clk[14]~64\)) # (!Gen_Clk(15) & ((\Gen_Clk[14]~64\) # (GND)))
-- \Gen_Clk[15]~66\ = CARRY((!\Gen_Clk[14]~64\) # (!Gen_Clk(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(15),
	datad => VCC,
	cin => \Gen_Clk[14]~64\,
	combout => \Gen_Clk[15]~65_combout\,
	cout => \Gen_Clk[15]~66\);

-- Location: FF_X49_Y52_N31
\Gen_Clk[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[15]~65_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(15));

-- Location: LCCOMB_X49_Y51_N0
\Gen_Clk[16]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[16]~67_combout\ = (Gen_Clk(16) & (\Gen_Clk[15]~66\ $ (GND))) # (!Gen_Clk(16) & (!\Gen_Clk[15]~66\ & VCC))
-- \Gen_Clk[16]~68\ = CARRY((Gen_Clk(16) & !\Gen_Clk[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(16),
	datad => VCC,
	cin => \Gen_Clk[15]~66\,
	combout => \Gen_Clk[16]~67_combout\,
	cout => \Gen_Clk[16]~68\);

-- Location: FF_X49_Y51_N1
\Gen_Clk[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[16]~67_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(16));

-- Location: LCCOMB_X49_Y51_N2
\Gen_Clk[17]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[17]~69_combout\ = (Gen_Clk(17) & (!\Gen_Clk[16]~68\)) # (!Gen_Clk(17) & ((\Gen_Clk[16]~68\) # (GND)))
-- \Gen_Clk[17]~70\ = CARRY((!\Gen_Clk[16]~68\) # (!Gen_Clk(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(17),
	datad => VCC,
	cin => \Gen_Clk[16]~68\,
	combout => \Gen_Clk[17]~69_combout\,
	cout => \Gen_Clk[17]~70\);

-- Location: FF_X49_Y51_N3
\Gen_Clk[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[17]~69_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(17));

-- Location: LCCOMB_X49_Y51_N4
\Gen_Clk[18]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[18]~71_combout\ = (Gen_Clk(18) & (\Gen_Clk[17]~70\ $ (GND))) # (!Gen_Clk(18) & (!\Gen_Clk[17]~70\ & VCC))
-- \Gen_Clk[18]~72\ = CARRY((Gen_Clk(18) & !\Gen_Clk[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(18),
	datad => VCC,
	cin => \Gen_Clk[17]~70\,
	combout => \Gen_Clk[18]~71_combout\,
	cout => \Gen_Clk[18]~72\);

-- Location: FF_X49_Y51_N5
\Gen_Clk[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[18]~71_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(18));

-- Location: LCCOMB_X49_Y51_N6
\Gen_Clk[19]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[19]~73_combout\ = (Gen_Clk(19) & (!\Gen_Clk[18]~72\)) # (!Gen_Clk(19) & ((\Gen_Clk[18]~72\) # (GND)))
-- \Gen_Clk[19]~74\ = CARRY((!\Gen_Clk[18]~72\) # (!Gen_Clk(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(19),
	datad => VCC,
	cin => \Gen_Clk[18]~72\,
	combout => \Gen_Clk[19]~73_combout\,
	cout => \Gen_Clk[19]~74\);

-- Location: FF_X49_Y51_N7
\Gen_Clk[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[19]~73_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(19));

-- Location: LCCOMB_X49_Y51_N8
\Gen_Clk[20]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[20]~75_combout\ = (Gen_Clk(20) & (\Gen_Clk[19]~74\ $ (GND))) # (!Gen_Clk(20) & (!\Gen_Clk[19]~74\ & VCC))
-- \Gen_Clk[20]~76\ = CARRY((Gen_Clk(20) & !\Gen_Clk[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(20),
	datad => VCC,
	cin => \Gen_Clk[19]~74\,
	combout => \Gen_Clk[20]~75_combout\,
	cout => \Gen_Clk[20]~76\);

-- Location: FF_X49_Y51_N9
\Gen_Clk[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[20]~75_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(20));

-- Location: LCCOMB_X49_Y51_N10
\Gen_Clk[21]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[21]~77_combout\ = (Gen_Clk(21) & (!\Gen_Clk[20]~76\)) # (!Gen_Clk(21) & ((\Gen_Clk[20]~76\) # (GND)))
-- \Gen_Clk[21]~78\ = CARRY((!\Gen_Clk[20]~76\) # (!Gen_Clk(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(21),
	datad => VCC,
	cin => \Gen_Clk[20]~76\,
	combout => \Gen_Clk[21]~77_combout\,
	cout => \Gen_Clk[21]~78\);

-- Location: FF_X49_Y51_N11
\Gen_Clk[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[21]~77_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(21));

-- Location: LCCOMB_X49_Y51_N12
\Gen_Clk[22]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[22]~79_combout\ = (Gen_Clk(22) & (\Gen_Clk[21]~78\ $ (GND))) # (!Gen_Clk(22) & (!\Gen_Clk[21]~78\ & VCC))
-- \Gen_Clk[22]~80\ = CARRY((Gen_Clk(22) & !\Gen_Clk[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(22),
	datad => VCC,
	cin => \Gen_Clk[21]~78\,
	combout => \Gen_Clk[22]~79_combout\,
	cout => \Gen_Clk[22]~80\);

-- Location: FF_X49_Y51_N13
\Gen_Clk[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[22]~79_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(22));

-- Location: LCCOMB_X49_Y51_N14
\Gen_Clk[23]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[23]~81_combout\ = (Gen_Clk(23) & (!\Gen_Clk[22]~80\)) # (!Gen_Clk(23) & ((\Gen_Clk[22]~80\) # (GND)))
-- \Gen_Clk[23]~82\ = CARRY((!\Gen_Clk[22]~80\) # (!Gen_Clk(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(23),
	datad => VCC,
	cin => \Gen_Clk[22]~80\,
	combout => \Gen_Clk[23]~81_combout\,
	cout => \Gen_Clk[23]~82\);

-- Location: FF_X49_Y51_N15
\Gen_Clk[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[23]~81_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(23));

-- Location: LCCOMB_X49_Y51_N16
\Gen_Clk[24]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[24]~83_combout\ = (Gen_Clk(24) & (\Gen_Clk[23]~82\ $ (GND))) # (!Gen_Clk(24) & (!\Gen_Clk[23]~82\ & VCC))
-- \Gen_Clk[24]~84\ = CARRY((Gen_Clk(24) & !\Gen_Clk[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(24),
	datad => VCC,
	cin => \Gen_Clk[23]~82\,
	combout => \Gen_Clk[24]~83_combout\,
	cout => \Gen_Clk[24]~84\);

-- Location: FF_X49_Y51_N17
\Gen_Clk[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[24]~83_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(24));

-- Location: LCCOMB_X49_Y51_N18
\Gen_Clk[25]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[25]~85_combout\ = (Gen_Clk(25) & (!\Gen_Clk[24]~84\)) # (!Gen_Clk(25) & ((\Gen_Clk[24]~84\) # (GND)))
-- \Gen_Clk[25]~86\ = CARRY((!\Gen_Clk[24]~84\) # (!Gen_Clk(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(25),
	datad => VCC,
	cin => \Gen_Clk[24]~84\,
	combout => \Gen_Clk[25]~85_combout\,
	cout => \Gen_Clk[25]~86\);

-- Location: FF_X49_Y51_N19
\Gen_Clk[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[25]~85_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(25));

-- Location: LCCOMB_X49_Y51_N20
\Gen_Clk[26]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[26]~87_combout\ = (Gen_Clk(26) & (\Gen_Clk[25]~86\ $ (GND))) # (!Gen_Clk(26) & (!\Gen_Clk[25]~86\ & VCC))
-- \Gen_Clk[26]~88\ = CARRY((Gen_Clk(26) & !\Gen_Clk[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(26),
	datad => VCC,
	cin => \Gen_Clk[25]~86\,
	combout => \Gen_Clk[26]~87_combout\,
	cout => \Gen_Clk[26]~88\);

-- Location: FF_X49_Y51_N21
\Gen_Clk[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[26]~87_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(26));

-- Location: LCCOMB_X49_Y51_N22
\Gen_Clk[27]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[27]~89_combout\ = (Gen_Clk(27) & (!\Gen_Clk[26]~88\)) # (!Gen_Clk(27) & ((\Gen_Clk[26]~88\) # (GND)))
-- \Gen_Clk[27]~90\ = CARRY((!\Gen_Clk[26]~88\) # (!Gen_Clk(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(27),
	datad => VCC,
	cin => \Gen_Clk[26]~88\,
	combout => \Gen_Clk[27]~89_combout\,
	cout => \Gen_Clk[27]~90\);

-- Location: FF_X49_Y51_N23
\Gen_Clk[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[27]~89_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(27));

-- Location: LCCOMB_X49_Y51_N24
\Gen_Clk[28]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[28]~91_combout\ = (Gen_Clk(28) & (\Gen_Clk[27]~90\ $ (GND))) # (!Gen_Clk(28) & (!\Gen_Clk[27]~90\ & VCC))
-- \Gen_Clk[28]~92\ = CARRY((Gen_Clk(28) & !\Gen_Clk[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(28),
	datad => VCC,
	cin => \Gen_Clk[27]~90\,
	combout => \Gen_Clk[28]~91_combout\,
	cout => \Gen_Clk[28]~92\);

-- Location: FF_X49_Y51_N25
\Gen_Clk[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[28]~91_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(28));

-- Location: LCCOMB_X49_Y51_N26
\Gen_Clk[29]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[29]~93_combout\ = (Gen_Clk(29) & (!\Gen_Clk[28]~92\)) # (!Gen_Clk(29) & ((\Gen_Clk[28]~92\) # (GND)))
-- \Gen_Clk[29]~94\ = CARRY((!\Gen_Clk[28]~92\) # (!Gen_Clk(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(29),
	datad => VCC,
	cin => \Gen_Clk[28]~92\,
	combout => \Gen_Clk[29]~93_combout\,
	cout => \Gen_Clk[29]~94\);

-- Location: FF_X49_Y51_N27
\Gen_Clk[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[29]~93_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(29));

-- Location: LCCOMB_X49_Y51_N28
\Gen_Clk[30]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[30]~95_combout\ = (Gen_Clk(30) & (\Gen_Clk[29]~94\ $ (GND))) # (!Gen_Clk(30) & (!\Gen_Clk[29]~94\ & VCC))
-- \Gen_Clk[30]~96\ = CARRY((Gen_Clk(30) & !\Gen_Clk[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Gen_Clk(30),
	datad => VCC,
	cin => \Gen_Clk[29]~94\,
	combout => \Gen_Clk[30]~95_combout\,
	cout => \Gen_Clk[30]~96\);

-- Location: FF_X49_Y51_N29
\Gen_Clk[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[30]~95_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(30));

-- Location: LCCOMB_X49_Y51_N30
\Gen_Clk[31]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Gen_Clk[31]~97_combout\ = Gen_Clk(31) $ (\Gen_Clk[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(31),
	cin => \Gen_Clk[30]~96\,
	combout => \Gen_Clk[31]~97_combout\);

-- Location: FF_X49_Y51_N31
\Gen_Clk[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Gen_Clk[31]~97_combout\,
	sclr => \Gen_Clk[2]~32_combout\,
	ena => \Gen_Clk[31]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Gen_Clk(31));

-- Location: LCCOMB_X50_Y51_N10
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (Gen_Clk(29)) # ((Gen_Clk(31)) # ((Gen_Clk(30)) # (Gen_Clk(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(29),
	datab => Gen_Clk(31),
	datac => Gen_Clk(30),
	datad => Gen_Clk(28),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X50_Y51_N20
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (Gen_Clk(16)) # ((Gen_Clk(19)) # ((Gen_Clk(18)) # (Gen_Clk(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(16),
	datab => Gen_Clk(19),
	datac => Gen_Clk(18),
	datad => Gen_Clk(17),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X50_Y51_N22
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (Gen_Clk(22)) # ((Gen_Clk(20)) # ((Gen_Clk(23)) # (Gen_Clk(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(22),
	datab => Gen_Clk(20),
	datac => Gen_Clk(23),
	datad => Gen_Clk(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X50_Y51_N28
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (Gen_Clk(24)) # ((Gen_Clk(27)) # ((Gen_Clk(25)) # (Gen_Clk(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Gen_Clk(24),
	datab => Gen_Clk(27),
	datac => Gen_Clk(25),
	datad => Gen_Clk(26),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X50_Y51_N0
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\) # ((\Equal0~5_combout\) # ((\Equal0~6_combout\) # (\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X49_Y48_N10
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\) # (\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X49_Y48_N0
\Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\state.s1~q\ & (\clock~q\ $ (((!\Equal0~10_combout\))))) # (!\state.s1~q\ & (\clock~q\ & (!\Selector40~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock~q\,
	datab => \state.s1~q\,
	datac => \Selector40~0_combout\,
	datad => \Equal0~10_combout\,
	combout => \Selector38~0_combout\);

-- Location: FF_X50_Y49_N15
clock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector38~0_combout\,
	sload => VCC,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock~q\);

-- Location: LCCOMB_X50_Y52_N14
\Result[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[0]~0_combout\ = (!\Equal0~4_combout\ & (\state.s1~q\ & !\Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \state.s1~q\,
	datad => \Equal0~9_combout\,
	combout => \Result[0]~0_combout\);

-- Location: LCCOMB_X50_Y49_N0
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (Count_12(0) & (\clock~q\ $ (GND))) # (!Count_12(0) & (!\clock~q\ & VCC))
-- \Add3~1\ = CARRY((Count_12(0) & !\clock~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(0),
	datab => \clock~q\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X51_Y49_N6
\Selector138~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector138~0_combout\ = (\state.s0~q\ & (((\Add3~0_combout\ & \Result[0]~0_combout\)))) # (!\state.s0~q\ & ((Count_12(0)) # ((\Add3~0_combout\ & \Result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => Count_12(0),
	datac => \Add3~0_combout\,
	datad => \Result[0]~0_combout\,
	combout => \Selector138~0_combout\);

-- Location: LCCOMB_X51_Y49_N20
\Selector138~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector138~1_combout\ = (\Selector138~0_combout\) # ((!\Gen_Clk[2]~32_combout\ & Count_12(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gen_Clk[2]~32_combout\,
	datac => Count_12(0),
	datad => \Selector138~0_combout\,
	combout => \Selector138~1_combout\);

-- Location: FF_X51_Y49_N21
\Count_12[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector138~1_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(0));

-- Location: LCCOMB_X50_Y49_N2
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (Count_12(1) & (!\Add3~1\)) # (!Count_12(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!Count_12(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X51_Y49_N16
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\Add3~2_combout\ & (\state.s1~q\ & (!\Equal0~9_combout\ & !\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \state.s1~q\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \Add3~4_combout\);

-- Location: LCCOMB_X51_Y49_N10
\Selector137~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector137~0_combout\ = (\Add3~4_combout\) # ((Count_12(1) & ((!\Gen_Clk[2]~32_combout\) # (!\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => Count_12(1),
	datac => \Gen_Clk[2]~32_combout\,
	datad => \Add3~4_combout\,
	combout => \Selector137~0_combout\);

-- Location: FF_X50_Y49_N31
\Count_12[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector137~0_combout\,
	sload => VCC,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(1));

-- Location: LCCOMB_X50_Y49_N4
\Add3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~5_combout\ = (Count_12(2) & (\Add3~3\ $ (GND))) # (!Count_12(2) & (!\Add3~3\ & VCC))
-- \Add3~6\ = CARRY((Count_12(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~5_combout\,
	cout => \Add3~6\);

-- Location: LCCOMB_X51_Y49_N2
\Selector136~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector136~0_combout\ = (\state.s0~q\ & (((\Add3~5_combout\ & \Result[0]~0_combout\)))) # (!\state.s0~q\ & ((Count_12(2)) # ((\Add3~5_combout\ & \Result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => Count_12(2),
	datac => \Add3~5_combout\,
	datad => \Result[0]~0_combout\,
	combout => \Selector136~0_combout\);

-- Location: LCCOMB_X51_Y49_N4
\Selector136~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector136~1_combout\ = (\Selector136~0_combout\) # ((!\Gen_Clk[2]~32_combout\ & Count_12(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gen_Clk[2]~32_combout\,
	datac => Count_12(2),
	datad => \Selector136~0_combout\,
	combout => \Selector136~1_combout\);

-- Location: FF_X51_Y49_N5
\Count_12[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector136~1_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(2));

-- Location: LCCOMB_X50_Y49_N6
\Add3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~7_combout\ = (Count_12(3) & (!\Add3~6\)) # (!Count_12(3) & ((\Add3~6\) # (GND)))
-- \Add3~8\ = CARRY((!\Add3~6\) # (!Count_12(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(3),
	datad => VCC,
	cin => \Add3~6\,
	combout => \Add3~7_combout\,
	cout => \Add3~8\);

-- Location: LCCOMB_X51_Y49_N12
\Add3~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~66_combout\ = (\state.s1~q\ & (\Add3~7_combout\ & (!\Equal0~9_combout\ & !\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \Add3~7_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \Add3~66_combout\);

-- Location: LCCOMB_X51_Y49_N30
\Selector135~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector135~0_combout\ = (\Add3~66_combout\) # ((Count_12(3) & ((!\Gen_Clk[2]~32_combout\) # (!\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \Gen_Clk[2]~32_combout\,
	datac => Count_12(3),
	datad => \Add3~66_combout\,
	combout => \Selector135~0_combout\);

-- Location: FF_X51_Y49_N31
\Count_12[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector135~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(3));

-- Location: LCCOMB_X50_Y49_N8
\Add3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~9_combout\ = (Count_12(4) & (\Add3~8\ $ (GND))) # (!Count_12(4) & (!\Add3~8\ & VCC))
-- \Add3~10\ = CARRY((Count_12(4) & !\Add3~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(4),
	datad => VCC,
	cin => \Add3~8\,
	combout => \Add3~9_combout\,
	cout => \Add3~10\);

-- Location: LCCOMB_X49_Y49_N6
\Selector134~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector134~0_combout\ = (\state.s0~q\ & (((\Result[0]~0_combout\ & \Add3~9_combout\)))) # (!\state.s0~q\ & ((Count_12(4)) # ((\Result[0]~0_combout\ & \Add3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => Count_12(4),
	datac => \Result[0]~0_combout\,
	datad => \Add3~9_combout\,
	combout => \Selector134~0_combout\);

-- Location: LCCOMB_X49_Y49_N14
\Selector134~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector134~1_combout\ = (\Selector134~0_combout\) # ((Count_12(4) & !\Gen_Clk[2]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector134~0_combout\,
	datac => Count_12(4),
	datad => \Gen_Clk[2]~32_combout\,
	combout => \Selector134~1_combout\);

-- Location: FF_X49_Y49_N15
\Count_12[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector134~1_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(4));

-- Location: LCCOMB_X50_Y49_N10
\Add3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~11_combout\ = (Count_12(5) & (!\Add3~10\)) # (!Count_12(5) & ((\Add3~10\) # (GND)))
-- \Add3~12\ = CARRY((!\Add3~10\) # (!Count_12(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(5),
	datad => VCC,
	cin => \Add3~10\,
	combout => \Add3~11_combout\,
	cout => \Add3~12\);

-- Location: LCCOMB_X51_Y48_N10
\Selector133~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector133~0_combout\ = (\state.s0~q\ & (((\Add3~11_combout\ & \Result[0]~0_combout\)))) # (!\state.s0~q\ & ((Count_12(5)) # ((\Add3~11_combout\ & \Result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => Count_12(5),
	datac => \Add3~11_combout\,
	datad => \Result[0]~0_combout\,
	combout => \Selector133~0_combout\);

-- Location: LCCOMB_X51_Y48_N14
\Selector133~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector133~1_combout\ = (\Selector133~0_combout\) # ((!\Gen_Clk[2]~32_combout\ & Count_12(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gen_Clk[2]~32_combout\,
	datac => Count_12(5),
	datad => \Selector133~0_combout\,
	combout => \Selector133~1_combout\);

-- Location: FF_X51_Y48_N15
\Count_12[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector133~1_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(5));

-- Location: LCCOMB_X50_Y49_N12
\Add3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~13_combout\ = (Count_12(6) & (\Add3~12\ $ (GND))) # (!Count_12(6) & (!\Add3~12\ & VCC))
-- \Add3~14\ = CARRY((Count_12(6) & !\Add3~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(6),
	datad => VCC,
	cin => \Add3~12\,
	combout => \Add3~13_combout\,
	cout => \Add3~14\);

-- Location: LCCOMB_X51_Y48_N16
\Selector132~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector132~0_combout\ = (\Add3~13_combout\ & ((\Result[0]~0_combout\) # ((!\state.s0~q\ & Count_12(6))))) # (!\Add3~13_combout\ & (!\state.s0~q\ & (Count_12(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~13_combout\,
	datab => \state.s0~q\,
	datac => Count_12(6),
	datad => \Result[0]~0_combout\,
	combout => \Selector132~0_combout\);

-- Location: LCCOMB_X51_Y48_N0
\Selector132~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector132~1_combout\ = (\Selector132~0_combout\) # ((!\Gen_Clk[2]~32_combout\ & Count_12(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gen_Clk[2]~32_combout\,
	datac => Count_12(6),
	datad => \Selector132~0_combout\,
	combout => \Selector132~1_combout\);

-- Location: FF_X51_Y48_N1
\Count_12[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector132~1_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(6));

-- Location: LCCOMB_X51_Y48_N20
\Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!Count_12(5) & !Count_12(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Count_12(5),
	datad => Count_12(6),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X50_Y49_N14
\Add3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~15_combout\ = (Count_12(7) & (!\Add3~14\)) # (!Count_12(7) & ((\Add3~14\) # (GND)))
-- \Add3~16\ = CARRY((!\Add3~14\) # (!Count_12(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(7),
	datad => VCC,
	cin => \Add3~14\,
	combout => \Add3~15_combout\,
	cout => \Add3~16\);

-- Location: LCCOMB_X49_Y49_N0
\Selector131~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector131~0_combout\ = (\state.s0~q\ & (((\Result[0]~0_combout\ & \Add3~15_combout\)))) # (!\state.s0~q\ & ((Count_12(7)) # ((\Result[0]~0_combout\ & \Add3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => Count_12(7),
	datac => \Result[0]~0_combout\,
	datad => \Add3~15_combout\,
	combout => \Selector131~0_combout\);

-- Location: LCCOMB_X49_Y49_N8
\Selector131~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector131~1_combout\ = (\Selector131~0_combout\) # ((Count_12(7) & !\Gen_Clk[2]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector131~0_combout\,
	datac => Count_12(7),
	datad => \Gen_Clk[2]~32_combout\,
	combout => \Selector131~1_combout\);

-- Location: FF_X49_Y49_N9
\Count_12[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector131~1_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(7));

-- Location: LCCOMB_X50_Y49_N16
\Add3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~17_combout\ = (Count_12(8) & (\Add3~16\ $ (GND))) # (!Count_12(8) & (!\Add3~16\ & VCC))
-- \Add3~18\ = CARRY((Count_12(8) & !\Add3~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(8),
	datad => VCC,
	cin => \Add3~16\,
	combout => \Add3~17_combout\,
	cout => \Add3~18\);

-- Location: LCCOMB_X49_Y49_N30
\Add3~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~65_combout\ = (\state.s1~q\ & (\Add3~17_combout\ & (!\Equal0~9_combout\ & !\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \Add3~17_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \Add3~65_combout\);

-- Location: LCCOMB_X49_Y49_N22
\Selector130~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector130~0_combout\ = (\Add3~65_combout\) # ((Count_12(8) & ((!\Gen_Clk[2]~32_combout\) # (!\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~65_combout\,
	datab => \state.s0~q\,
	datac => Count_12(8),
	datad => \Gen_Clk[2]~32_combout\,
	combout => \Selector130~0_combout\);

-- Location: FF_X49_Y49_N23
\Count_12[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector130~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(8));

-- Location: LCCOMB_X50_Y49_N18
\Add3~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~19_combout\ = (Count_12(9) & (!\Add3~18\)) # (!Count_12(9) & ((\Add3~18\) # (GND)))
-- \Add3~20\ = CARRY((!\Add3~18\) # (!Count_12(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(9),
	datad => VCC,
	cin => \Add3~18\,
	combout => \Add3~19_combout\,
	cout => \Add3~20\);

-- Location: LCCOMB_X49_Y49_N24
\Add3~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~64_combout\ = (\state.s1~q\ & (\Add3~19_combout\ & (!\Equal0~9_combout\ & !\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \Add3~19_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \Add3~64_combout\);

-- Location: LCCOMB_X49_Y49_N4
\Selector129~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector129~0_combout\ = (\Add3~64_combout\) # ((Count_12(9) & ((!\Gen_Clk[2]~32_combout\) # (!\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \Add3~64_combout\,
	datac => Count_12(9),
	datad => \Gen_Clk[2]~32_combout\,
	combout => \Selector129~0_combout\);

-- Location: FF_X49_Y49_N5
\Count_12[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector129~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(9));

-- Location: LCCOMB_X50_Y49_N20
\Add3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~21_combout\ = (Count_12(10) & (\Add3~20\ $ (GND))) # (!Count_12(10) & (!\Add3~20\ & VCC))
-- \Add3~22\ = CARRY((Count_12(10) & !\Add3~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(10),
	datad => VCC,
	cin => \Add3~20\,
	combout => \Add3~21_combout\,
	cout => \Add3~22\);

-- Location: LCCOMB_X49_Y49_N18
\Selector128~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector128~0_combout\ = (Count_12(10) & (((\Result[0]~0_combout\ & \Add3~21_combout\)) # (!\state.s0~q\))) # (!Count_12(10) & (((\Result[0]~0_combout\ & \Add3~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(10),
	datab => \state.s0~q\,
	datac => \Result[0]~0_combout\,
	datad => \Add3~21_combout\,
	combout => \Selector128~0_combout\);

-- Location: LCCOMB_X49_Y49_N10
\Selector128~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector128~1_combout\ = (\Selector128~0_combout\) # ((Count_12(10) & !\Gen_Clk[2]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector128~0_combout\,
	datac => Count_12(10),
	datad => \Gen_Clk[2]~32_combout\,
	combout => \Selector128~1_combout\);

-- Location: FF_X49_Y49_N11
\Count_12[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector128~1_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(10));

-- Location: LCCOMB_X50_Y49_N22
\Add3~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~23_combout\ = (Count_12(11) & (!\Add3~22\)) # (!Count_12(11) & ((\Add3~22\) # (GND)))
-- \Add3~24\ = CARRY((!\Add3~22\) # (!Count_12(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(11),
	datad => VCC,
	cin => \Add3~22\,
	combout => \Add3~23_combout\,
	cout => \Add3~24\);

-- Location: LCCOMB_X51_Y48_N6
\Selector127~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector127~0_combout\ = (Count_12(11) & (((\Add3~23_combout\ & \Result[0]~0_combout\)) # (!\state.s0~q\))) # (!Count_12(11) & (((\Add3~23_combout\ & \Result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(11),
	datab => \state.s0~q\,
	datac => \Add3~23_combout\,
	datad => \Result[0]~0_combout\,
	combout => \Selector127~0_combout\);

-- Location: LCCOMB_X51_Y48_N18
\Selector127~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector127~1_combout\ = (\Selector127~0_combout\) # ((!\Gen_Clk[2]~32_combout\ & Count_12(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gen_Clk[2]~32_combout\,
	datac => Count_12(11),
	datad => \Selector127~0_combout\,
	combout => \Selector127~1_combout\);

-- Location: FF_X51_Y48_N19
\Count_12[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector127~1_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(11));

-- Location: LCCOMB_X50_Y49_N24
\Add3~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~25_combout\ = (Count_12(12) & (\Add3~24\ $ (GND))) # (!Count_12(12) & (!\Add3~24\ & VCC))
-- \Add3~26\ = CARRY((Count_12(12) & !\Add3~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(12),
	datad => VCC,
	cin => \Add3~24\,
	combout => \Add3~25_combout\,
	cout => \Add3~26\);

-- Location: LCCOMB_X49_Y49_N28
\Selector126~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector126~0_combout\ = (Count_12(12) & (((\Add3~25_combout\ & \Result[0]~0_combout\)) # (!\state.s0~q\))) # (!Count_12(12) & (\Add3~25_combout\ & (\Result[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(12),
	datab => \Add3~25_combout\,
	datac => \Result[0]~0_combout\,
	datad => \state.s0~q\,
	combout => \Selector126~0_combout\);

-- Location: LCCOMB_X49_Y49_N16
\Selector126~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector126~1_combout\ = (\Selector126~0_combout\) # ((Count_12(12) & !\Gen_Clk[2]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector126~0_combout\,
	datac => Count_12(12),
	datad => \Gen_Clk[2]~32_combout\,
	combout => \Selector126~1_combout\);

-- Location: FF_X49_Y49_N17
\Count_12[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector126~1_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(12));

-- Location: LCCOMB_X50_Y49_N26
\Add3~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~27_combout\ = (Count_12(13) & (!\Add3~26\)) # (!Count_12(13) & ((\Add3~26\) # (GND)))
-- \Add3~28\ = CARRY((!\Add3~26\) # (!Count_12(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(13),
	datad => VCC,
	cin => \Add3~26\,
	combout => \Add3~27_combout\,
	cout => \Add3~28\);

-- Location: LCCOMB_X50_Y52_N0
\Add3~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~63_combout\ = (\state.s1~q\ & (!\Equal0~9_combout\ & (\Add3~27_combout\ & !\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \Equal0~9_combout\,
	datac => \Add3~27_combout\,
	datad => \Equal0~4_combout\,
	combout => \Add3~63_combout\);

-- Location: LCCOMB_X50_Y52_N10
\Selector125~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector125~0_combout\ = (\Add3~63_combout\) # ((Count_12(13) & ((!\Gen_Clk[2]~32_combout\) # (!\state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \Gen_Clk[2]~32_combout\,
	datac => Count_12(13),
	datad => \Add3~63_combout\,
	combout => \Selector125~0_combout\);

-- Location: FF_X50_Y52_N11
\Count_12[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector125~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(13));

-- Location: LCCOMB_X50_Y49_N28
\Add3~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~29_combout\ = (Count_12(14) & (\Add3~28\ $ (GND))) # (!Count_12(14) & (!\Add3~28\ & VCC))
-- \Add3~30\ = CARRY((Count_12(14) & !\Add3~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(14),
	datad => VCC,
	cin => \Add3~28\,
	combout => \Add3~29_combout\,
	cout => \Add3~30\);

-- Location: LCCOMB_X50_Y52_N18
\Selector107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector107~0_combout\ = ((\state.s1~q\ & ((\Equal0~4_combout\) # (\Equal0~9_combout\)))) # (!\state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s0~q\,
	datab => \Equal0~4_combout\,
	datac => \state.s1~q\,
	datad => \Equal0~9_combout\,
	combout => \Selector107~0_combout\);

-- Location: LCCOMB_X50_Y50_N30
\Selector124~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector124~0_combout\ = (\Result[0]~0_combout\ & ((\Add3~29_combout\) # ((Count_12(14) & \Selector107~0_combout\)))) # (!\Result[0]~0_combout\ & (((Count_12(14) & \Selector107~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~0_combout\,
	datab => \Add3~29_combout\,
	datac => Count_12(14),
	datad => \Selector107~0_combout\,
	combout => \Selector124~0_combout\);

-- Location: FF_X50_Y50_N31
\Count_12[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector124~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(14));

-- Location: LCCOMB_X50_Y50_N28
\Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!Count_12(14) & (!Count_12(13) & (!Count_12(12) & !Count_12(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(14),
	datab => Count_12(13),
	datac => Count_12(12),
	datad => Count_12(11),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X49_Y49_N2
\Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!Count_12(8) & (!Count_12(7) & (!Count_12(9) & !Count_12(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(8),
	datab => Count_12(7),
	datac => Count_12(9),
	datad => Count_12(10),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X50_Y49_N30
\Add3~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~31_combout\ = (Count_12(15) & (!\Add3~30\)) # (!Count_12(15) & ((\Add3~30\) # (GND)))
-- \Add3~32\ = CARRY((!\Add3~30\) # (!Count_12(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(15),
	datad => VCC,
	cin => \Add3~30\,
	combout => \Add3~31_combout\,
	cout => \Add3~32\);

-- Location: LCCOMB_X51_Y49_N8
\Selector123~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector123~0_combout\ = (\Result[0]~0_combout\ & ((\Add3~31_combout\) # ((\Selector107~0_combout\ & Count_12(15))))) # (!\Result[0]~0_combout\ & (\Selector107~0_combout\ & (Count_12(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~0_combout\,
	datab => \Selector107~0_combout\,
	datac => Count_12(15),
	datad => \Add3~31_combout\,
	combout => \Selector123~0_combout\);

-- Location: FF_X51_Y49_N9
\Count_12[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector123~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(15));

-- Location: LCCOMB_X50_Y48_N0
\Add3~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~33_combout\ = (Count_12(16) & (\Add3~32\ $ (GND))) # (!Count_12(16) & (!\Add3~32\ & VCC))
-- \Add3~34\ = CARRY((Count_12(16) & !\Add3~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(16),
	datad => VCC,
	cin => \Add3~32\,
	combout => \Add3~33_combout\,
	cout => \Add3~34\);

-- Location: LCCOMB_X49_Y48_N22
\Selector122~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector122~0_combout\ = (\Selector107~0_combout\ & ((Count_12(16)) # ((\Result[0]~0_combout\ & \Add3~33_combout\)))) # (!\Selector107~0_combout\ & (\Result[0]~0_combout\ & ((\Add3~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~0_combout\,
	datab => \Result[0]~0_combout\,
	datac => Count_12(16),
	datad => \Add3~33_combout\,
	combout => \Selector122~0_combout\);

-- Location: FF_X49_Y48_N23
\Count_12[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector122~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(16));

-- Location: LCCOMB_X50_Y48_N2
\Add3~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~35_combout\ = (Count_12(17) & (!\Add3~34\)) # (!Count_12(17) & ((\Add3~34\) # (GND)))
-- \Add3~36\ = CARRY((!\Add3~34\) # (!Count_12(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(17),
	datad => VCC,
	cin => \Add3~34\,
	combout => \Add3~35_combout\,
	cout => \Add3~36\);

-- Location: LCCOMB_X51_Y48_N2
\Selector121~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector121~0_combout\ = (\Selector107~0_combout\ & ((Count_12(17)) # ((\Add3~35_combout\ & \Result[0]~0_combout\)))) # (!\Selector107~0_combout\ & (\Add3~35_combout\ & ((\Result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~0_combout\,
	datab => \Add3~35_combout\,
	datac => Count_12(17),
	datad => \Result[0]~0_combout\,
	combout => \Selector121~0_combout\);

-- Location: FF_X51_Y48_N3
\Count_12[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector121~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(17));

-- Location: LCCOMB_X50_Y48_N4
\Add3~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~37_combout\ = (Count_12(18) & (\Add3~36\ $ (GND))) # (!Count_12(18) & (!\Add3~36\ & VCC))
-- \Add3~38\ = CARRY((Count_12(18) & !\Add3~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(18),
	datad => VCC,
	cin => \Add3~36\,
	combout => \Add3~37_combout\,
	cout => \Add3~38\);

-- Location: LCCOMB_X51_Y48_N8
\Selector120~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector120~0_combout\ = (\Selector107~0_combout\ & ((Count_12(18)) # ((\Add3~37_combout\ & \Result[0]~0_combout\)))) # (!\Selector107~0_combout\ & (\Add3~37_combout\ & ((\Result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~0_combout\,
	datab => \Add3~37_combout\,
	datac => Count_12(18),
	datad => \Result[0]~0_combout\,
	combout => \Selector120~0_combout\);

-- Location: FF_X51_Y48_N9
\Count_12[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector120~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(18));

-- Location: LCCOMB_X50_Y48_N6
\Add3~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~39_combout\ = (Count_12(19) & (!\Add3~38\)) # (!Count_12(19) & ((\Add3~38\) # (GND)))
-- \Add3~40\ = CARRY((!\Add3~38\) # (!Count_12(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(19),
	datad => VCC,
	cin => \Add3~38\,
	combout => \Add3~39_combout\,
	cout => \Add3~40\);

-- Location: LCCOMB_X51_Y48_N22
\Selector119~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector119~0_combout\ = (\Selector107~0_combout\ & ((Count_12(19)) # ((\Add3~39_combout\ & \Result[0]~0_combout\)))) # (!\Selector107~0_combout\ & (\Add3~39_combout\ & ((\Result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~0_combout\,
	datab => \Add3~39_combout\,
	datac => Count_12(19),
	datad => \Result[0]~0_combout\,
	combout => \Selector119~0_combout\);

-- Location: FF_X51_Y48_N23
\Count_12[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector119~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(19));

-- Location: LCCOMB_X50_Y48_N8
\Add3~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~41_combout\ = (Count_12(20) & (\Add3~40\ $ (GND))) # (!Count_12(20) & (!\Add3~40\ & VCC))
-- \Add3~42\ = CARRY((Count_12(20) & !\Add3~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(20),
	datad => VCC,
	cin => \Add3~40\,
	combout => \Add3~41_combout\,
	cout => \Add3~42\);

-- Location: LCCOMB_X50_Y50_N20
\Selector118~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector118~0_combout\ = (\Result[0]~0_combout\ & ((\Add3~41_combout\) # ((Count_12(20) & \Selector107~0_combout\)))) # (!\Result[0]~0_combout\ & (((Count_12(20) & \Selector107~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~0_combout\,
	datab => \Add3~41_combout\,
	datac => Count_12(20),
	datad => \Selector107~0_combout\,
	combout => \Selector118~0_combout\);

-- Location: FF_X50_Y50_N21
\Count_12[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector118~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(20));

-- Location: LCCOMB_X50_Y48_N10
\Add3~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~43_combout\ = (Count_12(21) & (!\Add3~42\)) # (!Count_12(21) & ((\Add3~42\) # (GND)))
-- \Add3~44\ = CARRY((!\Add3~42\) # (!Count_12(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(21),
	datad => VCC,
	cin => \Add3~42\,
	combout => \Add3~43_combout\,
	cout => \Add3~44\);

-- Location: LCCOMB_X50_Y50_N18
\Selector117~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector117~0_combout\ = (\Result[0]~0_combout\ & ((\Add3~43_combout\) # ((Count_12(21) & \Selector107~0_combout\)))) # (!\Result[0]~0_combout\ & (((Count_12(21) & \Selector107~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~0_combout\,
	datab => \Add3~43_combout\,
	datac => Count_12(21),
	datad => \Selector107~0_combout\,
	combout => \Selector117~0_combout\);

-- Location: FF_X50_Y50_N19
\Count_12[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector117~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(21));

-- Location: LCCOMB_X50_Y48_N12
\Add3~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~45_combout\ = (Count_12(22) & (\Add3~44\ $ (GND))) # (!Count_12(22) & (!\Add3~44\ & VCC))
-- \Add3~46\ = CARRY((Count_12(22) & !\Add3~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(22),
	datad => VCC,
	cin => \Add3~44\,
	combout => \Add3~45_combout\,
	cout => \Add3~46\);

-- Location: LCCOMB_X50_Y50_N16
\Selector116~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector116~0_combout\ = (\Result[0]~0_combout\ & ((\Add3~45_combout\) # ((Count_12(22) & \Selector107~0_combout\)))) # (!\Result[0]~0_combout\ & (((Count_12(22) & \Selector107~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~0_combout\,
	datab => \Add3~45_combout\,
	datac => Count_12(22),
	datad => \Selector107~0_combout\,
	combout => \Selector116~0_combout\);

-- Location: FF_X50_Y50_N17
\Count_12[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector116~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(22));

-- Location: LCCOMB_X50_Y50_N26
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!Count_12(22) & (!Count_12(20) & (!Count_12(19) & !Count_12(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(22),
	datab => Count_12(20),
	datac => Count_12(19),
	datad => Count_12(21),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X50_Y48_N14
\Add3~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~47_combout\ = (Count_12(23) & (!\Add3~46\)) # (!Count_12(23) & ((\Add3~46\) # (GND)))
-- \Add3~48\ = CARRY((!\Add3~46\) # (!Count_12(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(23),
	datad => VCC,
	cin => \Add3~46\,
	combout => \Add3~47_combout\,
	cout => \Add3~48\);

-- Location: LCCOMB_X51_Y48_N26
\Selector115~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector115~0_combout\ = (\Selector107~0_combout\ & ((Count_12(23)) # ((\Add3~47_combout\ & \Result[0]~0_combout\)))) # (!\Selector107~0_combout\ & (\Add3~47_combout\ & ((\Result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~0_combout\,
	datab => \Add3~47_combout\,
	datac => Count_12(23),
	datad => \Result[0]~0_combout\,
	combout => \Selector115~0_combout\);

-- Location: FF_X51_Y48_N27
\Count_12[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector115~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(23));

-- Location: LCCOMB_X50_Y48_N16
\Add3~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~49_combout\ = (Count_12(24) & (\Add3~48\ $ (GND))) # (!Count_12(24) & (!\Add3~48\ & VCC))
-- \Add3~50\ = CARRY((Count_12(24) & !\Add3~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(24),
	datad => VCC,
	cin => \Add3~48\,
	combout => \Add3~49_combout\,
	cout => \Add3~50\);

-- Location: LCCOMB_X51_Y48_N24
\Selector114~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector114~0_combout\ = (\Selector107~0_combout\ & ((Count_12(24)) # ((\Add3~49_combout\ & \Result[0]~0_combout\)))) # (!\Selector107~0_combout\ & (\Add3~49_combout\ & ((\Result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~0_combout\,
	datab => \Add3~49_combout\,
	datac => Count_12(24),
	datad => \Result[0]~0_combout\,
	combout => \Selector114~0_combout\);

-- Location: FF_X51_Y48_N25
\Count_12[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector114~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(24));

-- Location: LCCOMB_X50_Y48_N18
\Add3~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~51_combout\ = (Count_12(25) & (!\Add3~50\)) # (!Count_12(25) & ((\Add3~50\) # (GND)))
-- \Add3~52\ = CARRY((!\Add3~50\) # (!Count_12(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(25),
	datad => VCC,
	cin => \Add3~50\,
	combout => \Add3~51_combout\,
	cout => \Add3~52\);

-- Location: LCCOMB_X51_Y48_N30
\Selector113~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector113~0_combout\ = (\Selector107~0_combout\ & ((Count_12(25)) # ((\Add3~51_combout\ & \Result[0]~0_combout\)))) # (!\Selector107~0_combout\ & (\Add3~51_combout\ & ((\Result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~0_combout\,
	datab => \Add3~51_combout\,
	datac => Count_12(25),
	datad => \Result[0]~0_combout\,
	combout => \Selector113~0_combout\);

-- Location: FF_X51_Y48_N31
\Count_12[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector113~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(25));

-- Location: LCCOMB_X50_Y48_N20
\Add3~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~53_combout\ = (Count_12(26) & (\Add3~52\ $ (GND))) # (!Count_12(26) & (!\Add3~52\ & VCC))
-- \Add3~54\ = CARRY((Count_12(26) & !\Add3~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(26),
	datad => VCC,
	cin => \Add3~52\,
	combout => \Add3~53_combout\,
	cout => \Add3~54\);

-- Location: LCCOMB_X51_Y48_N28
\Selector112~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector112~0_combout\ = (\Selector107~0_combout\ & ((Count_12(26)) # ((\Add3~53_combout\ & \Result[0]~0_combout\)))) # (!\Selector107~0_combout\ & (\Add3~53_combout\ & ((\Result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~0_combout\,
	datab => \Add3~53_combout\,
	datac => Count_12(26),
	datad => \Result[0]~0_combout\,
	combout => \Selector112~0_combout\);

-- Location: FF_X51_Y48_N29
\Count_12[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector112~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(26));

-- Location: LCCOMB_X50_Y48_N22
\Add3~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~55_combout\ = (Count_12(27) & (!\Add3~54\)) # (!Count_12(27) & ((\Add3~54\) # (GND)))
-- \Add3~56\ = CARRY((!\Add3~54\) # (!Count_12(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(27),
	datad => VCC,
	cin => \Add3~54\,
	combout => \Add3~55_combout\,
	cout => \Add3~56\);

-- Location: LCCOMB_X50_Y52_N26
\Selector111~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector111~0_combout\ = (\Selector107~0_combout\ & ((Count_12(27)) # ((\Result[0]~0_combout\ & \Add3~55_combout\)))) # (!\Selector107~0_combout\ & (\Result[0]~0_combout\ & ((\Add3~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~0_combout\,
	datab => \Result[0]~0_combout\,
	datac => Count_12(27),
	datad => \Add3~55_combout\,
	combout => \Selector111~0_combout\);

-- Location: FF_X50_Y52_N27
\Count_12[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector111~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(27));

-- Location: LCCOMB_X50_Y48_N24
\Add3~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~57_combout\ = (Count_12(28) & (\Add3~56\ $ (GND))) # (!Count_12(28) & (!\Add3~56\ & VCC))
-- \Add3~58\ = CARRY((Count_12(28) & !\Add3~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(28),
	datad => VCC,
	cin => \Add3~56\,
	combout => \Add3~57_combout\,
	cout => \Add3~58\);

-- Location: LCCOMB_X50_Y52_N16
\Selector110~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector110~0_combout\ = (\Selector107~0_combout\ & ((Count_12(28)) # ((\Result[0]~0_combout\ & \Add3~57_combout\)))) # (!\Selector107~0_combout\ & (\Result[0]~0_combout\ & ((\Add3~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~0_combout\,
	datab => \Result[0]~0_combout\,
	datac => Count_12(28),
	datad => \Add3~57_combout\,
	combout => \Selector110~0_combout\);

-- Location: FF_X50_Y52_N17
\Count_12[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector110~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(28));

-- Location: LCCOMB_X50_Y48_N26
\Add3~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~59_combout\ = (Count_12(29) & (!\Add3~58\)) # (!Count_12(29) & ((\Add3~58\) # (GND)))
-- \Add3~60\ = CARRY((!\Add3~58\) # (!Count_12(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Count_12(29),
	datad => VCC,
	cin => \Add3~58\,
	combout => \Add3~59_combout\,
	cout => \Add3~60\);

-- Location: LCCOMB_X50_Y52_N30
\Selector109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector109~0_combout\ = (\Selector107~0_combout\ & ((Count_12(29)) # ((\Result[0]~0_combout\ & \Add3~59_combout\)))) # (!\Selector107~0_combout\ & (\Result[0]~0_combout\ & ((\Add3~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~0_combout\,
	datab => \Result[0]~0_combout\,
	datac => Count_12(29),
	datad => \Add3~59_combout\,
	combout => \Selector109~0_combout\);

-- Location: FF_X50_Y52_N31
\Count_12[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector109~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(29));

-- Location: LCCOMB_X50_Y48_N28
\Add3~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~61_combout\ = (Count_12(30) & (\Add3~60\ $ (GND))) # (!Count_12(30) & (!\Add3~60\ & VCC))
-- \Add3~62\ = CARRY((Count_12(30) & !\Add3~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(30),
	datad => VCC,
	cin => \Add3~60\,
	combout => \Add3~61_combout\,
	cout => \Add3~62\);

-- Location: LCCOMB_X50_Y52_N8
\Selector108~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector108~0_combout\ = (\Selector107~0_combout\ & ((Count_12(30)) # ((\Result[0]~0_combout\ & \Add3~61_combout\)))) # (!\Selector107~0_combout\ & (\Result[0]~0_combout\ & ((\Add3~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector107~0_combout\,
	datab => \Result[0]~0_combout\,
	datac => Count_12(30),
	datad => \Add3~61_combout\,
	combout => \Selector108~0_combout\);

-- Location: FF_X50_Y52_N9
\Count_12[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector108~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(30));

-- Location: LCCOMB_X50_Y52_N28
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!Count_12(27) & (!Count_12(30) & (!Count_12(29) & !Count_12(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(27),
	datab => Count_12(30),
	datac => Count_12(29),
	datad => Count_12(28),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X51_Y48_N12
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!Count_12(23) & (!Count_12(26) & (!Count_12(25) & !Count_12(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(23),
	datab => Count_12(26),
	datac => Count_12(25),
	datad => Count_12(24),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X51_Y48_N4
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!Count_12(16) & (!Count_12(17) & (!Count_12(18) & !Count_12(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(16),
	datab => Count_12(17),
	datac => Count_12(18),
	datad => Count_12(15),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X50_Y50_N24
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~2_combout\ & (\Equal1~0_combout\ & (\Equal1~1_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X50_Y50_N2
\Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (\Equal1~7_combout\ & (\Equal1~5_combout\ & (\Equal1~6_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datab => \Equal1~5_combout\,
	datac => \Equal1~6_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X50_Y48_N30
\Add3~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~67_combout\ = \Add3~62\ $ (Count_12(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Count_12(31),
	cin => \Add3~62\,
	combout => \Add3~67_combout\);

-- Location: LCCOMB_X51_Y49_N28
\Selector107~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector107~1_combout\ = (\Result[0]~0_combout\ & ((\Add3~67_combout\) # ((\Selector107~0_combout\ & Count_12(31))))) # (!\Result[0]~0_combout\ & (\Selector107~0_combout\ & (Count_12(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~0_combout\,
	datab => \Selector107~0_combout\,
	datac => Count_12(31),
	datad => \Add3~67_combout\,
	combout => \Selector107~1_combout\);

-- Location: FF_X51_Y49_N29
\Count_12[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector107~1_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_12(31));

-- Location: LCCOMB_X51_Y49_N26
\Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (!Count_12(3) & (!Count_12(31) & (!Count_12(2) & !Count_12(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(3),
	datab => Count_12(31),
	datac => Count_12(2),
	datad => Count_12(1),
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X51_Y49_N24
\Equal1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~9_combout\ & (Count_12(0) & Count_12(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datab => Count_12(0),
	datac => Count_12(4),
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X49_Y48_N20
\Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\clock~q\ & (\Equal1~8_combout\ & (\Result[0]~0_combout\ & \Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock~q\,
	datab => \Equal1~8_combout\,
	datac => \Result[0]~0_combout\,
	datad => \Equal1~10_combout\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X49_Y48_N16
\state.s0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.s0~0_combout\ = (\state.s2~q\ & (\state.s0~q\ & (\Selector40~0_combout\ $ (\Selector37~0_combout\)))) # (!\state.s2~q\ & ((\state.s0~q\) # (\Selector40~0_combout\ $ (\Selector37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datab => \Selector40~0_combout\,
	datac => \state.s0~q\,
	datad => \Selector37~0_combout\,
	combout => \state.s0~0_combout\);

-- Location: FF_X49_Y48_N17
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \state.s0~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: LCCOMB_X49_Y48_N24
\Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (!\START~input_o\ & (!\bt2~q\ & !\state.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datac => \bt2~q\,
	datad => \state.s0~q\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X49_Y48_N6
\Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (!\Selector40~0_combout\ & (!\state.s2~q\ & \Selector37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector40~0_combout\,
	datac => \state.s2~q\,
	datad => \Selector37~0_combout\,
	combout => \Selector36~0_combout\);

-- Location: FF_X49_Y48_N7
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector36~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: LCCOMB_X49_Y48_N28
\Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\state.s2~q\ & (\state.s1~q\ & (\Selector40~0_combout\ $ (\Selector37~0_combout\)))) # (!\state.s2~q\ & ((\Selector40~0_combout\ & ((\state.s1~q\) # (!\Selector37~0_combout\))) # (!\Selector40~0_combout\ & (\state.s1~q\ & 
-- !\Selector37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s2~q\,
	datab => \Selector40~0_combout\,
	datac => \state.s1~q\,
	datad => \Selector37~0_combout\,
	combout => \Selector35~0_combout\);

-- Location: FF_X49_Y48_N29
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector35~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: LCCOMB_X49_Y48_N30
\rise~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rise~0_combout\ = (\state.s1~q\) # ((!\state.s0~q\ & ((\START~input_o\) # (\bt2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \state.s1~q\,
	datac => \bt2~q\,
	datad => \state.s0~q\,
	combout => \rise~0_combout\);

-- Location: LCCOMB_X49_Y48_N12
\DONE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DONE~0_combout\ = (\rise~0_combout\ & (\DONE~reg0_q\)) # (!\rise~0_combout\ & ((!\state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rise~0_combout\,
	datac => \DONE~reg0_q\,
	datad => \state.s2~q\,
	combout => \DONE~0_combout\);

-- Location: FF_X49_Y48_N13
\DONE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DONE~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DONE~reg0_q\);

-- Location: IOIBUF_X24_Y0_N29
\SPI_MISO~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SPI_MISO,
	o => \SPI_MISO~input_o\);

-- Location: LCCOMB_X51_Y49_N14
\Result[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[0]~2_combout\ = (!Count_12(3) & (!Count_12(0) & (!Count_12(2) & !Count_12(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(3),
	datab => Count_12(0),
	datac => Count_12(2),
	datad => Count_12(1),
	combout => \Result[0]~2_combout\);

-- Location: LCCOMB_X51_Y49_N0
\Result[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[0]~3_combout\ = (!\clock~q\ & ((\Result[0]~2_combout\) # (!Count_12(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Count_12(4),
	datac => \Result[0]~2_combout\,
	datad => \clock~q\,
	combout => \Result[0]~3_combout\);

-- Location: LCCOMB_X51_Y49_N22
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!Count_12(3) & !Count_12(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Count_12(3),
	datac => Count_12(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X50_Y50_N4
\SPI_MOSI~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SPI_MOSI~2_combout\ = (!Count_12(31) & (((Count_12(4)) # (!\Equal1~8_combout\)) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => Count_12(4),
	datac => Count_12(31),
	datad => \Equal1~8_combout\,
	combout => \SPI_MOSI~2_combout\);

-- Location: LCCOMB_X50_Y50_N12
\Result[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[0]~1_combout\ = (\state.s1~q\ & (\RST_N~input_o\ & (!\Equal0~9_combout\ & !\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s1~q\,
	datab => \RST_N~input_o\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \Result[0]~1_combout\);

-- Location: LCCOMB_X50_Y50_N6
\Result[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[0]~4_combout\ = (\Result[0]~3_combout\ & (\Equal1~8_combout\ & (\SPI_MOSI~2_combout\ & \Result[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~3_combout\,
	datab => \Equal1~8_combout\,
	datac => \SPI_MOSI~2_combout\,
	datad => \Result[0]~1_combout\,
	combout => \Result[0]~4_combout\);

-- Location: FF_X49_Y50_N9
\Result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \SPI_MISO~input_o\,
	sload => VCC,
	ena => \Result[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Result(0));

-- Location: LCCOMB_X49_Y48_N8
\rise~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rise~1_combout\ = (\rise~0_combout\ & (((\rise~q\)))) # (!\rise~0_combout\ & ((\RST_N~input_o\ & ((!\state.s2~q\))) # (!\RST_N~input_o\ & (\rise~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rise~0_combout\,
	datab => \RST_N~input_o\,
	datac => \rise~q\,
	datad => \state.s2~q\,
	combout => \rise~1_combout\);

-- Location: FF_X49_Y48_N9
rise : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rise~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rise~q\);

-- Location: LCCOMB_X49_Y50_N12
\RDATA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RDATA~0_combout\ = (Result(0) & !\rise~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Result(0),
	datad => \rise~q\,
	combout => \RDATA~0_combout\);

-- Location: FF_X49_Y50_N13
\RDATA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RDATA~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RDATA[0]~reg0_q\);

-- Location: LCCOMB_X49_Y50_N18
\Result[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[1]~feeder_combout\ = Result(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Result(0),
	combout => \Result[1]~feeder_combout\);

-- Location: FF_X49_Y50_N19
\Result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Result[1]~feeder_combout\,
	ena => \Result[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Result(1));

-- Location: LCCOMB_X49_Y50_N10
\RDATA~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RDATA~1_combout\ = (Result(1) & !\rise~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Result(1),
	datad => \rise~q\,
	combout => \RDATA~1_combout\);

-- Location: FF_X49_Y50_N11
\RDATA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RDATA~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RDATA[1]~reg0_q\);

-- Location: LCCOMB_X49_Y50_N4
\Result[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[2]~feeder_combout\ = Result(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Result(1),
	combout => \Result[2]~feeder_combout\);

-- Location: FF_X49_Y50_N5
\Result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Result[2]~feeder_combout\,
	ena => \Result[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Result(2));

-- Location: LCCOMB_X49_Y50_N24
\RDATA~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RDATA~2_combout\ = (Result(2) & !\rise~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Result(2),
	datad => \rise~q\,
	combout => \RDATA~2_combout\);

-- Location: FF_X49_Y50_N25
\RDATA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RDATA~2_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RDATA[2]~reg0_q\);

-- Location: LCCOMB_X49_Y50_N26
\Result[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[3]~feeder_combout\ = Result(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Result(2),
	combout => \Result[3]~feeder_combout\);

-- Location: FF_X49_Y50_N27
\Result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Result[3]~feeder_combout\,
	ena => \Result[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Result(3));

-- Location: LCCOMB_X49_Y50_N22
\RDATA~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RDATA~3_combout\ = (Result(3) & !\rise~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Result(3),
	datad => \rise~q\,
	combout => \RDATA~3_combout\);

-- Location: FF_X49_Y50_N23
\RDATA[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RDATA~3_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RDATA[3]~reg0_q\);

-- Location: LCCOMB_X49_Y50_N28
\Result[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[4]~feeder_combout\ = Result(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Result(3),
	combout => \Result[4]~feeder_combout\);

-- Location: FF_X49_Y50_N29
\Result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Result[4]~feeder_combout\,
	ena => \Result[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Result(4));

-- Location: LCCOMB_X51_Y50_N0
\RDATA~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RDATA~4_combout\ = (!\rise~q\ & Result(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rise~q\,
	datad => Result(4),
	combout => \RDATA~4_combout\);

-- Location: FF_X51_Y50_N1
\RDATA[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RDATA~4_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RDATA[4]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N28
\Result[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[5]~feeder_combout\ = Result(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Result(4),
	combout => \Result[5]~feeder_combout\);

-- Location: FF_X51_Y50_N29
\Result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Result[5]~feeder_combout\,
	ena => \Result[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Result(5));

-- Location: LCCOMB_X51_Y50_N22
\RDATA~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RDATA~5_combout\ = (Result(5) & !\rise~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Result(5),
	datad => \rise~q\,
	combout => \RDATA~5_combout\);

-- Location: FF_X51_Y50_N23
\RDATA[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RDATA~5_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RDATA[5]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N26
\Result[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[6]~feeder_combout\ = Result(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Result(5),
	combout => \Result[6]~feeder_combout\);

-- Location: FF_X51_Y50_N27
\Result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Result[6]~feeder_combout\,
	ena => \Result[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Result(6));

-- Location: LCCOMB_X51_Y50_N16
\RDATA~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RDATA~6_combout\ = (Result(6) & !\rise~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Result(6),
	datad => \rise~q\,
	combout => \RDATA~6_combout\);

-- Location: FF_X51_Y50_N17
\RDATA[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RDATA~6_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RDATA[6]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N24
\Result[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[7]~feeder_combout\ = Result(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Result(6),
	combout => \Result[7]~feeder_combout\);

-- Location: FF_X51_Y50_N25
\Result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Result[7]~feeder_combout\,
	ena => \Result[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Result(7));

-- Location: LCCOMB_X51_Y50_N18
\RDATA~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RDATA~7_combout\ = (Result(7) & !\rise~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Result(7),
	datad => \rise~q\,
	combout => \RDATA~7_combout\);

-- Location: FF_X51_Y50_N19
\RDATA[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RDATA~7_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RDATA[7]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N6
\Result[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[8]~feeder_combout\ = Result(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Result(7),
	combout => \Result[8]~feeder_combout\);

-- Location: FF_X51_Y50_N7
\Result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Result[8]~feeder_combout\,
	ena => \Result[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Result(8));

-- Location: LCCOMB_X51_Y50_N8
\RDATA~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RDATA~8_combout\ = (Result(8) & !\rise~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Result(8),
	datad => \rise~q\,
	combout => \RDATA~8_combout\);

-- Location: FF_X51_Y50_N9
\RDATA[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RDATA~8_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RDATA[8]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N20
\Result[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[9]~feeder_combout\ = Result(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Result(8),
	combout => \Result[9]~feeder_combout\);

-- Location: FF_X51_Y50_N21
\Result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Result[9]~feeder_combout\,
	ena => \Result[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Result(9));

-- Location: LCCOMB_X51_Y50_N14
\RDATA~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RDATA~9_combout\ = (Result(9) & !\rise~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Result(9),
	datad => \rise~q\,
	combout => \RDATA~9_combout\);

-- Location: FF_X51_Y50_N15
\RDATA[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RDATA~9_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RDATA[9]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N10
\Result[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[10]~feeder_combout\ = Result(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Result(9),
	combout => \Result[10]~feeder_combout\);

-- Location: FF_X51_Y50_N11
\Result[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Result[10]~feeder_combout\,
	ena => \Result[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Result(10));

-- Location: LCCOMB_X51_Y50_N4
\RDATA~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RDATA~10_combout\ = (Result(10) & !\rise~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Result(10),
	datad => \rise~q\,
	combout => \RDATA~10_combout\);

-- Location: FF_X51_Y50_N5
\RDATA[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RDATA~10_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RDATA[10]~reg0_q\);

-- Location: LCCOMB_X51_Y50_N12
\Result[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[11]~feeder_combout\ = Result(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Result(10),
	combout => \Result[11]~feeder_combout\);

-- Location: FF_X51_Y50_N13
\Result[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Result[11]~feeder_combout\,
	ena => \Result[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Result(11));

-- Location: LCCOMB_X51_Y50_N2
\RDATA~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RDATA~11_combout\ = (Result(11) & !\rise~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Result(11),
	datad => \rise~q\,
	combout => \RDATA~11_combout\);

-- Location: FF_X51_Y50_N3
\RDATA[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RDATA~11_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RDATA[11]~reg0_q\);

-- Location: LCCOMB_X50_Y50_N10
\SPI_MOSI~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SPI_MOSI~3_combout\ = (!\clock~q\ & (\RST_N~input_o\ & (!\SPI_MOSI~2_combout\ & \Result[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock~q\,
	datab => \RST_N~input_o\,
	datac => \SPI_MOSI~2_combout\,
	datad => \Result[0]~0_combout\,
	combout => \SPI_MOSI~3_combout\);

-- Location: LCCOMB_X50_Y50_N14
\SPI_MOSI~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SPI_MOSI~0_combout\ = (!\clock~q\) # (!\state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s1~q\,
	datad => \clock~q\,
	combout => \SPI_MOSI~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\S_CH~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S_CH,
	o => \S_CH~input_o\);

-- Location: LCCOMB_X51_Y50_N30
\WDATA[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WDATA[2]~0_combout\ = !\S_CH~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \S_CH~input_o\,
	combout => \WDATA[2]~0_combout\);

-- Location: FF_X51_Y50_N31
\WDATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WDATA[2]~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WDATA(2));

-- Location: LCCOMB_X51_Y49_N18
\SPI_MOSI~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SPI_MOSI~1_combout\ = (\SPI_MOSI~0_combout\ & (((Count_12(0)) # (!WDATA(2))) # (!Count_12(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MOSI~0_combout\,
	datab => Count_12(1),
	datac => WDATA(2),
	datad => Count_12(0),
	combout => \SPI_MOSI~1_combout\);

-- Location: LCCOMB_X49_Y48_N18
\SPI_MOSI~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SPI_MOSI~4_combout\ = (\RST_N~input_o\ & (\Selector40~0_combout\ & !\state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_N~input_o\,
	datab => \Selector40~0_combout\,
	datad => \state.s1~q\,
	combout => \SPI_MOSI~4_combout\);

-- Location: LCCOMB_X50_Y50_N22
\SPI_MOSI~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SPI_MOSI~5_combout\ = (\clock~q\ & ((!\Equal1~8_combout\) # (!\Equal1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock~q\,
	datac => \Equal1~10_combout\,
	datad => \Equal1~8_combout\,
	combout => \SPI_MOSI~5_combout\);

-- Location: LCCOMB_X50_Y50_N0
\SPI_MOSI~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SPI_MOSI~6_combout\ = (\SPI_MOSI~4_combout\) # ((\SPI_MOSI~2_combout\ & (\SPI_MOSI~5_combout\ & \Result[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MOSI~4_combout\,
	datab => \SPI_MOSI~2_combout\,
	datac => \SPI_MOSI~5_combout\,
	datad => \Result[0]~1_combout\,
	combout => \SPI_MOSI~6_combout\);

-- Location: LCCOMB_X50_Y50_N8
\SPI_MOSI~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SPI_MOSI~7_combout\ = (\SPI_MOSI~3_combout\ & (\SPI_MOSI~1_combout\)) # (!\SPI_MOSI~3_combout\ & ((\SPI_MOSI~6_combout\ & (\SPI_MOSI~1_combout\)) # (!\SPI_MOSI~6_combout\ & ((\SPI_MOSI~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_MOSI~3_combout\,
	datab => \SPI_MOSI~1_combout\,
	datac => \SPI_MOSI~reg0_q\,
	datad => \SPI_MOSI~6_combout\,
	combout => \SPI_MOSI~7_combout\);

-- Location: FF_X50_Y50_N9
\SPI_MOSI~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI_MOSI~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_MOSI~reg0_q\);

-- Location: LCCOMB_X49_Y49_N20
\Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\SPI_SCK~reg0_q\ & (((!\clock~q\ & \Result[0]~0_combout\)) # (!\state.s0~q\))) # (!\SPI_SCK~reg0_q\ & (!\clock~q\ & (\Result[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_SCK~reg0_q\,
	datab => \clock~q\,
	datac => \Result[0]~0_combout\,
	datad => \state.s0~q\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X49_Y49_N12
\Selector42~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~1_combout\ = (\Selector42~0_combout\) # ((\SPI_SCK~reg0_q\ & !\Gen_Clk[2]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector42~0_combout\,
	datac => \SPI_SCK~reg0_q\,
	datad => \Gen_Clk[2]~32_combout\,
	combout => \Selector42~1_combout\);

-- Location: FF_X49_Y49_N13
\SPI_SCK~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector42~1_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_SCK~reg0_q\);

-- Location: IOIBUF_X69_Y54_N29
\HOLD_SS_N~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HOLD_SS_N,
	o => \HOLD_SS_N~input_o\);

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

ww_DONE <= \DONE~output_o\;

ww_RDATA(0) <= \RDATA[0]~output_o\;

ww_RDATA(1) <= \RDATA[1]~output_o\;

ww_RDATA(2) <= \RDATA[2]~output_o\;

ww_RDATA(3) <= \RDATA[3]~output_o\;

ww_RDATA(4) <= \RDATA[4]~output_o\;

ww_RDATA(5) <= \RDATA[5]~output_o\;

ww_RDATA(6) <= \RDATA[6]~output_o\;

ww_RDATA(7) <= \RDATA[7]~output_o\;

ww_RDATA(8) <= \RDATA[8]~output_o\;

ww_RDATA(9) <= \RDATA[9]~output_o\;

ww_RDATA(10) <= \RDATA[10]~output_o\;

ww_RDATA(11) <= \RDATA[11]~output_o\;

ww_SPI_MOSI <= \SPI_MOSI~output_o\;

ww_SPI_SCK <= \SPI_SCK~output_o\;

ww_SPI_SS_N <= \SPI_SS_N~output_o\;
END structure;


