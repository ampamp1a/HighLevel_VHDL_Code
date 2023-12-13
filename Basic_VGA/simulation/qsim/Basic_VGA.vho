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

-- DATE "08/24/2023 17:40:39"

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

ENTITY 	Basic_VGA IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	Red : BUFFER std_logic_vector(3 DOWNTO 0);
	Blue : BUFFER std_logic_vector(3 DOWNTO 0);
	Green : BUFFER std_logic_vector(3 DOWNTO 0);
	X : BUFFER std_logic_vector(9 DOWNTO 0);
	Y : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END Basic_VGA;

ARCHITECTURE structure OF Basic_VGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_Red : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Blue : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Green : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_X : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(8 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \Signal_count[1]~18_combout\ : std_logic;
SIGNAL \Signal_count[5]~27\ : std_logic;
SIGNAL \Signal_count[6]~28_combout\ : std_logic;
SIGNAL \Signal_count[6]~29\ : std_logic;
SIGNAL \Signal_count[7]~30_combout\ : std_logic;
SIGNAL \Signal_count[7]~31\ : std_logic;
SIGNAL \Signal_count[8]~32_combout\ : std_logic;
SIGNAL \Signal_count[8]~33\ : std_logic;
SIGNAL \Signal_count[9]~34_combout\ : std_logic;
SIGNAL \Signal_count[9]~35\ : std_logic;
SIGNAL \Signal_count[10]~36_combout\ : std_logic;
SIGNAL \Signal_count[10]~37\ : std_logic;
SIGNAL \Signal_count[11]~38_combout\ : std_logic;
SIGNAL \Signal_count[11]~39\ : std_logic;
SIGNAL \Signal_count[12]~40_combout\ : std_logic;
SIGNAL \Signal_count[12]~41\ : std_logic;
SIGNAL \Signal_count[13]~42_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \process_0~20_combout\ : std_logic;
SIGNAL \Signal_count[13]~43\ : std_logic;
SIGNAL \Signal_count[14]~44_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~21_combout\ : std_logic;
SIGNAL \process_0~22_combout\ : std_logic;
SIGNAL \process_0~23_combout\ : std_logic;
SIGNAL \Signal_count~17_combout\ : std_logic;
SIGNAL \Signal_count[1]~19\ : std_logic;
SIGNAL \Signal_count[2]~20_combout\ : std_logic;
SIGNAL \Signal_count[2]~21\ : std_logic;
SIGNAL \Signal_count[3]~22_combout\ : std_logic;
SIGNAL \Signal_count[3]~23\ : std_logic;
SIGNAL \Signal_count[4]~24_combout\ : std_logic;
SIGNAL \Signal_count[4]~25\ : std_logic;
SIGNAL \Signal_count[5]~26_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~24_combout\ : std_logic;
SIGNAL \process_0~25_combout\ : std_logic;
SIGNAL \process_0~26_combout\ : std_logic;
SIGNAL \process_0~27_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \VGA_VS~0_combout\ : std_logic;
SIGNAL \Y[0]~0_combout\ : std_logic;
SIGNAL \Signal_count[14]~45\ : std_logic;
SIGNAL \Signal_count[15]~46_combout\ : std_logic;
SIGNAL \Signal_count[15]~47\ : std_logic;
SIGNAL \Signal_count[16]~48_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \process_0~13_combout\ : std_logic;
SIGNAL \process_0~14_combout\ : std_logic;
SIGNAL \process_0~15_combout\ : std_logic;
SIGNAL \process_0~16_combout\ : std_logic;
SIGNAL \process_0~17_combout\ : std_logic;
SIGNAL \process_0~18_combout\ : std_logic;
SIGNAL \process_0~19_combout\ : std_logic;
SIGNAL \VGA_HS~0_combout\ : std_logic;
SIGNAL \Signal_count~16_combout\ : std_logic;
SIGNAL \Signal_count[0]~50_combout\ : std_logic;
SIGNAL \X[0]~41_combout\ : std_logic;
SIGNAL \X[9]~40_combout\ : std_logic;
SIGNAL \X[9]~21_combout\ : std_logic;
SIGNAL \X[0]~reg0_q\ : std_logic;
SIGNAL \X[0]~en_q\ : std_logic;
SIGNAL \X[1]~22_combout\ : std_logic;
SIGNAL \X[1]~reg0_q\ : std_logic;
SIGNAL \X[1]~en_q\ : std_logic;
SIGNAL \X[1]~23\ : std_logic;
SIGNAL \X[2]~24_combout\ : std_logic;
SIGNAL \X[2]~reg0_q\ : std_logic;
SIGNAL \X[2]~en_q\ : std_logic;
SIGNAL \X[2]~25\ : std_logic;
SIGNAL \X[3]~26_combout\ : std_logic;
SIGNAL \X[3]~reg0_q\ : std_logic;
SIGNAL \X[3]~en_q\ : std_logic;
SIGNAL \X[3]~27\ : std_logic;
SIGNAL \X[4]~28_combout\ : std_logic;
SIGNAL \X[4]~reg0_q\ : std_logic;
SIGNAL \X[4]~en_q\ : std_logic;
SIGNAL \X[4]~29\ : std_logic;
SIGNAL \X[5]~30_combout\ : std_logic;
SIGNAL \X[5]~reg0_q\ : std_logic;
SIGNAL \X[5]~en_q\ : std_logic;
SIGNAL \X[5]~31\ : std_logic;
SIGNAL \X[6]~32_combout\ : std_logic;
SIGNAL \X[6]~reg0_q\ : std_logic;
SIGNAL \X[6]~en_q\ : std_logic;
SIGNAL \X[6]~33\ : std_logic;
SIGNAL \X[7]~34_combout\ : std_logic;
SIGNAL \X[7]~reg0_q\ : std_logic;
SIGNAL \X[7]~en_q\ : std_logic;
SIGNAL \X[7]~35\ : std_logic;
SIGNAL \X[8]~36_combout\ : std_logic;
SIGNAL \X[8]~reg0_q\ : std_logic;
SIGNAL \X[8]~en_q\ : std_logic;
SIGNAL \X[8]~37\ : std_logic;
SIGNAL \X[9]~38_combout\ : std_logic;
SIGNAL \X[9]~reg0_q\ : std_logic;
SIGNAL \X[9]~en_q\ : std_logic;
SIGNAL \VGA_HS~1_combout\ : std_logic;
SIGNAL \VGA_HS~2_combout\ : std_logic;
SIGNAL \VGA_HS~reg0_q\ : std_logic;
SIGNAL \VGA_VS~1_combout\ : std_logic;
SIGNAL \VGA_VS~2_combout\ : std_logic;
SIGNAL \VGA_VS~reg0_q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \V_Line~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \V_Line~3_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \V_Line~5_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \V_Line~2_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \V_Line~0_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \V_Line~1_combout\ : std_logic;
SIGNAL \process_0~28_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \V_Line~6_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \V_Line~7_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \V_Line~8_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \V_Line~9_combout\ : std_logic;
SIGNAL \process_0~29_combout\ : std_logic;
SIGNAL \process_0~30_combout\ : std_logic;
SIGNAL \Red[0]~reg0_q\ : std_logic;
SIGNAL \Red[1]~reg0_q\ : std_logic;
SIGNAL \Red[2]~reg0_q\ : std_logic;
SIGNAL \Red[3]~reg0_q\ : std_logic;
SIGNAL \process_0~31_combout\ : std_logic;
SIGNAL \process_0~32_combout\ : std_logic;
SIGNAL \Blue~0_combout\ : std_logic;
SIGNAL \Blue[0]~reg0_q\ : std_logic;
SIGNAL \Blue[1]~reg0_q\ : std_logic;
SIGNAL \Blue[2]~reg0_q\ : std_logic;
SIGNAL \Blue[3]~reg0_q\ : std_logic;
SIGNAL \Green~0_combout\ : std_logic;
SIGNAL \Green[0]~reg0_q\ : std_logic;
SIGNAL \Green[1]~reg0_q\ : std_logic;
SIGNAL \Green[2]~reg0_q\ : std_logic;
SIGNAL \Green[3]~reg0_q\ : std_logic;
SIGNAL \Y[0]~1_combout\ : std_logic;
SIGNAL \Y[0]~reg0_q\ : std_logic;
SIGNAL \Y[1]~reg0_q\ : std_logic;
SIGNAL \Y[2]~reg0_q\ : std_logic;
SIGNAL \Y[3]~reg0_q\ : std_logic;
SIGNAL \Y[4]~reg0_q\ : std_logic;
SIGNAL \Y[5]~reg0_q\ : std_logic;
SIGNAL \Y[6]~reg0_q\ : std_logic;
SIGNAL \Y[7]~reg0_q\ : std_logic;
SIGNAL \Y[8]~reg0_q\ : std_logic;
SIGNAL Signal_count : std_logic_vector(16 DOWNTO 0);
SIGNAL \pll|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL V_Line : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_VGA_VS~reg0_q\ : std_logic;
SIGNAL \ALT_INV_VGA_HS~reg0_q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
Red <= ww_Red;
Blue <= ww_Blue;
Green <= ww_Green;
X <= ww_X;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clock~input_o\);

\pll|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll|altpll_component|auto_generated|pll1_CLK_bus\(4);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_VGA_VS~reg0_q\ <= NOT \VGA_VS~reg0_q\;
\ALT_INV_VGA_HS~reg0_q\ <= NOT \VGA_HS~reg0_q\;

\X[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \X[0]~reg0_q\,
	oe => \X[0]~en_q\,
	devoe => ww_devoe,
	o => ww_X(0));

\X[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \X[1]~reg0_q\,
	oe => \X[1]~en_q\,
	devoe => ww_devoe,
	o => ww_X(1));

\X[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \X[2]~reg0_q\,
	oe => \X[2]~en_q\,
	devoe => ww_devoe,
	o => ww_X(2));

\X[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \X[3]~reg0_q\,
	oe => \X[3]~en_q\,
	devoe => ww_devoe,
	o => ww_X(3));

\X[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \X[4]~reg0_q\,
	oe => \X[4]~en_q\,
	devoe => ww_devoe,
	o => ww_X(4));

\X[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \X[5]~reg0_q\,
	oe => \X[5]~en_q\,
	devoe => ww_devoe,
	o => ww_X(5));

\X[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \X[6]~reg0_q\,
	oe => \X[6]~en_q\,
	devoe => ww_devoe,
	o => ww_X(6));

\X[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \X[7]~reg0_q\,
	oe => \X[7]~en_q\,
	devoe => ww_devoe,
	o => ww_X(7));

\X[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \X[8]~reg0_q\,
	oe => \X[8]~en_q\,
	devoe => ww_devoe,
	o => ww_X(8));

\X[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \X[9]~reg0_q\,
	oe => \X[9]~en_q\,
	devoe => ww_devoe,
	o => ww_X(9));

\VGA_HS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_VGA_HS~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

\VGA_VS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_VGA_VS~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

\Red[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Red[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Red(0));

\Red[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Red[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Red(1));

\Red[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Red[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Red(2));

\Red[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Red[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Red(3));

\Blue[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Blue[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Blue(0));

\Blue[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Blue[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Blue(1));

\Blue[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Blue[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Blue(2));

\Blue[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Blue[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Blue(3));

\Green[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Green[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Green(0));

\Green[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Green[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Green(1));

\Green[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Green[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Green(2));

\Green[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Green[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Green(3));

\Y[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Y(0));

\Y[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Y(1));

\Y[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Y(2));

\Y[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Y(3));

\Y[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Y(4));

\Y[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Y(5));

\Y[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Y(6));

\Y[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Y(7));

\Y[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Y(8));

\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\pll|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 2,
	c0_initial => 1,
	c0_low => 1,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 4,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \reset~input_o\,
	fbin => \pll|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \pll|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll|altpll_component|auto_generated|pll1_CLK_bus\);

\Signal_count[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[1]~18_combout\ = (\Signal_count~16_combout\ & (\Signal_count~17_combout\ $ (VCC))) # (!\Signal_count~16_combout\ & (\Signal_count~17_combout\ & VCC))
-- \Signal_count[1]~19\ = CARRY((\Signal_count~16_combout\ & \Signal_count~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signal_count~16_combout\,
	datab => \Signal_count~17_combout\,
	datad => VCC,
	combout => \Signal_count[1]~18_combout\,
	cout => \Signal_count[1]~19\);

\Signal_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[1]~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(1));

\Signal_count[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[5]~26_combout\ = (\Signal_count[4]~25\ & (Signal_count(5) & (!\Y[0]~0_combout\ & VCC))) # (!\Signal_count[4]~25\ & ((((Signal_count(5) & !\Y[0]~0_combout\)))))
-- \Signal_count[5]~27\ = CARRY((Signal_count(5) & (!\Y[0]~0_combout\ & !\Signal_count[4]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(5),
	datab => \Y[0]~0_combout\,
	datad => VCC,
	cin => \Signal_count[4]~25\,
	combout => \Signal_count[5]~26_combout\,
	cout => \Signal_count[5]~27\);

\Signal_count[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[6]~28_combout\ = (\Signal_count[5]~27\ & (((\Y[0]~0_combout\)) # (!Signal_count(6)))) # (!\Signal_count[5]~27\ & (((Signal_count(6) & !\Y[0]~0_combout\)) # (GND)))
-- \Signal_count[6]~29\ = CARRY(((\Y[0]~0_combout\) # (!\Signal_count[5]~27\)) # (!Signal_count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(6),
	datab => \Y[0]~0_combout\,
	datad => VCC,
	cin => \Signal_count[5]~27\,
	combout => \Signal_count[6]~28_combout\,
	cout => \Signal_count[6]~29\);

\Signal_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[6]~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(6));

\Signal_count[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[7]~30_combout\ = (\Signal_count[6]~29\ & (Signal_count(7) & (!\Y[0]~0_combout\ & VCC))) # (!\Signal_count[6]~29\ & ((((Signal_count(7) & !\Y[0]~0_combout\)))))
-- \Signal_count[7]~31\ = CARRY((Signal_count(7) & (!\Y[0]~0_combout\ & !\Signal_count[6]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(7),
	datab => \Y[0]~0_combout\,
	datad => VCC,
	cin => \Signal_count[6]~29\,
	combout => \Signal_count[7]~30_combout\,
	cout => \Signal_count[7]~31\);

\Signal_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[7]~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(7));

\Signal_count[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[8]~32_combout\ = (\Signal_count[7]~31\ & (((\Y[0]~0_combout\)) # (!Signal_count(8)))) # (!\Signal_count[7]~31\ & (((Signal_count(8) & !\Y[0]~0_combout\)) # (GND)))
-- \Signal_count[8]~33\ = CARRY(((\Y[0]~0_combout\) # (!\Signal_count[7]~31\)) # (!Signal_count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(8),
	datab => \Y[0]~0_combout\,
	datad => VCC,
	cin => \Signal_count[7]~31\,
	combout => \Signal_count[8]~32_combout\,
	cout => \Signal_count[8]~33\);

\Signal_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[8]~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(8));

\Signal_count[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[9]~34_combout\ = (\Signal_count[8]~33\ & (Signal_count(9) & (!\Y[0]~0_combout\ & VCC))) # (!\Signal_count[8]~33\ & ((((Signal_count(9) & !\Y[0]~0_combout\)))))
-- \Signal_count[9]~35\ = CARRY((Signal_count(9) & (!\Y[0]~0_combout\ & !\Signal_count[8]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(9),
	datab => \Y[0]~0_combout\,
	datad => VCC,
	cin => \Signal_count[8]~33\,
	combout => \Signal_count[9]~34_combout\,
	cout => \Signal_count[9]~35\);

\Signal_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[9]~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(9));

\Signal_count[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[10]~36_combout\ = (\Signal_count[9]~35\ & (((\Y[0]~0_combout\)) # (!Signal_count(10)))) # (!\Signal_count[9]~35\ & (((Signal_count(10) & !\Y[0]~0_combout\)) # (GND)))
-- \Signal_count[10]~37\ = CARRY(((\Y[0]~0_combout\) # (!\Signal_count[9]~35\)) # (!Signal_count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(10),
	datab => \Y[0]~0_combout\,
	datad => VCC,
	cin => \Signal_count[9]~35\,
	combout => \Signal_count[10]~36_combout\,
	cout => \Signal_count[10]~37\);

\Signal_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[10]~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(10));

\Signal_count[11]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[11]~38_combout\ = (\Signal_count[10]~37\ & (Signal_count(11) & (!\Y[0]~0_combout\ & VCC))) # (!\Signal_count[10]~37\ & ((((Signal_count(11) & !\Y[0]~0_combout\)))))
-- \Signal_count[11]~39\ = CARRY((Signal_count(11) & (!\Y[0]~0_combout\ & !\Signal_count[10]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(11),
	datab => \Y[0]~0_combout\,
	datad => VCC,
	cin => \Signal_count[10]~37\,
	combout => \Signal_count[11]~38_combout\,
	cout => \Signal_count[11]~39\);

\Signal_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[11]~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(11));

\Signal_count[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[12]~40_combout\ = (\Signal_count[11]~39\ & (((\Y[0]~0_combout\)) # (!Signal_count(12)))) # (!\Signal_count[11]~39\ & (((Signal_count(12) & !\Y[0]~0_combout\)) # (GND)))
-- \Signal_count[12]~41\ = CARRY(((\Y[0]~0_combout\) # (!\Signal_count[11]~39\)) # (!Signal_count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(12),
	datab => \Y[0]~0_combout\,
	datad => VCC,
	cin => \Signal_count[11]~39\,
	combout => \Signal_count[12]~40_combout\,
	cout => \Signal_count[12]~41\);

\Signal_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[12]~40_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(12));

\Signal_count[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[13]~42_combout\ = (\Signal_count[12]~41\ & (Signal_count(13) & (!\Y[0]~0_combout\ & VCC))) # (!\Signal_count[12]~41\ & ((((Signal_count(13) & !\Y[0]~0_combout\)))))
-- \Signal_count[13]~43\ = CARRY((Signal_count(13) & (!\Y[0]~0_combout\ & !\Signal_count[12]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(13),
	datab => \Y[0]~0_combout\,
	datad => VCC,
	cin => \Signal_count[12]~41\,
	combout => \Signal_count[13]~42_combout\,
	cout => \Signal_count[13]~43\);

\Signal_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[13]~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(13));

\process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (((!Signal_count(8)) # (!Signal_count(7))) # (!Signal_count(5))) # (!Signal_count(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(6),
	datab => Signal_count(5),
	datac => Signal_count(7),
	datad => Signal_count(8),
	combout => \process_0~6_combout\);

\process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (!Signal_count(4) & (((!Signal_count(1) & !Signal_count(2))) # (!Signal_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(1),
	datab => Signal_count(2),
	datac => Signal_count(3),
	datad => Signal_count(4),
	combout => \process_0~7_combout\);

\process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = ((!Signal_count(9) & ((\process_0~6_combout\) # (\process_0~7_combout\)))) # (!Signal_count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datab => \process_0~7_combout\,
	datac => Signal_count(9),
	datad => Signal_count(10),
	combout => \process_0~8_combout\);

\process_0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~20_combout\ = (Signal_count(13) & ((Signal_count(11)) # ((Signal_count(12)) # (!\process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(13),
	datab => Signal_count(11),
	datac => Signal_count(12),
	datad => \process_0~8_combout\,
	combout => \process_0~20_combout\);

\Signal_count[14]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[14]~44_combout\ = (\Signal_count[13]~43\ & (((\Y[0]~0_combout\)) # (!Signal_count(14)))) # (!\Signal_count[13]~43\ & (((Signal_count(14) & !\Y[0]~0_combout\)) # (GND)))
-- \Signal_count[14]~45\ = CARRY(((\Y[0]~0_combout\) # (!\Signal_count[13]~43\)) # (!Signal_count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(14),
	datab => \Y[0]~0_combout\,
	datad => VCC,
	cin => \Signal_count[13]~43\,
	combout => \Signal_count[14]~44_combout\,
	cout => \Signal_count[14]~45\);

\Signal_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[14]~44_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(14));

\process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!Signal_count(10) & (!Signal_count(11) & (!Signal_count(12) & !Signal_count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(10),
	datab => Signal_count(11),
	datac => Signal_count(12),
	datad => Signal_count(13),
	combout => \process_0~1_combout\);

\process_0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~21_combout\ = (\process_0~1_combout\ & (((\process_0~3_combout\) # (!Signal_count(9))) # (!Signal_count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(8),
	datab => Signal_count(9),
	datac => \process_0~1_combout\,
	datad => \process_0~3_combout\,
	combout => \process_0~21_combout\);

\process_0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~22_combout\ = (Signal_count(14)) # ((Signal_count(15)) # ((Signal_count(16)) # (\process_0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(14),
	datab => Signal_count(15),
	datac => Signal_count(16),
	datad => \process_0~21_combout\,
	combout => \process_0~22_combout\);

\process_0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~23_combout\ = (\process_0~20_combout\) # (\process_0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~20_combout\,
	datab => \process_0~22_combout\,
	combout => \process_0~23_combout\);

\Signal_count~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count~17_combout\ = (Signal_count(1) & (((!\VGA_VS~0_combout\) # (!\process_0~23_combout\)) # (!\VGA_HS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(1),
	datab => \VGA_HS~0_combout\,
	datac => \process_0~23_combout\,
	datad => \VGA_VS~0_combout\,
	combout => \Signal_count~17_combout\);

\Signal_count[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[2]~20_combout\ = (\Signal_count[1]~19\ & (((\Y[0]~0_combout\)) # (!Signal_count(2)))) # (!\Signal_count[1]~19\ & (((Signal_count(2) & !\Y[0]~0_combout\)) # (GND)))
-- \Signal_count[2]~21\ = CARRY(((\Y[0]~0_combout\) # (!\Signal_count[1]~19\)) # (!Signal_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(2),
	datab => \Y[0]~0_combout\,
	datad => VCC,
	cin => \Signal_count[1]~19\,
	combout => \Signal_count[2]~20_combout\,
	cout => \Signal_count[2]~21\);

\Signal_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[2]~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(2));

\Signal_count[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[3]~22_combout\ = (\Signal_count[2]~21\ & (Signal_count(3) & (!\Y[0]~0_combout\ & VCC))) # (!\Signal_count[2]~21\ & ((((Signal_count(3) & !\Y[0]~0_combout\)))))
-- \Signal_count[3]~23\ = CARRY((Signal_count(3) & (!\Y[0]~0_combout\ & !\Signal_count[2]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(3),
	datab => \Y[0]~0_combout\,
	datad => VCC,
	cin => \Signal_count[2]~21\,
	combout => \Signal_count[3]~22_combout\,
	cout => \Signal_count[3]~23\);

\Signal_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[3]~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(3));

\Signal_count[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[4]~24_combout\ = (\Signal_count[3]~23\ & (((\Y[0]~0_combout\)) # (!Signal_count(4)))) # (!\Signal_count[3]~23\ & (((Signal_count(4) & !\Y[0]~0_combout\)) # (GND)))
-- \Signal_count[4]~25\ = CARRY(((\Y[0]~0_combout\) # (!\Signal_count[3]~23\)) # (!Signal_count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(4),
	datab => \Y[0]~0_combout\,
	datad => VCC,
	cin => \Signal_count[3]~23\,
	combout => \Signal_count[4]~24_combout\,
	cout => \Signal_count[4]~25\);

\Signal_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[4]~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(4));

\Signal_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[5]~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(5));

\process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (Signal_count(3)) # ((Signal_count(4)) # ((Signal_count(1) & Signal_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(3),
	datab => Signal_count(4),
	datac => Signal_count(1),
	datad => Signal_count(2),
	combout => \process_0~2_combout\);

\process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (!Signal_count(6) & (!Signal_count(7) & ((!\process_0~2_combout\) # (!Signal_count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(5),
	datab => \process_0~2_combout\,
	datac => Signal_count(6),
	datad => Signal_count(7),
	combout => \process_0~3_combout\);

\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (Signal_count(3) & (Signal_count(0) & (Signal_count(1) & Signal_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(3),
	datab => Signal_count(0),
	datac => Signal_count(1),
	datad => Signal_count(2),
	combout => \LessThan4~0_combout\);

\LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!Signal_count(6) & (!Signal_count(4) & !Signal_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Signal_count(6),
	datac => Signal_count(4),
	datad => Signal_count(5),
	combout => \LessThan5~0_combout\);

\process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (Signal_count(8) & (Signal_count(9) & ((\LessThan4~0_combout\) # (!\LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(8),
	datab => Signal_count(9),
	datac => \LessThan4~0_combout\,
	datad => \LessThan5~0_combout\,
	combout => \process_0~4_combout\);

\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\process_0~1_combout\ & (!Signal_count(14) & (!Signal_count(15) & !Signal_count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => Signal_count(14),
	datac => Signal_count(15),
	datad => Signal_count(16),
	combout => \LessThan0~1_combout\);

\process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = ((!\LessThan0~1_combout\) # (!\process_0~4_combout\)) # (!\process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~3_combout\,
	datac => \process_0~4_combout\,
	datad => \LessThan0~1_combout\,
	combout => \process_0~5_combout\);

\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (Signal_count(6) & ((Signal_count(5)) # ((Signal_count(4) & \LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(6),
	datab => Signal_count(5),
	datac => Signal_count(4),
	datad => \LessThan4~0_combout\,
	combout => \LessThan0~0_combout\);

\process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!Signal_count(8) & !Signal_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Signal_count(8),
	datad => Signal_count(9),
	combout => \process_0~0_combout\);

\process_0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~24_combout\ = (\process_0~0_combout\ & (((\LessThan5~0_combout\ & !\LessThan4~0_combout\)) # (!Signal_count(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \LessThan5~0_combout\,
	datac => \LessThan4~0_combout\,
	datad => Signal_count(7),
	combout => \process_0~24_combout\);

\process_0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~25_combout\ = (((!Signal_count(7) & !\LessThan0~0_combout\)) # (!\process_0~24_combout\)) # (!\LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(7),
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \process_0~24_combout\,
	combout => \process_0~25_combout\);

\process_0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~26_combout\ = (Signal_count(7) & (Signal_count(8) & Signal_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(7),
	datab => Signal_count(8),
	datac => Signal_count(9),
	combout => \process_0~26_combout\);

\process_0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~27_combout\ = (!\process_0~4_combout\ & (!\process_0~24_combout\ & (!\process_0~26_combout\ & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~4_combout\,
	datab => \process_0~24_combout\,
	datac => \process_0~26_combout\,
	datad => \LessThan0~1_combout\,
	combout => \process_0~27_combout\);

\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (Signal_count(7)) # ((\LessThan0~0_combout\) # ((!\LessThan0~1_combout\) # (!\process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(7),
	datab => \LessThan0~0_combout\,
	datac => \process_0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

\VGA_VS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_VS~0_combout\ = (\process_0~5_combout\ & (\process_0~25_combout\ & (!\process_0~27_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => \process_0~25_combout\,
	datac => \process_0~27_combout\,
	datad => \LessThan0~2_combout\,
	combout => \VGA_VS~0_combout\);

\Y[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Y[0]~0_combout\ = (\VGA_HS~0_combout\ & (\VGA_VS~0_combout\ & ((\process_0~20_combout\) # (\process_0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_HS~0_combout\,
	datab => \VGA_VS~0_combout\,
	datac => \process_0~20_combout\,
	datad => \process_0~22_combout\,
	combout => \Y[0]~0_combout\);

\Signal_count[15]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[15]~46_combout\ = (\Signal_count[14]~45\ & (Signal_count(15) & (!\Y[0]~0_combout\ & VCC))) # (!\Signal_count[14]~45\ & ((((Signal_count(15) & !\Y[0]~0_combout\)))))
-- \Signal_count[15]~47\ = CARRY((Signal_count(15) & (!\Y[0]~0_combout\ & !\Signal_count[14]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(15),
	datab => \Y[0]~0_combout\,
	datad => VCC,
	cin => \Signal_count[14]~45\,
	combout => \Signal_count[15]~46_combout\,
	cout => \Signal_count[15]~47\);

\Signal_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[15]~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(15));

\Signal_count[16]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[16]~48_combout\ = \Signal_count[15]~47\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Signal_count[15]~47\,
	combout => \Signal_count[16]~48_combout\);

\Signal_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[16]~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(16));

\process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (Signal_count(16)) # (((\process_0~8_combout\ & !Signal_count(11))) # (!Signal_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(16),
	datab => \process_0~8_combout\,
	datac => Signal_count(11),
	datad => Signal_count(13),
	combout => \process_0~9_combout\);

\process_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (Signal_count(16)) # (Signal_count(15) $ (((!Signal_count(14) & !Signal_count(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(16),
	datab => Signal_count(15),
	datac => Signal_count(14),
	datad => Signal_count(13),
	combout => \process_0~10_combout\);

\process_0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (Signal_count(5)) # ((Signal_count(4) & ((Signal_count(3)) # (Signal_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(5),
	datab => Signal_count(4),
	datac => Signal_count(3),
	datad => Signal_count(2),
	combout => \process_0~11_combout\);

\process_0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = (Signal_count(7) & (Signal_count(8) & ((Signal_count(6)) # (\process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(7),
	datab => Signal_count(8),
	datac => Signal_count(6),
	datad => \process_0~11_combout\,
	combout => \process_0~12_combout\);

\process_0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~13_combout\ = (Signal_count(9)) # ((Signal_count(10)) # (Signal_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(9),
	datab => Signal_count(10),
	datac => Signal_count(11),
	combout => \process_0~13_combout\);

\process_0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~14_combout\ = (Signal_count(12) & (Signal_count(15) & ((\process_0~12_combout\) # (\process_0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(12),
	datab => Signal_count(15),
	datac => \process_0~12_combout\,
	datad => \process_0~13_combout\,
	combout => \process_0~14_combout\);

\process_0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~15_combout\ = (!Signal_count(12) & (!Signal_count(14) & !Signal_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Signal_count(12),
	datac => Signal_count(14),
	datad => Signal_count(15),
	combout => \process_0~15_combout\);

\process_0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~16_combout\ = (Signal_count(6) & ((Signal_count(3)) # ((Signal_count(4)) # (Signal_count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(6),
	datab => Signal_count(3),
	datac => Signal_count(4),
	datad => Signal_count(5),
	combout => \process_0~16_combout\);

\process_0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~17_combout\ = (Signal_count(6) & (Signal_count(2) & ((Signal_count(0)) # (Signal_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(6),
	datab => Signal_count(2),
	datac => Signal_count(0),
	datad => Signal_count(1),
	combout => \process_0~17_combout\);

\process_0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~18_combout\ = (\process_0~16_combout\) # ((Signal_count(7)) # ((\process_0~17_combout\) # (!\process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~16_combout\,
	datab => Signal_count(7),
	datac => \process_0~17_combout\,
	datad => \process_0~0_combout\,
	combout => \process_0~18_combout\);

\process_0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~19_combout\ = (\process_0~15_combout\ & (((!Signal_count(11)) # (!Signal_count(10))) # (!\process_0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~15_combout\,
	datab => \process_0~18_combout\,
	datac => Signal_count(10),
	datad => Signal_count(11),
	combout => \process_0~19_combout\);

\VGA_HS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_HS~0_combout\ = (\process_0~19_combout\ & (\process_0~9_combout\)) # (!\process_0~19_combout\ & (((\process_0~10_combout\) # (\process_0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~9_combout\,
	datab => \process_0~10_combout\,
	datac => \process_0~14_combout\,
	datad => \process_0~19_combout\,
	combout => \VGA_HS~0_combout\);

\Signal_count~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count~16_combout\ = (Signal_count(0) & (((!\VGA_VS~0_combout\) # (!\process_0~23_combout\)) # (!\VGA_HS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(0),
	datab => \VGA_HS~0_combout\,
	datac => \process_0~23_combout\,
	datad => \VGA_VS~0_combout\,
	combout => \Signal_count~16_combout\);

\Signal_count[0]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Signal_count[0]~50_combout\ = !\Signal_count~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Signal_count~16_combout\,
	combout => \Signal_count[0]~50_combout\);

\Signal_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Signal_count[0]~50_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Signal_count(0));

\X[0]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[0]~41_combout\ = !Signal_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(0),
	combout => \X[0]~41_combout\);

\X[9]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[9]~40_combout\ = (!\process_0~27_combout\ & (((!\LessThan0~1_combout\) # (!\process_0~4_combout\)) # (!\process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \process_0~4_combout\,
	datac => \LessThan0~1_combout\,
	datad => \process_0~27_combout\,
	combout => \X[9]~40_combout\);

\X[9]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[9]~21_combout\ = (\process_0~25_combout\ & (\LessThan0~2_combout\ & (!\reset~input_o\ & !\X[9]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~25_combout\,
	datab => \LessThan0~2_combout\,
	datac => \reset~input_o\,
	datad => \X[9]~40_combout\,
	combout => \X[9]~21_combout\);

\X[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \X[0]~41_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[0]~reg0_q\);

\X[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \process_0~27_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[0]~en_q\);

\X[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[1]~22_combout\ = (Signal_count(0) & (Signal_count(1) $ (VCC))) # (!Signal_count(0) & (Signal_count(1) & VCC))
-- \X[1]~23\ = CARRY((Signal_count(0) & Signal_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(0),
	datab => Signal_count(1),
	datad => VCC,
	combout => \X[1]~22_combout\,
	cout => \X[1]~23\);

\X[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \X[1]~22_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[1]~reg0_q\);

\X[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \process_0~27_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[1]~en_q\);

\X[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[2]~24_combout\ = (Signal_count(2) & (!\X[1]~23\)) # (!Signal_count(2) & ((\X[1]~23\) # (GND)))
-- \X[2]~25\ = CARRY((!\X[1]~23\) # (!Signal_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(2),
	datad => VCC,
	cin => \X[1]~23\,
	combout => \X[2]~24_combout\,
	cout => \X[2]~25\);

\X[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \X[2]~24_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[2]~reg0_q\);

\X[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \process_0~27_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[2]~en_q\);

\X[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[3]~26_combout\ = (Signal_count(3) & (\X[2]~25\ $ (GND))) # (!Signal_count(3) & (!\X[2]~25\ & VCC))
-- \X[3]~27\ = CARRY((Signal_count(3) & !\X[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(3),
	datad => VCC,
	cin => \X[2]~25\,
	combout => \X[3]~26_combout\,
	cout => \X[3]~27\);

\X[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \X[3]~26_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[3]~reg0_q\);

\X[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \process_0~27_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[3]~en_q\);

\X[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[4]~28_combout\ = (Signal_count(4) & (\X[3]~27\ & VCC)) # (!Signal_count(4) & (!\X[3]~27\))
-- \X[4]~29\ = CARRY((!Signal_count(4) & !\X[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(4),
	datad => VCC,
	cin => \X[3]~27\,
	combout => \X[4]~28_combout\,
	cout => \X[4]~29\);

\X[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \X[4]~28_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[4]~reg0_q\);

\X[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \process_0~27_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[4]~en_q\);

\X[5]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[5]~30_combout\ = (Signal_count(5) & ((GND) # (!\X[4]~29\))) # (!Signal_count(5) & (\X[4]~29\ $ (GND)))
-- \X[5]~31\ = CARRY((Signal_count(5)) # (!\X[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(5),
	datad => VCC,
	cin => \X[4]~29\,
	combout => \X[5]~30_combout\,
	cout => \X[5]~31\);

\X[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \X[5]~30_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[5]~reg0_q\);

\X[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \process_0~27_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[5]~en_q\);

\X[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[6]~32_combout\ = (Signal_count(6) & (\X[5]~31\ & VCC)) # (!Signal_count(6) & (!\X[5]~31\))
-- \X[6]~33\ = CARRY((!Signal_count(6) & !\X[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(6),
	datad => VCC,
	cin => \X[5]~31\,
	combout => \X[6]~32_combout\,
	cout => \X[6]~33\);

\X[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \X[6]~32_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[6]~reg0_q\);

\X[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \process_0~27_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[6]~en_q\);

\X[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[7]~34_combout\ = (Signal_count(7) & (\X[6]~33\ $ (GND))) # (!Signal_count(7) & (!\X[6]~33\ & VCC))
-- \X[7]~35\ = CARRY((Signal_count(7) & !\X[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(7),
	datad => VCC,
	cin => \X[6]~33\,
	combout => \X[7]~34_combout\,
	cout => \X[7]~35\);

\X[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \X[7]~34_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[7]~reg0_q\);

\X[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \process_0~27_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[7]~en_q\);

\X[8]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[8]~36_combout\ = (Signal_count(8) & (\X[7]~35\ & VCC)) # (!Signal_count(8) & (!\X[7]~35\))
-- \X[8]~37\ = CARRY((!Signal_count(8) & !\X[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(8),
	datad => VCC,
	cin => \X[7]~35\,
	combout => \X[8]~36_combout\,
	cout => \X[8]~37\);

\X[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \X[8]~36_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[8]~reg0_q\);

\X[8]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \process_0~27_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[8]~en_q\);

\X[9]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X[9]~38_combout\ = Signal_count(9) $ (\X[8]~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Signal_count(9),
	cin => \X[8]~37\,
	combout => \X[9]~38_combout\);

\X[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \X[9]~38_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[9]~reg0_q\);

\X[9]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \process_0~27_combout\,
	ena => \X[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X[9]~en_q\);

\VGA_HS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_HS~1_combout\ = \process_0~5_combout\ $ (((!\VGA_HS~reg0_q\ & (!\VGA_HS~0_combout\ & \process_0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => \VGA_HS~reg0_q\,
	datac => \VGA_HS~0_combout\,
	datad => \process_0~23_combout\,
	combout => \VGA_HS~1_combout\);

\VGA_HS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_HS~2_combout\ = ((\VGA_HS~1_combout\ & (\process_0~25_combout\ & !\process_0~27_combout\))) # (!\LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \VGA_HS~1_combout\,
	datac => \process_0~25_combout\,
	datad => \process_0~27_combout\,
	combout => \VGA_HS~2_combout\);

\VGA_HS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \VGA_HS~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_HS~reg0_q\);

\VGA_VS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_VS~1_combout\ = (!\process_0~19_combout\ & (!\process_0~10_combout\ & !\process_0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~19_combout\,
	datac => \process_0~10_combout\,
	datad => \process_0~14_combout\,
	combout => \VGA_VS~1_combout\);

\VGA_VS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA_VS~2_combout\ = (\VGA_VS~0_combout\ & (!\VGA_VS~1_combout\ & (\process_0~23_combout\))) # (!\VGA_VS~0_combout\ & (((\VGA_VS~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_VS~0_combout\,
	datab => \VGA_VS~1_combout\,
	datac => \process_0~23_combout\,
	datad => \VGA_VS~reg0_q\,
	combout => \VGA_VS~2_combout\);

\VGA_VS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \VGA_VS~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_VS~reg0_q\);

\V_Line[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \V_Line~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => V_Line(4));

\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = V_Line(0) $ (VCC)
-- \Add1~1\ = CARRY(V_Line(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => V_Line(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

\V_Line~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V_Line~4_combout\ = (\Y[0]~0_combout\ & (\Add1~0_combout\)) # (!\Y[0]~0_combout\ & ((V_Line(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => V_Line(0),
	datad => \Y[0]~0_combout\,
	combout => \V_Line~4_combout\);

\V_Line[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \V_Line~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => V_Line(0));

\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (V_Line(1) & (!\Add1~1\)) # (!V_Line(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!V_Line(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => V_Line(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

\V_Line~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V_Line~3_combout\ = (\Y[0]~0_combout\ & (\Add1~2_combout\)) # (!\Y[0]~0_combout\ & ((V_Line(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => V_Line(1),
	datad => \Y[0]~0_combout\,
	combout => \V_Line~3_combout\);

\V_Line[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \V_Line~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => V_Line(1));

\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (V_Line(2) & (\Add1~3\ $ (GND))) # (!V_Line(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((V_Line(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => V_Line(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

\V_Line~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V_Line~5_combout\ = (\Y[0]~0_combout\ & (\Add1~4_combout\)) # (!\Y[0]~0_combout\ & ((V_Line(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => V_Line(2),
	datad => \Y[0]~0_combout\,
	combout => \V_Line~5_combout\);

\V_Line[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \V_Line~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => V_Line(2));

\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (V_Line(3) & (!\Add1~5\)) # (!V_Line(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!V_Line(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => V_Line(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

\V_Line~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V_Line~2_combout\ = (\Y[0]~0_combout\ & (\Add1~6_combout\)) # (!\Y[0]~0_combout\ & ((V_Line(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => V_Line(3),
	datad => \Y[0]~0_combout\,
	combout => \V_Line~2_combout\);

\V_Line[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \V_Line~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => V_Line(3));

\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (V_Line(4) & (\Add1~7\ $ (GND))) # (!V_Line(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((V_Line(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => V_Line(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

\V_Line~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V_Line~0_combout\ = (\Y[0]~0_combout\ & (\Add1~8_combout\)) # (!\Y[0]~0_combout\ & ((V_Line(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => V_Line(4),
	datad => \Y[0]~0_combout\,
	combout => \V_Line~0_combout\);

\V_Line[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \V_Line~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => V_Line(5));

\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (V_Line(5) & (!\Add1~9\)) # (!V_Line(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!V_Line(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => V_Line(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

\V_Line~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V_Line~1_combout\ = (\Y[0]~0_combout\ & (\Add1~10_combout\)) # (!\Y[0]~0_combout\ & ((V_Line(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => V_Line(5),
	datad => \Y[0]~0_combout\,
	combout => \V_Line~1_combout\);

\process_0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~28_combout\ = (\V_Line~2_combout\ & ((\V_Line~3_combout\) # ((\V_Line~5_combout\)))) # (!\V_Line~2_combout\ & (((!\V_Line~3_combout\ & !\V_Line~4_combout\)) # (!\V_Line~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_Line~2_combout\,
	datab => \V_Line~3_combout\,
	datac => \V_Line~4_combout\,
	datad => \V_Line~5_combout\,
	combout => \process_0~28_combout\);

\V_Line[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \V_Line~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => V_Line(6));

\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (V_Line(6) & (\Add1~11\ $ (GND))) # (!V_Line(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((V_Line(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => V_Line(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

\V_Line~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V_Line~6_combout\ = (\Y[0]~0_combout\ & (\Add1~12_combout\)) # (!\Y[0]~0_combout\ & ((V_Line(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => V_Line(6),
	datad => \Y[0]~0_combout\,
	combout => \V_Line~6_combout\);

\V_Line[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \V_Line~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => V_Line(7));

\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (V_Line(7) & (!\Add1~13\)) # (!V_Line(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!V_Line(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => V_Line(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

\V_Line~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V_Line~7_combout\ = (\Y[0]~0_combout\ & (\Add1~14_combout\)) # (!\Y[0]~0_combout\ & ((V_Line(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => V_Line(7),
	datad => \Y[0]~0_combout\,
	combout => \V_Line~7_combout\);

\V_Line[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \V_Line~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => V_Line(8));

\Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (V_Line(8) & (\Add1~15\ $ (GND))) # (!V_Line(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((V_Line(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => V_Line(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

\V_Line~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V_Line~8_combout\ = (\Y[0]~0_combout\ & (\Add1~16_combout\)) # (!\Y[0]~0_combout\ & ((V_Line(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => V_Line(8),
	datad => \Y[0]~0_combout\,
	combout => \V_Line~8_combout\);

\V_Line[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \V_Line~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => V_Line(9));

\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = V_Line(9) $ (\Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => V_Line(9),
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

\V_Line~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \V_Line~9_combout\ = (\Y[0]~0_combout\ & (\Add1~18_combout\)) # (!\Y[0]~0_combout\ & ((V_Line(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => V_Line(9),
	datad => \Y[0]~0_combout\,
	combout => \V_Line~9_combout\);

\process_0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~29_combout\ = (!\V_Line~6_combout\ & (!\V_Line~7_combout\ & (!\V_Line~8_combout\ & !\V_Line~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_Line~6_combout\,
	datab => \V_Line~7_combout\,
	datac => \V_Line~8_combout\,
	datad => \V_Line~9_combout\,
	combout => \process_0~29_combout\);

\process_0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~30_combout\ = (!\V_Line~0_combout\ & (!\V_Line~1_combout\ & (!\process_0~28_combout\ & \process_0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_Line~0_combout\,
	datab => \V_Line~1_combout\,
	datac => \process_0~28_combout\,
	datad => \process_0~29_combout\,
	combout => \process_0~30_combout\);

\Red[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \process_0~30_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Red[0]~reg0_q\);

\Red[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \process_0~30_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Red[1]~reg0_q\);

\Red[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \process_0~30_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Red[2]~reg0_q\);

\Red[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \process_0~30_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Red[3]~reg0_q\);

\process_0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~31_combout\ = (!\V_Line~0_combout\ & ((\V_Line~5_combout\ & ((!\V_Line~4_combout\) # (!\V_Line~3_combout\))) # (!\V_Line~5_combout\ & (\V_Line~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_Line~5_combout\,
	datab => \V_Line~3_combout\,
	datac => \V_Line~4_combout\,
	datad => \V_Line~0_combout\,
	combout => \process_0~31_combout\);

\process_0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~32_combout\ = (((\V_Line~1_combout\) # (!\process_0~31_combout\)) # (!\process_0~29_combout\)) # (!\V_Line~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V_Line~2_combout\,
	datab => \process_0~29_combout\,
	datac => \V_Line~1_combout\,
	datad => \process_0~31_combout\,
	combout => \process_0~32_combout\);

\Blue~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Blue~0_combout\ = (!\process_0~32_combout\ & !\process_0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~32_combout\,
	datad => \process_0~30_combout\,
	combout => \Blue~0_combout\);

\Blue[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Blue~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blue[0]~reg0_q\);

\Blue[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Blue~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blue[1]~reg0_q\);

\Blue[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Blue~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blue[2]~reg0_q\);

\Blue[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Blue~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Blue[3]~reg0_q\);

\Green~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Green~0_combout\ = (!\process_0~30_combout\ & \process_0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~30_combout\,
	datab => \process_0~32_combout\,
	combout => \Green~0_combout\);

\Green[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Green~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Green[0]~reg0_q\);

\Green[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Green~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Green[1]~reg0_q\);

\Green[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Green~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Green[2]~reg0_q\);

\Green[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Green~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Green[3]~reg0_q\);

\Y[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Y[0]~1_combout\ = (!\reset~input_o\ & (\VGA_HS~0_combout\ & (\process_0~23_combout\ & \VGA_VS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \VGA_HS~0_combout\,
	datac => \process_0~23_combout\,
	datad => \VGA_VS~0_combout\,
	combout => \Y[0]~1_combout\);

\Y[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Add1~0_combout\,
	ena => \Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Y[0]~reg0_q\);

\Y[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Add1~2_combout\,
	ena => \Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Y[1]~reg0_q\);

\Y[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Add1~4_combout\,
	ena => \Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Y[2]~reg0_q\);

\Y[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Add1~6_combout\,
	ena => \Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Y[3]~reg0_q\);

\Y[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Add1~8_combout\,
	ena => \Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Y[4]~reg0_q\);

\Y[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Add1~10_combout\,
	ena => \Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Y[5]~reg0_q\);

\Y[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Add1~12_combout\,
	ena => \Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Y[6]~reg0_q\);

\Y[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Add1~14_combout\,
	ena => \Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Y[7]~reg0_q\);

\Y[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll|altpll_component|auto_generated|wire_pll1_clk\(0),
	d => \Add1~16_combout\,
	ena => \Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Y[8]~reg0_q\);
END structure;


