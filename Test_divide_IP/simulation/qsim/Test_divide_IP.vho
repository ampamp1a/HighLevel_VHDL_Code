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

-- DATE "10/16/2023 11:14:23"

-- 
-- Device: Altera 10M50DCF484C7G Package FBGA484
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

ENTITY 	Test_divide_IP IS
    PORT (
	clk_i : IN std_logic;
	rst_i : IN std_logic;
	data : IN std_logic_vector(12 DOWNTO 0);
	ascii_sign_digit : OUT std_logic_vector(7 DOWNTO 0);
	binary_digit_3 : OUT std_logic_vector(11 DOWNTO 0);
	binary_digit_2 : OUT std_logic_vector(11 DOWNTO 0);
	binary_digit_1 : OUT std_logic_vector(11 DOWNTO 0);
	binary_digit_0 : OUT std_logic_vector(11 DOWNTO 0);
	seven_seg_digit_3 : OUT std_logic_vector(6 DOWNTO 0);
	seven_seg_digit_2 : OUT std_logic_vector(6 DOWNTO 0);
	seven_seg_digit_1 : OUT std_logic_vector(6 DOWNTO 0);
	seven_seg_digit_0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Test_divide_IP;

ARCHITECTURE structure OF Test_divide_IP IS
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
SIGNAL ww_data : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_ascii_sign_digit : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_binary_digit_3 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_binary_digit_2 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_binary_digit_1 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_binary_digit_0 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_seven_seg_digit_3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seven_seg_digit_2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seven_seg_digit_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seven_seg_digit_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \ascii_sign_digit[0]~output_o\ : std_logic;
SIGNAL \ascii_sign_digit[1]~output_o\ : std_logic;
SIGNAL \ascii_sign_digit[2]~output_o\ : std_logic;
SIGNAL \ascii_sign_digit[3]~output_o\ : std_logic;
SIGNAL \ascii_sign_digit[4]~output_o\ : std_logic;
SIGNAL \ascii_sign_digit[5]~output_o\ : std_logic;
SIGNAL \ascii_sign_digit[6]~output_o\ : std_logic;
SIGNAL \ascii_sign_digit[7]~output_o\ : std_logic;
SIGNAL \binary_digit_3[0]~output_o\ : std_logic;
SIGNAL \binary_digit_3[1]~output_o\ : std_logic;
SIGNAL \binary_digit_3[2]~output_o\ : std_logic;
SIGNAL \binary_digit_3[3]~output_o\ : std_logic;
SIGNAL \binary_digit_3[4]~output_o\ : std_logic;
SIGNAL \binary_digit_3[5]~output_o\ : std_logic;
SIGNAL \binary_digit_3[6]~output_o\ : std_logic;
SIGNAL \binary_digit_3[7]~output_o\ : std_logic;
SIGNAL \binary_digit_3[8]~output_o\ : std_logic;
SIGNAL \binary_digit_3[9]~output_o\ : std_logic;
SIGNAL \binary_digit_3[10]~output_o\ : std_logic;
SIGNAL \binary_digit_3[11]~output_o\ : std_logic;
SIGNAL \binary_digit_2[0]~output_o\ : std_logic;
SIGNAL \binary_digit_2[1]~output_o\ : std_logic;
SIGNAL \binary_digit_2[2]~output_o\ : std_logic;
SIGNAL \binary_digit_2[3]~output_o\ : std_logic;
SIGNAL \binary_digit_2[4]~output_o\ : std_logic;
SIGNAL \binary_digit_2[5]~output_o\ : std_logic;
SIGNAL \binary_digit_2[6]~output_o\ : std_logic;
SIGNAL \binary_digit_2[7]~output_o\ : std_logic;
SIGNAL \binary_digit_2[8]~output_o\ : std_logic;
SIGNAL \binary_digit_2[9]~output_o\ : std_logic;
SIGNAL \binary_digit_2[10]~output_o\ : std_logic;
SIGNAL \binary_digit_2[11]~output_o\ : std_logic;
SIGNAL \binary_digit_1[0]~output_o\ : std_logic;
SIGNAL \binary_digit_1[1]~output_o\ : std_logic;
SIGNAL \binary_digit_1[2]~output_o\ : std_logic;
SIGNAL \binary_digit_1[3]~output_o\ : std_logic;
SIGNAL \binary_digit_1[4]~output_o\ : std_logic;
SIGNAL \binary_digit_1[5]~output_o\ : std_logic;
SIGNAL \binary_digit_1[6]~output_o\ : std_logic;
SIGNAL \binary_digit_1[7]~output_o\ : std_logic;
SIGNAL \binary_digit_1[8]~output_o\ : std_logic;
SIGNAL \binary_digit_1[9]~output_o\ : std_logic;
SIGNAL \binary_digit_1[10]~output_o\ : std_logic;
SIGNAL \binary_digit_1[11]~output_o\ : std_logic;
SIGNAL \binary_digit_0[0]~output_o\ : std_logic;
SIGNAL \binary_digit_0[1]~output_o\ : std_logic;
SIGNAL \binary_digit_0[2]~output_o\ : std_logic;
SIGNAL \binary_digit_0[3]~output_o\ : std_logic;
SIGNAL \binary_digit_0[4]~output_o\ : std_logic;
SIGNAL \binary_digit_0[5]~output_o\ : std_logic;
SIGNAL \binary_digit_0[6]~output_o\ : std_logic;
SIGNAL \binary_digit_0[7]~output_o\ : std_logic;
SIGNAL \binary_digit_0[8]~output_o\ : std_logic;
SIGNAL \binary_digit_0[9]~output_o\ : std_logic;
SIGNAL \binary_digit_0[10]~output_o\ : std_logic;
SIGNAL \binary_digit_0[11]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_3[0]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_3[1]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_3[2]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_3[3]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_3[4]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_3[5]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_3[6]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_2[0]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_2[1]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_2[2]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_2[3]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_2[4]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_2[5]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_2[6]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_1[0]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_1[1]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_1[2]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_1[3]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_1[4]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_1[5]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_1[6]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_0[0]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_0[1]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_0[2]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_0[3]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_0[4]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_0[5]~output_o\ : std_logic;
SIGNAL \seven_seg_digit_0[6]~output_o\ : std_logic;
SIGNAL \clk_i~input_o\ : std_logic;
SIGNAL \data[12]~input_o\ : std_logic;
SIGNAL \count[1]~2_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \count[3]~3_combout\ : std_logic;
SIGNAL \count[3]~4_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \state~0_combout\ : std_logic;
SIGNAL \state~q\ : std_logic;
SIGNAL \binary_digit_0[4]~8_combout\ : std_logic;
SIGNAL \ascii_sign_digit[0]~reg0_q\ : std_logic;
SIGNAL \ascii_sign_digit[1]~reg0_q\ : std_logic;
SIGNAL \ascii_sign_digit[2]~reg0_q\ : std_logic;
SIGNAL \ascii_sign_digit[3]~reg0_q\ : std_logic;
SIGNAL \ascii_sign_digit[4]~reg0_q\ : std_logic;
SIGNAL \ascii_sign_digit[5]~reg0_q\ : std_logic;
SIGNAL \ascii_sign_digit[6]~reg0_q\ : std_logic;
SIGNAL \ascii_sign_digit[7]~reg0_q\ : std_logic;
SIGNAL \data[11]~input_o\ : std_logic;
SIGNAL \data[10]~input_o\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \process_data[0]~13\ : std_logic;
SIGNAL \process_data[1]~15\ : std_logic;
SIGNAL \process_data[2]~17\ : std_logic;
SIGNAL \process_data[3]~19\ : std_logic;
SIGNAL \process_data[4]~21\ : std_logic;
SIGNAL \process_data[5]~23\ : std_logic;
SIGNAL \process_data[6]~25\ : std_logic;
SIGNAL \process_data[7]~27\ : std_logic;
SIGNAL \process_data[8]~29\ : std_logic;
SIGNAL \process_data[9]~31\ : std_logic;
SIGNAL \process_data[10]~33\ : std_logic;
SIGNAL \process_data[11]~34_combout\ : std_logic;
SIGNAL \rst_i~input_o\ : std_logic;
SIGNAL \process_data[10]~32_combout\ : std_logic;
SIGNAL \process_data[9]~30_combout\ : std_logic;
SIGNAL \process_data[8]~28_combout\ : std_logic;
SIGNAL \process_data[7]~26_combout\ : std_logic;
SIGNAL \process_data[6]~24_combout\ : std_logic;
SIGNAL \process_data[5]~22_combout\ : std_logic;
SIGNAL \process_data[4]~20_combout\ : std_logic;
SIGNAL \process_data[3]~18_combout\ : std_logic;
SIGNAL \process_data[2]~16_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~19\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~0_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~1_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~2_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~3_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~4_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~5_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~6_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~7_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~8_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~9_combout\ : std_logic;
SIGNAL \process_data[1]~14_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~21\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~0_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[2]~3_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[1]~5_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~4_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\ : std_logic;
SIGNAL \process_data[0]~12_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~23\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ : std_logic;
SIGNAL \binary_digit_3[0]~0_combout\ : std_logic;
SIGNAL \binary_digit_3[0]~reg0_q\ : std_logic;
SIGNAL \binary_digit_3[1]~1_combout\ : std_logic;
SIGNAL \binary_digit_3[1]~reg0_q\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_3|Mux2~8_combout\ : std_logic;
SIGNAL \binary_digit_3[2]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~0_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~1_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~2_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~3_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~4_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~5_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~6_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~7_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~8_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~9_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~10_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~11_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~12_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~13_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~14_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~7\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~11\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~15\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~17\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~15_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~16_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~17_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~18_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~19_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~20_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~21_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~22_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~23_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~19\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~24_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~25_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~26_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~27_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~28_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~29_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~30_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~31_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~32_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~33_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~21\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~34_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~35_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~36_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~37_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~38_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~10_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~23\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ : std_logic;
SIGNAL \binary_digit_2[0]~0_combout\ : std_logic;
SIGNAL \binary_digit_2[0]~reg0_q\ : std_logic;
SIGNAL \binary_digit_2[1]~1_combout\ : std_logic;
SIGNAL \binary_digit_2[1]~reg0_q\ : std_logic;
SIGNAL \binary_digit_2[2]~reg0_q\ : std_logic;
SIGNAL \binary_digit_2[3]~reg0_q\ : std_logic;
SIGNAL \binary_digit_2[4]~reg0_q\ : std_logic;
SIGNAL \binary_digit_2[5]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[39]~43_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~3_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~44_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~4_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~43_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~45_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~46_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~2_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~3_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~4_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~5_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~6_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~7_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~8_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~9_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~10_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~11_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~12_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~13_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~14_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~15_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~16_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~7\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~11\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~15\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~17\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~17_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~18_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~19_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~20_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~21_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~22_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~23_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~24_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~25_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~19\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~26_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~27_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~28_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~29_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~30_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~31_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~32_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~33_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~34_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~35_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~21\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ : std_logic;
SIGNAL \binary_digit_0[11]~7_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\ : std_logic;
SIGNAL \binary_digit_0[10]~6_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\ : std_logic;
SIGNAL \binary_digit_0[9]~5_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ : std_logic;
SIGNAL \binary_digit_0[8]~4_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\ : std_logic;
SIGNAL \binary_digit_0[7]~3_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ : std_logic;
SIGNAL \binary_digit_0[6]~2_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\ : std_logic;
SIGNAL \binary_digit_0[5]~1_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\ : std_logic;
SIGNAL \binary_digit_0[4]~0_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[122]~36_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[121]~37_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[120]~38_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~44_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~23\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ : std_logic;
SIGNAL \binary_digit_1[0]~0_combout\ : std_logic;
SIGNAL \binary_digit_1[0]~reg0_q\ : std_logic;
SIGNAL \binary_digit_1[1]~1_combout\ : std_logic;
SIGNAL \binary_digit_1[1]~reg0_q\ : std_logic;
SIGNAL \binary_digit_1[2]~reg0_q\ : std_logic;
SIGNAL \binary_digit_1[3]~reg0_q\ : std_logic;
SIGNAL \binary_digit_1[4]~reg0_q\ : std_logic;
SIGNAL \binary_digit_1[5]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFQuotient[6]~0_combout\ : std_logic;
SIGNAL \binary_digit_1[6]~reg0_q\ : std_logic;
SIGNAL \binary_digit_1[7]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \binary_digit_1[8]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\ : std_logic;
SIGNAL \binary_digit_0[0]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\ : std_logic;
SIGNAL \binary_digit_0[1]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\ : std_logic;
SIGNAL \binary_digit_0[2]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\ : std_logic;
SIGNAL \binary_digit_0[3]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\ : std_logic;
SIGNAL \binary_digit_0[4]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\ : std_logic;
SIGNAL \binary_digit_0[5]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\ : std_logic;
SIGNAL \binary_digit_0[6]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ : std_logic;
SIGNAL \binary_digit_0[7]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\ : std_logic;
SIGNAL \binary_digit_0[8]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\ : std_logic;
SIGNAL \binary_digit_0[9]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\ : std_logic;
SIGNAL \binary_digit_0[10]~reg0_q\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\ : std_logic;
SIGNAL \binary_digit_0[11]~reg0_q\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_3|Mux6~8_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_3|Mux5~8_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_3|Mux4~8_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_3|Mux3~8_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_3|Mux2~9_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_3|Mux1~8_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_3|Mux0~8_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_2|Mux6~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_2|Mux5~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_2|Mux4~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_2|Mux3~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_2|Mux2~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_2|Mux1~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_2|Mux0~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_1|Mux6~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_1|Mux5~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_1|Mux4~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_1|Mux3~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_1|Mux2~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_1|Mux1~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_1|Mux0~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_0|Mux6~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_0|Mux5~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_0|Mux4~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_0|Mux3~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_0|Mux2~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_0|Mux1~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_0|Mux0~0_combout\ : std_logic;
SIGNAL \BCD_to_7_seg_Digit_1|seven_seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \BCD_to_7_seg_Digit_2|seven_seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL process_data : std_logic_vector(11 DOWNTO 0);
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \BCD_to_7_seg_Digit_3|seven_seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \BCD_to_7_seg_Digit_0|seven_seg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\ : std_logic_vector(155 DOWNTO 0);
SIGNAL data_ascii_sign_digit : std_logic_vector(7 DOWNTO 0);
SIGNAL count : std_logic_vector(3 DOWNTO 0);
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\ : std_logic_vector(155 DOWNTO 0);
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\ : std_logic_vector(155 DOWNTO 0);
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFQuotient\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_state~q\ : std_logic;
SIGNAL \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\ : std_logic;
SIGNAL \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_6~10_combout\ : std_logic;
SIGNAL \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\ : std_logic;
SIGNAL \ALT_INV_rst_i~input_o\ : std_logic;

BEGIN

ww_clk_i <= clk_i;
ww_rst_i <= rst_i;
ww_data <= data;
ascii_sign_digit <= ww_ascii_sign_digit;
binary_digit_3 <= ww_binary_digit_3;
binary_digit_2 <= ww_binary_digit_2;
binary_digit_1 <= ww_binary_digit_1;
binary_digit_0 <= ww_binary_digit_0;
seven_seg_digit_3 <= ww_seven_seg_digit_3;
seven_seg_digit_2 <= ww_seven_seg_digit_2;
seven_seg_digit_1 <= ww_seven_seg_digit_1;
seven_seg_digit_0 <= ww_seven_seg_digit_0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_state~q\ <= NOT \state~q\;
\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\ <= NOT \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\;
\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\ <= NOT \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\;
\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_6~10_combout\ <= NOT \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\;
\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\ <= NOT \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\;
\ALT_INV_rst_i~input_o\ <= NOT \rst_i~input_o\;

\ascii_sign_digit[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_sign_digit[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ascii_sign_digit[0]~output_o\);

\ascii_sign_digit[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_sign_digit[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ascii_sign_digit[1]~output_o\);

\ascii_sign_digit[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_sign_digit[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ascii_sign_digit[2]~output_o\);

\ascii_sign_digit[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_sign_digit[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ascii_sign_digit[3]~output_o\);

\ascii_sign_digit[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_sign_digit[4]~reg0_q\,
	devoe => ww_devoe,
	o => \ascii_sign_digit[4]~output_o\);

\ascii_sign_digit[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_sign_digit[5]~reg0_q\,
	devoe => ww_devoe,
	o => \ascii_sign_digit[5]~output_o\);

\ascii_sign_digit[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_sign_digit[6]~reg0_q\,
	devoe => ww_devoe,
	o => \ascii_sign_digit[6]~output_o\);

\ascii_sign_digit[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ascii_sign_digit[7]~reg0_q\,
	devoe => ww_devoe,
	o => \ascii_sign_digit[7]~output_o\);

\binary_digit_3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_3[0]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_3[0]~output_o\);

\binary_digit_3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_3[1]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_3[1]~output_o\);

\binary_digit_3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_3[2]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_3[2]~output_o\);

\binary_digit_3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_3[3]~output_o\);

\binary_digit_3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_3[4]~output_o\);

\binary_digit_3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_3[5]~output_o\);

\binary_digit_3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_3[6]~output_o\);

\binary_digit_3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_3[7]~output_o\);

\binary_digit_3[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_3[8]~output_o\);

\binary_digit_3[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_3[9]~output_o\);

\binary_digit_3[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_3[10]~output_o\);

\binary_digit_3[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_3[11]~output_o\);

\binary_digit_2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_2[0]~output_o\);

\binary_digit_2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_2[1]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_2[1]~output_o\);

\binary_digit_2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_2[2]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_2[2]~output_o\);

\binary_digit_2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_2[3]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_2[3]~output_o\);

\binary_digit_2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_2[4]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_2[4]~output_o\);

\binary_digit_2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_2[5]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_2[5]~output_o\);

\binary_digit_2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_2[6]~output_o\);

\binary_digit_2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_2[7]~output_o\);

\binary_digit_2[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_2[8]~output_o\);

\binary_digit_2[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_2[9]~output_o\);

\binary_digit_2[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_2[10]~output_o\);

\binary_digit_2[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_2[11]~output_o\);

\binary_digit_1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_1[0]~output_o\);

\binary_digit_1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_1[1]~output_o\);

\binary_digit_1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_1[2]~output_o\);

\binary_digit_1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_1[3]~output_o\);

\binary_digit_1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_1[4]~output_o\);

\binary_digit_1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_1[5]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_1[5]~output_o\);

\binary_digit_1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_1[6]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_1[6]~output_o\);

\binary_digit_1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_1[7]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_1[7]~output_o\);

\binary_digit_1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_1[8]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_1[8]~output_o\);

\binary_digit_1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_1[9]~output_o\);

\binary_digit_1[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_1[10]~output_o\);

\binary_digit_1[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binary_digit_1[11]~output_o\);

\binary_digit_0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_0[0]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_0[0]~output_o\);

\binary_digit_0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_0[1]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_0[1]~output_o\);

\binary_digit_0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_0[2]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_0[2]~output_o\);

\binary_digit_0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_0[3]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_0[3]~output_o\);

\binary_digit_0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_0[4]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_0[4]~output_o\);

\binary_digit_0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_0[5]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_0[5]~output_o\);

\binary_digit_0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_0[6]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_0[6]~output_o\);

\binary_digit_0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_0[7]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_0[7]~output_o\);

\binary_digit_0[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_0[8]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_0[8]~output_o\);

\binary_digit_0[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_0[9]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_0[9]~output_o\);

\binary_digit_0[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_0[10]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_0[10]~output_o\);

\binary_digit_0[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binary_digit_0[11]~reg0_q\,
	devoe => ww_devoe,
	o => \binary_digit_0[11]~output_o\);

\seven_seg_digit_3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_3|seven_seg\(0),
	devoe => ww_devoe,
	o => \seven_seg_digit_3[0]~output_o\);

\seven_seg_digit_3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_3|seven_seg\(1),
	devoe => ww_devoe,
	o => \seven_seg_digit_3[1]~output_o\);

\seven_seg_digit_3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_3|seven_seg\(2),
	devoe => ww_devoe,
	o => \seven_seg_digit_3[2]~output_o\);

\seven_seg_digit_3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_3|seven_seg\(3),
	devoe => ww_devoe,
	o => \seven_seg_digit_3[3]~output_o\);

\seven_seg_digit_3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_3|seven_seg\(4),
	devoe => ww_devoe,
	o => \seven_seg_digit_3[4]~output_o\);

\seven_seg_digit_3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_3|seven_seg\(5),
	devoe => ww_devoe,
	o => \seven_seg_digit_3[5]~output_o\);

\seven_seg_digit_3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_3|seven_seg\(6),
	devoe => ww_devoe,
	o => \seven_seg_digit_3[6]~output_o\);

\seven_seg_digit_2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_2|seven_seg\(0),
	devoe => ww_devoe,
	o => \seven_seg_digit_2[0]~output_o\);

\seven_seg_digit_2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_2|seven_seg\(1),
	devoe => ww_devoe,
	o => \seven_seg_digit_2[1]~output_o\);

\seven_seg_digit_2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_2|seven_seg\(2),
	devoe => ww_devoe,
	o => \seven_seg_digit_2[2]~output_o\);

\seven_seg_digit_2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_2|seven_seg\(3),
	devoe => ww_devoe,
	o => \seven_seg_digit_2[3]~output_o\);

\seven_seg_digit_2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_2|seven_seg\(4),
	devoe => ww_devoe,
	o => \seven_seg_digit_2[4]~output_o\);

\seven_seg_digit_2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_2|seven_seg\(5),
	devoe => ww_devoe,
	o => \seven_seg_digit_2[5]~output_o\);

\seven_seg_digit_2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_2|seven_seg\(6),
	devoe => ww_devoe,
	o => \seven_seg_digit_2[6]~output_o\);

\seven_seg_digit_1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_1|seven_seg\(0),
	devoe => ww_devoe,
	o => \seven_seg_digit_1[0]~output_o\);

\seven_seg_digit_1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_1|seven_seg\(1),
	devoe => ww_devoe,
	o => \seven_seg_digit_1[1]~output_o\);

\seven_seg_digit_1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_1|seven_seg\(2),
	devoe => ww_devoe,
	o => \seven_seg_digit_1[2]~output_o\);

\seven_seg_digit_1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_1|seven_seg\(3),
	devoe => ww_devoe,
	o => \seven_seg_digit_1[3]~output_o\);

\seven_seg_digit_1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_1|seven_seg\(4),
	devoe => ww_devoe,
	o => \seven_seg_digit_1[4]~output_o\);

\seven_seg_digit_1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_1|seven_seg\(5),
	devoe => ww_devoe,
	o => \seven_seg_digit_1[5]~output_o\);

\seven_seg_digit_1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_1|seven_seg\(6),
	devoe => ww_devoe,
	o => \seven_seg_digit_1[6]~output_o\);

\seven_seg_digit_0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_0|seven_seg\(0),
	devoe => ww_devoe,
	o => \seven_seg_digit_0[0]~output_o\);

\seven_seg_digit_0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_0|seven_seg\(1),
	devoe => ww_devoe,
	o => \seven_seg_digit_0[1]~output_o\);

\seven_seg_digit_0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_0|seven_seg\(2),
	devoe => ww_devoe,
	o => \seven_seg_digit_0[2]~output_o\);

\seven_seg_digit_0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_0|seven_seg\(3),
	devoe => ww_devoe,
	o => \seven_seg_digit_0[3]~output_o\);

\seven_seg_digit_0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_0|seven_seg\(4),
	devoe => ww_devoe,
	o => \seven_seg_digit_0[4]~output_o\);

\seven_seg_digit_0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_0|seven_seg\(5),
	devoe => ww_devoe,
	o => \seven_seg_digit_0[5]~output_o\);

\seven_seg_digit_0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_to_7_seg_Digit_0|seven_seg\(6),
	devoe => ww_devoe,
	o => \seven_seg_digit_0[6]~output_o\);

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

\data[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(12),
	o => \data[12]~input_o\);

\count[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[1]~2_combout\ = count(1) $ (((\state~q\ & count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datac => \state~q\,
	datad => count(0),
	combout => \count[1]~2_combout\);

\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

\count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (!count(0) & (((count(1)) # (count(3))) # (!count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datac => count(1),
	datad => count(3),
	combout => \count~1_combout\);

\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \count~1_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

\count[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[3]~3_combout\ = (\state~q\ & (count(0) & (count(1) & count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => count(0),
	datac => count(1),
	datad => count(2),
	combout => \count[3]~3_combout\);

\count[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[3]~4_combout\ = count(3) $ (\count[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(3),
	datad => \count[3]~3_combout\,
	combout => \count[3]~4_combout\);

\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \count[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

\count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (count(0) & ((count(2) $ (count(1))))) # (!count(0) & (count(2) & ((count(3)) # (count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => count(0),
	datad => count(1),
	combout => \count~0_combout\);

\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \count~0_combout\,
	ena => \state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count(2) & (!count(0) & (!count(1) & !count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(1),
	datad => count(3),
	combout => \Equal0~0_combout\);

\state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~0_combout\ = (\state~q\ & !\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datad => \Equal0~0_combout\,
	combout => \state~0_combout\);

state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \state~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state~q\);

\data_ascii_sign_digit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \data[12]~input_o\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_ascii_sign_digit(0));

\binary_digit_0[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_digit_0[4]~8_combout\ = (\state~q\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \Equal0~0_combout\,
	combout => \binary_digit_0[4]~8_combout\);

\ascii_sign_digit[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => data_ascii_sign_digit(0),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ascii_sign_digit[0]~reg0_q\);

\ascii_sign_digit[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => data_ascii_sign_digit(0),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ascii_sign_digit[1]~reg0_q\);

\ascii_sign_digit[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => data_ascii_sign_digit(0),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ascii_sign_digit[2]~reg0_q\);

\ascii_sign_digit[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => data_ascii_sign_digit(0),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ascii_sign_digit[3]~reg0_q\);

\ascii_sign_digit[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => data_ascii_sign_digit(0),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ascii_sign_digit[4]~reg0_q\);

\ascii_sign_digit[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => data_ascii_sign_digit(0),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ascii_sign_digit[5]~reg0_q\);

\ascii_sign_digit[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => data_ascii_sign_digit(0),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ascii_sign_digit[6]~reg0_q\);

\ascii_sign_digit[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => data_ascii_sign_digit(0),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ascii_sign_digit[7]~reg0_q\);

\data[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(11),
	o => \data[11]~input_o\);

\data[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(10),
	o => \data[10]~input_o\);

\data[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

\data[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

\data[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

\data[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

\data[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

\data[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

\data[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

\data[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

\data[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

\data[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \data[12]~input_o\ $ (\data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data[12]~input_o\,
	datad => \data[0]~input_o\,
	combout => \Add0~0_combout\);

\process_data[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_data[0]~12_combout\ = (\Add0~0_combout\ & (\data[12]~input_o\ $ (VCC))) # (!\Add0~0_combout\ & (\data[12]~input_o\ & VCC))
-- \process_data[0]~13\ = CARRY((\Add0~0_combout\ & \data[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \data[12]~input_o\,
	datad => VCC,
	combout => \process_data[0]~12_combout\,
	cout => \process_data[0]~13\);

\process_data[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_data[1]~14_combout\ = (\process_data[0]~13\ & (\data[1]~input_o\ $ ((!\data[12]~input_o\)))) # (!\process_data[0]~13\ & ((\data[1]~input_o\ $ (\data[12]~input_o\)) # (GND)))
-- \process_data[1]~15\ = CARRY((\data[1]~input_o\ $ (!\data[12]~input_o\)) # (!\process_data[0]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~input_o\,
	datab => \data[12]~input_o\,
	datad => VCC,
	cin => \process_data[0]~13\,
	combout => \process_data[1]~14_combout\,
	cout => \process_data[1]~15\);

\process_data[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_data[2]~16_combout\ = (\process_data[1]~15\ & ((\data[2]~input_o\ $ (\data[12]~input_o\)))) # (!\process_data[1]~15\ & (\data[2]~input_o\ $ (\data[12]~input_o\ $ (VCC))))
-- \process_data[2]~17\ = CARRY((!\process_data[1]~15\ & (\data[2]~input_o\ $ (\data[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data[2]~input_o\,
	datab => \data[12]~input_o\,
	datad => VCC,
	cin => \process_data[1]~15\,
	combout => \process_data[2]~16_combout\,
	cout => \process_data[2]~17\);

\process_data[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_data[3]~18_combout\ = (\process_data[2]~17\ & (\data[3]~input_o\ $ ((!\data[12]~input_o\)))) # (!\process_data[2]~17\ & ((\data[3]~input_o\ $ (\data[12]~input_o\)) # (GND)))
-- \process_data[3]~19\ = CARRY((\data[3]~input_o\ $ (!\data[12]~input_o\)) # (!\process_data[2]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~input_o\,
	datab => \data[12]~input_o\,
	datad => VCC,
	cin => \process_data[2]~17\,
	combout => \process_data[3]~18_combout\,
	cout => \process_data[3]~19\);

\process_data[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_data[4]~20_combout\ = (\process_data[3]~19\ & ((\data[4]~input_o\ $ (\data[12]~input_o\)))) # (!\process_data[3]~19\ & (\data[4]~input_o\ $ (\data[12]~input_o\ $ (VCC))))
-- \process_data[4]~21\ = CARRY((!\process_data[3]~19\ & (\data[4]~input_o\ $ (\data[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data[4]~input_o\,
	datab => \data[12]~input_o\,
	datad => VCC,
	cin => \process_data[3]~19\,
	combout => \process_data[4]~20_combout\,
	cout => \process_data[4]~21\);

\process_data[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_data[5]~22_combout\ = (\process_data[4]~21\ & (\data[5]~input_o\ $ ((!\data[12]~input_o\)))) # (!\process_data[4]~21\ & ((\data[5]~input_o\ $ (\data[12]~input_o\)) # (GND)))
-- \process_data[5]~23\ = CARRY((\data[5]~input_o\ $ (!\data[12]~input_o\)) # (!\process_data[4]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data[5]~input_o\,
	datab => \data[12]~input_o\,
	datad => VCC,
	cin => \process_data[4]~21\,
	combout => \process_data[5]~22_combout\,
	cout => \process_data[5]~23\);

\process_data[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_data[6]~24_combout\ = (\process_data[5]~23\ & ((\data[6]~input_o\ $ (\data[12]~input_o\)))) # (!\process_data[5]~23\ & (\data[6]~input_o\ $ (\data[12]~input_o\ $ (VCC))))
-- \process_data[6]~25\ = CARRY((!\process_data[5]~23\ & (\data[6]~input_o\ $ (\data[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data[6]~input_o\,
	datab => \data[12]~input_o\,
	datad => VCC,
	cin => \process_data[5]~23\,
	combout => \process_data[6]~24_combout\,
	cout => \process_data[6]~25\);

\process_data[7]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_data[7]~26_combout\ = (\process_data[6]~25\ & (\data[7]~input_o\ $ ((!\data[12]~input_o\)))) # (!\process_data[6]~25\ & ((\data[7]~input_o\ $ (\data[12]~input_o\)) # (GND)))
-- \process_data[7]~27\ = CARRY((\data[7]~input_o\ $ (!\data[12]~input_o\)) # (!\process_data[6]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data[7]~input_o\,
	datab => \data[12]~input_o\,
	datad => VCC,
	cin => \process_data[6]~25\,
	combout => \process_data[7]~26_combout\,
	cout => \process_data[7]~27\);

\process_data[8]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_data[8]~28_combout\ = (\process_data[7]~27\ & ((\data[8]~input_o\ $ (\data[12]~input_o\)))) # (!\process_data[7]~27\ & (\data[8]~input_o\ $ (\data[12]~input_o\ $ (VCC))))
-- \process_data[8]~29\ = CARRY((!\process_data[7]~27\ & (\data[8]~input_o\ $ (\data[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data[8]~input_o\,
	datab => \data[12]~input_o\,
	datad => VCC,
	cin => \process_data[7]~27\,
	combout => \process_data[8]~28_combout\,
	cout => \process_data[8]~29\);

\process_data[9]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_data[9]~30_combout\ = (\process_data[8]~29\ & (\data[9]~input_o\ $ ((!\data[12]~input_o\)))) # (!\process_data[8]~29\ & ((\data[9]~input_o\ $ (\data[12]~input_o\)) # (GND)))
-- \process_data[9]~31\ = CARRY((\data[9]~input_o\ $ (!\data[12]~input_o\)) # (!\process_data[8]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data[9]~input_o\,
	datab => \data[12]~input_o\,
	datad => VCC,
	cin => \process_data[8]~29\,
	combout => \process_data[9]~30_combout\,
	cout => \process_data[9]~31\);

\process_data[10]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_data[10]~32_combout\ = (\process_data[9]~31\ & ((\data[10]~input_o\ $ (\data[12]~input_o\)))) # (!\process_data[9]~31\ & (\data[10]~input_o\ $ (\data[12]~input_o\ $ (VCC))))
-- \process_data[10]~33\ = CARRY((!\process_data[9]~31\ & (\data[10]~input_o\ $ (\data[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data[10]~input_o\,
	datab => \data[12]~input_o\,
	datad => VCC,
	cin => \process_data[9]~31\,
	combout => \process_data[10]~32_combout\,
	cout => \process_data[10]~33\);

\process_data[11]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_data[11]~34_combout\ = \data[11]~input_o\ $ (\data[12]~input_o\ $ (\process_data[10]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data[11]~input_o\,
	datab => \data[12]~input_o\,
	cin => \process_data[10]~33\,
	combout => \process_data[11]~34_combout\);

\process_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \process_data[11]~34_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => process_data(11));

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

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => process_data(11),
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5));

\process_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \process_data[10]~32_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => process_data(10));

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => process_data(10),
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4));

\process_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \process_data[9]~30_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => process_data(9));

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => process_data(9),
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3));

\process_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \process_data[8]~28_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => process_data(8));

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => process_data(8),
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2));

\process_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \process_data[7]~26_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => process_data(7));

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => process_data(7),
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1));

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => VCC,
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0));

\process_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \process_data[6]~24_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => process_data(6));

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => process_data(6),
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0));

\process_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \process_data[5]~22_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => process_data(5));

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => process_data(5),
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5));

\process_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \process_data[4]~20_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => process_data(4));

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => process_data(4),
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4));

\process_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \process_data[3]~18_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => process_data(3));

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => process_data(3),
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3));

\process_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \process_data[2]~16_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => process_data(2));

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => process_data(2),
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2));

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2)) # (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2) $ (VCC)))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2),
	datad => VCC,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ & VCC)) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3) & (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3) & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\) # (GND)))))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3) & !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3),
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4) $ (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\)))) # (GND)
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4) & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4),
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5) & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\) # (GND)))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ = CARRY((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5),
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0) $ (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\)))) # (GND)
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0) & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0),
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1) & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\) # (GND)))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\ = CARRY((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1),
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\ $ (GND))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2) & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\ & VCC))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\ = CARRY((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2) & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2),
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3) & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\) # (GND)))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\ = CARRY((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3),
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\ $ (GND))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4) & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\ & VCC))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\ = CARRY((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4) & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4),
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5) & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\) # (GND)))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~19\ = CARRY((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5),
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~19\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ = \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~19\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5))) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~0_combout\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~1_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4))) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~1_combout\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3))) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~2_combout\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~3_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2))) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~3_combout\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~4_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1))) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~4_combout\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~5_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0))) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~5_combout\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~6_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5))) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~6_combout\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~7_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4))) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~7_combout\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~8_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3))) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~8_combout\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~9_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2))) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~9_combout\);

\process_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \process_data[1]~14_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => process_data(1));

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => process_data(1),
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1));

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1)) # (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1) $ (VCC)))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1),
	datad => VCC,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~9_combout\ & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ & VCC)) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~9_combout\ & (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~9_combout\ & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~9_combout\ & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\) # (GND)))))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~9_combout\ & !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~9_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~8_combout\ $ (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\)))) # (GND)
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~8_combout\) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~8_combout\ & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~8_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~7_combout\ & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~7_combout\ & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\) # (GND)))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\ = CARRY((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~7_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\ = ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~6_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\)))) # (GND)
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\ = CARRY((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~6_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\))) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~6_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~6_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~5_combout\ & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~5_combout\ & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\) # (GND)))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\ = CARRY((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~5_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~4_combout\ & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\ $ (GND))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~4_combout\ & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\ & VCC))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\ = CARRY((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~4_combout\ & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~4_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~3_combout\ & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~3_combout\ & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\) # (GND)))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\ = CARRY((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~3_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~2_combout\ & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\ $ (GND))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~2_combout\ & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\ & VCC))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\ = CARRY((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~2_combout\ & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~2_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~1_combout\ & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~1_combout\ & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\) # (GND)))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\ = CARRY((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~1_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\ = ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~0_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\)))) # (GND)
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~21\ = CARRY((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~0_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\))) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~0_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~0_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~21\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ = !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~21\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[130]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130));

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~0_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~0_combout\))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\,
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~0_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~0_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~1_combout\))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\,
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~1_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~2_combout\))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\,
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~2_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[2]~3_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~3_combout\))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~3_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[2]~3_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[1]~5_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~4_combout\))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\,
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~4_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[1]~5_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~4_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~5_combout\))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~5_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~4_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~6_combout\))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\,
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~6_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~7_combout\))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\,
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~7_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~8_combout\))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\,
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~8_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~9_combout\))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\,
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~9_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1)))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\,
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1),
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\);

\process_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \process_data[0]~12_combout\,
	ena => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => process_data(0));

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => process_data(0),
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0));

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0)) # (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0) $ (VCC)))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0),
	datad => VCC,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\ & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\ & VCC)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\ & (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\ & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\ & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\) # (GND)))))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\ & !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\ $ (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\)))) # (GND)
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\ & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\ & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\ & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\) # (GND)))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\ = CARRY((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\ = ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\)))) # (GND)
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\ & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\ & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\) # (GND)))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\ = CARRY((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~4_combout\ & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\ $ (GND))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~4_combout\ & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\ & VCC))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~4_combout\ & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~4_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[1]~5_combout\ & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[1]~5_combout\ & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\) # (GND)))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\ = CARRY((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[1]~5_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[2]~3_combout\ & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\ $ (GND))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[2]~3_combout\ & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\ & VCC))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[2]~3_combout\ & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[2]~3_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\ & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\ & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\) # (GND)))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\ = CARRY((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\,
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\ = ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\)))) # (GND)
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~0_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\)))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~0_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\) # (GND)))))
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~23\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~0_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~0_combout\ & ((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~0_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\,
	cout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~23\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ = \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~23\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\);

\binary_digit_3[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_digit_3[0]~0_combout\ = !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \binary_digit_3[0]~0_combout\);

\binary_digit_3[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \binary_digit_3[0]~0_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_3[0]~reg0_q\);

\binary_digit_3[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_digit_3[1]~1_combout\ = !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \binary_digit_3[1]~1_combout\);

\binary_digit_3[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \binary_digit_3[1]~1_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_3[1]~reg0_q\);

\BCD_to_7_seg_Digit_3|Mux2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_3|Mux2~8_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \BCD_to_7_seg_Digit_3|Mux2~8_combout\);

\binary_digit_3[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_3|Mux2~8_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_3[2]~reg0_q\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~0_combout\,
	asdata => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5));

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\,
	asdata => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4));

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\,
	asdata => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3));

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[2]~3_combout\,
	asdata => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2));

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[1]~5_combout\,
	asdata => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1));

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~4_combout\,
	asdata => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0));

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\,
	asdata => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5));

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5)) # (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5) $ (VCC)))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5),
	datad => VCC,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1) & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ $ (GND))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ & VCC))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1) & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3) $ (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3) & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND)))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5) & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ $ (GND))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ & VCC))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5) & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~0_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~1_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~1_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~2_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~3_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~3_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~4_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~4_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~5_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~5_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~6_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~6_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\,
	asdata => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4));

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4)) # (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4) $ (VCC)))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4),
	datad => VCC,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~6_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ & VCC)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~6_combout\ & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~6_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~6_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~6_combout\ & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~6_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~5_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ $ (GND))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~5_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & VCC))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~5_combout\ & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~5_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~4_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~4_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~4_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~4_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~4_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ = ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~3_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))) # (GND)
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~3_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~3_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~3_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~2_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~2_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\) # (GND)))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ = CARRY((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~2_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~1_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ $ (GND))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~1_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ & VCC))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~1_combout\ & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~1_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~0_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~0_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~0_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~0_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~0_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~7_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~0_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~0_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~7_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~8_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~1_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~1_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~8_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~9_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~2_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~2_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~9_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~10_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~3_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~3_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~10_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~11_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~4_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~4_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~11_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~12_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~5_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~5_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~12_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~13_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~6_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~6_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~13_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~14_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~14_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\,
	asdata => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3));

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3)) # (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3) $ (VCC)))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3),
	datad => VCC,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~14_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\ & VCC)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~14_combout\ & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~14_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~14_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~14_combout\ & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~14_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~3\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~13_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ $ (GND))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~13_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ & VCC))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~13_combout\ & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~13_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~3\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~12_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\)))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~12_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~7\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~12_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~12_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~12_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~7\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\ = ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~11_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~7\)))) # (GND)
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~11_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~7\))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~11_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~11_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~7\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~10_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~10_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\) # (GND)))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~11\ = CARRY((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~10_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~11\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~9_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~11\ $ (GND))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~9_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~11\ & VCC))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~9_combout\ & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~9_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~11\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~8_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\)))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~8_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~15\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~8_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~8_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~8_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~15\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\ = ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~7_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~15\)))) # (GND)
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~17\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~7_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~15\))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~7_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~7_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~15\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~17\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ = !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~17\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~15_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~7_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~7_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~15_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~16_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~8_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~8_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~16_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~17_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~9_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~9_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~17_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~18_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~10_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~10_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~18_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~19_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~11_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~11_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~19_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~20_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~12_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~12_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~20_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~21_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~13_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~13_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~21_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~22_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~14_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~14_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~22_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~23_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~23_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\,
	asdata => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2));

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2)) # (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2) $ (VCC)))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2),
	datad => VCC,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~23_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ & VCC)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~23_combout\ & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~23_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~23_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~23_combout\ & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~23_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~22_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ $ (GND))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~22_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ & VCC))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~22_combout\ & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~22_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~21_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\)))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~21_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~21_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~21_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~21_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\ = ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~20_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\)))) # (GND)
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~20_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~20_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~20_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~19_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~19_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\) # (GND)))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\ = CARRY((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~19_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~18_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\ $ (GND))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~18_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\ & VCC))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~18_combout\ & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~18_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~17_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\)))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~17_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~17_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~17_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~17_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\ = ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~16_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\)))) # (GND)
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~16_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~16_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~16_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~15_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\)))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~15_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~19\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~15_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~15_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~15_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~19\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ = \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~19\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~24_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~15_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~15_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~24_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~25_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~16_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~16_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~25_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~26_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~17_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~17_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~26_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~27_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~18_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~18_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~27_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~28_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~19_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~19_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~28_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~29_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~20_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~20_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~29_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~30_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~21_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~21_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~30_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~31_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~22_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~22_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~31_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~32_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~23_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~23_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~32_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~33_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~33_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\,
	asdata => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1));

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1)) # (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1) $ (VCC)))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1),
	datad => VCC,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~33_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ & VCC)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~33_combout\ & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~33_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~33_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~33_combout\ & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~33_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~32_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\ $ (GND))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~32_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\ & VCC))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~32_combout\ & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~32_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~31_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\)))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~31_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~31_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~31_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~31_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\ = ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~30_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\)))) # (GND)
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~30_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~30_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~30_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~29_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~29_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\) # (GND)))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\ = CARRY((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~29_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~28_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\ $ (GND))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~28_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\ & VCC))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~28_combout\ & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~28_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~27_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\)))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~27_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~27_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~27_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~27_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\ = ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~26_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\)))) # (GND)
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~26_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~26_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~26_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~25_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\)))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~25_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~25_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~25_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~25_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\ = ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~24_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\)))) # (GND)
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~21\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~24_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~24_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~24_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~21\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ = !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~21\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~34_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~24_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~24_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~34_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~35_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~25_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~25_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~35_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~36_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~26_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~26_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~36_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~37_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~27_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~27_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~37_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~38_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~28_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~28_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~38_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[130]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130));

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~0_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~29_combout\))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~29_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~0_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~30_combout\))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~30_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~31_combout\))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~31_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~32_combout\))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~32_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & 
-- (((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~33_combout\)))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~33_combout\,
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & 
-- (((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1))))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1),
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\);

\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~10_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~10_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~10_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0));

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0)) # (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0) $ (VCC)))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0),
	datad => VCC,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\ & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\ & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\ $ (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\ & VCC))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\ & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\)))) # (GND)
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\) # (GND)))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\ = CARRY((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~0_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\ $ (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~0_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\ & VCC))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~0_combout\ & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~0_combout\,
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~38_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\)))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~38_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~38_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~38_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~38_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\ = ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~37_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\)))) # (GND)
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~37_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~37_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~37_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~36_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\)))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~36_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~36_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~36_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~36_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\ = ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~35_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\)))) # (GND)
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~35_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~35_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~35_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~34_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\)))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~34_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\) # (GND)))))
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~23\ = CARRY((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~34_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~34_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~34_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\,
	cout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~23\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ = \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~23\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\);

\binary_digit_2[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_digit_2[0]~0_combout\ = !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \binary_digit_2[0]~0_combout\);

\binary_digit_2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \binary_digit_2[0]~0_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_2[0]~reg0_q\);

\binary_digit_2[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_digit_2[1]~1_combout\ = !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \binary_digit_2[1]~1_combout\);

\binary_digit_2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \binary_digit_2[1]~1_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_2[1]~reg0_q\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[117]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117) = (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & 
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117));

\binary_digit_2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_2[2]~reg0_q\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[104]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104) = (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & 
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104));

\binary_digit_2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_2[3]~reg0_q\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[91]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(91) = (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(91));

\binary_digit_2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(91),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_2[4]~reg0_q\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[78]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(78) = (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(78));

\binary_digit_2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(78),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_2[5]~reg0_q\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~35_combout\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~35_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~36_combout\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~36_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~34_combout\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~34_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[39]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[39]~43_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\) # 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[39]~43_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~37_combout\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~37_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~0_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\))))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\ & 
-- (((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\ & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\,
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~0_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~34_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~35_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~36_combout\ & 
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~37_combout\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~35_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~36_combout\)))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~34_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~35_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~36_combout\) # 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[130]~34_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[129]~35_combout\,
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[128]~36_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[127]~37_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\ & 
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\)))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\ & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\) # 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\,
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_combout\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~1_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~2_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~3_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~0_combout\))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[39]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[39]~43_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~0_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~3_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~44_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~44_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\ & 
-- (((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\ & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\ $ (((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\ & 
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\,
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~44_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~4_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~4_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\ & 
-- ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\ & \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\,
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~4_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\ = \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~4_combout\ $ 
-- (((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\ & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~4_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~43_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~38_combout\)) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~38_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~43_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ = CARRY(\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[139]~43_combout\,
	datad => VCC,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\ $ (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\ $ 
-- ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ = CARRY((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\ $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~1_cout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ $ 
-- (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\ & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\ & VCC))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\ & !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\,
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~3\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\ & 
-- VCC)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\ & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ = CARRY((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\ & !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\,
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~5\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~3_combout\ & ((GND) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~3_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\ $ 
-- (GND)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~3_combout\) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~3_combout\,
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~7\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\ = !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~9\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[5]~3_combout\,
	asdata => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~8_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5));

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[4]~2_combout\,
	asdata => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~6_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4));

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[3]~1_combout\,
	asdata => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~4_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_op_6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3));

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~45_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\ $ (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~2_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\,
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[140]~42_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~45_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[62]~45_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2));

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~46_combout\ = \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\ $ 
-- (((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~38_combout\)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[126]~38_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~46_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[61]~46_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1));

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage[0]~0_combout\,
	asdata => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0));

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[5]~4_combout\,
	asdata => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5));

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5) & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (VCC)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5)) # 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1) $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3) $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4) & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND)))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4) & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5) $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(5),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~2_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~3_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(4),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~3_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~4_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(3),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~4_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~5_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(2),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~5_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~6_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(1),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~6_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~7_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFStage\(0),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~7_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~8_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(5),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~8_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[4]~3_combout\,
	asdata => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4));

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4) & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (VCC)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4)) # 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~8_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~8_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\) # (GND)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~8_combout\,
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~1\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~7_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~7_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~7_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~7_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~6_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~6_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\) # (GND)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~6_combout\,
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~5_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~5_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~5_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~5_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~4_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~4_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\) # (GND)))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~4_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~4_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~4_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~9\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~3_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~3_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~3_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~3_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~11\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~2_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~2_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\) # (GND)))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~2_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~2_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~2_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~13\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~15\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~9_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~2_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[78]~2_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[7]~14_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~9_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~10_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~3_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[77]~3_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[6]~12_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~10_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~11_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~4_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[76]~4_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[5]~10_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~11_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~12_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~5_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[75]~5_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[4]~8_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~12_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~13_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~6_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[74]~6_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~13_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~14_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~7_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[73]~7_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~14_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~15_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~8_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[72]~8_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~15_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~16_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(4),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~16_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[3]~2_combout\,
	asdata => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3));

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3) & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (VCC)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3)) # 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~16_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~16_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\) # (GND)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~3\ = CARRY((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~16_combout\,
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~1\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~3\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~15_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~3\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~15_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~3\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~15_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~15_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~3\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~14_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~14_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\) # (GND)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~7\ = CARRY((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~14_combout\,
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~5\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~7\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~13_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~7\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~13_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~7\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~13_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~13_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~7\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~12_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~12_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\) # (GND)))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~11\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~12_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~12_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~12_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~9\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~11\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~11_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~11\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~11_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~11\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~11_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~11_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~11\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~10_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~10_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\) # (GND)))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~15\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~10_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~10_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~10_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~13\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~15\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~9_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~15\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~17\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~9_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~15\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~9_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~9_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~15\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~17\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ = !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~17\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~17_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~9_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[91]~9_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[8]~16_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~17_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~18_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~10_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[90]~10_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[7]~14_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~18_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~19_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~11_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[89]~11_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[6]~12_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~19_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~20_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~12_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[88]~12_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[5]~10_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~20_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~21_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~13_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[87]~13_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[4]~8_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~21_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~22_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~14_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[86]~14_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[3]~6_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~22_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~23_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~15_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[85]~15_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[2]~4_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~23_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~24_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~16_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[84]~16_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[1]~2_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~24_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~25_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(3),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[0]~0_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~25_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[2]~1_combout\,
	asdata => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2));

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2) & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (VCC)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2)) # 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~25_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~25_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\) # (GND)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\ = CARRY((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~25_combout\,
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~1\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~24_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~24_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~24_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~24_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~3\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~23_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~23_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\) # (GND)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\ = CARRY((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~23_combout\,
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~5\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~22_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~22_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~22_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~22_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~7\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~21_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~21_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\) # (GND)))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~21_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~21_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~21_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~9\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~20_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~20_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~20_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~20_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~11\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~19_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~19_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\) # (GND)))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~19_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~19_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~19_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~13\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~18_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~18_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~18_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~18_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~15\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~17_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~17_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\) # (GND)))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~19\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~17_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~17_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~17_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~17\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~19\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ = \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~19\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~26_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~17_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[104]~17_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[9]~18_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~26_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~27_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~18_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[103]~18_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[8]~16_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~27_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~28_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~19_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[102]~19_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[7]~14_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~28_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~29_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~20_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[101]~20_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[6]~12_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~29_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~30_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~21_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[100]~21_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[5]~10_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~30_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~31_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~22_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[99]~22_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[4]~8_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~31_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~32_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~23_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[98]~23_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[3]~6_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~32_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~33_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~24_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[97]~24_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[2]~4_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~33_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~34_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~25_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[96]~25_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[1]~2_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~34_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~35_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(2),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[0]~0_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~35_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[1]~0_combout\,
	asdata => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	sload => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1));

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1) & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (VCC)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1)) # 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~35_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~35_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\) # (GND)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\ = CARRY((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~35_combout\,
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~1\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~34_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~34_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~34_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~34_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~3\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~33_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~33_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\) # (GND)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\ = CARRY((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~33_combout\,
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~5\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~32_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~32_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~32_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~32_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~7\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~31_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~31_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\) # (GND)))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~31_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~31_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~31_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~9\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~30_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~30_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~30_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~30_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~11\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~29_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~29_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\) # (GND)))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~29_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~29_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~29_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~13\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~28_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~28_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~28_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~28_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~15\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~27_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\ & VCC)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~27_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\) # (GND)))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~27_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~27_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~27_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~17\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~26_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~21\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~26_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~26_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~26_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~19\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~21\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ = !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~21\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[130]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130));

\binary_digit_0[11]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_digit_0[11]~7_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~26_combout\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[10]~20_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[117]~26_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \binary_digit_0[11]~7_combout\);

\binary_digit_0[10]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_digit_0[10]~6_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~27_combout\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[9]~18_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[116]~27_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \binary_digit_0[10]~6_combout\);

\binary_digit_0[9]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_digit_0[9]~5_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~28_combout\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[8]~16_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[115]~28_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \binary_digit_0[9]~5_combout\);

\binary_digit_0[8]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_digit_0[8]~4_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~29_combout\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[7]~14_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[114]~29_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \binary_digit_0[8]~4_combout\);

\binary_digit_0[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_digit_0[7]~3_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~30_combout\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[6]~12_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[113]~30_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \binary_digit_0[7]~3_combout\);

\binary_digit_0[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_digit_0[6]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~31_combout\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[5]~10_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[112]~31_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \binary_digit_0[6]~2_combout\);

\binary_digit_0[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_digit_0[5]~1_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~32_combout\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[4]~8_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[111]~32_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \binary_digit_0[5]~1_combout\);

\binary_digit_0[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_digit_0[4]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~33_combout\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[3]~6_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[110]~33_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \binary_digit_0[4]~0_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[122]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[122]~36_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~34_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[109]~34_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[2]~4_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[122]~36_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[121]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[121]~37_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~35_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[108]~35_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[1]~2_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[121]~37_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[120]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[120]~38_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(1),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[0]~0_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[120]~38_combout\);

\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~44_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0),
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\,
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~44_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~44_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0));

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (GND))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0) & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (VCC)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0)) # 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[120]~38_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[120]~38_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\) # (GND)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\ = CARRY((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[120]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[120]~38_combout\,
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~1\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\ = ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[121]~37_combout\ $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\ = CARRY((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[121]~37_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[121]~37_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[121]~37_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~3\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[122]~36_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[122]~36_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\) # (GND)))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\ = CARRY((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[122]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[122]~36_combout\,
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~5\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\ = ((\binary_digit_0[4]~0_combout\ $ (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\ = CARRY((\binary_digit_0[4]~0_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\))) # (!\binary_digit_0[4]~0_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_digit_0[4]~0_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~7\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\ = (\binary_digit_0[5]~1_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\ & VCC)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\)))) # (!\binary_digit_0[5]~1_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\) # (GND)))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\ = CARRY((\binary_digit_0[5]~1_combout\ & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\)) # (!\binary_digit_0[5]~1_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_digit_0[5]~1_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~9\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\ = ((\binary_digit_0[6]~2_combout\ $ (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\ = CARRY((\binary_digit_0[6]~2_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\))) # (!\binary_digit_0[6]~2_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_digit_0[6]~2_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~11\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\ = (\binary_digit_0[7]~3_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\ & VCC)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\)))) # (!\binary_digit_0[7]~3_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\) # (GND)))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\ = CARRY((\binary_digit_0[7]~3_combout\ & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\)) # (!\binary_digit_0[7]~3_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_digit_0[7]~3_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~13\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\ = ((\binary_digit_0[8]~4_combout\ $ (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\ = CARRY((\binary_digit_0[8]~4_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\))) # (!\binary_digit_0[8]~4_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_digit_0[8]~4_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~15\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\ = (\binary_digit_0[9]~5_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\ & VCC)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\)))) # (!\binary_digit_0[9]~5_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\) # (GND)))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\ = CARRY((\binary_digit_0[9]~5_combout\ & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\)) # (!\binary_digit_0[9]~5_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_digit_0[9]~5_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~17\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\ = ((\binary_digit_0[10]~6_combout\ $ (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) $ 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\)))) # (GND)
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\ = CARRY((\binary_digit_0[10]~6_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\))) # (!\binary_digit_0[10]~6_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_digit_0[10]~6_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~19\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\ = (\binary_digit_0[11]~7_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\ & VCC)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\)))) # (!\binary_digit_0[11]~7_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\) # (GND)))))
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~23\ = CARRY((\binary_digit_0[11]~7_combout\ & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\)) # (!\binary_digit_0[11]~7_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_digit_0[11]~7_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datad => VCC,
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~21\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\,
	cout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~23\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ = \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~23\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\);

\binary_digit_1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_digit_1[0]~0_combout\ = !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \binary_digit_1[0]~0_combout\);

\binary_digit_1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \binary_digit_1[0]~0_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_1[0]~reg0_q\);

\binary_digit_1[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_digit_1[1]~1_combout\ = !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	combout => \binary_digit_1[1]~1_combout\);

\binary_digit_1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \binary_digit_1[1]~1_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_1[1]~reg0_q\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[117]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117) = (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & 
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117));

\binary_digit_1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_1[2]~reg0_q\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[104]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104) = (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\ & 
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_8_result_int[9]~18_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104));

\binary_digit_1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_1[3]~reg0_q\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[91]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(91) = (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(91));

\binary_digit_1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(91),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_1[4]~reg0_q\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose[78]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(78) = (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(78));

\binary_digit_1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(78),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_1[5]~reg0_q\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFQuotient[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFQuotient[6]~0_combout\ = !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_6~10_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFQuotient[6]~0_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFQuotient[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFQuotient[6]~0_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFQuotient\(6));

\binary_digit_1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFQuotient\(6),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_1[6]~reg0_q\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFQuotient[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_5~3_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFQuotient\(7));

\binary_digit_1[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFQuotient\(7),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_1[7]~reg0_q\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\ & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\) # (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[143]~41_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[142]~39_combout\,
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[141]~40_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFQuotient[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|op_4~0_combout\,
	clrn => \ALT_INV_rst_i~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFQuotient\(8));

\binary_digit_1[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFQuotient\(8),
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_1[8]~reg0_q\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFNumerator\(0),
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[0]~0_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\);

\binary_digit_0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_0[0]~reg0_q\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[120]~38_combout\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[120]~38_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[1]~2_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\);

\binary_digit_0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_0[1]~reg0_q\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[121]~37_combout\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[121]~37_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[2]~4_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\);

\binary_digit_0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_0[2]~reg0_q\);

\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[122]~36_combout\)) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[122]~36_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[3]~6_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\);

\binary_digit_0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_0[3]~reg0_q\);

\binary_digit_0[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \binary_digit_0[4]~0_combout\,
	asdata => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[4]~8_combout\,
	sload => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_0[4]~reg0_q\);

\binary_digit_0[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \binary_digit_0[5]~1_combout\,
	asdata => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[5]~10_combout\,
	sload => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_0[5]~reg0_q\);

\binary_digit_0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \binary_digit_0[6]~2_combout\,
	asdata => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[6]~12_combout\,
	sload => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_0[6]~reg0_q\);

\binary_digit_0[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \binary_digit_0[7]~3_combout\,
	asdata => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[7]~14_combout\,
	sload => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_0[7]~reg0_q\);

\binary_digit_0[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \binary_digit_0[8]~4_combout\,
	asdata => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[8]~16_combout\,
	sload => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_0[8]~reg0_q\);

\binary_digit_0[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \binary_digit_0[9]~5_combout\,
	asdata => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[9]~18_combout\,
	sload => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_0[9]~reg0_q\);

\binary_digit_0[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \binary_digit_0[10]~6_combout\,
	asdata => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[10]~20_combout\,
	sload => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_0[10]~reg0_q\);

\binary_digit_0[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \binary_digit_0[11]~7_combout\,
	asdata => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[11]~22_combout\,
	sload => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|ALT_INV_add_sub_11_result_int[12]~24_combout\,
	ena => \binary_digit_0[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_digit_0[11]~reg0_q\);

\BCD_to_7_seg_Digit_3|Mux6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_3|Mux6~8_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ $ (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datac => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \BCD_to_7_seg_Digit_3|Mux6~8_combout\);

\BCD_to_7_seg_Digit_3|seven_seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_3|Mux6~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_3|seven_seg\(0));

\BCD_to_7_seg_Digit_3|Mux5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_3|Mux5~8_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ $ (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datac => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \BCD_to_7_seg_Digit_3|Mux5~8_combout\);

\BCD_to_7_seg_Digit_3|seven_seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_3|Mux5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_3|seven_seg\(1));

\BCD_to_7_seg_Digit_3|Mux4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_3|Mux4~8_combout\ = (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datac => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \BCD_to_7_seg_Digit_3|Mux4~8_combout\);

\BCD_to_7_seg_Digit_3|seven_seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_3|Mux4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_3|seven_seg\(2));

\BCD_to_7_seg_Digit_3|Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_3|Mux3~8_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ $ 
-- (((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- ((!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datac => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \BCD_to_7_seg_Digit_3|Mux3~8_combout\);

\BCD_to_7_seg_Digit_3|seven_seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_3|Mux3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_3|seven_seg\(3));

\BCD_to_7_seg_Digit_3|Mux2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_3|Mux2~9_combout\ = ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\))) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datac => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \BCD_to_7_seg_Digit_3|Mux2~9_combout\);

\BCD_to_7_seg_Digit_3|seven_seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_3|Mux2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_3|seven_seg\(4));

\BCD_to_7_seg_Digit_3|Mux1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_3|Mux1~8_combout\ = (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0))))) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & (((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0) & 
-- \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\)) # (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datac => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \BCD_to_7_seg_Digit_3|Mux1~8_combout\);

\BCD_to_7_seg_Digit_3|seven_seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_3|Mux1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_3|seven_seg\(5));

\BCD_to_7_seg_Digit_3|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_3|Mux0~8_combout\ = ((\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\)) # 
-- (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\ & (!\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\ & 
-- !\lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|DFFDenominator\(0),
	datab => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_9_result_int[10]~20_combout\,
	datac => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_10_result_int[11]~22_combout\,
	datad => \lpm_digit_3|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	combout => \BCD_to_7_seg_Digit_3|Mux0~8_combout\);

\BCD_to_7_seg_Digit_3|seven_seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_3|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_3|seven_seg\(6));

\BCD_to_7_seg_Digit_2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_2|Mux6~0_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104) & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ $ (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	combout => \BCD_to_7_seg_Digit_2|Mux6~0_combout\);

\BCD_to_7_seg_Digit_2|seven_seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_2|seven_seg\(0));

\BCD_to_7_seg_Digit_2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_2|Mux5~0_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117) & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104)) # 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ $ (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130))))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117) & (((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	combout => \BCD_to_7_seg_Digit_2|Mux5~0_combout\);

\BCD_to_7_seg_Digit_2|seven_seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_2|seven_seg\(1));

\BCD_to_7_seg_Digit_2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_2|Mux4~0_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117) & (((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104))))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117) & (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\) # (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	combout => \BCD_to_7_seg_Digit_2|Mux4~0_combout\);

\BCD_to_7_seg_Digit_2|seven_seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_2|seven_seg\(2));

\BCD_to_7_seg_Digit_2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_2|Mux3~0_combout\ = (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104) & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) $ 
-- (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	combout => \BCD_to_7_seg_Digit_2|Mux3~0_combout\);

\BCD_to_7_seg_Digit_2|seven_seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_2|seven_seg\(3));

\BCD_to_7_seg_Digit_2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_2|Mux2~0_combout\ = (\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117) & 
-- ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104)))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\)))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	combout => \BCD_to_7_seg_Digit_2|Mux2~0_combout\);

\BCD_to_7_seg_Digit_2|seven_seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_2|seven_seg\(4));

\BCD_to_7_seg_Digit_2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_2|Mux1~0_combout\ = (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104) & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & !\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117))) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117)) # 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	combout => \BCD_to_7_seg_Digit_2|Mux1~0_combout\);

\BCD_to_7_seg_Digit_2|seven_seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_2|seven_seg\(5));

\BCD_to_7_seg_Digit_2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_2|Mux0~0_combout\ = (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104) & ((\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117)))) # (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (!\lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	datac => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	datad => \lpm_digit_2|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	combout => \BCD_to_7_seg_Digit_2|Mux0~0_combout\);

\BCD_to_7_seg_Digit_2|seven_seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_2|seven_seg\(6));

\BCD_to_7_seg_Digit_1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_1|Mux6~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104) & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	combout => \BCD_to_7_seg_Digit_1|Mux6~0_combout\);

\BCD_to_7_seg_Digit_1|seven_seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_1|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_1|seven_seg\(0));

\BCD_to_7_seg_Digit_1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_1|Mux5~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117) & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104)) # 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ $ (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117) & (((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	combout => \BCD_to_7_seg_Digit_1|Mux5~0_combout\);

\BCD_to_7_seg_Digit_1|seven_seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_1|seven_seg\(1));

\BCD_to_7_seg_Digit_1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_1|Mux4~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117) & (((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104))))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117) & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\) # (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	combout => \BCD_to_7_seg_Digit_1|Mux4~0_combout\);

\BCD_to_7_seg_Digit_1|seven_seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_1|seven_seg\(2));

\BCD_to_7_seg_Digit_1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_1|Mux3~0_combout\ = (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104) & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) $ 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	combout => \BCD_to_7_seg_Digit_1|Mux3~0_combout\);

\BCD_to_7_seg_Digit_1|seven_seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_1|seven_seg\(3));

\BCD_to_7_seg_Digit_1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_1|Mux2~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117) & 
-- ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104)))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\)))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	combout => \BCD_to_7_seg_Digit_1|Mux2~0_combout\);

\BCD_to_7_seg_Digit_1|seven_seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_1|seven_seg\(4));

\BCD_to_7_seg_Digit_1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_1|Mux1~0_combout\ = (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104) & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	combout => \BCD_to_7_seg_Digit_1|Mux1~0_combout\);

\BCD_to_7_seg_Digit_1|seven_seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_1|seven_seg\(5));

\BCD_to_7_seg_Digit_1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_1|Mux0~0_combout\ = (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104) & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117)))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130) & 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\ & \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_11_result_int[12]~24_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(130),
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(117),
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|selnose\(104),
	combout => \BCD_to_7_seg_Digit_1|Mux0~0_combout\);

\BCD_to_7_seg_Digit_1|seven_seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_1|seven_seg\(6));

\BCD_to_7_seg_Digit_0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_0|Mux6~0_combout\ = (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\ & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\ & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\ $ (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\,
	combout => \BCD_to_7_seg_Digit_0|Mux6~0_combout\);

\BCD_to_7_seg_Digit_0|seven_seg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_0|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_0|seven_seg\(0));

\BCD_to_7_seg_Digit_0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_0|Mux5~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\) # 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\ $ (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\ & (((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\ & 
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\,
	combout => \BCD_to_7_seg_Digit_0|Mux5~0_combout\);

\BCD_to_7_seg_Digit_0|seven_seg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_0|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_0|seven_seg\(1));

\BCD_to_7_seg_Digit_0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_0|Mux4~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\ & (((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\)))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\,
	combout => \BCD_to_7_seg_Digit_0|Mux4~0_combout\);

\BCD_to_7_seg_Digit_0|seven_seg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_0|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_0|seven_seg\(2));

\BCD_to_7_seg_Digit_0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_0|Mux3~0_combout\ = (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\ & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\ $ (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\ & (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\ & 
-- \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\,
	combout => \BCD_to_7_seg_Digit_0|Mux3~0_combout\);

\BCD_to_7_seg_Digit_0|seven_seg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_0|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_0|seven_seg\(3));

\BCD_to_7_seg_Digit_0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_0|Mux2~0_combout\ = (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\ & 
-- ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\)))) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\,
	combout => \BCD_to_7_seg_Digit_0|Mux2~0_combout\);

\BCD_to_7_seg_Digit_0|seven_seg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_0|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_0|seven_seg\(4));

\BCD_to_7_seg_Digit_0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_0|Mux1~0_combout\ = (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\ & 
-- ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\) # (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\))) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\ & (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\ & 
-- !\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\,
	combout => \BCD_to_7_seg_Digit_0|Mux1~0_combout\);

\BCD_to_7_seg_Digit_0|seven_seg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_0|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_0|seven_seg\(5));

\BCD_to_7_seg_Digit_0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \BCD_to_7_seg_Digit_0|Mux0~0_combout\ = (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\ & ((\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\ & 
-- (\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\ & \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\)) # 
-- (!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\ & ((!\lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[132]~39_combout\,
	datab => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[133]~40_combout\,
	datac => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[134]~41_combout\,
	datad => \lpm_digit_1_0|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[135]~42_combout\,
	combout => \BCD_to_7_seg_Digit_0|Mux0~0_combout\);

\BCD_to_7_seg_Digit_0|seven_seg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~input_o\,
	d => \BCD_to_7_seg_Digit_0|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_to_7_seg_Digit_0|seven_seg\(6));

ww_ascii_sign_digit(0) <= \ascii_sign_digit[0]~output_o\;

ww_ascii_sign_digit(1) <= \ascii_sign_digit[1]~output_o\;

ww_ascii_sign_digit(2) <= \ascii_sign_digit[2]~output_o\;

ww_ascii_sign_digit(3) <= \ascii_sign_digit[3]~output_o\;

ww_ascii_sign_digit(4) <= \ascii_sign_digit[4]~output_o\;

ww_ascii_sign_digit(5) <= \ascii_sign_digit[5]~output_o\;

ww_ascii_sign_digit(6) <= \ascii_sign_digit[6]~output_o\;

ww_ascii_sign_digit(7) <= \ascii_sign_digit[7]~output_o\;

ww_binary_digit_3(0) <= \binary_digit_3[0]~output_o\;

ww_binary_digit_3(1) <= \binary_digit_3[1]~output_o\;

ww_binary_digit_3(2) <= \binary_digit_3[2]~output_o\;

ww_binary_digit_3(3) <= \binary_digit_3[3]~output_o\;

ww_binary_digit_3(4) <= \binary_digit_3[4]~output_o\;

ww_binary_digit_3(5) <= \binary_digit_3[5]~output_o\;

ww_binary_digit_3(6) <= \binary_digit_3[6]~output_o\;

ww_binary_digit_3(7) <= \binary_digit_3[7]~output_o\;

ww_binary_digit_3(8) <= \binary_digit_3[8]~output_o\;

ww_binary_digit_3(9) <= \binary_digit_3[9]~output_o\;

ww_binary_digit_3(10) <= \binary_digit_3[10]~output_o\;

ww_binary_digit_3(11) <= \binary_digit_3[11]~output_o\;

ww_binary_digit_2(0) <= \binary_digit_2[0]~output_o\;

ww_binary_digit_2(1) <= \binary_digit_2[1]~output_o\;

ww_binary_digit_2(2) <= \binary_digit_2[2]~output_o\;

ww_binary_digit_2(3) <= \binary_digit_2[3]~output_o\;

ww_binary_digit_2(4) <= \binary_digit_2[4]~output_o\;

ww_binary_digit_2(5) <= \binary_digit_2[5]~output_o\;

ww_binary_digit_2(6) <= \binary_digit_2[6]~output_o\;

ww_binary_digit_2(7) <= \binary_digit_2[7]~output_o\;

ww_binary_digit_2(8) <= \binary_digit_2[8]~output_o\;

ww_binary_digit_2(9) <= \binary_digit_2[9]~output_o\;

ww_binary_digit_2(10) <= \binary_digit_2[10]~output_o\;

ww_binary_digit_2(11) <= \binary_digit_2[11]~output_o\;

ww_binary_digit_1(0) <= \binary_digit_1[0]~output_o\;

ww_binary_digit_1(1) <= \binary_digit_1[1]~output_o\;

ww_binary_digit_1(2) <= \binary_digit_1[2]~output_o\;

ww_binary_digit_1(3) <= \binary_digit_1[3]~output_o\;

ww_binary_digit_1(4) <= \binary_digit_1[4]~output_o\;

ww_binary_digit_1(5) <= \binary_digit_1[5]~output_o\;

ww_binary_digit_1(6) <= \binary_digit_1[6]~output_o\;

ww_binary_digit_1(7) <= \binary_digit_1[7]~output_o\;

ww_binary_digit_1(8) <= \binary_digit_1[8]~output_o\;

ww_binary_digit_1(9) <= \binary_digit_1[9]~output_o\;

ww_binary_digit_1(10) <= \binary_digit_1[10]~output_o\;

ww_binary_digit_1(11) <= \binary_digit_1[11]~output_o\;

ww_binary_digit_0(0) <= \binary_digit_0[0]~output_o\;

ww_binary_digit_0(1) <= \binary_digit_0[1]~output_o\;

ww_binary_digit_0(2) <= \binary_digit_0[2]~output_o\;

ww_binary_digit_0(3) <= \binary_digit_0[3]~output_o\;

ww_binary_digit_0(4) <= \binary_digit_0[4]~output_o\;

ww_binary_digit_0(5) <= \binary_digit_0[5]~output_o\;

ww_binary_digit_0(6) <= \binary_digit_0[6]~output_o\;

ww_binary_digit_0(7) <= \binary_digit_0[7]~output_o\;

ww_binary_digit_0(8) <= \binary_digit_0[8]~output_o\;

ww_binary_digit_0(9) <= \binary_digit_0[9]~output_o\;

ww_binary_digit_0(10) <= \binary_digit_0[10]~output_o\;

ww_binary_digit_0(11) <= \binary_digit_0[11]~output_o\;

ww_seven_seg_digit_3(0) <= \seven_seg_digit_3[0]~output_o\;

ww_seven_seg_digit_3(1) <= \seven_seg_digit_3[1]~output_o\;

ww_seven_seg_digit_3(2) <= \seven_seg_digit_3[2]~output_o\;

ww_seven_seg_digit_3(3) <= \seven_seg_digit_3[3]~output_o\;

ww_seven_seg_digit_3(4) <= \seven_seg_digit_3[4]~output_o\;

ww_seven_seg_digit_3(5) <= \seven_seg_digit_3[5]~output_o\;

ww_seven_seg_digit_3(6) <= \seven_seg_digit_3[6]~output_o\;

ww_seven_seg_digit_2(0) <= \seven_seg_digit_2[0]~output_o\;

ww_seven_seg_digit_2(1) <= \seven_seg_digit_2[1]~output_o\;

ww_seven_seg_digit_2(2) <= \seven_seg_digit_2[2]~output_o\;

ww_seven_seg_digit_2(3) <= \seven_seg_digit_2[3]~output_o\;

ww_seven_seg_digit_2(4) <= \seven_seg_digit_2[4]~output_o\;

ww_seven_seg_digit_2(5) <= \seven_seg_digit_2[5]~output_o\;

ww_seven_seg_digit_2(6) <= \seven_seg_digit_2[6]~output_o\;

ww_seven_seg_digit_1(0) <= \seven_seg_digit_1[0]~output_o\;

ww_seven_seg_digit_1(1) <= \seven_seg_digit_1[1]~output_o\;

ww_seven_seg_digit_1(2) <= \seven_seg_digit_1[2]~output_o\;

ww_seven_seg_digit_1(3) <= \seven_seg_digit_1[3]~output_o\;

ww_seven_seg_digit_1(4) <= \seven_seg_digit_1[4]~output_o\;

ww_seven_seg_digit_1(5) <= \seven_seg_digit_1[5]~output_o\;

ww_seven_seg_digit_1(6) <= \seven_seg_digit_1[6]~output_o\;

ww_seven_seg_digit_0(0) <= \seven_seg_digit_0[0]~output_o\;

ww_seven_seg_digit_0(1) <= \seven_seg_digit_0[1]~output_o\;

ww_seven_seg_digit_0(2) <= \seven_seg_digit_0[2]~output_o\;

ww_seven_seg_digit_0(3) <= \seven_seg_digit_0[3]~output_o\;

ww_seven_seg_digit_0(4) <= \seven_seg_digit_0[4]~output_o\;

ww_seven_seg_digit_0(5) <= \seven_seg_digit_0[5]~output_o\;

ww_seven_seg_digit_0(6) <= \seven_seg_digit_0[6]~output_o\;
END structure;


