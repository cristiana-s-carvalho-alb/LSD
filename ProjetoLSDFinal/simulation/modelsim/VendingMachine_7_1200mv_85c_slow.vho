-- Copyright (C) 1991-2014 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.4 Build 182 03/12/2014 SJ Web Edition"

-- DATE "05/27/2015 19:13:55"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VendingMachine IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LCD_DATA : INOUT std_logic_vector(7 DOWNTO 0);
	LCD_RW : OUT std_logic;
	LCD_RS : OUT std_logic;
	LCD_EN : OUT std_logic;
	LCD_ON : OUT std_logic;
	LEDR : OUT std_logic_vector(3 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END VendingMachine;

-- Design Ports Information
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VendingMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk2|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk1|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \LCD_DATA[0]~input_o\ : std_logic;
SIGNAL \LCD_DATA[1]~input_o\ : std_logic;
SIGNAL \LCD_DATA[2]~input_o\ : std_logic;
SIGNAL \LCD_DATA[3]~input_o\ : std_logic;
SIGNAL \LCD_DATA[4]~input_o\ : std_logic;
SIGNAL \LCD_DATA[5]~input_o\ : std_logic;
SIGNAL \LCD_DATA[6]~input_o\ : std_logic;
SIGNAL \LCD_DATA[0]~output_o\ : std_logic;
SIGNAL \LCD_DATA[1]~output_o\ : std_logic;
SIGNAL \LCD_DATA[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[3]~output_o\ : std_logic;
SIGNAL \LCD_DATA[4]~output_o\ : std_logic;
SIGNAL \LCD_DATA[5]~output_o\ : std_logic;
SIGNAL \LCD_DATA[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[7]~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk1|Add0~0_combout\ : std_logic;
SIGNAL \clk1|Add0~1\ : std_logic;
SIGNAL \clk1|Add0~2_combout\ : std_logic;
SIGNAL \clk1|Add0~7\ : std_logic;
SIGNAL \clk1|Add0~8_combout\ : std_logic;
SIGNAL \clk1|Add0~15\ : std_logic;
SIGNAL \clk1|Add0~16_combout\ : std_logic;
SIGNAL \clk1|Add0~17\ : std_logic;
SIGNAL \clk1|Add0~18_combout\ : std_logic;
SIGNAL \clk1|Add0~19\ : std_logic;
SIGNAL \clk1|Add0~20_combout\ : std_logic;
SIGNAL \clk1|Add0~21\ : std_logic;
SIGNAL \clk1|Add0~22_combout\ : std_logic;
SIGNAL \clk1|Add0~23\ : std_logic;
SIGNAL \clk1|Add0~24_combout\ : std_logic;
SIGNAL \clk1|Add0~25\ : std_logic;
SIGNAL \clk1|Add0~26_combout\ : std_logic;
SIGNAL \clk1|Add0~27\ : std_logic;
SIGNAL \clk1|Add0~28_combout\ : std_logic;
SIGNAL \clk1|Add0~29\ : std_logic;
SIGNAL \clk1|Add0~30_combout\ : std_logic;
SIGNAL \clk1|Add0~31\ : std_logic;
SIGNAL \clk1|Add0~32_combout\ : std_logic;
SIGNAL \clk1|Add0~33\ : std_logic;
SIGNAL \clk1|Add0~34_combout\ : std_logic;
SIGNAL \clk1|Add0~35\ : std_logic;
SIGNAL \clk1|Add0~36_combout\ : std_logic;
SIGNAL \clk1|Add0~37\ : std_logic;
SIGNAL \clk1|Add0~38_combout\ : std_logic;
SIGNAL \clk1|Add0~39\ : std_logic;
SIGNAL \clk1|Add0~40_combout\ : std_logic;
SIGNAL \clk1|Add0~41\ : std_logic;
SIGNAL \clk1|Add0~42_combout\ : std_logic;
SIGNAL \clk1|Add0~43\ : std_logic;
SIGNAL \clk1|Add0~44_combout\ : std_logic;
SIGNAL \clk1|Equal0~5_combout\ : std_logic;
SIGNAL \clk1|Add0~45\ : std_logic;
SIGNAL \clk1|Add0~46_combout\ : std_logic;
SIGNAL \clk1|Add0~47\ : std_logic;
SIGNAL \clk1|Add0~48_combout\ : std_logic;
SIGNAL \clk1|Add0~49\ : std_logic;
SIGNAL \clk1|Add0~50_combout\ : std_logic;
SIGNAL \clk1|Add0~51\ : std_logic;
SIGNAL \clk1|Add0~52_combout\ : std_logic;
SIGNAL \clk1|Add0~53\ : std_logic;
SIGNAL \clk1|Add0~54_combout\ : std_logic;
SIGNAL \clk1|Add0~55\ : std_logic;
SIGNAL \clk1|Add0~56_combout\ : std_logic;
SIGNAL \clk1|Add0~57\ : std_logic;
SIGNAL \clk1|Add0~58_combout\ : std_logic;
SIGNAL \clk1|Equal0~11_combout\ : std_logic;
SIGNAL \clk1|Add0~59\ : std_logic;
SIGNAL \clk1|Add0~60_combout\ : std_logic;
SIGNAL \clk1|Equal0~6_combout\ : std_logic;
SIGNAL \clk1|Add0~61\ : std_logic;
SIGNAL \clk1|Add0~62_combout\ : std_logic;
SIGNAL \clk1|Equal0~12_combout\ : std_logic;
SIGNAL \clk1|s_divCounter~2_combout\ : std_logic;
SIGNAL \clk1|Add0~9\ : std_logic;
SIGNAL \clk1|Add0~10_combout\ : std_logic;
SIGNAL \clk1|Equal0~10_combout\ : std_logic;
SIGNAL \clk1|s_divCounter~1_combout\ : std_logic;
SIGNAL \clk1|Add0~11\ : std_logic;
SIGNAL \clk1|Add0~12_combout\ : std_logic;
SIGNAL \clk1|Add0~13\ : std_logic;
SIGNAL \clk1|Add0~14_combout\ : std_logic;
SIGNAL \clk1|Equal0~1_combout\ : std_logic;
SIGNAL \clk1|Equal0~0_combout\ : std_logic;
SIGNAL \clk1|Equal0~2_combout\ : std_logic;
SIGNAL \clk1|Equal0~3_combout\ : std_logic;
SIGNAL \clk1|Equal0~4_combout\ : std_logic;
SIGNAL \clk1|s_divCounter~0_combout\ : std_logic;
SIGNAL \clk1|Add0~3\ : std_logic;
SIGNAL \clk1|Add0~4_combout\ : std_logic;
SIGNAL \clk1|Add0~5\ : std_logic;
SIGNAL \clk1|Add0~6_combout\ : std_logic;
SIGNAL \clk1|clkOut~0_combout\ : std_logic;
SIGNAL \clk1|Equal0~8_combout\ : std_logic;
SIGNAL \clk1|Equal0~7_combout\ : std_logic;
SIGNAL \clk1|Equal0~9_combout\ : std_logic;
SIGNAL \clk1|clkOut~1_combout\ : std_logic;
SIGNAL \clk1|clkOut~feeder_combout\ : std_logic;
SIGNAL \clk1|clkOut~q\ : std_logic;
SIGNAL \clk1|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \auxiliaryMachine_reset|Selector0~0_combout\ : std_logic;
SIGNAL \auxiliaryMachine_reset|s_currentState.E0~q\ : std_logic;
SIGNAL \auxiliaryMachine_reset|s_nextState.E1~0_combout\ : std_logic;
SIGNAL \auxiliaryMachine_reset|s_currentState.E1~q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \system_core|romOut~0_combout\ : std_logic;
SIGNAL \system_core|romOut~1_combout\ : std_logic;
SIGNAL \system_core|romOut~q\ : std_logic;
SIGNAL \clk2|Add0~1\ : std_logic;
SIGNAL \clk2|Add0~2_combout\ : std_logic;
SIGNAL \clk2|Add0~3\ : std_logic;
SIGNAL \clk2|Add0~4_combout\ : std_logic;
SIGNAL \clk2|Add0~5\ : std_logic;
SIGNAL \clk2|Add0~6_combout\ : std_logic;
SIGNAL \clk2|Add0~13\ : std_logic;
SIGNAL \clk2|Add0~14_combout\ : std_logic;
SIGNAL \clk2|Equal0~8_combout\ : std_logic;
SIGNAL \clk2|Add0~61\ : std_logic;
SIGNAL \clk2|Add0~62_combout\ : std_logic;
SIGNAL \clk2|Equal0~7_combout\ : std_logic;
SIGNAL \clk2|Equal0~4_combout\ : std_logic;
SIGNAL \clk2|Equal0~2_combout\ : std_logic;
SIGNAL \clk2|Equal0~3_combout\ : std_logic;
SIGNAL \clk2|Equal0~5_combout\ : std_logic;
SIGNAL \clk2|Equal0~6_combout\ : std_logic;
SIGNAL \clk2|s_divCounter~1_combout\ : std_logic;
SIGNAL \clk2|s_divCounter~3_combout\ : std_logic;
SIGNAL \clk2|Add0~15\ : std_logic;
SIGNAL \clk2|Add0~16_combout\ : std_logic;
SIGNAL \clk2|s_divCounter~2_combout\ : std_logic;
SIGNAL \clk2|Add0~17\ : std_logic;
SIGNAL \clk2|Add0~18_combout\ : std_logic;
SIGNAL \clk2|s_divCounter~0_combout\ : std_logic;
SIGNAL \clk2|Add0~19\ : std_logic;
SIGNAL \clk2|Add0~20_combout\ : std_logic;
SIGNAL \clk2|Add0~21\ : std_logic;
SIGNAL \clk2|Add0~22_combout\ : std_logic;
SIGNAL \clk2|Add0~23\ : std_logic;
SIGNAL \clk2|Add0~24_combout\ : std_logic;
SIGNAL \clk2|s_divCounter~5_combout\ : std_logic;
SIGNAL \clk2|Add0~25\ : std_logic;
SIGNAL \clk2|Add0~26_combout\ : std_logic;
SIGNAL \clk2|Add0~27\ : std_logic;
SIGNAL \clk2|Add0~28_combout\ : std_logic;
SIGNAL \clk2|Add0~29\ : std_logic;
SIGNAL \clk2|Add0~30_combout\ : std_logic;
SIGNAL \clk2|Add0~31\ : std_logic;
SIGNAL \clk2|Add0~32_combout\ : std_logic;
SIGNAL \clk2|Add0~33\ : std_logic;
SIGNAL \clk2|Add0~34_combout\ : std_logic;
SIGNAL \clk2|Add0~35\ : std_logic;
SIGNAL \clk2|Add0~36_combout\ : std_logic;
SIGNAL \clk2|Add0~37\ : std_logic;
SIGNAL \clk2|Add0~38_combout\ : std_logic;
SIGNAL \clk2|Add0~39\ : std_logic;
SIGNAL \clk2|Add0~40_combout\ : std_logic;
SIGNAL \clk2|Add0~41\ : std_logic;
SIGNAL \clk2|Add0~42_combout\ : std_logic;
SIGNAL \clk2|Add0~43\ : std_logic;
SIGNAL \clk2|Add0~44_combout\ : std_logic;
SIGNAL \clk2|Add0~45\ : std_logic;
SIGNAL \clk2|Add0~46_combout\ : std_logic;
SIGNAL \clk2|Add0~47\ : std_logic;
SIGNAL \clk2|Add0~48_combout\ : std_logic;
SIGNAL \clk2|Add0~49\ : std_logic;
SIGNAL \clk2|Add0~50_combout\ : std_logic;
SIGNAL \clk2|Add0~51\ : std_logic;
SIGNAL \clk2|Add0~52_combout\ : std_logic;
SIGNAL \clk2|Add0~53\ : std_logic;
SIGNAL \clk2|Add0~54_combout\ : std_logic;
SIGNAL \clk2|Add0~55\ : std_logic;
SIGNAL \clk2|Add0~56_combout\ : std_logic;
SIGNAL \clk2|Add0~57\ : std_logic;
SIGNAL \clk2|Add0~58_combout\ : std_logic;
SIGNAL \clk2|Add0~59\ : std_logic;
SIGNAL \clk2|Add0~60_combout\ : std_logic;
SIGNAL \clk2|Equal0~9_combout\ : std_logic;
SIGNAL \clk2|Equal0~10_combout\ : std_logic;
SIGNAL \clk2|Equal0~11_combout\ : std_logic;
SIGNAL \clk2|Equal0~12_combout\ : std_logic;
SIGNAL \clk2|s_divCounter~4_combout\ : std_logic;
SIGNAL \clk2|Add0~7\ : std_logic;
SIGNAL \clk2|Add0~8_combout\ : std_logic;
SIGNAL \clk2|Add0~9\ : std_logic;
SIGNAL \clk2|Add0~10_combout\ : std_logic;
SIGNAL \clk2|Add0~11\ : std_logic;
SIGNAL \clk2|Add0~12_combout\ : std_logic;
SIGNAL \clk2|Add0~0_combout\ : std_logic;
SIGNAL \clk2|Equal0~0_combout\ : std_logic;
SIGNAL \clk2|Equal0~1_combout\ : std_logic;
SIGNAL \clk2|clkOut~0_combout\ : std_logic;
SIGNAL \clk2|clkOut~1_combout\ : std_logic;
SIGNAL \clk2|clkOut~2_combout\ : std_logic;
SIGNAL \clk2|clkOut~3_combout\ : std_logic;
SIGNAL \clk2|clkOut~feeder_combout\ : std_logic;
SIGNAL \clk2|clkOut~q\ : std_logic;
SIGNAL \clk2|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \sp2|s_shifter[0]~feeder_combout\ : std_logic;
SIGNAL \sp2|s_shifter~98_combout\ : std_logic;
SIGNAL \sp2|s_shifter~97_combout\ : std_logic;
SIGNAL \sp2|s_shifter~96_combout\ : std_logic;
SIGNAL \sp2|s_shifter~95_combout\ : std_logic;
SIGNAL \sp2|s_shifter~94_combout\ : std_logic;
SIGNAL \sp2|s_shifter~93_combout\ : std_logic;
SIGNAL \sp2|s_shifter~92_combout\ : std_logic;
SIGNAL \sp2|s_shifter~91_combout\ : std_logic;
SIGNAL \sp2|s_shifter~90_combout\ : std_logic;
SIGNAL \sp2|s_shifter~89_combout\ : std_logic;
SIGNAL \sp2|s_shifter~88_combout\ : std_logic;
SIGNAL \sp2|s_shifter~87_combout\ : std_logic;
SIGNAL \sp2|s_shifter~86_combout\ : std_logic;
SIGNAL \sp2|s_shifter~85_combout\ : std_logic;
SIGNAL \sp2|s_shifter~84_combout\ : std_logic;
SIGNAL \sp2|s_shifter~83_combout\ : std_logic;
SIGNAL \sp2|s_shifter~82_combout\ : std_logic;
SIGNAL \sp2|s_shifter~81_combout\ : std_logic;
SIGNAL \sp2|s_shifter~80_combout\ : std_logic;
SIGNAL \sp2|s_shifter~79_combout\ : std_logic;
SIGNAL \sp2|s_shifter~78_combout\ : std_logic;
SIGNAL \sp2|s_shifter~77_combout\ : std_logic;
SIGNAL \sp2|s_shifter~76_combout\ : std_logic;
SIGNAL \sp2|s_shifter~75_combout\ : std_logic;
SIGNAL \sp2|s_shifter~74_combout\ : std_logic;
SIGNAL \sp2|s_shifter~73_combout\ : std_logic;
SIGNAL \sp2|s_shifter~72_combout\ : std_logic;
SIGNAL \sp2|s_shifter~71_combout\ : std_logic;
SIGNAL \sp2|s_shifter~70_combout\ : std_logic;
SIGNAL \sp2|s_shifter~69_combout\ : std_logic;
SIGNAL \sp2|s_shifter~68_combout\ : std_logic;
SIGNAL \sp2|s_shifter~67_combout\ : std_logic;
SIGNAL \sp2|s_shifter~66_combout\ : std_logic;
SIGNAL \sp2|s_shifter~65_combout\ : std_logic;
SIGNAL \sp2|s_shifter~64_combout\ : std_logic;
SIGNAL \sp2|s_shifter~63_combout\ : std_logic;
SIGNAL \sp2|s_shifter~62_combout\ : std_logic;
SIGNAL \sp2|s_shifter~61_combout\ : std_logic;
SIGNAL \sp2|s_shifter~60_combout\ : std_logic;
SIGNAL \sp2|s_shifter~59_combout\ : std_logic;
SIGNAL \sp2|s_shifter~58_combout\ : std_logic;
SIGNAL \sp2|s_shifter~57_combout\ : std_logic;
SIGNAL \sp2|s_shifter~56_combout\ : std_logic;
SIGNAL \sp2|s_shifter~55_combout\ : std_logic;
SIGNAL \sp2|s_shifter~54_combout\ : std_logic;
SIGNAL \sp2|s_shifter~53_combout\ : std_logic;
SIGNAL \sp2|s_shifter~52_combout\ : std_logic;
SIGNAL \sp2|s_shifter~51_combout\ : std_logic;
SIGNAL \sp2|s_shifter~50_combout\ : std_logic;
SIGNAL \sp2|s_shifter~49_combout\ : std_logic;
SIGNAL \sp2|s_shifter~48_combout\ : std_logic;
SIGNAL \sp2|s_shifter~47_combout\ : std_logic;
SIGNAL \sp2|s_shifter~46_combout\ : std_logic;
SIGNAL \sp2|s_shifter~45_combout\ : std_logic;
SIGNAL \sp2|s_shifter~44_combout\ : std_logic;
SIGNAL \sp2|s_shifter~43_combout\ : std_logic;
SIGNAL \sp2|s_shifter~42_combout\ : std_logic;
SIGNAL \sp2|s_shifter~41_combout\ : std_logic;
SIGNAL \sp2|s_shifter~40_combout\ : std_logic;
SIGNAL \sp2|s_shifter~39_combout\ : std_logic;
SIGNAL \sp2|s_shifter~38_combout\ : std_logic;
SIGNAL \sp2|s_shifter~37_combout\ : std_logic;
SIGNAL \sp2|s_shifter~36_combout\ : std_logic;
SIGNAL \sp2|s_shifter~35_combout\ : std_logic;
SIGNAL \sp2|s_shifter~34_combout\ : std_logic;
SIGNAL \sp2|s_shifter~33_combout\ : std_logic;
SIGNAL \sp2|s_shifter~32_combout\ : std_logic;
SIGNAL \sp2|s_shifter~31_combout\ : std_logic;
SIGNAL \sp2|s_shifter~30_combout\ : std_logic;
SIGNAL \sp2|s_shifter~29_combout\ : std_logic;
SIGNAL \sp2|s_shifter~28_combout\ : std_logic;
SIGNAL \sp2|s_shifter~27_combout\ : std_logic;
SIGNAL \sp2|s_shifter~26_combout\ : std_logic;
SIGNAL \sp2|s_shifter~25_combout\ : std_logic;
SIGNAL \sp2|s_shifter~24_combout\ : std_logic;
SIGNAL \sp2|s_shifter~23_combout\ : std_logic;
SIGNAL \sp2|s_shifter~22_combout\ : std_logic;
SIGNAL \sp2|s_shifter~21_combout\ : std_logic;
SIGNAL \sp2|s_shifter~20_combout\ : std_logic;
SIGNAL \sp2|s_shifter~19_combout\ : std_logic;
SIGNAL \sp2|s_shifter~18_combout\ : std_logic;
SIGNAL \sp2|s_shifter~17_combout\ : std_logic;
SIGNAL \sp2|s_shifter~16_combout\ : std_logic;
SIGNAL \sp2|s_shifter~15_combout\ : std_logic;
SIGNAL \sp2|s_shifter~14_combout\ : std_logic;
SIGNAL \sp2|s_shifter~13_combout\ : std_logic;
SIGNAL \sp2|s_shifter~12_combout\ : std_logic;
SIGNAL \sp2|s_shifter~11_combout\ : std_logic;
SIGNAL \sp2|s_shifter~10_combout\ : std_logic;
SIGNAL \sp2|s_shifter~9_combout\ : std_logic;
SIGNAL \sp2|s_shifter~8_combout\ : std_logic;
SIGNAL \sp2|s_shifter~7_combout\ : std_logic;
SIGNAL \sp2|s_shifter~6_combout\ : std_logic;
SIGNAL \sp2|s_shifter~5_combout\ : std_logic;
SIGNAL \sp2|s_shifter~4_combout\ : std_logic;
SIGNAL \sp2|s_shifter~3_combout\ : std_logic;
SIGNAL \sp2|s_shifter~2_combout\ : std_logic;
SIGNAL \sp2|s_shifter~0_combout\ : std_logic;
SIGNAL \sp2|s_shifter~1_combout\ : std_logic;
SIGNAL \sp2|s_tmsb~combout\ : std_logic;
SIGNAL \sp2|pulse~q\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~13_combout\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \Add1~28\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33_combout\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \Add1~40\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51_combout\ : std_logic;
SIGNAL \Add1~53_combout\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57_combout\ : std_logic;
SIGNAL \Add1~59_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~63_combout\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Add1~64\ : std_logic;
SIGNAL \Add1~66_combout\ : std_logic;
SIGNAL \Add1~68_combout\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~69_combout\ : std_logic;
SIGNAL \Add1~71_combout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \Add1~73\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Add1~77_combout\ : std_logic;
SIGNAL \Add1~76\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add1~79\ : std_logic;
SIGNAL \Add1~81_combout\ : std_logic;
SIGNAL \Add1~83_combout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~84_combout\ : std_logic;
SIGNAL \Add1~86_combout\ : std_logic;
SIGNAL \Add1~85\ : std_logic;
SIGNAL \Add1~87_combout\ : std_logic;
SIGNAL \Add1~89_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \wordval~6_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~91_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \wordCount~1_combout\ : std_logic;
SIGNAL \wordCount[11]~0_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \writeReady~0_combout\ : std_logic;
SIGNAL \writeReady~q\ : std_logic;
SIGNAL \nst.ST02~0_combout\ : std_logic;
SIGNAL \cst.ST02~q\ : std_logic;
SIGNAL \lcd2|nstate.ST01~0_combout\ : std_logic;
SIGNAL \lcd2|cstate.ST01~q\ : std_logic;
SIGNAL \lcd2|Selector1~0_combout\ : std_logic;
SIGNAL \lcd2|cstate.ST02~q\ : std_logic;
SIGNAL \lcd2|LessThan0~1_combout\ : std_logic;
SIGNAL \lcd2|Selector3~0_combout\ : std_logic;
SIGNAL \lcd2|cstate.ST12~q\ : std_logic;
SIGNAL \lcd2|nstate.ST07~4_combout\ : std_logic;
SIGNAL \lcd2|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd2|initSeq[3]~0_combout\ : std_logic;
SIGNAL \lcd2|initSeq[0]~5_combout\ : std_logic;
SIGNAL \lcd2|initSeq[1]~4_combout\ : std_logic;
SIGNAL \lcd2|nstate.ST07~5_combout\ : std_logic;
SIGNAL \lcd2|cstate.ST07~q\ : std_logic;
SIGNAL \lcd2|Selector2~1_combout\ : std_logic;
SIGNAL \lcd2|Selector2~0_combout\ : std_logic;
SIGNAL \lcd2|delay1|cst~q\ : std_logic;
SIGNAL \lcd2|delay1|FMS_control~0_combout\ : std_logic;
SIGNAL \lcd2|Selector7~0_combout\ : std_logic;
SIGNAL \lcd2|Mux4~0_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~16_combout\ : std_logic;
SIGNAL \lcd2|delay1|endDelay~0_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~10_combout\ : std_logic;
SIGNAL \lcd2|Mux6~0_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~8_combout\ : std_logic;
SIGNAL \lcd2|Mux7~0_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~6_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~0_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~5_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~1\ : std_logic;
SIGNAL \lcd2|delay1|Add0~2_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~4_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~3\ : std_logic;
SIGNAL \lcd2|delay1|Add0~4_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~7_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~5\ : std_logic;
SIGNAL \lcd2|delay1|Add0~6_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~9_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~7\ : std_logic;
SIGNAL \lcd2|delay1|Add0~8_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~11_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~9\ : std_logic;
SIGNAL \lcd2|delay1|Add0~10_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~12_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~11\ : std_logic;
SIGNAL \lcd2|delay1|Add0~12_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~13_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~13\ : std_logic;
SIGNAL \lcd2|delay1|Add0~14_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~14_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~15\ : std_logic;
SIGNAL \lcd2|delay1|Add0~16_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~15_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~17\ : std_logic;
SIGNAL \lcd2|delay1|Add0~18_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~17_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~19\ : std_logic;
SIGNAL \lcd2|delay1|Add0~20_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~18_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~21\ : std_logic;
SIGNAL \lcd2|delay1|Add0~22_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~19_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~23\ : std_logic;
SIGNAL \lcd2|delay1|Add0~24_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~20_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~21_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~25\ : std_logic;
SIGNAL \lcd2|delay1|Add0~26_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~22_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~27\ : std_logic;
SIGNAL \lcd2|delay1|Add0~28_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~23_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~29\ : std_logic;
SIGNAL \lcd2|delay1|Add0~30_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~24_combout\ : std_logic;
SIGNAL \lcd2|delay1|Equal0~4_combout\ : std_logic;
SIGNAL \lcd2|delay1|Equal0~1_combout\ : std_logic;
SIGNAL \lcd2|delay1|Equal0~3_combout\ : std_logic;
SIGNAL \lcd2|delay1|Equal0~2_combout\ : std_logic;
SIGNAL \lcd2|delay1|Equal0~5_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~31\ : std_logic;
SIGNAL \lcd2|delay1|Add0~32_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~0_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~33\ : std_logic;
SIGNAL \lcd2|delay1|Add0~34_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~1_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~35\ : std_logic;
SIGNAL \lcd2|delay1|Add0~36_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~2_combout\ : std_logic;
SIGNAL \lcd2|delay1|Add0~37\ : std_logic;
SIGNAL \lcd2|delay1|Add0~38_combout\ : std_logic;
SIGNAL \lcd2|delay1|s_divCounter~3_combout\ : std_logic;
SIGNAL \lcd2|delay1|Equal0~0_combout\ : std_logic;
SIGNAL \lcd2|delay1|endDelay~1_combout\ : std_logic;
SIGNAL \lcd2|Selector2~2_combout\ : std_logic;
SIGNAL \lcd2|cstate.ST08~q\ : std_logic;
SIGNAL \lcd2|nstate.ST09~0_combout\ : std_logic;
SIGNAL \lcd2|cstate.ST09~q\ : std_logic;
SIGNAL \lcd2|cstate.ST10~q\ : std_logic;
SIGNAL \lcd2|cstate.ST11~q\ : std_logic;
SIGNAL \lcd2|Selector16~0_combout\ : std_logic;
SIGNAL \LCD_DATA[7]~input_o\ : std_logic;
SIGNAL \lcd2|ready~0_combout\ : std_logic;
SIGNAL \lcd2|ready~q\ : std_logic;
SIGNAL \lcd2|nstate.ST03~0_combout\ : std_logic;
SIGNAL \lcd2|cstate.ST03~q\ : std_logic;
SIGNAL \lcd2|cstate.ST04~q\ : std_logic;
SIGNAL \lcd2|cstate.ST05~q\ : std_logic;
SIGNAL \lcd2|cstate.ST06~q\ : std_logic;
SIGNAL \lcd2|Selector0~0_combout\ : std_logic;
SIGNAL \lcd2|cstate.ST14~q\ : std_logic;
SIGNAL \lcd2|Selector0~1_combout\ : std_logic;
SIGNAL \lcd2|cstate.ST00~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \cst.ST03~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \cst.ST01~feeder_combout\ : std_logic;
SIGNAL \cst.ST01~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \cst.ST05~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \cst.ST00~q\ : std_logic;
SIGNAL \nst.ST04~0_combout\ : std_logic;
SIGNAL \cst.ST04~q\ : std_logic;
SIGNAL \lcd2|initSeq[0]~2_combout\ : std_logic;
SIGNAL \lcd2|initSeq[2]~3_combout\ : std_logic;
SIGNAL \lcd2|initSeq[3]~1_combout\ : std_logic;
SIGNAL \lcd2|Selector15~0_combout\ : std_logic;
SIGNAL \lcd2|WideOr9~combout\ : std_logic;
SIGNAL \lcd2|Selector8~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \wordval~4_combout\ : std_logic;
SIGNAL \wordval[6]~8_combout\ : std_logic;
SIGNAL \wordval~14_combout\ : std_logic;
SIGNAL \system_core|product~1_combout\ : std_logic;
SIGNAL \address[0]~6_combout\ : std_logic;
SIGNAL \address[4]~16_combout\ : std_logic;
SIGNAL \address[0]~7\ : std_logic;
SIGNAL \address[1]~8_combout\ : std_logic;
SIGNAL \address[1]~9\ : std_logic;
SIGNAL \address[2]~10_combout\ : std_logic;
SIGNAL \address[2]~11\ : std_logic;
SIGNAL \address[3]~12_combout\ : std_logic;
SIGNAL \address[3]~13\ : std_logic;
SIGNAL \address[4]~14_combout\ : std_logic;
SIGNAL \system_core|product~0_combout\ : std_logic;
SIGNAL \wordval~9_combout\ : std_logic;
SIGNAL \wordval~35_combout\ : std_logic;
SIGNAL \wordval~12_combout\ : std_logic;
SIGNAL \wordval~10_combout\ : std_logic;
SIGNAL \wordval~11_combout\ : std_logic;
SIGNAL \wordval~13_combout\ : std_logic;
SIGNAL \wordval~15_combout\ : std_logic;
SIGNAL \main~0_combout\ : std_logic;
SIGNAL \wordval[6]~16_combout\ : std_logic;
SIGNAL \lcd2|Selector15~1_combout\ : std_logic;
SIGNAL \lcd2|Selector16~1_combout\ : std_logic;
SIGNAL \lcd2|Selector16~2_combout\ : std_logic;
SIGNAL \lcd2|Selector14~0_combout\ : std_logic;
SIGNAL \rom1|Mux5~1_combout\ : std_logic;
SIGNAL \rom1|Mux5~0_combout\ : std_logic;
SIGNAL \wordval~17_combout\ : std_logic;
SIGNAL \rom1|Mux12~0_combout\ : std_logic;
SIGNAL \wordval~36_combout\ : std_logic;
SIGNAL \wordval~18_combout\ : std_logic;
SIGNAL \lcd2|Selector14~1_combout\ : std_logic;
SIGNAL \rom1|Mux11~0_combout\ : std_logic;
SIGNAL \rom1|Mux4~0_combout\ : std_logic;
SIGNAL \rom1|Mux4~1_combout\ : std_logic;
SIGNAL \wordval~19_combout\ : std_logic;
SIGNAL \wordval~20_combout\ : std_logic;
SIGNAL \lcd2|Selector13~0_combout\ : std_logic;
SIGNAL \lcd2|Selector12~0_combout\ : std_logic;
SIGNAL \rom1|Mux3~0_combout\ : std_logic;
SIGNAL \rom1|Mux3~1_combout\ : std_logic;
SIGNAL \wordval~21_combout\ : std_logic;
SIGNAL \rom1|Mux10~0_combout\ : std_logic;
SIGNAL \wordval~22_combout\ : std_logic;
SIGNAL \lcd2|Selector12~1_combout\ : std_logic;
SIGNAL \rom1|Mux9~0_combout\ : std_logic;
SIGNAL \wordval~23_combout\ : std_logic;
SIGNAL \rom1|Mux2~0_combout\ : std_logic;
SIGNAL \wordval~24_combout\ : std_logic;
SIGNAL \wordval~25_combout\ : std_logic;
SIGNAL \lcd2|Mux4~1_combout\ : std_logic;
SIGNAL \lcd2|Selector11~0_combout\ : std_logic;
SIGNAL \rom1|output[5]~1_combout\ : std_logic;
SIGNAL \wordval~5_combout\ : std_logic;
SIGNAL \rom1|output[5]~0_combout\ : std_logic;
SIGNAL \wordval~26_combout\ : std_logic;
SIGNAL \wordval~7_combout\ : std_logic;
SIGNAL \lcd2|Selector10~0_combout\ : std_logic;
SIGNAL \rom1|Mux8~0_combout\ : std_logic;
SIGNAL \rom1|Mux1~0_combout\ : std_logic;
SIGNAL \wordval~30_combout\ : std_logic;
SIGNAL \wordval~29_combout\ : std_logic;
SIGNAL \wordval~28_combout\ : std_logic;
SIGNAL \wordval[6]~27_combout\ : std_logic;
SIGNAL \wordval~31_combout\ : std_logic;
SIGNAL \lcd2|Selector9~0_combout\ : std_logic;
SIGNAL \address[4]~5_combout\ : std_logic;
SIGNAL \wordval~32_combout\ : std_logic;
SIGNAL \wordval~33_combout\ : std_logic;
SIGNAL \wordval~34_combout\ : std_logic;
SIGNAL \lcd2|Selector8~1_combout\ : std_logic;
SIGNAL \lcd2|Selector6~0_combout\ : std_logic;
SIGNAL \lcd2|Selector6~1_combout\ : std_logic;
SIGNAL \lcd2|Selector5~0_combout\ : std_logic;
SIGNAL \lcd2|Selector4~0_combout\ : std_logic;
SIGNAL \lcd2|Selector4~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \auxiliaryMachine_replacement|Selector0~0_combout\ : std_logic;
SIGNAL \auxiliaryMachine_replacement|s_currentState.E0~q\ : std_logic;
SIGNAL \auxiliaryMachine_replacement|s_nextState.E1~0_combout\ : std_logic;
SIGNAL \auxiliaryMachine_replacement|s_currentState.E1~q\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \auxiliaryMachine_push|Selector0~0_combout\ : std_logic;
SIGNAL \auxiliaryMachine_push|s_currentState.E0~q\ : std_logic;
SIGNAL \auxiliaryMachine_push|s_nextState.E1~0_combout\ : std_logic;
SIGNAL \auxiliaryMachine_push|s_currentState.E1~q\ : std_logic;
SIGNAL \system_core|s_resetAux~0_combout\ : std_logic;
SIGNAL \system_core|s_resetAux~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY2_debounce|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_dirtyIn~q\ : std_logic;
SIGNAL \KEY2_debounce|s_pulsedOut~feeder_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[0]~31_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[0]~32\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[1]~33_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[1]~34\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[2]~35_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[2]~36\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[3]~37_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[3]~38\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[4]~39_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[4]~40\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[5]~41_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[5]~42\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[6]~43_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[6]~44\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[7]~45_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[7]~46\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[8]~47_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[8]~48\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[9]~49_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[9]~50\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[10]~51_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[10]~52\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[11]~53_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[11]~54\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[12]~55_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[12]~56\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[13]~57_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[13]~58\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[14]~59_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[14]~60\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[15]~61_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[15]~feeder_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[15]~62\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[16]~63_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[16]~64\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[17]~65_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[17]~66\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[18]~67_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[18]~68\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[19]~69_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[19]~70\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[20]~71_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[20]~72\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[21]~73_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[21]~74\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[22]~75_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[22]~76\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[23]~77_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[23]~78\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[24]~79_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[24]~80\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[25]~81_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[25]~82\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[26]~83_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[26]~84\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[27]~85_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[27]~86\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[28]~87_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[28]~88\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[29]~89_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[29]~90\ : std_logic;
SIGNAL \KEY2_debounce|s_debounceCnt[30]~91_combout\ : std_logic;
SIGNAL \KEY2_debounce|Equal0~7_combout\ : std_logic;
SIGNAL \KEY2_debounce|Equal0~8_combout\ : std_logic;
SIGNAL \KEY2_debounce|Equal0~5_combout\ : std_logic;
SIGNAL \KEY2_debounce|Equal0~0_combout\ : std_logic;
SIGNAL \KEY2_debounce|Equal0~1_combout\ : std_logic;
SIGNAL \KEY2_debounce|Equal0~3_combout\ : std_logic;
SIGNAL \KEY2_debounce|Equal0~2_combout\ : std_logic;
SIGNAL \KEY2_debounce|Equal0~4_combout\ : std_logic;
SIGNAL \KEY2_debounce|Equal0~6_combout\ : std_logic;
SIGNAL \KEY2_debounce|Equal0~9_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_resetPulse~0_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_resetPulse~q\ : std_logic;
SIGNAL \KEY2_debounce|out_proc~0_combout\ : std_logic;
SIGNAL \KEY2_debounce|s_pulsedOut~q\ : std_logic;
SIGNAL \auxiliaryMachine_um|Selector0~0_combout\ : std_logic;
SIGNAL \auxiliaryMachine_um|s_currentState.E0~feeder_combout\ : std_logic;
SIGNAL \auxiliaryMachine_um|s_currentState.E0~q\ : std_logic;
SIGNAL \auxiliaryMachine_um|s_nextState.E1~0_combout\ : std_logic;
SIGNAL \auxiliaryMachine_um|s_currentState.E1~feeder_combout\ : std_logic;
SIGNAL \auxiliaryMachine_um|s_currentState.E1~q\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY3_debounce|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_dirtyIn~q\ : std_logic;
SIGNAL \KEY3_debounce|s_pulsedOut~feeder_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[0]~31_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[0]~32\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[1]~33_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[1]~34\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[2]~35_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[2]~36\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[3]~37_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[3]~38\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[4]~39_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[4]~40\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[5]~41_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[5]~42\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[6]~43_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[6]~44\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[7]~45_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[7]~46\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[8]~47_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[8]~48\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[9]~49_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[9]~50\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[10]~51_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[10]~52\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[11]~53_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[11]~54\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[12]~55_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[12]~56\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[13]~57_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[13]~58\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[14]~59_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[14]~60\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[15]~61_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[15]~62\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[16]~63_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[16]~64\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[17]~65_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[17]~66\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[18]~67_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[18]~68\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[19]~69_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[19]~70\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[20]~71_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[20]~72\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[21]~73_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[21]~74\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[22]~75_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[22]~76\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[23]~77_combout\ : std_logic;
SIGNAL \KEY3_debounce|Equal0~6_combout\ : std_logic;
SIGNAL \KEY3_debounce|Equal0~5_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[23]~78\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[24]~79_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[24]~80\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[25]~81_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[25]~82\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[26]~83_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[26]~84\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[27]~85_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[27]~86\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[28]~87_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[28]~88\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[29]~89_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[29]~90\ : std_logic;
SIGNAL \KEY3_debounce|s_debounceCnt[30]~91_combout\ : std_logic;
SIGNAL \KEY3_debounce|Equal0~7_combout\ : std_logic;
SIGNAL \KEY3_debounce|Equal0~8_combout\ : std_logic;
SIGNAL \KEY3_debounce|Equal0~2_combout\ : std_logic;
SIGNAL \KEY3_debounce|Equal0~1_combout\ : std_logic;
SIGNAL \KEY3_debounce|Equal0~3_combout\ : std_logic;
SIGNAL \KEY3_debounce|Equal0~0_combout\ : std_logic;
SIGNAL \KEY3_debounce|Equal0~4_combout\ : std_logic;
SIGNAL \KEY3_debounce|Equal0~9_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_resetPulse~0_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_resetPulse~q\ : std_logic;
SIGNAL \KEY3_debounce|out_proc~0_combout\ : std_logic;
SIGNAL \KEY3_debounce|s_pulsedOut~q\ : std_logic;
SIGNAL \auxiliaryMachine_dois|Selector0~0_combout\ : std_logic;
SIGNAL \auxiliaryMachine_dois|s_currentState.E0~feeder_combout\ : std_logic;
SIGNAL \auxiliaryMachine_dois|s_currentState.E0~q\ : std_logic;
SIGNAL \auxiliaryMachine_dois|s_nextState.E1~0_combout\ : std_logic;
SIGNAL \auxiliaryMachine_dois|s_currentState.E1~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY1_debounce|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_dirtyIn~q\ : std_logic;
SIGNAL \KEY1_debounce|s_pulsedOut~feeder_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[0]~31_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[0]~32\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[1]~33_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[1]~34\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[2]~35_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[2]~36\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[3]~37_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[3]~38\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[4]~39_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[4]~40\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[5]~41_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[5]~42\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[6]~43_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[6]~44\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[7]~45_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[7]~46\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[8]~47_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[8]~48\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[9]~49_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[9]~50\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[10]~51_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[10]~52\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[11]~53_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[11]~54\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[12]~55_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[12]~56\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[13]~57_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[13]~58\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[14]~59_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[14]~60\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[15]~61_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[15]~62\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[16]~63_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[16]~64\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[17]~65_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[17]~66\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[18]~67_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[18]~68\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[19]~69_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[19]~70\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[20]~71_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[20]~72\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[21]~73_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[21]~74\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[22]~75_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[22]~76\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[23]~77_combout\ : std_logic;
SIGNAL \KEY1_debounce|Equal0~6_combout\ : std_logic;
SIGNAL \KEY1_debounce|Equal0~5_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[23]~78\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[24]~79_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[24]~80\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[25]~81_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[25]~82\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[26]~83_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[26]~84\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[27]~85_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[27]~86\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[28]~87_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[28]~88\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[29]~89_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[29]~90\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt[30]~91_combout\ : std_logic;
SIGNAL \KEY1_debounce|Equal0~7_combout\ : std_logic;
SIGNAL \KEY1_debounce|Equal0~8_combout\ : std_logic;
SIGNAL \KEY1_debounce|Equal0~2_combout\ : std_logic;
SIGNAL \KEY1_debounce|Equal0~1_combout\ : std_logic;
SIGNAL \KEY1_debounce|Equal0~3_combout\ : std_logic;
SIGNAL \KEY1_debounce|Equal0~0_combout\ : std_logic;
SIGNAL \KEY1_debounce|Equal0~4_combout\ : std_logic;
SIGNAL \KEY1_debounce|Equal0~9_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_resetPulse~0_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_resetPulse~q\ : std_logic;
SIGNAL \KEY1_debounce|out_proc~0_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_pulsedOut~q\ : std_logic;
SIGNAL \auxiliaryMachine_cinquenta|Selector0~0_combout\ : std_logic;
SIGNAL \auxiliaryMachine_cinquenta|s_currentState.E0~q\ : std_logic;
SIGNAL \auxiliaryMachine_cinquenta|s_nextState.E1~0_combout\ : std_logic;
SIGNAL \auxiliaryMachine_cinquenta|s_currentState.E1~feeder_combout\ : std_logic;
SIGNAL \auxiliaryMachine_cinquenta|s_currentState.E1~q\ : std_logic;
SIGNAL \FSM_Chocolate|comb_proc~2_combout\ : std_logic;
SIGNAL \FSM_agua|s_currentState.E0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY0_debounce|s_dirtyIn~q\ : std_logic;
SIGNAL \KEY0_debounce|s_pulsedOut~feeder_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[0]~31_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[0]~32\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[1]~33_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[1]~34\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[2]~35_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[2]~36\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[3]~37_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[3]~38\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[4]~39_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[4]~40\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[5]~41_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[5]~42\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[6]~43_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[6]~44\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[7]~45_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[7]~46\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[8]~47_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[8]~48\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[9]~49_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[9]~50\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[10]~51_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[10]~52\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[11]~53_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[11]~54\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[12]~55_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[12]~56\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[13]~57_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[13]~58\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[14]~59_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[14]~60\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[15]~61_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[15]~62\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[16]~63_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[16]~64\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[17]~65_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[17]~66\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[18]~67_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[18]~68\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[19]~69_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[19]~70\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[20]~71_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[20]~72\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[21]~73_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[21]~74\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[22]~75_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[22]~76\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[23]~77_combout\ : std_logic;
SIGNAL \KEY0_debounce|Equal0~6_combout\ : std_logic;
SIGNAL \KEY0_debounce|Equal0~5_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[23]~78\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[24]~79_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[24]~80\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[25]~81_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[25]~82\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[26]~83_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[26]~84\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[27]~85_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[27]~86\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[28]~87_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[28]~88\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[29]~89_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[29]~90\ : std_logic;
SIGNAL \KEY0_debounce|s_debounceCnt[30]~91_combout\ : std_logic;
SIGNAL \KEY0_debounce|Equal0~7_combout\ : std_logic;
SIGNAL \KEY0_debounce|Equal0~8_combout\ : std_logic;
SIGNAL \KEY0_debounce|Equal0~3_combout\ : std_logic;
SIGNAL \KEY0_debounce|Equal0~0_combout\ : std_logic;
SIGNAL \KEY0_debounce|Equal0~2_combout\ : std_logic;
SIGNAL \KEY0_debounce|Equal0~1_combout\ : std_logic;
SIGNAL \KEY0_debounce|Equal0~4_combout\ : std_logic;
SIGNAL \KEY0_debounce|Equal0~9_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_resetPulse~0_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_resetPulse~q\ : std_logic;
SIGNAL \KEY0_debounce|out_proc~0_combout\ : std_logic;
SIGNAL \KEY0_debounce|s_pulsedOut~q\ : std_logic;
SIGNAL \auxiliaryMachine_vinte|Selector0~0_combout\ : std_logic;
SIGNAL \auxiliaryMachine_vinte|s_currentState.E0~q\ : std_logic;
SIGNAL \auxiliaryMachine_vinte|s_nextState.E1~0_combout\ : std_logic;
SIGNAL \auxiliaryMachine_vinte|s_currentState.E1~q\ : std_logic;
SIGNAL \FSM_agua|s_currentState.E0~1_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \FSM_agua|s_currentState.E0~q\ : std_logic;
SIGNAL \FSM_agua|s_currentState.E1~0_combout\ : std_logic;
SIGNAL \FSM_agua|s_currentState.E1~1_combout\ : std_logic;
SIGNAL \FSM_agua|s_currentState.E1~q\ : std_logic;
SIGNAL \FSM_Chocolate|comb_proc~3_combout\ : std_logic;
SIGNAL \FSM_agua|s_currentState.E2~0_combout\ : std_logic;
SIGNAL \FSM_agua|s_currentState.E2~1_combout\ : std_logic;
SIGNAL \FSM_agua|s_currentState.E2~q\ : std_logic;
SIGNAL \FSM_agua|product~1_combout\ : std_logic;
SIGNAL \FSM_agua|s_currentState~6_combout\ : std_logic;
SIGNAL \FSM_agua|s_currentState~7_combout\ : std_logic;
SIGNAL \FSM_agua|s_currentState~8_combout\ : std_logic;
SIGNAL \FSM_agua|s_currentState.E3~q\ : std_logic;
SIGNAL \FSM_Bolachas|s_currentState.E0~0_combout\ : std_logic;
SIGNAL \FSM_Bolachas|s_currentState.E0~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \FSM_Bolachas|s_currentState.E0~q\ : std_logic;
SIGNAL \FSM_Bolachas|s_currentState.E1~2_combout\ : std_logic;
SIGNAL \FSM_Bolachas|s_currentState.E1~3_combout\ : std_logic;
SIGNAL \FSM_Bolachas|s_currentState.E1~q\ : std_logic;
SIGNAL \FSM_Bolachas|product~1_combout\ : std_logic;
SIGNAL \FSM_Bolachas|s_currentState~9_combout\ : std_logic;
SIGNAL \FSM_Bolachas|sync_proc~0_combout\ : std_logic;
SIGNAL \FSM_Bolachas|s_currentState~10_combout\ : std_logic;
SIGNAL \FSM_Bolachas|s_currentState~11_combout\ : std_logic;
SIGNAL \FSM_Bolachas|s_currentState.E2~q\ : std_logic;
SIGNAL \FSM_Chocolate|comb_proc~0_combout\ : std_logic;
SIGNAL \FSM_Chocolate|comb_proc~1_combout\ : std_logic;
SIGNAL \FSM_Bolachas|s_currentState~8_combout\ : std_logic;
SIGNAL \FSM_Bolachas|s_currentState~12_combout\ : std_logic;
SIGNAL \FSM_Bolachas|s_currentState.E3~q\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState.E0~0_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState.E0~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState.E0~q\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState.E6~2_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState.E6~3_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState.E6~q\ : std_logic;
SIGNAL \FSM_Chocolate|sync_proc~0_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState.E1~0_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState.E1~1_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState.E1~q\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState.E2~0_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState.E2~1_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState.E2~q\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState~16_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState~17_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState~18_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState.E3~q\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState~12_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState~14_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState~15_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState.E4~q\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState~9_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState~10_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState~11_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState~13_combout\ : std_logic;
SIGNAL \FSM_Chocolate|s_currentState.E5~q\ : std_logic;
SIGNAL \system_core|moneyOut~0_combout\ : std_logic;
SIGNAL \system_core|moneyOut~1_combout\ : std_logic;
SIGNAL \system_core|s_money~8_combout\ : std_logic;
SIGNAL \system_core|Add1~0_combout\ : std_logic;
SIGNAL \system_core|s_money~9_combout\ : std_logic;
SIGNAL \system_core|Add1~1\ : std_logic;
SIGNAL \system_core|Add1~2_combout\ : std_logic;
SIGNAL \system_core|s_money~10_combout\ : std_logic;
SIGNAL \system_core|s_money~11_combout\ : std_logic;
SIGNAL \system_core|s_money~12_combout\ : std_logic;
SIGNAL \system_core|s_money[4]~13_combout\ : std_logic;
SIGNAL \system_core|Add1~3\ : std_logic;
SIGNAL \system_core|Add1~4_combout\ : std_logic;
SIGNAL \system_core|s_money~14_combout\ : std_logic;
SIGNAL \system_core|s_money~15_combout\ : std_logic;
SIGNAL \system_core|s_money[4]~16_combout\ : std_logic;
SIGNAL \system_core|Add0~0_combout\ : std_logic;
SIGNAL \system_core|s_money~21_combout\ : std_logic;
SIGNAL \system_core|Add1~5\ : std_logic;
SIGNAL \system_core|Add1~6_combout\ : std_logic;
SIGNAL \system_core|s_money~17_combout\ : std_logic;
SIGNAL \system_core|s_money~18_combout\ : std_logic;
SIGNAL \system_core|Add2~0_combout\ : std_logic;
SIGNAL \system_core|s_money~22_combout\ : std_logic;
SIGNAL \system_core|s_money~23_combout\ : std_logic;
SIGNAL \system_core|s_money~19_combout\ : std_logic;
SIGNAL \system_core|Add1~7\ : std_logic;
SIGNAL \system_core|Add1~8_combout\ : std_logic;
SIGNAL \system_core|s_money~24_combout\ : std_logic;
SIGNAL \system_core|s_money~20_combout\ : std_logic;
SIGNAL \changeMachine|change_process~1_combout\ : std_logic;
SIGNAL \changeMachine|s_change~7_combout\ : std_logic;
SIGNAL \changeMachine|change_process~0_combout\ : std_logic;
SIGNAL \changeMachine|change_process~2_combout\ : std_logic;
SIGNAL \changeMachine|change_process~3_combout\ : std_logic;
SIGNAL \changeMachine|change_process~4_combout\ : std_logic;
SIGNAL \bin7_money|Mux5~0_combout\ : std_logic;
SIGNAL \changeMachine|change_process~5_combout\ : std_logic;
SIGNAL \changeMachine|s_change[3]~8_combout\ : std_logic;
SIGNAL \changeMachine|s_change[3]~16_combout\ : std_logic;
SIGNAL \changeMachine|Add1~1\ : std_logic;
SIGNAL \changeMachine|Add1~3\ : std_logic;
SIGNAL \changeMachine|Add1~4_combout\ : std_logic;
SIGNAL \changeMachine|s_change[3]~9_combout\ : std_logic;
SIGNAL \changeMachine|s_change~10_combout\ : std_logic;
SIGNAL \changeMachine|s_change~11_combout\ : std_logic;
SIGNAL \changeMachine|Equal3~0_combout\ : std_logic;
SIGNAL \changeMachine|s_change1[4]~4_combout\ : std_logic;
SIGNAL \changeMachine|s_change1[4]~2_combout\ : std_logic;
SIGNAL \changeMachine|s_change1[4]~3_combout\ : std_logic;
SIGNAL \changeMachine|Add1~2_combout\ : std_logic;
SIGNAL \changeMachine|s_change~5_combout\ : std_logic;
SIGNAL \changeMachine|s_change~6_combout\ : std_logic;
SIGNAL \changeMachine|Add1~0_combout\ : std_logic;
SIGNAL \changeMachine|s_change~2_combout\ : std_logic;
SIGNAL \changeMachine|s_change~3_combout\ : std_logic;
SIGNAL \plafon_pro|Add0~0_combout\ : std_logic;
SIGNAL \plafon_pro|s_plafon_10~6_combout\ : std_logic;
SIGNAL \plafon_pro|s_plafon_10~2_combout\ : std_logic;
SIGNAL \plafon_pro|Add0~1\ : std_logic;
SIGNAL \plafon_pro|Add0~2_combout\ : std_logic;
SIGNAL \plafon_pro|s_plafon_10~5_combout\ : std_logic;
SIGNAL \plafon_pro|Add0~3\ : std_logic;
SIGNAL \plafon_pro|Add0~4_combout\ : std_logic;
SIGNAL \plafon_pro|s_plafon_10~4_combout\ : std_logic;
SIGNAL \plafon_pro|LessThan1~1_combout\ : std_logic;
SIGNAL \changeMachine|s_change~13_combout\ : std_logic;
SIGNAL \changeMachine|Add0~1_combout\ : std_logic;
SIGNAL \changeMachine|Add1~5\ : std_logic;
SIGNAL \changeMachine|Add1~7\ : std_logic;
SIGNAL \changeMachine|Add1~8_combout\ : std_logic;
SIGNAL \changeMachine|s_change~14_combout\ : std_logic;
SIGNAL \changeMachine|s_change~15_combout\ : std_logic;
SIGNAL \changeMachine|Add0~0_combout\ : std_logic;
SIGNAL \changeMachine|Add1~6_combout\ : std_logic;
SIGNAL \changeMachine|s_change~12_combout\ : std_logic;
SIGNAL \changeMachine|s_change~17_combout\ : std_logic;
SIGNAL \changeMachine|s_change~18_combout\ : std_logic;
SIGNAL \plafon_pro|Add0~5\ : std_logic;
SIGNAL \plafon_pro|Add0~7\ : std_logic;
SIGNAL \plafon_pro|Add0~8_combout\ : std_logic;
SIGNAL \plafon_pro|s_plafon_10~1_combout\ : std_logic;
SIGNAL \plafon_pro|LessThan1~0_combout\ : std_logic;
SIGNAL \plafon_pro|LessThan1~2_combout\ : std_logic;
SIGNAL \plafon_pro|s_plafon_10~0_combout\ : std_logic;
SIGNAL \plafon_pro|Add0~6_combout\ : std_logic;
SIGNAL \plafon_pro|s_plafon_10~3_combout\ : std_logic;
SIGNAL \plafon_pro|LessThan1~3_combout\ : std_logic;
SIGNAL \plafon_pro|RunOut~0_combout\ : std_logic;
SIGNAL \plafon_pro|RunOut~1_combout\ : std_logic;
SIGNAL \plafon_pro|RunOut~q\ : std_logic;
SIGNAL \bin7_money|Mux13~0_combout\ : std_logic;
SIGNAL \bin7_money|Mux13~1_combout\ : std_logic;
SIGNAL \bin7_money|Mux12~0_combout\ : std_logic;
SIGNAL \bin7_money|Mux12~1_combout\ : std_logic;
SIGNAL \bin7_money|Mux11~0_combout\ : std_logic;
SIGNAL \bin7_money|Mux11~1_combout\ : std_logic;
SIGNAL \bin7_money|Mux10~1_combout\ : std_logic;
SIGNAL \bin7_money|Mux10~0_combout\ : std_logic;
SIGNAL \bin7_money|Mux10~2_combout\ : std_logic;
SIGNAL \bin7_money|Mux9~0_combout\ : std_logic;
SIGNAL \bin7_money|Mux8~1_combout\ : std_logic;
SIGNAL \bin7_money|Mux8~0_combout\ : std_logic;
SIGNAL \bin7_money|Mux8~2_combout\ : std_logic;
SIGNAL \bin7_money|Mux7~0_combout\ : std_logic;
SIGNAL \bin7_money|Mux7~1_combout\ : std_logic;
SIGNAL \bin7_money|Mux6~0_combout\ : std_logic;
SIGNAL \bin7_money|Mux6~1_combout\ : std_logic;
SIGNAL \bin7_money|Mux5~1_combout\ : std_logic;
SIGNAL \bin7_money|Mux4~0_combout\ : std_logic;
SIGNAL \bin7_money|Mux4~1_combout\ : std_logic;
SIGNAL \bin7_money|Mux2~0_combout\ : std_logic;
SIGNAL \bin7_money|Mux1~0_combout\ : std_logic;
SIGNAL \bin7_money|Mux0~0_combout\ : std_logic;
SIGNAL \bin7_money|Mux0~1_combout\ : std_logic;
SIGNAL \changeMachine|s_change[3]~feeder_combout\ : std_logic;
SIGNAL \changeMachine|s_change[3]~4_combout\ : std_logic;
SIGNAL \changeMachine|s_change[1]~feeder_combout\ : std_logic;
SIGNAL \changeMachine|s_change[2]~feeder_combout\ : std_logic;
SIGNAL \changeMachine|s_change[0]~feeder_combout\ : std_logic;
SIGNAL \bin7_change|Mux13~0_combout\ : std_logic;
SIGNAL \changeMachine|s_change[4]~feeder_combout\ : std_logic;
SIGNAL \bin7_change|Mux13~1_combout\ : std_logic;
SIGNAL \bin7_change|Mux12~0_combout\ : std_logic;
SIGNAL \bin7_change|Mux12~1_combout\ : std_logic;
SIGNAL \bin7_change|Mux11~0_combout\ : std_logic;
SIGNAL \bin7_change|Mux11~1_combout\ : std_logic;
SIGNAL \bin7_change|Mux10~1_combout\ : std_logic;
SIGNAL \bin7_change|Mux10~0_combout\ : std_logic;
SIGNAL \bin7_change|Mux10~2_combout\ : std_logic;
SIGNAL \bin7_change|Mux9~0_combout\ : std_logic;
SIGNAL \bin7_change|Mux8~0_combout\ : std_logic;
SIGNAL \bin7_change|Mux8~1_combout\ : std_logic;
SIGNAL \bin7_change|Mux8~2_combout\ : std_logic;
SIGNAL \bin7_change|Mux7~0_combout\ : std_logic;
SIGNAL \bin7_change|Mux7~1_combout\ : std_logic;
SIGNAL \bin7_change|Mux6~0_combout\ : std_logic;
SIGNAL \bin7_change|Mux6~1_combout\ : std_logic;
SIGNAL \bin7_change|Mux5~0_combout\ : std_logic;
SIGNAL \bin7_change|Mux5~1_combout\ : std_logic;
SIGNAL \bin7_change|Mux4~0_combout\ : std_logic;
SIGNAL \bin7_change|Mux4~1_combout\ : std_logic;
SIGNAL \bin7_change|Mux2~0_combout\ : std_logic;
SIGNAL \bin7_change|Mux1~0_combout\ : std_logic;
SIGNAL \bin7_change|Mux0~0_combout\ : std_logic;
SIGNAL \bin7_change|Mux0~1_combout\ : std_logic;
SIGNAL \KEY1_debounce|s_debounceCnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \KEY2_debounce|s_debounceCnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \KEY3_debounce|s_debounceCnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL wordval : std_logic_vector(8 DOWNTO 0);
SIGNAL wordCount : std_logic_vector(30 DOWNTO 0);
SIGNAL address : std_logic_vector(4 DOWNTO 0);
SIGNAL \system_core|s_money\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \system_core|product\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \changeMachine|s_change1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \changeMachine|s_change\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \plafon_pro|s_plafon_10\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \KEY0_debounce|s_debounceCnt\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \clk1|s_divCounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk2|s_divCounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sp2|s_shifter\ : std_logic_vector(99 DOWNTO 0);
SIGNAL \lcd2|initSeq\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd2|delay1|s_divCounter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_SW[17]~input_o\ : std_logic;
SIGNAL \KEY2_debounce|ALT_INV_out_proc~0_combout\ : std_logic;
SIGNAL \KEY2_debounce|ALT_INV_s_dirtyIn~q\ : std_logic;
SIGNAL \KEY3_debounce|ALT_INV_out_proc~0_combout\ : std_logic;
SIGNAL \KEY3_debounce|ALT_INV_s_dirtyIn~q\ : std_logic;
SIGNAL \KEY0_debounce|ALT_INV_out_proc~0_combout\ : std_logic;
SIGNAL \KEY0_debounce|ALT_INV_s_dirtyIn~q\ : std_logic;
SIGNAL \KEY1_debounce|ALT_INV_out_proc~0_combout\ : std_logic;
SIGNAL \KEY1_debounce|ALT_INV_s_dirtyIn~q\ : std_logic;
SIGNAL \bin7_change|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \bin7_money|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \FSM_Bolachas|ALT_INV_product~1_combout\ : std_logic;
SIGNAL \FSM_agua|ALT_INV_product~1_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LCD_RW <= ww_LCD_RW;
LCD_RS <= ww_LCD_RS;
LCD_EN <= ww_LCD_EN;
LCD_ON <= ww_LCD_ON;
LEDR <= ww_LEDR;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clk2|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk2|clkOut~q\);

\clk1|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk1|clkOut~q\);
\ALT_INV_SW[17]~input_o\ <= NOT \SW[17]~input_o\;
\KEY2_debounce|ALT_INV_out_proc~0_combout\ <= NOT \KEY2_debounce|out_proc~0_combout\;
\KEY2_debounce|ALT_INV_s_dirtyIn~q\ <= NOT \KEY2_debounce|s_dirtyIn~q\;
\KEY3_debounce|ALT_INV_out_proc~0_combout\ <= NOT \KEY3_debounce|out_proc~0_combout\;
\KEY3_debounce|ALT_INV_s_dirtyIn~q\ <= NOT \KEY3_debounce|s_dirtyIn~q\;
\KEY0_debounce|ALT_INV_out_proc~0_combout\ <= NOT \KEY0_debounce|out_proc~0_combout\;
\KEY0_debounce|ALT_INV_s_dirtyIn~q\ <= NOT \KEY0_debounce|s_dirtyIn~q\;
\KEY1_debounce|ALT_INV_out_proc~0_combout\ <= NOT \KEY1_debounce|out_proc~0_combout\;
\KEY1_debounce|ALT_INV_s_dirtyIn~q\ <= NOT \KEY1_debounce|s_dirtyIn~q\;
\bin7_change|ALT_INV_Mux7~1_combout\ <= NOT \bin7_change|Mux7~1_combout\;
\bin7_money|ALT_INV_Mux7~1_combout\ <= NOT \bin7_money|Mux7~1_combout\;
\FSM_Bolachas|ALT_INV_product~1_combout\ <= NOT \FSM_Bolachas|product~1_combout\;
\FSM_agua|ALT_INV_product~1_combout\ <= NOT \FSM_agua|product~1_combout\;

-- Location: IOOBUF_X0_Y52_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd2|Selector15~1_combout\,
	oe => \lcd2|Selector16~2_combout\,
	devoe => ww_devoe,
	o => \LCD_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\LCD_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd2|Selector14~1_combout\,
	oe => \lcd2|Selector16~2_combout\,
	devoe => ww_devoe,
	o => \LCD_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\LCD_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd2|Selector13~0_combout\,
	oe => \lcd2|Selector16~2_combout\,
	devoe => ww_devoe,
	o => \LCD_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\LCD_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd2|Selector12~1_combout\,
	oe => \lcd2|Selector16~2_combout\,
	devoe => ww_devoe,
	o => \LCD_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\LCD_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd2|Selector11~0_combout\,
	oe => \lcd2|Selector16~2_combout\,
	devoe => ww_devoe,
	o => \LCD_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LCD_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd2|Selector10~0_combout\,
	oe => \lcd2|Selector16~2_combout\,
	devoe => ww_devoe,
	o => \LCD_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\LCD_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd2|Selector9~0_combout\,
	oe => \lcd2|Selector16~2_combout\,
	devoe => ww_devoe,
	o => \LCD_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LCD_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd2|Selector8~1_combout\,
	oe => \lcd2|Selector16~2_combout\,
	devoe => ww_devoe,
	o => \LCD_DATA[7]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd2|Selector6~1_combout\,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd2|Selector5~0_combout\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd2|Selector4~1_combout\,
	devoe => ww_devoe,
	o => \LCD_EN~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\LCD_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_ON~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \plafon_pro|RunOut~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_Chocolate|s_currentState.E5~q\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_agua|ALT_INV_product~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM_Bolachas|ALT_INV_product~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_money|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_money|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_money|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_money|Mux10~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_money|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_money|Mux8~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_money|ALT_INV_Mux7~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_money|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_money|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_money|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_money|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_money|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_money|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_money|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_change|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_change|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_change|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_change|Mux10~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_change|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_change|Mux8~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_change|ALT_INV_Mux7~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_change|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_change|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_change|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_change|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_change|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_change|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin7_change|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: FF_X81_Y8_N7
\clk1|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(3));

-- Location: FF_X81_Y8_N15
\clk1|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(7));

-- Location: LCCOMB_X81_Y8_N0
\clk1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~0_combout\ = \clk1|s_divCounter\(0) $ (VCC)
-- \clk1|Add0~1\ = CARRY(\clk1|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(0),
	datad => VCC,
	combout => \clk1|Add0~0_combout\,
	cout => \clk1|Add0~1\);

-- Location: FF_X81_Y8_N1
\clk1|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(0));

-- Location: LCCOMB_X81_Y8_N2
\clk1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~2_combout\ = (\clk1|s_divCounter\(1) & (!\clk1|Add0~1\)) # (!\clk1|s_divCounter\(1) & ((\clk1|Add0~1\) # (GND)))
-- \clk1|Add0~3\ = CARRY((!\clk1|Add0~1\) # (!\clk1|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|s_divCounter\(1),
	datad => VCC,
	cin => \clk1|Add0~1\,
	combout => \clk1|Add0~2_combout\,
	cout => \clk1|Add0~3\);

-- Location: LCCOMB_X81_Y8_N6
\clk1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~6_combout\ = (\clk1|s_divCounter\(3) & (!\clk1|Add0~5\)) # (!\clk1|s_divCounter\(3) & ((\clk1|Add0~5\) # (GND)))
-- \clk1|Add0~7\ = CARRY((!\clk1|Add0~5\) # (!\clk1|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|s_divCounter\(3),
	datad => VCC,
	cin => \clk1|Add0~5\,
	combout => \clk1|Add0~6_combout\,
	cout => \clk1|Add0~7\);

-- Location: LCCOMB_X81_Y8_N8
\clk1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~8_combout\ = (\clk1|s_divCounter\(4) & (\clk1|Add0~7\ $ (GND))) # (!\clk1|s_divCounter\(4) & (!\clk1|Add0~7\ & VCC))
-- \clk1|Add0~9\ = CARRY((\clk1|s_divCounter\(4) & !\clk1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(4),
	datad => VCC,
	cin => \clk1|Add0~7\,
	combout => \clk1|Add0~8_combout\,
	cout => \clk1|Add0~9\);

-- Location: FF_X81_Y7_N9
\clk1|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(20));

-- Location: LCCOMB_X81_Y8_N14
\clk1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~14_combout\ = (\clk1|s_divCounter\(7) & (!\clk1|Add0~13\)) # (!\clk1|s_divCounter\(7) & ((\clk1|Add0~13\) # (GND)))
-- \clk1|Add0~15\ = CARRY((!\clk1|Add0~13\) # (!\clk1|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(7),
	datad => VCC,
	cin => \clk1|Add0~13\,
	combout => \clk1|Add0~14_combout\,
	cout => \clk1|Add0~15\);

-- Location: LCCOMB_X81_Y8_N16
\clk1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~16_combout\ = (\clk1|s_divCounter\(8) & (\clk1|Add0~15\ $ (GND))) # (!\clk1|s_divCounter\(8) & (!\clk1|Add0~15\ & VCC))
-- \clk1|Add0~17\ = CARRY((\clk1|s_divCounter\(8) & !\clk1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(8),
	datad => VCC,
	cin => \clk1|Add0~15\,
	combout => \clk1|Add0~16_combout\,
	cout => \clk1|Add0~17\);

-- Location: FF_X81_Y8_N17
\clk1|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(8));

-- Location: LCCOMB_X81_Y8_N18
\clk1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~18_combout\ = (\clk1|s_divCounter\(9) & (!\clk1|Add0~17\)) # (!\clk1|s_divCounter\(9) & ((\clk1|Add0~17\) # (GND)))
-- \clk1|Add0~19\ = CARRY((!\clk1|Add0~17\) # (!\clk1|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(9),
	datad => VCC,
	cin => \clk1|Add0~17\,
	combout => \clk1|Add0~18_combout\,
	cout => \clk1|Add0~19\);

-- Location: FF_X81_Y8_N19
\clk1|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(9));

-- Location: LCCOMB_X81_Y8_N20
\clk1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~20_combout\ = (\clk1|s_divCounter\(10) & (\clk1|Add0~19\ $ (GND))) # (!\clk1|s_divCounter\(10) & (!\clk1|Add0~19\ & VCC))
-- \clk1|Add0~21\ = CARRY((\clk1|s_divCounter\(10) & !\clk1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(10),
	datad => VCC,
	cin => \clk1|Add0~19\,
	combout => \clk1|Add0~20_combout\,
	cout => \clk1|Add0~21\);

-- Location: FF_X81_Y8_N21
\clk1|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(10));

-- Location: LCCOMB_X81_Y8_N22
\clk1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~22_combout\ = (\clk1|s_divCounter\(11) & (!\clk1|Add0~21\)) # (!\clk1|s_divCounter\(11) & ((\clk1|Add0~21\) # (GND)))
-- \clk1|Add0~23\ = CARRY((!\clk1|Add0~21\) # (!\clk1|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|s_divCounter\(11),
	datad => VCC,
	cin => \clk1|Add0~21\,
	combout => \clk1|Add0~22_combout\,
	cout => \clk1|Add0~23\);

-- Location: FF_X81_Y8_N23
\clk1|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(11));

-- Location: LCCOMB_X81_Y8_N24
\clk1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~24_combout\ = (\clk1|s_divCounter\(12) & (\clk1|Add0~23\ $ (GND))) # (!\clk1|s_divCounter\(12) & (!\clk1|Add0~23\ & VCC))
-- \clk1|Add0~25\ = CARRY((\clk1|s_divCounter\(12) & !\clk1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(12),
	datad => VCC,
	cin => \clk1|Add0~23\,
	combout => \clk1|Add0~24_combout\,
	cout => \clk1|Add0~25\);

-- Location: FF_X81_Y8_N25
\clk1|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(12));

-- Location: LCCOMB_X81_Y8_N26
\clk1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~26_combout\ = (\clk1|s_divCounter\(13) & (!\clk1|Add0~25\)) # (!\clk1|s_divCounter\(13) & ((\clk1|Add0~25\) # (GND)))
-- \clk1|Add0~27\ = CARRY((!\clk1|Add0~25\) # (!\clk1|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|s_divCounter\(13),
	datad => VCC,
	cin => \clk1|Add0~25\,
	combout => \clk1|Add0~26_combout\,
	cout => \clk1|Add0~27\);

-- Location: FF_X81_Y8_N27
\clk1|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(13));

-- Location: LCCOMB_X81_Y8_N28
\clk1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~28_combout\ = (\clk1|s_divCounter\(14) & (\clk1|Add0~27\ $ (GND))) # (!\clk1|s_divCounter\(14) & (!\clk1|Add0~27\ & VCC))
-- \clk1|Add0~29\ = CARRY((\clk1|s_divCounter\(14) & !\clk1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(14),
	datad => VCC,
	cin => \clk1|Add0~27\,
	combout => \clk1|Add0~28_combout\,
	cout => \clk1|Add0~29\);

-- Location: FF_X81_Y8_N29
\clk1|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(14));

-- Location: LCCOMB_X81_Y8_N30
\clk1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~30_combout\ = (\clk1|s_divCounter\(15) & (!\clk1|Add0~29\)) # (!\clk1|s_divCounter\(15) & ((\clk1|Add0~29\) # (GND)))
-- \clk1|Add0~31\ = CARRY((!\clk1|Add0~29\) # (!\clk1|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|s_divCounter\(15),
	datad => VCC,
	cin => \clk1|Add0~29\,
	combout => \clk1|Add0~30_combout\,
	cout => \clk1|Add0~31\);

-- Location: FF_X81_Y8_N31
\clk1|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(15));

-- Location: LCCOMB_X81_Y7_N0
\clk1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~32_combout\ = (\clk1|s_divCounter\(16) & (\clk1|Add0~31\ $ (GND))) # (!\clk1|s_divCounter\(16) & (!\clk1|Add0~31\ & VCC))
-- \clk1|Add0~33\ = CARRY((\clk1|s_divCounter\(16) & !\clk1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(16),
	datad => VCC,
	cin => \clk1|Add0~31\,
	combout => \clk1|Add0~32_combout\,
	cout => \clk1|Add0~33\);

-- Location: FF_X81_Y7_N1
\clk1|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(16));

-- Location: LCCOMB_X81_Y7_N2
\clk1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~34_combout\ = (\clk1|s_divCounter\(17) & (!\clk1|Add0~33\)) # (!\clk1|s_divCounter\(17) & ((\clk1|Add0~33\) # (GND)))
-- \clk1|Add0~35\ = CARRY((!\clk1|Add0~33\) # (!\clk1|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(17),
	datad => VCC,
	cin => \clk1|Add0~33\,
	combout => \clk1|Add0~34_combout\,
	cout => \clk1|Add0~35\);

-- Location: FF_X81_Y7_N3
\clk1|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(17));

-- Location: LCCOMB_X81_Y7_N4
\clk1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~36_combout\ = (\clk1|s_divCounter\(18) & (\clk1|Add0~35\ $ (GND))) # (!\clk1|s_divCounter\(18) & (!\clk1|Add0~35\ & VCC))
-- \clk1|Add0~37\ = CARRY((\clk1|s_divCounter\(18) & !\clk1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(18),
	datad => VCC,
	cin => \clk1|Add0~35\,
	combout => \clk1|Add0~36_combout\,
	cout => \clk1|Add0~37\);

-- Location: FF_X81_Y7_N5
\clk1|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(18));

-- Location: LCCOMB_X81_Y7_N6
\clk1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~38_combout\ = (\clk1|s_divCounter\(19) & (!\clk1|Add0~37\)) # (!\clk1|s_divCounter\(19) & ((\clk1|Add0~37\) # (GND)))
-- \clk1|Add0~39\ = CARRY((!\clk1|Add0~37\) # (!\clk1|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|s_divCounter\(19),
	datad => VCC,
	cin => \clk1|Add0~37\,
	combout => \clk1|Add0~38_combout\,
	cout => \clk1|Add0~39\);

-- Location: FF_X81_Y7_N7
\clk1|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(19));

-- Location: LCCOMB_X81_Y7_N8
\clk1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~40_combout\ = (\clk1|s_divCounter\(20) & (\clk1|Add0~39\ $ (GND))) # (!\clk1|s_divCounter\(20) & (!\clk1|Add0~39\ & VCC))
-- \clk1|Add0~41\ = CARRY((\clk1|s_divCounter\(20) & !\clk1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(20),
	datad => VCC,
	cin => \clk1|Add0~39\,
	combout => \clk1|Add0~40_combout\,
	cout => \clk1|Add0~41\);

-- Location: FF_X81_Y7_N13
\clk1|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(22));

-- Location: LCCOMB_X81_Y7_N10
\clk1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~42_combout\ = (\clk1|s_divCounter\(21) & (!\clk1|Add0~41\)) # (!\clk1|s_divCounter\(21) & ((\clk1|Add0~41\) # (GND)))
-- \clk1|Add0~43\ = CARRY((!\clk1|Add0~41\) # (!\clk1|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|s_divCounter\(21),
	datad => VCC,
	cin => \clk1|Add0~41\,
	combout => \clk1|Add0~42_combout\,
	cout => \clk1|Add0~43\);

-- Location: FF_X81_Y7_N11
\clk1|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(21));

-- Location: LCCOMB_X81_Y7_N12
\clk1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~44_combout\ = (\clk1|s_divCounter\(22) & (\clk1|Add0~43\ $ (GND))) # (!\clk1|s_divCounter\(22) & (!\clk1|Add0~43\ & VCC))
-- \clk1|Add0~45\ = CARRY((\clk1|s_divCounter\(22) & !\clk1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|s_divCounter\(22),
	datad => VCC,
	cin => \clk1|Add0~43\,
	combout => \clk1|Add0~44_combout\,
	cout => \clk1|Add0~45\);

-- Location: LCCOMB_X82_Y7_N12
\clk1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~5_combout\ = (!\clk1|Add0~40_combout\ & (!\clk1|Add0~38_combout\ & (!\clk1|Add0~44_combout\ & !\clk1|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Add0~40_combout\,
	datab => \clk1|Add0~38_combout\,
	datac => \clk1|Add0~44_combout\,
	datad => \clk1|Add0~42_combout\,
	combout => \clk1|Equal0~5_combout\);

-- Location: FF_X81_Y7_N23
\clk1|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(27));

-- Location: LCCOMB_X81_Y7_N14
\clk1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~46_combout\ = (\clk1|s_divCounter\(23) & (!\clk1|Add0~45\)) # (!\clk1|s_divCounter\(23) & ((\clk1|Add0~45\) # (GND)))
-- \clk1|Add0~47\ = CARRY((!\clk1|Add0~45\) # (!\clk1|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(23),
	datad => VCC,
	cin => \clk1|Add0~45\,
	combout => \clk1|Add0~46_combout\,
	cout => \clk1|Add0~47\);

-- Location: FF_X81_Y7_N15
\clk1|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(23));

-- Location: LCCOMB_X81_Y7_N16
\clk1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~48_combout\ = (\clk1|s_divCounter\(24) & (\clk1|Add0~47\ $ (GND))) # (!\clk1|s_divCounter\(24) & (!\clk1|Add0~47\ & VCC))
-- \clk1|Add0~49\ = CARRY((\clk1|s_divCounter\(24) & !\clk1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(24),
	datad => VCC,
	cin => \clk1|Add0~47\,
	combout => \clk1|Add0~48_combout\,
	cout => \clk1|Add0~49\);

-- Location: FF_X81_Y7_N17
\clk1|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(24));

-- Location: LCCOMB_X81_Y7_N18
\clk1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~50_combout\ = (\clk1|s_divCounter\(25) & (!\clk1|Add0~49\)) # (!\clk1|s_divCounter\(25) & ((\clk1|Add0~49\) # (GND)))
-- \clk1|Add0~51\ = CARRY((!\clk1|Add0~49\) # (!\clk1|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(25),
	datad => VCC,
	cin => \clk1|Add0~49\,
	combout => \clk1|Add0~50_combout\,
	cout => \clk1|Add0~51\);

-- Location: FF_X81_Y7_N19
\clk1|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(25));

-- Location: LCCOMB_X81_Y7_N20
\clk1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~52_combout\ = (\clk1|s_divCounter\(26) & (\clk1|Add0~51\ $ (GND))) # (!\clk1|s_divCounter\(26) & (!\clk1|Add0~51\ & VCC))
-- \clk1|Add0~53\ = CARRY((\clk1|s_divCounter\(26) & !\clk1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(26),
	datad => VCC,
	cin => \clk1|Add0~51\,
	combout => \clk1|Add0~52_combout\,
	cout => \clk1|Add0~53\);

-- Location: FF_X81_Y7_N21
\clk1|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(26));

-- Location: LCCOMB_X81_Y7_N22
\clk1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~54_combout\ = (\clk1|s_divCounter\(27) & (!\clk1|Add0~53\)) # (!\clk1|s_divCounter\(27) & ((\clk1|Add0~53\) # (GND)))
-- \clk1|Add0~55\ = CARRY((!\clk1|Add0~53\) # (!\clk1|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|s_divCounter\(27),
	datad => VCC,
	cin => \clk1|Add0~53\,
	combout => \clk1|Add0~54_combout\,
	cout => \clk1|Add0~55\);

-- Location: FF_X81_Y7_N27
\clk1|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(29));

-- Location: LCCOMB_X81_Y7_N24
\clk1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~56_combout\ = (\clk1|s_divCounter\(28) & (\clk1|Add0~55\ $ (GND))) # (!\clk1|s_divCounter\(28) & (!\clk1|Add0~55\ & VCC))
-- \clk1|Add0~57\ = CARRY((\clk1|s_divCounter\(28) & !\clk1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(28),
	datad => VCC,
	cin => \clk1|Add0~55\,
	combout => \clk1|Add0~56_combout\,
	cout => \clk1|Add0~57\);

-- Location: FF_X81_Y7_N25
\clk1|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(28));

-- Location: LCCOMB_X81_Y7_N26
\clk1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~58_combout\ = (\clk1|s_divCounter\(29) & (!\clk1|Add0~57\)) # (!\clk1|s_divCounter\(29) & ((\clk1|Add0~57\) # (GND)))
-- \clk1|Add0~59\ = CARRY((!\clk1|Add0~57\) # (!\clk1|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|s_divCounter\(29),
	datad => VCC,
	cin => \clk1|Add0~57\,
	combout => \clk1|Add0~58_combout\,
	cout => \clk1|Add0~59\);

-- Location: LCCOMB_X82_Y7_N30
\clk1|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~11_combout\ = (\clk1|Equal0~5_combout\ & (!\clk1|Add0~54_combout\ & (!\clk1|Add0~58_combout\ & !\clk1|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~5_combout\,
	datab => \clk1|Add0~54_combout\,
	datac => \clk1|Add0~58_combout\,
	datad => \clk1|Add0~56_combout\,
	combout => \clk1|Equal0~11_combout\);

-- Location: FF_X81_Y7_N29
\clk1|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(30));

-- Location: LCCOMB_X81_Y7_N28
\clk1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~60_combout\ = (\clk1|s_divCounter\(30) & (\clk1|Add0~59\ $ (GND))) # (!\clk1|s_divCounter\(30) & (!\clk1|Add0~59\ & VCC))
-- \clk1|Add0~61\ = CARRY((\clk1|s_divCounter\(30) & !\clk1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(30),
	datad => VCC,
	cin => \clk1|Add0~59\,
	combout => \clk1|Add0~60_combout\,
	cout => \clk1|Add0~61\);

-- Location: LCCOMB_X82_Y7_N14
\clk1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~6_combout\ = (!\clk1|Add0~46_combout\ & (!\clk1|Add0~50_combout\ & (!\clk1|Add0~48_combout\ & !\clk1|Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Add0~46_combout\,
	datab => \clk1|Add0~50_combout\,
	datac => \clk1|Add0~48_combout\,
	datad => \clk1|Add0~52_combout\,
	combout => \clk1|Equal0~6_combout\);

-- Location: FF_X81_Y7_N31
\clk1|s_divCounter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(31));

-- Location: LCCOMB_X81_Y7_N30
\clk1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~62_combout\ = \clk1|s_divCounter\(31) $ (\clk1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|s_divCounter\(31),
	cin => \clk1|Add0~61\,
	combout => \clk1|Add0~62_combout\);

-- Location: LCCOMB_X82_Y7_N6
\clk1|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~12_combout\ = (\clk1|Equal0~11_combout\ & (!\clk1|Add0~60_combout\ & (\clk1|Equal0~6_combout\ & !\clk1|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~11_combout\,
	datab => \clk1|Add0~60_combout\,
	datac => \clk1|Equal0~6_combout\,
	datad => \clk1|Add0~62_combout\,
	combout => \clk1|Equal0~12_combout\);

-- Location: LCCOMB_X82_Y7_N10
\clk1|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|s_divCounter~2_combout\ = (\clk1|Add0~8_combout\ & (((!\clk1|Equal0~12_combout\) # (!\clk1|Equal0~10_combout\)) # (!\clk1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~4_combout\,
	datab => \clk1|Equal0~10_combout\,
	datac => \clk1|Add0~8_combout\,
	datad => \clk1|Equal0~12_combout\,
	combout => \clk1|s_divCounter~2_combout\);

-- Location: FF_X82_Y7_N11
\clk1|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(4));

-- Location: LCCOMB_X81_Y8_N10
\clk1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~10_combout\ = (\clk1|s_divCounter\(5) & (!\clk1|Add0~9\)) # (!\clk1|s_divCounter\(5) & ((\clk1|Add0~9\) # (GND)))
-- \clk1|Add0~11\ = CARRY((!\clk1|Add0~9\) # (!\clk1|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(5),
	datad => VCC,
	cin => \clk1|Add0~9\,
	combout => \clk1|Add0~10_combout\,
	cout => \clk1|Add0~11\);

-- Location: LCCOMB_X82_Y7_N16
\clk1|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~10_combout\ = (!\clk1|Add0~6_combout\ & (\clk1|Add0~2_combout\ & \clk1|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Add0~6_combout\,
	datac => \clk1|Add0~2_combout\,
	datad => \clk1|Add0~10_combout\,
	combout => \clk1|Equal0~10_combout\);

-- Location: LCCOMB_X82_Y7_N24
\clk1|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|s_divCounter~1_combout\ = (\clk1|Add0~10_combout\ & (((!\clk1|Equal0~12_combout\) # (!\clk1|Equal0~10_combout\)) # (!\clk1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~4_combout\,
	datab => \clk1|Equal0~10_combout\,
	datac => \clk1|Add0~10_combout\,
	datad => \clk1|Equal0~12_combout\,
	combout => \clk1|s_divCounter~1_combout\);

-- Location: FF_X82_Y7_N25
\clk1|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(5));

-- Location: LCCOMB_X81_Y8_N12
\clk1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~12_combout\ = (\clk1|s_divCounter\(6) & (\clk1|Add0~11\ $ (GND))) # (!\clk1|s_divCounter\(6) & (!\clk1|Add0~11\ & VCC))
-- \clk1|Add0~13\ = CARRY((\clk1|s_divCounter\(6) & !\clk1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|s_divCounter\(6),
	datad => VCC,
	cin => \clk1|Add0~11\,
	combout => \clk1|Add0~12_combout\,
	cout => \clk1|Add0~13\);

-- Location: FF_X81_Y8_N13
\clk1|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(6));

-- Location: LCCOMB_X82_Y8_N22
\clk1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~1_combout\ = (!\clk1|Add0~14_combout\ & (!\clk1|Add0~20_combout\ & (!\clk1|Add0~16_combout\ & !\clk1|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Add0~14_combout\,
	datab => \clk1|Add0~20_combout\,
	datac => \clk1|Add0~16_combout\,
	datad => \clk1|Add0~18_combout\,
	combout => \clk1|Equal0~1_combout\);

-- Location: LCCOMB_X82_Y8_N0
\clk1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~0_combout\ = (!\clk1|Add0~12_combout\ & (!\clk1|Add0~4_combout\ & (!\clk1|Add0~0_combout\ & \clk1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Add0~12_combout\,
	datab => \clk1|Add0~4_combout\,
	datac => \clk1|Add0~0_combout\,
	datad => \clk1|Add0~8_combout\,
	combout => \clk1|Equal0~0_combout\);

-- Location: LCCOMB_X82_Y8_N4
\clk1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~2_combout\ = (!\clk1|Add0~26_combout\ & (!\clk1|Add0~22_combout\ & (!\clk1|Add0~24_combout\ & !\clk1|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Add0~26_combout\,
	datab => \clk1|Add0~22_combout\,
	datac => \clk1|Add0~24_combout\,
	datad => \clk1|Add0~28_combout\,
	combout => \clk1|Equal0~2_combout\);

-- Location: LCCOMB_X82_Y8_N10
\clk1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~3_combout\ = (!\clk1|Add0~32_combout\ & (!\clk1|Add0~30_combout\ & (!\clk1|Add0~34_combout\ & !\clk1|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Add0~32_combout\,
	datab => \clk1|Add0~30_combout\,
	datac => \clk1|Add0~34_combout\,
	datad => \clk1|Add0~36_combout\,
	combout => \clk1|Equal0~3_combout\);

-- Location: LCCOMB_X82_Y8_N16
\clk1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~4_combout\ = (\clk1|Equal0~1_combout\ & (\clk1|Equal0~0_combout\ & (\clk1|Equal0~2_combout\ & \clk1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~1_combout\,
	datab => \clk1|Equal0~0_combout\,
	datac => \clk1|Equal0~2_combout\,
	datad => \clk1|Equal0~3_combout\,
	combout => \clk1|Equal0~4_combout\);

-- Location: LCCOMB_X82_Y7_N0
\clk1|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|s_divCounter~0_combout\ = (\clk1|Add0~2_combout\ & (((!\clk1|Equal0~12_combout\) # (!\clk1|Equal0~10_combout\)) # (!\clk1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~4_combout\,
	datab => \clk1|Equal0~10_combout\,
	datac => \clk1|Add0~2_combout\,
	datad => \clk1|Equal0~12_combout\,
	combout => \clk1|s_divCounter~0_combout\);

-- Location: FF_X82_Y7_N1
\clk1|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(1));

-- Location: LCCOMB_X81_Y8_N4
\clk1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Add0~4_combout\ = (\clk1|s_divCounter\(2) & (\clk1|Add0~3\ $ (GND))) # (!\clk1|s_divCounter\(2) & (!\clk1|Add0~3\ & VCC))
-- \clk1|Add0~5\ = CARRY((\clk1|s_divCounter\(2) & !\clk1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk1|s_divCounter\(2),
	datad => VCC,
	cin => \clk1|Add0~3\,
	combout => \clk1|Add0~4_combout\,
	cout => \clk1|Add0~5\);

-- Location: FF_X81_Y8_N5
\clk1|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|s_divCounter\(2));

-- Location: LCCOMB_X82_Y7_N22
\clk1|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|clkOut~0_combout\ = (\clk1|Add0~6_combout\ & (!\clk1|Add0~2_combout\ & !\clk1|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Add0~6_combout\,
	datac => \clk1|Add0~2_combout\,
	datad => \clk1|Add0~10_combout\,
	combout => \clk1|clkOut~0_combout\);

-- Location: LCCOMB_X82_Y7_N26
\clk1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~8_combout\ = (!\clk1|Add0~58_combout\ & !\clk1|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk1|Add0~58_combout\,
	datad => \clk1|Add0~56_combout\,
	combout => \clk1|Equal0~8_combout\);

-- Location: LCCOMB_X82_Y7_N18
\clk1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~7_combout\ = (\clk1|Equal0~5_combout\ & (!\clk1|Add0~54_combout\ & (\clk1|Equal0~6_combout\ & \clk1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~5_combout\,
	datab => \clk1|Add0~54_combout\,
	datac => \clk1|Equal0~6_combout\,
	datad => \clk1|Equal0~4_combout\,
	combout => \clk1|Equal0~7_combout\);

-- Location: LCCOMB_X82_Y7_N28
\clk1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|Equal0~9_combout\ = (\clk1|Equal0~8_combout\ & (!\clk1|Add0~62_combout\ & (!\clk1|Add0~60_combout\ & \clk1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|Equal0~8_combout\,
	datab => \clk1|Add0~62_combout\,
	datac => \clk1|Add0~60_combout\,
	datad => \clk1|Equal0~7_combout\,
	combout => \clk1|Equal0~9_combout\);

-- Location: LCCOMB_X82_Y7_N8
\clk1|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|clkOut~1_combout\ = (\clk1|Equal0~9_combout\ & (!\clk1|Equal0~10_combout\ & ((\clk1|clkOut~0_combout\) # (\clk1|clkOut~q\)))) # (!\clk1|Equal0~9_combout\ & (((\clk1|clkOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|clkOut~0_combout\,
	datab => \clk1|Equal0~10_combout\,
	datac => \clk1|clkOut~q\,
	datad => \clk1|Equal0~9_combout\,
	combout => \clk1|clkOut~1_combout\);

-- Location: LCCOMB_X82_Y7_N4
\clk1|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk1|clkOut~feeder_combout\ = \clk1|clkOut~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk1|clkOut~1_combout\,
	combout => \clk1|clkOut~feeder_combout\);

-- Location: FF_X82_Y7_N5
\clk1|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk1|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk1|clkOut~q\);

-- Location: CLKCTRL_G18
\clk1|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk1|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk1|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X79_Y30_N2
\auxiliaryMachine_reset|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_reset|Selector0~0_combout\ = (\SW[17]~input_o\) # (\auxiliaryMachine_reset|s_currentState.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \auxiliaryMachine_reset|s_currentState.E1~q\,
	combout => \auxiliaryMachine_reset|Selector0~0_combout\);

-- Location: FF_X79_Y30_N3
\auxiliaryMachine_reset|s_currentState.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auxiliaryMachine_reset|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxiliaryMachine_reset|s_currentState.E0~q\);

-- Location: LCCOMB_X79_Y30_N4
\auxiliaryMachine_reset|s_nextState.E1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_reset|s_nextState.E1~0_combout\ = (\SW[17]~input_o\ & !\auxiliaryMachine_reset|s_currentState.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \auxiliaryMachine_reset|s_currentState.E0~q\,
	combout => \auxiliaryMachine_reset|s_nextState.E1~0_combout\);

-- Location: FF_X79_Y30_N5
\auxiliaryMachine_reset|s_currentState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auxiliaryMachine_reset|s_nextState.E1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxiliaryMachine_reset|s_currentState.E1~q\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X75_Y33_N0
\system_core|romOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|romOut~0_combout\ = (!\auxiliaryMachine_reset|s_currentState.E1~q\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\) # (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \auxiliaryMachine_reset|s_currentState.E1~q\,
	datac => \SW[1]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \system_core|romOut~0_combout\);

-- Location: LCCOMB_X75_Y33_N12
\system_core|romOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|romOut~1_combout\ = (\system_core|romOut~0_combout\) # ((\auxiliaryMachine_reset|s_currentState.E1~q\ & \system_core|romOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auxiliaryMachine_reset|s_currentState.E1~q\,
	datac => \system_core|romOut~q\,
	datad => \system_core|romOut~0_combout\,
	combout => \system_core|romOut~1_combout\);

-- Location: FF_X75_Y33_N13
\system_core|romOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|romOut~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|romOut~q\);

-- Location: FF_X62_Y4_N3
\clk2|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(1));

-- Location: LCCOMB_X62_Y4_N0
\clk2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~0_combout\ = \clk1|s_divCounter\(0) $ (VCC)
-- \clk2|Add0~1\ = CARRY(\clk1|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk1|s_divCounter\(0),
	datad => VCC,
	combout => \clk2|Add0~0_combout\,
	cout => \clk2|Add0~1\);

-- Location: LCCOMB_X62_Y4_N2
\clk2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~2_combout\ = (\clk2|s_divCounter\(1) & (!\clk2|Add0~1\)) # (!\clk2|s_divCounter\(1) & ((\clk2|Add0~1\) # (GND)))
-- \clk2|Add0~3\ = CARRY((!\clk2|Add0~1\) # (!\clk2|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(1),
	datad => VCC,
	cin => \clk2|Add0~1\,
	combout => \clk2|Add0~2_combout\,
	cout => \clk2|Add0~3\);

-- Location: FF_X62_Y4_N13
\clk2|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(6));

-- Location: LCCOMB_X62_Y4_N4
\clk2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~4_combout\ = (\clk2|s_divCounter\(2) & (\clk2|Add0~3\ $ (GND))) # (!\clk2|s_divCounter\(2) & (!\clk2|Add0~3\ & VCC))
-- \clk2|Add0~5\ = CARRY((\clk2|s_divCounter\(2) & !\clk2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(2),
	datad => VCC,
	cin => \clk2|Add0~3\,
	combout => \clk2|Add0~4_combout\,
	cout => \clk2|Add0~5\);

-- Location: FF_X62_Y4_N5
\clk2|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(2));

-- Location: LCCOMB_X62_Y4_N6
\clk2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~6_combout\ = (\clk2|s_divCounter\(3) & (!\clk2|Add0~5\)) # (!\clk2|s_divCounter\(3) & ((\clk2|Add0~5\) # (GND)))
-- \clk2|Add0~7\ = CARRY((!\clk2|Add0~5\) # (!\clk2|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(3),
	datad => VCC,
	cin => \clk2|Add0~5\,
	combout => \clk2|Add0~6_combout\,
	cout => \clk2|Add0~7\);

-- Location: FF_X62_Y3_N29
\clk2|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(30));

-- Location: LCCOMB_X62_Y4_N12
\clk2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~12_combout\ = (\clk2|s_divCounter\(6) & (\clk2|Add0~11\ $ (GND))) # (!\clk2|s_divCounter\(6) & (!\clk2|Add0~11\ & VCC))
-- \clk2|Add0~13\ = CARRY((\clk2|s_divCounter\(6) & !\clk2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|s_divCounter\(6),
	datad => VCC,
	cin => \clk2|Add0~11\,
	combout => \clk2|Add0~12_combout\,
	cout => \clk2|Add0~13\);

-- Location: LCCOMB_X62_Y4_N14
\clk2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~14_combout\ = (\clk2|s_divCounter\(7) & (!\clk2|Add0~13\)) # (!\clk2|s_divCounter\(7) & ((\clk2|Add0~13\) # (GND)))
-- \clk2|Add0~15\ = CARRY((!\clk2|Add0~13\) # (!\clk2|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|s_divCounter\(7),
	datad => VCC,
	cin => \clk2|Add0~13\,
	combout => \clk2|Add0~14_combout\,
	cout => \clk2|Add0~15\);

-- Location: LCCOMB_X61_Y3_N14
\clk2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~8_combout\ = (!\clk2|Add0~54_combout\ & (!\clk2|Add0~58_combout\ & (!\clk2|Add0~56_combout\ & !\clk2|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Add0~54_combout\,
	datab => \clk2|Add0~58_combout\,
	datac => \clk2|Add0~56_combout\,
	datad => \clk2|Add0~60_combout\,
	combout => \clk2|Equal0~8_combout\);

-- Location: FF_X62_Y3_N31
\clk2|s_divCounter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(31));

-- Location: LCCOMB_X62_Y3_N28
\clk2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~60_combout\ = (\clk2|s_divCounter\(30) & (\clk2|Add0~59\ $ (GND))) # (!\clk2|s_divCounter\(30) & (!\clk2|Add0~59\ & VCC))
-- \clk2|Add0~61\ = CARRY((\clk2|s_divCounter\(30) & !\clk2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(30),
	datad => VCC,
	cin => \clk2|Add0~59\,
	combout => \clk2|Add0~60_combout\,
	cout => \clk2|Add0~61\);

-- Location: LCCOMB_X62_Y3_N30
\clk2|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~62_combout\ = \clk2|s_divCounter\(31) $ (\clk2|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|s_divCounter\(31),
	cin => \clk2|Add0~61\,
	combout => \clk2|Add0~62_combout\);

-- Location: LCCOMB_X61_Y3_N18
\clk2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~7_combout\ = (!\clk2|Add0~52_combout\ & (!\clk2|Add0~48_combout\ & (!\clk2|Add0~46_combout\ & !\clk2|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Add0~52_combout\,
	datab => \clk2|Add0~48_combout\,
	datac => \clk2|Add0~46_combout\,
	datad => \clk2|Add0~50_combout\,
	combout => \clk2|Equal0~7_combout\);

-- Location: LCCOMB_X63_Y3_N22
\clk2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~4_combout\ = (!\clk2|Add0~34_combout\ & (!\clk2|Add0~36_combout\ & (!\clk2|Add0~32_combout\ & !\clk2|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Add0~34_combout\,
	datab => \clk2|Add0~36_combout\,
	datac => \clk2|Add0~32_combout\,
	datad => \clk2|Add0~30_combout\,
	combout => \clk2|Equal0~4_combout\);

-- Location: LCCOMB_X63_Y3_N30
\clk2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~2_combout\ = (!\clk2|Add0~4_combout\ & (\clk2|Add0~14_combout\ & (!\clk2|Add0~8_combout\ & !\clk2|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Add0~4_combout\,
	datab => \clk2|Add0~14_combout\,
	datac => \clk2|Add0~8_combout\,
	datad => \clk2|Add0~10_combout\,
	combout => \clk2|Equal0~2_combout\);

-- Location: LCCOMB_X63_Y3_N8
\clk2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~3_combout\ = (\clk2|Add0~16_combout\ & (!\clk2|Add0~28_combout\ & (!\clk2|Add0~26_combout\ & !\clk2|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Add0~16_combout\,
	datab => \clk2|Add0~28_combout\,
	datac => \clk2|Add0~26_combout\,
	datad => \clk2|Add0~20_combout\,
	combout => \clk2|Equal0~3_combout\);

-- Location: LCCOMB_X63_Y3_N12
\clk2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~5_combout\ = (!\clk2|Add0~42_combout\ & (!\clk2|Add0~38_combout\ & (!\clk2|Add0~44_combout\ & !\clk2|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Add0~42_combout\,
	datab => \clk2|Add0~38_combout\,
	datac => \clk2|Add0~44_combout\,
	datad => \clk2|Add0~40_combout\,
	combout => \clk2|Equal0~5_combout\);

-- Location: LCCOMB_X63_Y3_N18
\clk2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~6_combout\ = (\clk2|Equal0~4_combout\ & (\clk2|Equal0~2_combout\ & (\clk2|Equal0~3_combout\ & \clk2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Equal0~4_combout\,
	datab => \clk2|Equal0~2_combout\,
	datac => \clk2|Equal0~3_combout\,
	datad => \clk2|Equal0~5_combout\,
	combout => \clk2|Equal0~6_combout\);

-- Location: LCCOMB_X61_Y3_N2
\clk2|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|s_divCounter~1_combout\ = ((!\clk2|Equal0~6_combout\) # (!\clk2|Equal0~1_combout\)) # (!\clk2|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk2|Equal0~7_combout\,
	datac => \clk2|Equal0~1_combout\,
	datad => \clk2|Equal0~6_combout\,
	combout => \clk2|s_divCounter~1_combout\);

-- Location: LCCOMB_X61_Y3_N0
\clk2|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|s_divCounter~3_combout\ = (\clk2|Add0~14_combout\ & (((\clk2|Add0~62_combout\) # (\clk2|s_divCounter~1_combout\)) # (!\clk2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Add0~14_combout\,
	datab => \clk2|Equal0~8_combout\,
	datac => \clk2|Add0~62_combout\,
	datad => \clk2|s_divCounter~1_combout\,
	combout => \clk2|s_divCounter~3_combout\);

-- Location: FF_X61_Y3_N1
\clk2|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(7));

-- Location: LCCOMB_X62_Y4_N16
\clk2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~16_combout\ = (\clk2|s_divCounter\(8) & (\clk2|Add0~15\ $ (GND))) # (!\clk2|s_divCounter\(8) & (!\clk2|Add0~15\ & VCC))
-- \clk2|Add0~17\ = CARRY((\clk2|s_divCounter\(8) & !\clk2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(8),
	datad => VCC,
	cin => \clk2|Add0~15\,
	combout => \clk2|Add0~16_combout\,
	cout => \clk2|Add0~17\);

-- Location: LCCOMB_X61_Y3_N22
\clk2|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|s_divCounter~2_combout\ = (\clk2|Add0~16_combout\ & (((\clk2|Add0~62_combout\) # (\clk2|s_divCounter~1_combout\)) # (!\clk2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Add0~16_combout\,
	datab => \clk2|Equal0~8_combout\,
	datac => \clk2|Add0~62_combout\,
	datad => \clk2|s_divCounter~1_combout\,
	combout => \clk2|s_divCounter~2_combout\);

-- Location: FF_X61_Y3_N23
\clk2|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(8));

-- Location: LCCOMB_X62_Y4_N18
\clk2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~18_combout\ = (\clk2|s_divCounter\(9) & (!\clk2|Add0~17\)) # (!\clk2|s_divCounter\(9) & ((\clk2|Add0~17\) # (GND)))
-- \clk2|Add0~19\ = CARRY((!\clk2|Add0~17\) # (!\clk2|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(9),
	datad => VCC,
	cin => \clk2|Add0~17\,
	combout => \clk2|Add0~18_combout\,
	cout => \clk2|Add0~19\);

-- Location: LCCOMB_X63_Y3_N0
\clk2|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|s_divCounter~0_combout\ = (\clk2|Add0~18_combout\ & ((!\clk2|Equal0~12_combout\) # (!\clk2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk2|Add0~18_combout\,
	datac => \clk2|Equal0~1_combout\,
	datad => \clk2|Equal0~12_combout\,
	combout => \clk2|s_divCounter~0_combout\);

-- Location: FF_X63_Y3_N1
\clk2|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(9));

-- Location: LCCOMB_X62_Y4_N20
\clk2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~20_combout\ = (\clk2|s_divCounter\(10) & (\clk2|Add0~19\ $ (GND))) # (!\clk2|s_divCounter\(10) & (!\clk2|Add0~19\ & VCC))
-- \clk2|Add0~21\ = CARRY((\clk2|s_divCounter\(10) & !\clk2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(10),
	datad => VCC,
	cin => \clk2|Add0~19\,
	combout => \clk2|Add0~20_combout\,
	cout => \clk2|Add0~21\);

-- Location: FF_X62_Y4_N21
\clk2|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(10));

-- Location: LCCOMB_X62_Y4_N22
\clk2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~22_combout\ = (\clk2|s_divCounter\(11) & (!\clk2|Add0~21\)) # (!\clk2|s_divCounter\(11) & ((\clk2|Add0~21\) # (GND)))
-- \clk2|Add0~23\ = CARRY((!\clk2|Add0~21\) # (!\clk2|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|s_divCounter\(11),
	datad => VCC,
	cin => \clk2|Add0~21\,
	combout => \clk2|Add0~22_combout\,
	cout => \clk2|Add0~23\);

-- Location: FF_X62_Y4_N23
\clk2|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(11));

-- Location: LCCOMB_X62_Y4_N24
\clk2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~24_combout\ = (\clk2|s_divCounter\(12) & (\clk2|Add0~23\ $ (GND))) # (!\clk2|s_divCounter\(12) & (!\clk2|Add0~23\ & VCC))
-- \clk2|Add0~25\ = CARRY((\clk2|s_divCounter\(12) & !\clk2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(12),
	datad => VCC,
	cin => \clk2|Add0~23\,
	combout => \clk2|Add0~24_combout\,
	cout => \clk2|Add0~25\);

-- Location: LCCOMB_X63_Y3_N24
\clk2|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|s_divCounter~5_combout\ = (\clk2|Add0~24_combout\ & ((!\clk2|Equal0~12_combout\) # (!\clk2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk2|Add0~24_combout\,
	datac => \clk2|Equal0~1_combout\,
	datad => \clk2|Equal0~12_combout\,
	combout => \clk2|s_divCounter~5_combout\);

-- Location: FF_X63_Y3_N25
\clk2|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(12));

-- Location: LCCOMB_X62_Y4_N26
\clk2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~26_combout\ = (\clk2|s_divCounter\(13) & (!\clk2|Add0~25\)) # (!\clk2|s_divCounter\(13) & ((\clk2|Add0~25\) # (GND)))
-- \clk2|Add0~27\ = CARRY((!\clk2|Add0~25\) # (!\clk2|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|s_divCounter\(13),
	datad => VCC,
	cin => \clk2|Add0~25\,
	combout => \clk2|Add0~26_combout\,
	cout => \clk2|Add0~27\);

-- Location: FF_X62_Y4_N27
\clk2|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(13));

-- Location: LCCOMB_X62_Y4_N28
\clk2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~28_combout\ = (\clk2|s_divCounter\(14) & (\clk2|Add0~27\ $ (GND))) # (!\clk2|s_divCounter\(14) & (!\clk2|Add0~27\ & VCC))
-- \clk2|Add0~29\ = CARRY((\clk2|s_divCounter\(14) & !\clk2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(14),
	datad => VCC,
	cin => \clk2|Add0~27\,
	combout => \clk2|Add0~28_combout\,
	cout => \clk2|Add0~29\);

-- Location: FF_X62_Y4_N29
\clk2|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(14));

-- Location: LCCOMB_X62_Y4_N30
\clk2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~30_combout\ = (\clk2|s_divCounter\(15) & (!\clk2|Add0~29\)) # (!\clk2|s_divCounter\(15) & ((\clk2|Add0~29\) # (GND)))
-- \clk2|Add0~31\ = CARRY((!\clk2|Add0~29\) # (!\clk2|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|s_divCounter\(15),
	datad => VCC,
	cin => \clk2|Add0~29\,
	combout => \clk2|Add0~30_combout\,
	cout => \clk2|Add0~31\);

-- Location: FF_X62_Y4_N31
\clk2|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(15));

-- Location: LCCOMB_X62_Y3_N0
\clk2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~32_combout\ = (\clk2|s_divCounter\(16) & (\clk2|Add0~31\ $ (GND))) # (!\clk2|s_divCounter\(16) & (!\clk2|Add0~31\ & VCC))
-- \clk2|Add0~33\ = CARRY((\clk2|s_divCounter\(16) & !\clk2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(16),
	datad => VCC,
	cin => \clk2|Add0~31\,
	combout => \clk2|Add0~32_combout\,
	cout => \clk2|Add0~33\);

-- Location: FF_X62_Y3_N1
\clk2|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(16));

-- Location: LCCOMB_X62_Y3_N2
\clk2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~34_combout\ = (\clk2|s_divCounter\(17) & (!\clk2|Add0~33\)) # (!\clk2|s_divCounter\(17) & ((\clk2|Add0~33\) # (GND)))
-- \clk2|Add0~35\ = CARRY((!\clk2|Add0~33\) # (!\clk2|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(17),
	datad => VCC,
	cin => \clk2|Add0~33\,
	combout => \clk2|Add0~34_combout\,
	cout => \clk2|Add0~35\);

-- Location: FF_X62_Y3_N3
\clk2|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(17));

-- Location: LCCOMB_X62_Y3_N4
\clk2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~36_combout\ = (\clk2|s_divCounter\(18) & (\clk2|Add0~35\ $ (GND))) # (!\clk2|s_divCounter\(18) & (!\clk2|Add0~35\ & VCC))
-- \clk2|Add0~37\ = CARRY((\clk2|s_divCounter\(18) & !\clk2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(18),
	datad => VCC,
	cin => \clk2|Add0~35\,
	combout => \clk2|Add0~36_combout\,
	cout => \clk2|Add0~37\);

-- Location: FF_X62_Y3_N5
\clk2|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(18));

-- Location: LCCOMB_X62_Y3_N6
\clk2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~38_combout\ = (\clk2|s_divCounter\(19) & (!\clk2|Add0~37\)) # (!\clk2|s_divCounter\(19) & ((\clk2|Add0~37\) # (GND)))
-- \clk2|Add0~39\ = CARRY((!\clk2|Add0~37\) # (!\clk2|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|s_divCounter\(19),
	datad => VCC,
	cin => \clk2|Add0~37\,
	combout => \clk2|Add0~38_combout\,
	cout => \clk2|Add0~39\);

-- Location: FF_X62_Y3_N7
\clk2|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(19));

-- Location: LCCOMB_X62_Y3_N8
\clk2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~40_combout\ = (\clk2|s_divCounter\(20) & (\clk2|Add0~39\ $ (GND))) # (!\clk2|s_divCounter\(20) & (!\clk2|Add0~39\ & VCC))
-- \clk2|Add0~41\ = CARRY((\clk2|s_divCounter\(20) & !\clk2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(20),
	datad => VCC,
	cin => \clk2|Add0~39\,
	combout => \clk2|Add0~40_combout\,
	cout => \clk2|Add0~41\);

-- Location: FF_X62_Y3_N9
\clk2|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(20));

-- Location: LCCOMB_X62_Y3_N10
\clk2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~42_combout\ = (\clk2|s_divCounter\(21) & (!\clk2|Add0~41\)) # (!\clk2|s_divCounter\(21) & ((\clk2|Add0~41\) # (GND)))
-- \clk2|Add0~43\ = CARRY((!\clk2|Add0~41\) # (!\clk2|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|s_divCounter\(21),
	datad => VCC,
	cin => \clk2|Add0~41\,
	combout => \clk2|Add0~42_combout\,
	cout => \clk2|Add0~43\);

-- Location: FF_X62_Y3_N11
\clk2|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(21));

-- Location: LCCOMB_X62_Y3_N12
\clk2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~44_combout\ = (\clk2|s_divCounter\(22) & (\clk2|Add0~43\ $ (GND))) # (!\clk2|s_divCounter\(22) & (!\clk2|Add0~43\ & VCC))
-- \clk2|Add0~45\ = CARRY((\clk2|s_divCounter\(22) & !\clk2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|s_divCounter\(22),
	datad => VCC,
	cin => \clk2|Add0~43\,
	combout => \clk2|Add0~44_combout\,
	cout => \clk2|Add0~45\);

-- Location: FF_X62_Y3_N13
\clk2|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(22));

-- Location: LCCOMB_X62_Y3_N14
\clk2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~46_combout\ = (\clk2|s_divCounter\(23) & (!\clk2|Add0~45\)) # (!\clk2|s_divCounter\(23) & ((\clk2|Add0~45\) # (GND)))
-- \clk2|Add0~47\ = CARRY((!\clk2|Add0~45\) # (!\clk2|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(23),
	datad => VCC,
	cin => \clk2|Add0~45\,
	combout => \clk2|Add0~46_combout\,
	cout => \clk2|Add0~47\);

-- Location: FF_X62_Y3_N15
\clk2|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(23));

-- Location: LCCOMB_X62_Y3_N16
\clk2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~48_combout\ = (\clk2|s_divCounter\(24) & (\clk2|Add0~47\ $ (GND))) # (!\clk2|s_divCounter\(24) & (!\clk2|Add0~47\ & VCC))
-- \clk2|Add0~49\ = CARRY((\clk2|s_divCounter\(24) & !\clk2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(24),
	datad => VCC,
	cin => \clk2|Add0~47\,
	combout => \clk2|Add0~48_combout\,
	cout => \clk2|Add0~49\);

-- Location: FF_X62_Y3_N17
\clk2|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(24));

-- Location: LCCOMB_X62_Y3_N18
\clk2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~50_combout\ = (\clk2|s_divCounter\(25) & (!\clk2|Add0~49\)) # (!\clk2|s_divCounter\(25) & ((\clk2|Add0~49\) # (GND)))
-- \clk2|Add0~51\ = CARRY((!\clk2|Add0~49\) # (!\clk2|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(25),
	datad => VCC,
	cin => \clk2|Add0~49\,
	combout => \clk2|Add0~50_combout\,
	cout => \clk2|Add0~51\);

-- Location: FF_X62_Y3_N19
\clk2|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(25));

-- Location: LCCOMB_X62_Y3_N20
\clk2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~52_combout\ = (\clk2|s_divCounter\(26) & (\clk2|Add0~51\ $ (GND))) # (!\clk2|s_divCounter\(26) & (!\clk2|Add0~51\ & VCC))
-- \clk2|Add0~53\ = CARRY((\clk2|s_divCounter\(26) & !\clk2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(26),
	datad => VCC,
	cin => \clk2|Add0~51\,
	combout => \clk2|Add0~52_combout\,
	cout => \clk2|Add0~53\);

-- Location: FF_X62_Y3_N21
\clk2|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(26));

-- Location: LCCOMB_X62_Y3_N22
\clk2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~54_combout\ = (\clk2|s_divCounter\(27) & (!\clk2|Add0~53\)) # (!\clk2|s_divCounter\(27) & ((\clk2|Add0~53\) # (GND)))
-- \clk2|Add0~55\ = CARRY((!\clk2|Add0~53\) # (!\clk2|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|s_divCounter\(27),
	datad => VCC,
	cin => \clk2|Add0~53\,
	combout => \clk2|Add0~54_combout\,
	cout => \clk2|Add0~55\);

-- Location: FF_X62_Y3_N23
\clk2|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(27));

-- Location: LCCOMB_X62_Y3_N24
\clk2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~56_combout\ = (\clk2|s_divCounter\(28) & (\clk2|Add0~55\ $ (GND))) # (!\clk2|s_divCounter\(28) & (!\clk2|Add0~55\ & VCC))
-- \clk2|Add0~57\ = CARRY((\clk2|s_divCounter\(28) & !\clk2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(28),
	datad => VCC,
	cin => \clk2|Add0~55\,
	combout => \clk2|Add0~56_combout\,
	cout => \clk2|Add0~57\);

-- Location: FF_X62_Y3_N25
\clk2|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(28));

-- Location: LCCOMB_X62_Y3_N26
\clk2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~58_combout\ = (\clk2|s_divCounter\(29) & (!\clk2|Add0~57\)) # (!\clk2|s_divCounter\(29) & ((\clk2|Add0~57\) # (GND)))
-- \clk2|Add0~59\ = CARRY((!\clk2|Add0~57\) # (!\clk2|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|s_divCounter\(29),
	datad => VCC,
	cin => \clk2|Add0~57\,
	combout => \clk2|Add0~58_combout\,
	cout => \clk2|Add0~59\);

-- Location: FF_X62_Y3_N27
\clk2|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(29));

-- Location: LCCOMB_X63_Y3_N20
\clk2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~9_combout\ = (\clk2|Equal0~4_combout\ & (\clk2|Equal0~2_combout\ & (\clk2|Equal0~3_combout\ & !\clk2|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Equal0~4_combout\,
	datab => \clk2|Equal0~2_combout\,
	datac => \clk2|Equal0~3_combout\,
	datad => \clk2|Add0~46_combout\,
	combout => \clk2|Equal0~9_combout\);

-- Location: LCCOMB_X63_Y3_N10
\clk2|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~10_combout\ = (\clk2|Equal0~5_combout\ & (!\clk2|Add0~50_combout\ & (!\clk2|Add0~48_combout\ & \clk2|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Equal0~5_combout\,
	datab => \clk2|Add0~50_combout\,
	datac => \clk2|Add0~48_combout\,
	datad => \clk2|Equal0~9_combout\,
	combout => \clk2|Equal0~10_combout\);

-- Location: LCCOMB_X63_Y3_N28
\clk2|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~11_combout\ = (!\clk2|Add0~52_combout\ & (!\clk2|Add0~54_combout\ & (!\clk2|Add0~56_combout\ & \clk2|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Add0~52_combout\,
	datab => \clk2|Add0~54_combout\,
	datac => \clk2|Add0~56_combout\,
	datad => \clk2|Equal0~10_combout\,
	combout => \clk2|Equal0~11_combout\);

-- Location: LCCOMB_X63_Y3_N6
\clk2|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~12_combout\ = (!\clk2|Add0~60_combout\ & (!\clk2|Add0~62_combout\ & (!\clk2|Add0~58_combout\ & \clk2|Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Add0~60_combout\,
	datab => \clk2|Add0~62_combout\,
	datac => \clk2|Add0~58_combout\,
	datad => \clk2|Equal0~11_combout\,
	combout => \clk2|Equal0~12_combout\);

-- Location: LCCOMB_X63_Y3_N26
\clk2|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|s_divCounter~4_combout\ = (\clk2|Add0~6_combout\ & ((!\clk2|Equal0~12_combout\) # (!\clk2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Add0~6_combout\,
	datac => \clk2|Equal0~1_combout\,
	datad => \clk2|Equal0~12_combout\,
	combout => \clk2|s_divCounter~4_combout\);

-- Location: FF_X63_Y3_N27
\clk2|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(3));

-- Location: LCCOMB_X62_Y4_N8
\clk2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~8_combout\ = (\clk2|s_divCounter\(4) & (\clk2|Add0~7\ $ (GND))) # (!\clk2|s_divCounter\(4) & (!\clk2|Add0~7\ & VCC))
-- \clk2|Add0~9\ = CARRY((\clk2|s_divCounter\(4) & !\clk2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk2|s_divCounter\(4),
	datad => VCC,
	cin => \clk2|Add0~7\,
	combout => \clk2|Add0~8_combout\,
	cout => \clk2|Add0~9\);

-- Location: FF_X62_Y4_N9
\clk2|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(4));

-- Location: LCCOMB_X62_Y4_N10
\clk2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Add0~10_combout\ = (\clk2|s_divCounter\(5) & (!\clk2|Add0~9\)) # (!\clk2|s_divCounter\(5) & ((\clk2|Add0~9\) # (GND)))
-- \clk2|Add0~11\ = CARRY((!\clk2|Add0~9\) # (!\clk2|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|s_divCounter\(5),
	datad => VCC,
	cin => \clk2|Add0~9\,
	combout => \clk2|Add0~10_combout\,
	cout => \clk2|Add0~11\);

-- Location: FF_X62_Y4_N11
\clk2|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|s_divCounter\(5));

-- Location: LCCOMB_X61_Y3_N10
\clk2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~0_combout\ = (!\clk2|Add0~2_combout\ & (!\clk2|Add0~12_combout\ & (\clk2|Add0~6_combout\ & !\clk2|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Add0~2_combout\,
	datab => \clk2|Add0~12_combout\,
	datac => \clk2|Add0~6_combout\,
	datad => \clk2|Add0~0_combout\,
	combout => \clk2|Equal0~0_combout\);

-- Location: LCCOMB_X61_Y3_N16
\clk2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|Equal0~1_combout\ = (\clk2|Equal0~0_combout\ & (!\clk2|Add0~22_combout\ & (\clk2|Add0~24_combout\ & \clk2|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Equal0~0_combout\,
	datab => \clk2|Add0~22_combout\,
	datac => \clk2|Add0~24_combout\,
	datad => \clk2|Add0~18_combout\,
	combout => \clk2|Equal0~1_combout\);

-- Location: LCCOMB_X61_Y3_N26
\clk2|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|clkOut~0_combout\ = (\clk2|Add0~2_combout\ & (\clk2|Add0~12_combout\ & (!\clk2|Add0~6_combout\ & \clk2|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Add0~2_combout\,
	datab => \clk2|Add0~12_combout\,
	datac => \clk2|Add0~6_combout\,
	datad => \clk2|Add0~0_combout\,
	combout => \clk2|clkOut~0_combout\);

-- Location: LCCOMB_X61_Y3_N30
\clk2|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|clkOut~1_combout\ = (!\clk2|Add0~24_combout\ & (\clk2|Add0~22_combout\ & (\clk2|clkOut~0_combout\ & !\clk2|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Add0~24_combout\,
	datab => \clk2|Add0~22_combout\,
	datac => \clk2|clkOut~0_combout\,
	datad => \clk2|Add0~18_combout\,
	combout => \clk2|clkOut~1_combout\);

-- Location: LCCOMB_X61_Y3_N24
\clk2|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|clkOut~2_combout\ = (!\clk2|Add0~62_combout\ & (\clk2|Equal0~7_combout\ & (\clk2|Equal0~8_combout\ & \clk2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|Add0~62_combout\,
	datab => \clk2|Equal0~7_combout\,
	datac => \clk2|Equal0~8_combout\,
	datad => \clk2|Equal0~6_combout\,
	combout => \clk2|clkOut~2_combout\);

-- Location: LCCOMB_X61_Y3_N28
\clk2|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|clkOut~3_combout\ = (\clk2|clkOut~2_combout\ & (!\clk2|Equal0~1_combout\ & ((\clk2|clkOut~q\) # (\clk2|clkOut~1_combout\)))) # (!\clk2|clkOut~2_combout\ & (\clk2|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk2|clkOut~q\,
	datab => \clk2|Equal0~1_combout\,
	datac => \clk2|clkOut~1_combout\,
	datad => \clk2|clkOut~2_combout\,
	combout => \clk2|clkOut~3_combout\);

-- Location: LCCOMB_X61_Y3_N4
\clk2|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk2|clkOut~feeder_combout\ = \clk2|clkOut~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk2|clkOut~3_combout\,
	combout => \clk2|clkOut~feeder_combout\);

-- Location: FF_X61_Y3_N5
\clk2|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clk2|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk2|clkOut~q\);

-- Location: CLKCTRL_G15
\clk2|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk2|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk2|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X74_Y32_N12
\sp2|s_shifter[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter[0]~feeder_combout\ = \SW[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[14]~input_o\,
	combout => \sp2|s_shifter[0]~feeder_combout\);

-- Location: FF_X74_Y32_N13
\sp2|s_shifter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(0));

-- Location: LCCOMB_X74_Y32_N2
\sp2|s_shifter~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~98_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(0),
	combout => \sp2|s_shifter~98_combout\);

-- Location: FF_X74_Y32_N3
\sp2|s_shifter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(1));

-- Location: LCCOMB_X74_Y32_N24
\sp2|s_shifter~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~97_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(1),
	combout => \sp2|s_shifter~97_combout\);

-- Location: FF_X74_Y32_N25
\sp2|s_shifter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(2));

-- Location: LCCOMB_X75_Y32_N6
\sp2|s_shifter~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~96_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(2),
	combout => \sp2|s_shifter~96_combout\);

-- Location: FF_X75_Y32_N7
\sp2|s_shifter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(3));

-- Location: LCCOMB_X74_Y32_N22
\sp2|s_shifter~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~95_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(3),
	combout => \sp2|s_shifter~95_combout\);

-- Location: FF_X74_Y32_N23
\sp2|s_shifter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(4));

-- Location: LCCOMB_X74_Y32_N20
\sp2|s_shifter~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~94_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \sp2|s_shifter\(4),
	combout => \sp2|s_shifter~94_combout\);

-- Location: FF_X74_Y32_N21
\sp2|s_shifter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(5));

-- Location: LCCOMB_X74_Y32_N10
\sp2|s_shifter~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~93_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(5),
	combout => \sp2|s_shifter~93_combout\);

-- Location: FF_X74_Y32_N11
\sp2|s_shifter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(6));

-- Location: LCCOMB_X74_Y32_N0
\sp2|s_shifter~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~92_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(6),
	combout => \sp2|s_shifter~92_combout\);

-- Location: FF_X74_Y32_N1
\sp2|s_shifter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(7));

-- Location: LCCOMB_X75_Y33_N14
\sp2|s_shifter~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~91_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(7),
	combout => \sp2|s_shifter~91_combout\);

-- Location: FF_X75_Y33_N15
\sp2|s_shifter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(8));

-- Location: LCCOMB_X76_Y33_N12
\sp2|s_shifter~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~90_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(8),
	combout => \sp2|s_shifter~90_combout\);

-- Location: FF_X76_Y33_N13
\sp2|s_shifter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(9));

-- Location: LCCOMB_X76_Y33_N10
\sp2|s_shifter~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~89_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(9),
	combout => \sp2|s_shifter~89_combout\);

-- Location: FF_X76_Y33_N11
\sp2|s_shifter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(10));

-- Location: LCCOMB_X76_Y33_N28
\sp2|s_shifter~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~88_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(10),
	combout => \sp2|s_shifter~88_combout\);

-- Location: FF_X76_Y33_N29
\sp2|s_shifter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(11));

-- Location: LCCOMB_X76_Y33_N18
\sp2|s_shifter~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~87_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(11),
	combout => \sp2|s_shifter~87_combout\);

-- Location: FF_X76_Y33_N19
\sp2|s_shifter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(12));

-- Location: LCCOMB_X76_Y33_N0
\sp2|s_shifter~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~86_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(12),
	combout => \sp2|s_shifter~86_combout\);

-- Location: FF_X76_Y33_N1
\sp2|s_shifter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(13));

-- Location: LCCOMB_X76_Y33_N22
\sp2|s_shifter~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~85_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(13),
	combout => \sp2|s_shifter~85_combout\);

-- Location: FF_X76_Y33_N23
\sp2|s_shifter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(14));

-- Location: LCCOMB_X76_Y33_N8
\sp2|s_shifter~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~84_combout\ = (\sp2|s_shifter\(14) & \SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sp2|s_shifter\(14),
	datad => \SW[14]~input_o\,
	combout => \sp2|s_shifter~84_combout\);

-- Location: FF_X76_Y33_N9
\sp2|s_shifter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(15));

-- Location: LCCOMB_X76_Y33_N2
\sp2|s_shifter~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~83_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \sp2|s_shifter\(15),
	combout => \sp2|s_shifter~83_combout\);

-- Location: FF_X76_Y33_N3
\sp2|s_shifter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(16));

-- Location: LCCOMB_X76_Y33_N24
\sp2|s_shifter~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~82_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(16),
	combout => \sp2|s_shifter~82_combout\);

-- Location: FF_X76_Y33_N25
\sp2|s_shifter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(17));

-- Location: LCCOMB_X76_Y33_N30
\sp2|s_shifter~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~81_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(17),
	combout => \sp2|s_shifter~81_combout\);

-- Location: FF_X76_Y33_N31
\sp2|s_shifter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(18));

-- Location: LCCOMB_X76_Y33_N4
\sp2|s_shifter~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~80_combout\ = (\sp2|s_shifter\(18) & \SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sp2|s_shifter\(18),
	datad => \SW[14]~input_o\,
	combout => \sp2|s_shifter~80_combout\);

-- Location: FF_X76_Y33_N5
\sp2|s_shifter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(19));

-- Location: LCCOMB_X79_Y33_N30
\sp2|s_shifter~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~79_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(19),
	combout => \sp2|s_shifter~79_combout\);

-- Location: FF_X79_Y33_N31
\sp2|s_shifter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(20));

-- Location: LCCOMB_X80_Y32_N18
\sp2|s_shifter~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~78_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(20),
	combout => \sp2|s_shifter~78_combout\);

-- Location: FF_X80_Y32_N19
\sp2|s_shifter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(21));

-- Location: LCCOMB_X80_Y32_N16
\sp2|s_shifter~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~77_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(21),
	combout => \sp2|s_shifter~77_combout\);

-- Location: FF_X80_Y32_N17
\sp2|s_shifter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(22));

-- Location: LCCOMB_X80_Y32_N6
\sp2|s_shifter~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~76_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(22),
	combout => \sp2|s_shifter~76_combout\);

-- Location: FF_X80_Y32_N7
\sp2|s_shifter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(23));

-- Location: LCCOMB_X80_Y32_N20
\sp2|s_shifter~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~75_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(23),
	combout => \sp2|s_shifter~75_combout\);

-- Location: FF_X80_Y32_N21
\sp2|s_shifter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(24));

-- Location: LCCOMB_X80_Y32_N10
\sp2|s_shifter~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~74_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(24),
	combout => \sp2|s_shifter~74_combout\);

-- Location: FF_X80_Y32_N11
\sp2|s_shifter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(25));

-- Location: LCCOMB_X80_Y32_N8
\sp2|s_shifter~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~73_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(25),
	combout => \sp2|s_shifter~73_combout\);

-- Location: FF_X80_Y32_N9
\sp2|s_shifter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(26));

-- Location: LCCOMB_X80_Y32_N22
\sp2|s_shifter~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~72_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \sp2|s_shifter\(26),
	combout => \sp2|s_shifter~72_combout\);

-- Location: FF_X80_Y32_N23
\sp2|s_shifter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(27));

-- Location: LCCOMB_X80_Y32_N24
\sp2|s_shifter~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~71_combout\ = (\sp2|s_shifter\(27) & \SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sp2|s_shifter\(27),
	datab => \SW[14]~input_o\,
	combout => \sp2|s_shifter~71_combout\);

-- Location: FF_X80_Y32_N25
\sp2|s_shifter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(28));

-- Location: LCCOMB_X80_Y32_N26
\sp2|s_shifter~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~70_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(28),
	combout => \sp2|s_shifter~70_combout\);

-- Location: FF_X80_Y32_N27
\sp2|s_shifter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(29));

-- Location: LCCOMB_X80_Y32_N4
\sp2|s_shifter~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~69_combout\ = (\sp2|s_shifter\(29) & \SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sp2|s_shifter\(29),
	datab => \SW[14]~input_o\,
	combout => \sp2|s_shifter~69_combout\);

-- Location: FF_X80_Y32_N5
\sp2|s_shifter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(30));

-- Location: LCCOMB_X80_Y32_N30
\sp2|s_shifter~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~68_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \sp2|s_shifter\(30),
	combout => \sp2|s_shifter~68_combout\);

-- Location: FF_X80_Y32_N31
\sp2|s_shifter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(31));

-- Location: LCCOMB_X80_Y32_N12
\sp2|s_shifter~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~67_combout\ = (\sp2|s_shifter\(31) & \SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sp2|s_shifter\(31),
	datab => \SW[14]~input_o\,
	combout => \sp2|s_shifter~67_combout\);

-- Location: FF_X80_Y32_N13
\sp2|s_shifter[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(32));

-- Location: LCCOMB_X80_Y32_N14
\sp2|s_shifter~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~66_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(32),
	combout => \sp2|s_shifter~66_combout\);

-- Location: FF_X80_Y32_N15
\sp2|s_shifter[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(33));

-- Location: LCCOMB_X80_Y32_N28
\sp2|s_shifter~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~65_combout\ = (\sp2|s_shifter\(33) & \SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sp2|s_shifter\(33),
	datac => \SW[14]~input_o\,
	combout => \sp2|s_shifter~65_combout\);

-- Location: FF_X80_Y32_N29
\sp2|s_shifter[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(34));

-- Location: LCCOMB_X83_Y32_N4
\sp2|s_shifter~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~64_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(34))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(34),
	combout => \sp2|s_shifter~64_combout\);

-- Location: FF_X83_Y32_N5
\sp2|s_shifter[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(35));

-- Location: LCCOMB_X83_Y32_N10
\sp2|s_shifter~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~63_combout\ = (\sp2|s_shifter\(35) & \SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sp2|s_shifter\(35),
	datac => \SW[14]~input_o\,
	combout => \sp2|s_shifter~63_combout\);

-- Location: FF_X83_Y32_N11
\sp2|s_shifter[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(36));

-- Location: LCCOMB_X83_Y32_N28
\sp2|s_shifter~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~62_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(36))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(36),
	combout => \sp2|s_shifter~62_combout\);

-- Location: FF_X83_Y32_N29
\sp2|s_shifter[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(37));

-- Location: LCCOMB_X83_Y32_N6
\sp2|s_shifter~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~61_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(37))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(37),
	combout => \sp2|s_shifter~61_combout\);

-- Location: FF_X83_Y32_N7
\sp2|s_shifter[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(38));

-- Location: LCCOMB_X83_Y32_N20
\sp2|s_shifter~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~60_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(38))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(38),
	combout => \sp2|s_shifter~60_combout\);

-- Location: FF_X83_Y32_N21
\sp2|s_shifter[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(39));

-- Location: LCCOMB_X83_Y32_N18
\sp2|s_shifter~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~59_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(39))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(39),
	combout => \sp2|s_shifter~59_combout\);

-- Location: FF_X83_Y32_N19
\sp2|s_shifter[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(40));

-- Location: LCCOMB_X83_Y32_N0
\sp2|s_shifter~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~58_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(40))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(40),
	combout => \sp2|s_shifter~58_combout\);

-- Location: FF_X83_Y32_N1
\sp2|s_shifter[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(41));

-- Location: LCCOMB_X83_Y32_N26
\sp2|s_shifter~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~57_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(41))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(41),
	combout => \sp2|s_shifter~57_combout\);

-- Location: FF_X83_Y32_N27
\sp2|s_shifter[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(42));

-- Location: LCCOMB_X83_Y32_N16
\sp2|s_shifter~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~56_combout\ = (\sp2|s_shifter\(42) & \SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sp2|s_shifter\(42),
	datab => \SW[14]~input_o\,
	combout => \sp2|s_shifter~56_combout\);

-- Location: FF_X83_Y32_N17
\sp2|s_shifter[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(43));

-- Location: LCCOMB_X83_Y32_N22
\sp2|s_shifter~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~55_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(43))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(43),
	combout => \sp2|s_shifter~55_combout\);

-- Location: FF_X83_Y32_N23
\sp2|s_shifter[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(44));

-- Location: LCCOMB_X83_Y32_N24
\sp2|s_shifter~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~54_combout\ = (\sp2|s_shifter\(44) & \SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sp2|s_shifter\(44),
	datab => \SW[14]~input_o\,
	combout => \sp2|s_shifter~54_combout\);

-- Location: FF_X83_Y32_N25
\sp2|s_shifter[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(45));

-- Location: LCCOMB_X83_Y32_N30
\sp2|s_shifter~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~53_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(45))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(45),
	combout => \sp2|s_shifter~53_combout\);

-- Location: FF_X83_Y32_N31
\sp2|s_shifter[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(46));

-- Location: LCCOMB_X83_Y32_N12
\sp2|s_shifter~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~52_combout\ = (\sp2|s_shifter\(46) & \SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sp2|s_shifter\(46),
	datab => \SW[14]~input_o\,
	combout => \sp2|s_shifter~52_combout\);

-- Location: FF_X83_Y32_N13
\sp2|s_shifter[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(47));

-- Location: LCCOMB_X83_Y32_N2
\sp2|s_shifter~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~51_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(47))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(47),
	combout => \sp2|s_shifter~51_combout\);

-- Location: FF_X83_Y32_N3
\sp2|s_shifter[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(48));

-- Location: LCCOMB_X83_Y32_N8
\sp2|s_shifter~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~50_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(48))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(48),
	combout => \sp2|s_shifter~50_combout\);

-- Location: FF_X83_Y32_N9
\sp2|s_shifter[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(49));

-- Location: LCCOMB_X80_Y32_N2
\sp2|s_shifter~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~49_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(49))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(49),
	combout => \sp2|s_shifter~49_combout\);

-- Location: FF_X80_Y32_N3
\sp2|s_shifter[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(50));

-- Location: LCCOMB_X80_Y32_N0
\sp2|s_shifter~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~48_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(50))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(50),
	combout => \sp2|s_shifter~48_combout\);

-- Location: FF_X80_Y32_N1
\sp2|s_shifter[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(51));

-- Location: LCCOMB_X79_Y33_N20
\sp2|s_shifter~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~47_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(51))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(51),
	combout => \sp2|s_shifter~47_combout\);

-- Location: FF_X79_Y33_N21
\sp2|s_shifter[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(52));

-- Location: LCCOMB_X79_Y33_N10
\sp2|s_shifter~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~46_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(52))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(52),
	combout => \sp2|s_shifter~46_combout\);

-- Location: FF_X79_Y33_N11
\sp2|s_shifter[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(53));

-- Location: LCCOMB_X79_Y33_N12
\sp2|s_shifter~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~45_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(53))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(53),
	combout => \sp2|s_shifter~45_combout\);

-- Location: FF_X79_Y33_N13
\sp2|s_shifter[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(54));

-- Location: LCCOMB_X79_Y33_N18
\sp2|s_shifter~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~44_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(54))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(54),
	combout => \sp2|s_shifter~44_combout\);

-- Location: FF_X79_Y33_N19
\sp2|s_shifter[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(55));

-- Location: LCCOMB_X79_Y33_N24
\sp2|s_shifter~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~43_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(55))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(55),
	combout => \sp2|s_shifter~43_combout\);

-- Location: FF_X79_Y33_N25
\sp2|s_shifter[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(56));

-- Location: LCCOMB_X79_Y33_N22
\sp2|s_shifter~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~42_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(56))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(56),
	combout => \sp2|s_shifter~42_combout\);

-- Location: FF_X79_Y33_N23
\sp2|s_shifter[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(57));

-- Location: LCCOMB_X79_Y33_N0
\sp2|s_shifter~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~41_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(57))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \sp2|s_shifter\(57),
	combout => \sp2|s_shifter~41_combout\);

-- Location: FF_X79_Y33_N1
\sp2|s_shifter[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(58));

-- Location: LCCOMB_X79_Y33_N14
\sp2|s_shifter~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~40_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(58))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(58),
	combout => \sp2|s_shifter~40_combout\);

-- Location: FF_X79_Y33_N15
\sp2|s_shifter[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(59));

-- Location: LCCOMB_X79_Y33_N28
\sp2|s_shifter~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~39_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(59))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \sp2|s_shifter\(59),
	combout => \sp2|s_shifter~39_combout\);

-- Location: FF_X79_Y33_N29
\sp2|s_shifter[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(60));

-- Location: LCCOMB_X79_Y33_N26
\sp2|s_shifter~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~38_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(60))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(60),
	combout => \sp2|s_shifter~38_combout\);

-- Location: FF_X79_Y33_N27
\sp2|s_shifter[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(61));

-- Location: LCCOMB_X79_Y33_N8
\sp2|s_shifter~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~37_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(61))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \sp2|s_shifter\(61),
	combout => \sp2|s_shifter~37_combout\);

-- Location: FF_X79_Y33_N9
\sp2|s_shifter[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(62));

-- Location: LCCOMB_X79_Y33_N6
\sp2|s_shifter~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~36_combout\ = (\sp2|s_shifter\(62) & \SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sp2|s_shifter\(62),
	datac => \SW[14]~input_o\,
	combout => \sp2|s_shifter~36_combout\);

-- Location: FF_X79_Y33_N7
\sp2|s_shifter[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(63));

-- Location: LCCOMB_X79_Y33_N4
\sp2|s_shifter~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~35_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(63))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(63),
	combout => \sp2|s_shifter~35_combout\);

-- Location: FF_X79_Y33_N5
\sp2|s_shifter[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(64));

-- Location: LCCOMB_X79_Y33_N2
\sp2|s_shifter~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~34_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(64))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \sp2|s_shifter\(64),
	combout => \sp2|s_shifter~34_combout\);

-- Location: FF_X79_Y33_N3
\sp2|s_shifter[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(65));

-- Location: LCCOMB_X79_Y33_N16
\sp2|s_shifter~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~33_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(65))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(65),
	combout => \sp2|s_shifter~33_combout\);

-- Location: FF_X79_Y33_N17
\sp2|s_shifter[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(66));

-- Location: LCCOMB_X75_Y33_N4
\sp2|s_shifter~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~32_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(66))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(66),
	combout => \sp2|s_shifter~32_combout\);

-- Location: FF_X75_Y33_N5
\sp2|s_shifter[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(67));

-- Location: LCCOMB_X74_Y33_N0
\sp2|s_shifter~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~31_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(67))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(67),
	combout => \sp2|s_shifter~31_combout\);

-- Location: FF_X74_Y33_N1
\sp2|s_shifter[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(68));

-- Location: LCCOMB_X74_Y33_N6
\sp2|s_shifter~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~30_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(68))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(68),
	combout => \sp2|s_shifter~30_combout\);

-- Location: FF_X74_Y33_N7
\sp2|s_shifter[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(69));

-- Location: LCCOMB_X73_Y33_N22
\sp2|s_shifter~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~29_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(69))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(69),
	combout => \sp2|s_shifter~29_combout\);

-- Location: FF_X73_Y33_N23
\sp2|s_shifter[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(70));

-- Location: LCCOMB_X73_Y33_N0
\sp2|s_shifter~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~28_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(70))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \sp2|s_shifter\(70),
	combout => \sp2|s_shifter~28_combout\);

-- Location: FF_X73_Y33_N1
\sp2|s_shifter[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(71));

-- Location: LCCOMB_X73_Y33_N18
\sp2|s_shifter~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~27_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(71))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(71),
	combout => \sp2|s_shifter~27_combout\);

-- Location: FF_X73_Y33_N19
\sp2|s_shifter[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(72));

-- Location: LCCOMB_X73_Y33_N12
\sp2|s_shifter~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~26_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(72))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(72),
	combout => \sp2|s_shifter~26_combout\);

-- Location: FF_X73_Y33_N13
\sp2|s_shifter[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(73));

-- Location: LCCOMB_X73_Y33_N26
\sp2|s_shifter~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~25_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(73))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(73),
	combout => \sp2|s_shifter~25_combout\);

-- Location: FF_X73_Y33_N27
\sp2|s_shifter[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(74));

-- Location: LCCOMB_X73_Y33_N28
\sp2|s_shifter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~24_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(74))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \sp2|s_shifter\(74),
	combout => \sp2|s_shifter~24_combout\);

-- Location: FF_X73_Y33_N29
\sp2|s_shifter[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(75));

-- Location: LCCOMB_X73_Y33_N10
\sp2|s_shifter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~23_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(75))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(75),
	combout => \sp2|s_shifter~23_combout\);

-- Location: FF_X73_Y33_N11
\sp2|s_shifter[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(76));

-- Location: LCCOMB_X73_Y33_N20
\sp2|s_shifter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~22_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(76))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(76),
	combout => \sp2|s_shifter~22_combout\);

-- Location: FF_X73_Y33_N21
\sp2|s_shifter[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(77));

-- Location: LCCOMB_X73_Y33_N30
\sp2|s_shifter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~21_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(77))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(77),
	combout => \sp2|s_shifter~21_combout\);

-- Location: FF_X73_Y33_N31
\sp2|s_shifter[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(78));

-- Location: LCCOMB_X73_Y33_N16
\sp2|s_shifter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~20_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(78))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \sp2|s_shifter\(78),
	combout => \sp2|s_shifter~20_combout\);

-- Location: FF_X73_Y33_N17
\sp2|s_shifter[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(79));

-- Location: LCCOMB_X73_Y33_N2
\sp2|s_shifter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~19_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(79))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(79),
	combout => \sp2|s_shifter~19_combout\);

-- Location: FF_X73_Y33_N3
\sp2|s_shifter[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(80));

-- Location: LCCOMB_X73_Y33_N24
\sp2|s_shifter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~18_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(80))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(80),
	combout => \sp2|s_shifter~18_combout\);

-- Location: FF_X73_Y33_N25
\sp2|s_shifter[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(81));

-- Location: LCCOMB_X73_Y33_N6
\sp2|s_shifter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~17_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(81))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(81),
	combout => \sp2|s_shifter~17_combout\);

-- Location: FF_X73_Y33_N7
\sp2|s_shifter[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(82));

-- Location: LCCOMB_X73_Y33_N8
\sp2|s_shifter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~16_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(82))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(82),
	combout => \sp2|s_shifter~16_combout\);

-- Location: FF_X73_Y33_N9
\sp2|s_shifter[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(83));

-- Location: LCCOMB_X74_Y33_N20
\sp2|s_shifter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~15_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(83))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(83),
	combout => \sp2|s_shifter~15_combout\);

-- Location: FF_X74_Y33_N21
\sp2|s_shifter[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(84));

-- Location: LCCOMB_X75_Y33_N6
\sp2|s_shifter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~14_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(84))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(84),
	combout => \sp2|s_shifter~14_combout\);

-- Location: FF_X75_Y33_N7
\sp2|s_shifter[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(85));

-- Location: LCCOMB_X75_Y33_N24
\sp2|s_shifter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~13_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(85))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(85),
	combout => \sp2|s_shifter~13_combout\);

-- Location: FF_X75_Y33_N25
\sp2|s_shifter[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(86));

-- Location: LCCOMB_X75_Y33_N2
\sp2|s_shifter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~12_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(86))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(86),
	combout => \sp2|s_shifter~12_combout\);

-- Location: FF_X75_Y33_N3
\sp2|s_shifter[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(87));

-- Location: LCCOMB_X76_Y33_N6
\sp2|s_shifter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~11_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(87))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(87),
	combout => \sp2|s_shifter~11_combout\);

-- Location: FF_X76_Y33_N7
\sp2|s_shifter[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(88));

-- Location: LCCOMB_X76_Y33_N20
\sp2|s_shifter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~10_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(88))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(88),
	combout => \sp2|s_shifter~10_combout\);

-- Location: FF_X76_Y33_N21
\sp2|s_shifter[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(89));

-- Location: LCCOMB_X76_Y33_N26
\sp2|s_shifter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~9_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(89))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(89),
	combout => \sp2|s_shifter~9_combout\);

-- Location: FF_X76_Y33_N27
\sp2|s_shifter[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(90));

-- Location: LCCOMB_X76_Y33_N16
\sp2|s_shifter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~8_combout\ = (\sp2|s_shifter\(90) & \SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sp2|s_shifter\(90),
	datad => \SW[14]~input_o\,
	combout => \sp2|s_shifter~8_combout\);

-- Location: FF_X76_Y33_N17
\sp2|s_shifter[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(91));

-- Location: LCCOMB_X75_Y32_N0
\sp2|s_shifter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~7_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(91))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(91),
	combout => \sp2|s_shifter~7_combout\);

-- Location: FF_X75_Y32_N1
\sp2|s_shifter[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(92));

-- Location: LCCOMB_X75_Y32_N14
\sp2|s_shifter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~6_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(92))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(92),
	combout => \sp2|s_shifter~6_combout\);

-- Location: FF_X75_Y32_N15
\sp2|s_shifter[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(93));

-- Location: LCCOMB_X76_Y32_N10
\sp2|s_shifter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~5_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(93))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(93),
	combout => \sp2|s_shifter~5_combout\);

-- Location: FF_X76_Y32_N11
\sp2|s_shifter[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(94));

-- Location: LCCOMB_X76_Y32_N12
\sp2|s_shifter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~4_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(94))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(94),
	combout => \sp2|s_shifter~4_combout\);

-- Location: FF_X76_Y32_N13
\sp2|s_shifter[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(95));

-- Location: LCCOMB_X76_Y32_N6
\sp2|s_shifter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~3_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(95))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(95),
	combout => \sp2|s_shifter~3_combout\);

-- Location: FF_X76_Y32_N7
\sp2|s_shifter[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(96));

-- Location: LCCOMB_X76_Y32_N24
\sp2|s_shifter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~2_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(96))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(96),
	combout => \sp2|s_shifter~2_combout\);

-- Location: FF_X76_Y32_N25
\sp2|s_shifter[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(97));

-- Location: LCCOMB_X75_Y32_N12
\sp2|s_shifter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~0_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(97))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(97),
	combout => \sp2|s_shifter~0_combout\);

-- Location: FF_X75_Y32_N13
\sp2|s_shifter[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(98));

-- Location: LCCOMB_X76_Y32_N22
\sp2|s_shifter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_shifter~1_combout\ = (\SW[14]~input_o\ & \sp2|s_shifter\(98))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[14]~input_o\,
	datad => \sp2|s_shifter\(98),
	combout => \sp2|s_shifter~1_combout\);

-- Location: FF_X76_Y32_N23
\sp2|s_shifter[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_shifter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|s_shifter\(99));

-- Location: LCCOMB_X76_Y32_N16
\sp2|s_tmsb\ : cycloneive_lcell_comb
-- Equation(s):
-- \sp2|s_tmsb~combout\ = \sp2|s_shifter\(99) $ (\sp2|s_shifter\(98))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sp2|s_shifter\(99),
	datad => \sp2|s_shifter\(98),
	combout => \sp2|s_tmsb~combout\);

-- Location: FF_X76_Y32_N17
\sp2|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk2|clkOut~clkctrl_outclk\,
	d => \sp2|s_tmsb~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sp2|pulse~q\);

-- Location: LCCOMB_X74_Y35_N0
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = ((wordCount(0)) # (!wordCount(4))) # (!wordCount(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wordCount(1),
	datac => wordCount(0),
	datad => wordCount(4),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X75_Y35_N2
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = wordCount(0) $ (VCC)
-- \Add1~1\ = CARRY(wordCount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wordCount(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X75_Y35_N4
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (wordCount(1) & (!\Add1~1\)) # (!wordCount(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!wordCount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X75_Y35_N6
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (wordCount(2) & (\Add1~3\ $ (GND))) # (!wordCount(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((wordCount(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X74_Y35_N8
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (\wordCount[11]~0_combout\ & (\Add1~4_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordCount[11]~0_combout\,
	datac => \Add1~4_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~11_combout\);

-- Location: FF_X74_Y35_N9
\wordCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~11_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(2));

-- Location: LCCOMB_X75_Y35_N8
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (wordCount(3) & (!\Add1~5\)) # (!wordCount(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!wordCount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X74_Y35_N14
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\wordCount[11]~0_combout\ & (\Add1~6_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordCount[11]~0_combout\,
	datac => \Add1~6_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~12_combout\);

-- Location: FF_X74_Y35_N15
\wordCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~12_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(3));

-- Location: LCCOMB_X75_Y35_N10
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (wordCount(4) & (\Add1~7\ $ (GND))) # (!wordCount(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((wordCount(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wordCount(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X75_Y35_N12
\Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~13_combout\ = (wordCount(5) & (!\Add1~9\)) # (!wordCount(5) & ((\Add1~9\) # (GND)))
-- \Add1~14\ = CARRY((!\Add1~9\) # (!wordCount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~13_combout\,
	cout => \Add1~14\);

-- Location: LCCOMB_X74_Y35_N12
\Add1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~90_combout\ = (\wordCount[11]~0_combout\ & (\Add1~13_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordCount[11]~0_combout\,
	datac => \Add1~13_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~90_combout\);

-- Location: FF_X74_Y35_N13
\wordCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~90_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(5));

-- Location: LCCOMB_X75_Y35_N14
\Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (wordCount(6) & (\Add1~14\ $ (GND))) # (!wordCount(6) & (!\Add1~14\ & VCC))
-- \Add1~16\ = CARRY((wordCount(6) & !\Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wordCount(6),
	datad => VCC,
	cin => \Add1~14\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X74_Y36_N30
\Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (!\wordval~6_combout\ & (\wordCount[11]~0_combout\ & \Add1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wordval~6_combout\,
	datac => \wordCount[11]~0_combout\,
	datad => \Add1~15_combout\,
	combout => \Add1~17_combout\);

-- Location: FF_X74_Y36_N31
\wordCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~17_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(6));

-- Location: LCCOMB_X75_Y35_N16
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (wordCount(7) & (!\Add1~16\)) # (!wordCount(7) & ((\Add1~16\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~16\) # (!wordCount(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(7),
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X74_Y36_N4
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\wordCount[11]~0_combout\ & (\Add1~18_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordCount[11]~0_combout\,
	datac => \Add1~18_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~20_combout\);

-- Location: FF_X74_Y36_N5
\wordCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~20_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(7));

-- Location: LCCOMB_X75_Y35_N18
\Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (wordCount(8) & (\Add1~19\ $ (GND))) # (!wordCount(8) & (!\Add1~19\ & VCC))
-- \Add1~22\ = CARRY((wordCount(8) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(8),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~21_combout\,
	cout => \Add1~22\);

-- Location: LCCOMB_X74_Y36_N14
\Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (!\wordval~6_combout\ & (\wordCount[11]~0_combout\ & \Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wordval~6_combout\,
	datac => \wordCount[11]~0_combout\,
	datad => \Add1~21_combout\,
	combout => \Add1~23_combout\);

-- Location: FF_X74_Y36_N15
\wordCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~23_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(8));

-- Location: LCCOMB_X75_Y35_N20
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (wordCount(9) & (!\Add1~22\)) # (!wordCount(9) & ((\Add1~22\) # (GND)))
-- \Add1~25\ = CARRY((!\Add1~22\) # (!wordCount(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wordCount(9),
	datad => VCC,
	cin => \Add1~22\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X74_Y36_N28
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (!\wordval~6_combout\ & (\wordCount[11]~0_combout\ & \Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wordval~6_combout\,
	datac => \wordCount[11]~0_combout\,
	datad => \Add1~24_combout\,
	combout => \Add1~26_combout\);

-- Location: FF_X74_Y36_N29
\wordCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~26_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(9));

-- Location: LCCOMB_X75_Y35_N22
\Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (wordCount(10) & (\Add1~25\ $ (GND))) # (!wordCount(10) & (!\Add1~25\ & VCC))
-- \Add1~28\ = CARRY((wordCount(10) & !\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wordCount(10),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~27_combout\,
	cout => \Add1~28\);

-- Location: LCCOMB_X76_Y35_N14
\Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (\Add1~27_combout\ & (\wordCount[11]~0_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~27_combout\,
	datac => \wordCount[11]~0_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~29_combout\);

-- Location: FF_X76_Y35_N15
\wordCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~29_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(10));

-- Location: LCCOMB_X75_Y35_N24
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (wordCount(11) & (!\Add1~28\)) # (!wordCount(11) & ((\Add1~28\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~28\) # (!wordCount(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wordCount(11),
	datad => VCC,
	cin => \Add1~28\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X76_Y35_N8
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\Add1~30_combout\ & (\wordCount[11]~0_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~30_combout\,
	datac => \wordCount[11]~0_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~32_combout\);

-- Location: FF_X76_Y35_N9
\wordCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~32_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(11));

-- Location: LCCOMB_X75_Y35_N26
\Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~33_combout\ = (wordCount(12) & (\Add1~31\ $ (GND))) # (!wordCount(12) & (!\Add1~31\ & VCC))
-- \Add1~34\ = CARRY((wordCount(12) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wordCount(12),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~33_combout\,
	cout => \Add1~34\);

-- Location: LCCOMB_X76_Y35_N10
\Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~35_combout\ = (\Add1~33_combout\ & (\wordCount[11]~0_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~33_combout\,
	datac => \wordCount[11]~0_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~35_combout\);

-- Location: FF_X76_Y35_N11
\wordCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~35_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(12));

-- Location: LCCOMB_X75_Y35_N28
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (wordCount(13) & (!\Add1~34\)) # (!wordCount(13) & ((\Add1~34\) # (GND)))
-- \Add1~37\ = CARRY((!\Add1~34\) # (!wordCount(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(13),
	datad => VCC,
	cin => \Add1~34\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X76_Y35_N20
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\Add1~36_combout\ & (\wordCount[11]~0_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~36_combout\,
	datac => \wordCount[11]~0_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~38_combout\);

-- Location: FF_X76_Y35_N21
\wordCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~38_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(13));

-- Location: LCCOMB_X75_Y35_N30
\Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (wordCount(14) & (\Add1~37\ $ (GND))) # (!wordCount(14) & (!\Add1~37\ & VCC))
-- \Add1~40\ = CARRY((wordCount(14) & !\Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(14),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~39_combout\,
	cout => \Add1~40\);

-- Location: LCCOMB_X75_Y36_N30
\Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~41_combout\ = (!\wordval~6_combout\ & (\Add1~39_combout\ & \wordCount[11]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordval~6_combout\,
	datac => \Add1~39_combout\,
	datad => \wordCount[11]~0_combout\,
	combout => \Add1~41_combout\);

-- Location: FF_X75_Y36_N31
\wordCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~41_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(14));

-- Location: LCCOMB_X75_Y34_N0
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (wordCount(15) & (!\Add1~40\)) # (!wordCount(15) & ((\Add1~40\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~40\) # (!wordCount(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(15),
	datad => VCC,
	cin => \Add1~40\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X74_Y34_N0
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\wordCount[11]~0_combout\ & (\Add1~42_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordCount[11]~0_combout\,
	datac => \Add1~42_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~44_combout\);

-- Location: FF_X74_Y34_N1
\wordCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~44_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(15));

-- Location: LCCOMB_X75_Y34_N2
\Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~45_combout\ = (wordCount(16) & (\Add1~43\ $ (GND))) # (!wordCount(16) & (!\Add1~43\ & VCC))
-- \Add1~46\ = CARRY((wordCount(16) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wordCount(16),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~45_combout\,
	cout => \Add1~46\);

-- Location: LCCOMB_X74_Y34_N30
\Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~47_combout\ = (!\wordval~6_combout\ & (\wordCount[11]~0_combout\ & \Add1~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wordval~6_combout\,
	datac => \wordCount[11]~0_combout\,
	datad => \Add1~45_combout\,
	combout => \Add1~47_combout\);

-- Location: FF_X74_Y34_N31
\wordCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~47_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(16));

-- Location: LCCOMB_X75_Y34_N4
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (wordCount(17) & (!\Add1~46\)) # (!wordCount(17) & ((\Add1~46\) # (GND)))
-- \Add1~49\ = CARRY((!\Add1~46\) # (!wordCount(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wordCount(17),
	datad => VCC,
	cin => \Add1~46\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X75_Y36_N12
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (!\wordval~6_combout\ & (\Add1~48_combout\ & \wordCount[11]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordval~6_combout\,
	datac => \Add1~48_combout\,
	datad => \wordCount[11]~0_combout\,
	combout => \Add1~50_combout\);

-- Location: FF_X75_Y36_N13
\wordCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~50_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(17));

-- Location: LCCOMB_X75_Y34_N6
\Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~51_combout\ = (wordCount(18) & (\Add1~49\ $ (GND))) # (!wordCount(18) & (!\Add1~49\ & VCC))
-- \Add1~52\ = CARRY((wordCount(18) & !\Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wordCount(18),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~51_combout\,
	cout => \Add1~52\);

-- Location: LCCOMB_X74_Y36_N24
\Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~53_combout\ = (\wordCount[11]~0_combout\ & (\Add1~51_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordCount[11]~0_combout\,
	datac => \Add1~51_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~53_combout\);

-- Location: FF_X74_Y36_N25
\wordCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~53_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(18));

-- Location: LCCOMB_X75_Y34_N8
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (wordCount(19) & (!\Add1~52\)) # (!wordCount(19) & ((\Add1~52\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~52\) # (!wordCount(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(19),
	datad => VCC,
	cin => \Add1~52\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X74_Y36_N26
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (\wordCount[11]~0_combout\ & (\Add1~54_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordCount[11]~0_combout\,
	datac => \Add1~54_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~56_combout\);

-- Location: FF_X74_Y36_N27
\wordCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~56_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(19));

-- Location: LCCOMB_X75_Y34_N10
\Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~57_combout\ = (wordCount(20) & (\Add1~55\ $ (GND))) # (!wordCount(20) & (!\Add1~55\ & VCC))
-- \Add1~58\ = CARRY((wordCount(20) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wordCount(20),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~57_combout\,
	cout => \Add1~58\);

-- Location: LCCOMB_X74_Y36_N12
\Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~59_combout\ = (\wordCount[11]~0_combout\ & (\Add1~57_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordCount[11]~0_combout\,
	datac => \Add1~57_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~59_combout\);

-- Location: FF_X74_Y36_N13
\wordCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~59_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(20));

-- Location: LCCOMB_X75_Y34_N12
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (wordCount(21) & (!\Add1~58\)) # (!wordCount(21) & ((\Add1~58\) # (GND)))
-- \Add1~61\ = CARRY((!\Add1~58\) # (!wordCount(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(21),
	datad => VCC,
	cin => \Add1~58\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X74_Y36_N22
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = (\wordCount[11]~0_combout\ & (\Add1~60_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordCount[11]~0_combout\,
	datac => \Add1~60_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~62_combout\);

-- Location: FF_X74_Y36_N23
\wordCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~62_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(21));

-- Location: LCCOMB_X74_Y36_N0
\Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (!wordCount(19) & (!wordCount(18) & (!wordCount(21) & !wordCount(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(19),
	datab => wordCount(18),
	datac => wordCount(21),
	datad => wordCount(20),
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X74_Y36_N18
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!wordCount(6) & (!wordCount(7) & (!wordCount(8) & !wordCount(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(6),
	datab => wordCount(7),
	datac => wordCount(8),
	datad => wordCount(9),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X76_Y35_N26
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!wordCount(12) & (!wordCount(11) & (!wordCount(10) & !wordCount(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(12),
	datab => wordCount(11),
	datac => wordCount(10),
	datad => wordCount(13),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X75_Y36_N18
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!wordCount(14) & (!wordCount(17) & (!wordCount(15) & !wordCount(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(14),
	datab => wordCount(17),
	datac => wordCount(15),
	datad => wordCount(16),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X75_Y36_N28
\Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~3_combout\ & (\Equal3~0_combout\ & (\Equal3~1_combout\ & \Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~3_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal3~2_combout\,
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X74_Y35_N24
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!wordCount(3) & !wordCount(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => wordCount(3),
	datad => wordCount(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X74_Y35_N2
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!wordCount(4) & (\LessThan0~0_combout\ & ((!wordCount(0)) # (!wordCount(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(4),
	datab => wordCount(1),
	datac => wordCount(0),
	datad => \LessThan0~0_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X75_Y34_N14
\Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~63_combout\ = (wordCount(22) & (\Add1~61\ $ (GND))) # (!wordCount(22) & (!\Add1~61\ & VCC))
-- \Add1~64\ = CARRY((wordCount(22) & !\Add1~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wordCount(22),
	datad => VCC,
	cin => \Add1~61\,
	combout => \Add1~63_combout\,
	cout => \Add1~64\);

-- Location: LCCOMB_X74_Y34_N24
\Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~65_combout\ = (\wordCount[11]~0_combout\ & (\Add1~63_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordCount[11]~0_combout\,
	datac => \Add1~63_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~65_combout\);

-- Location: FF_X74_Y34_N25
\wordCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~65_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(22));

-- Location: LCCOMB_X75_Y34_N16
\Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~66_combout\ = (wordCount(23) & (!\Add1~64\)) # (!wordCount(23) & ((\Add1~64\) # (GND)))
-- \Add1~67\ = CARRY((!\Add1~64\) # (!wordCount(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(23),
	datad => VCC,
	cin => \Add1~64\,
	combout => \Add1~66_combout\,
	cout => \Add1~67\);

-- Location: LCCOMB_X74_Y34_N18
\Add1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~68_combout\ = (!\wordval~6_combout\ & (\wordCount[11]~0_combout\ & \Add1~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wordval~6_combout\,
	datac => \wordCount[11]~0_combout\,
	datad => \Add1~66_combout\,
	combout => \Add1~68_combout\);

-- Location: FF_X74_Y34_N19
\wordCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~68_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(23));

-- Location: LCCOMB_X75_Y34_N18
\Add1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~69_combout\ = (wordCount(24) & (\Add1~67\ $ (GND))) # (!wordCount(24) & (!\Add1~67\ & VCC))
-- \Add1~70\ = CARRY((wordCount(24) & !\Add1~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(24),
	datad => VCC,
	cin => \Add1~67\,
	combout => \Add1~69_combout\,
	cout => \Add1~70\);

-- Location: LCCOMB_X74_Y34_N8
\Add1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~71_combout\ = (!\wordval~6_combout\ & (\wordCount[11]~0_combout\ & \Add1~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wordval~6_combout\,
	datac => \wordCount[11]~0_combout\,
	datad => \Add1~69_combout\,
	combout => \Add1~71_combout\);

-- Location: FF_X74_Y34_N9
\wordCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~71_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(24));

-- Location: LCCOMB_X75_Y34_N20
\Add1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = (wordCount(25) & (!\Add1~70\)) # (!wordCount(25) & ((\Add1~70\) # (GND)))
-- \Add1~73\ = CARRY((!\Add1~70\) # (!wordCount(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(25),
	datad => VCC,
	cin => \Add1~70\,
	combout => \Add1~72_combout\,
	cout => \Add1~73\);

-- Location: LCCOMB_X74_Y34_N26
\Add1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = (\wordCount[11]~0_combout\ & (\Add1~72_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordCount[11]~0_combout\,
	datac => \Add1~72_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~74_combout\);

-- Location: FF_X74_Y34_N27
\wordCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~74_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(25));

-- Location: LCCOMB_X75_Y34_N22
\Add1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~75_combout\ = (wordCount(26) & (\Add1~73\ $ (GND))) # (!wordCount(26) & (!\Add1~73\ & VCC))
-- \Add1~76\ = CARRY((wordCount(26) & !\Add1~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wordCount(26),
	datad => VCC,
	cin => \Add1~73\,
	combout => \Add1~75_combout\,
	cout => \Add1~76\);

-- Location: LCCOMB_X74_Y35_N22
\Add1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~77_combout\ = (!\wordval~6_combout\ & (\wordCount[11]~0_combout\ & \Add1~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordval~6_combout\,
	datac => \wordCount[11]~0_combout\,
	datad => \Add1~75_combout\,
	combout => \Add1~77_combout\);

-- Location: FF_X74_Y35_N23
\wordCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~77_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(26));

-- Location: LCCOMB_X75_Y34_N24
\Add1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = (wordCount(27) & (!\Add1~76\)) # (!wordCount(27) & ((\Add1~76\) # (GND)))
-- \Add1~79\ = CARRY((!\Add1~76\) # (!wordCount(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wordCount(27),
	datad => VCC,
	cin => \Add1~76\,
	combout => \Add1~78_combout\,
	cout => \Add1~79\);

-- Location: LCCOMB_X74_Y35_N28
\Add1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = (\wordCount[11]~0_combout\ & (\Add1~78_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordCount[11]~0_combout\,
	datac => \Add1~78_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~80_combout\);

-- Location: FF_X74_Y35_N29
\wordCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~80_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(27));

-- Location: LCCOMB_X75_Y34_N26
\Add1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~81_combout\ = (wordCount(28) & (\Add1~79\ $ (GND))) # (!wordCount(28) & (!\Add1~79\ & VCC))
-- \Add1~82\ = CARRY((wordCount(28) & !\Add1~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(28),
	datad => VCC,
	cin => \Add1~79\,
	combout => \Add1~81_combout\,
	cout => \Add1~82\);

-- Location: LCCOMB_X74_Y35_N26
\Add1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~83_combout\ = (\wordCount[11]~0_combout\ & (\Add1~81_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordCount[11]~0_combout\,
	datac => \Add1~81_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~83_combout\);

-- Location: FF_X74_Y35_N27
\wordCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~83_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(28));

-- Location: LCCOMB_X75_Y34_N28
\Add1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~84_combout\ = (wordCount(29) & (!\Add1~82\)) # (!wordCount(29) & ((\Add1~82\) # (GND)))
-- \Add1~85\ = CARRY((!\Add1~82\) # (!wordCount(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(29),
	datad => VCC,
	cin => \Add1~82\,
	combout => \Add1~84_combout\,
	cout => \Add1~85\);

-- Location: LCCOMB_X74_Y35_N20
\Add1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~86_combout\ = (!\wordval~6_combout\ & (!\Equal3~9_combout\ & (!\Equal4~0_combout\ & \Add1~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordval~6_combout\,
	datab => \Equal3~9_combout\,
	datac => \Equal4~0_combout\,
	datad => \Add1~84_combout\,
	combout => \Add1~86_combout\);

-- Location: FF_X74_Y35_N21
\wordCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~86_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(29));

-- Location: LCCOMB_X75_Y34_N30
\Add1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~87_combout\ = \Add1~85\ $ (!wordCount(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => wordCount(30),
	cin => \Add1~85\,
	combout => \Add1~87_combout\);

-- Location: LCCOMB_X76_Y34_N26
\Add1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~89_combout\ = (!\Equal4~0_combout\ & (!\wordval~6_combout\ & (!\Equal3~9_combout\ & \Add1~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \wordval~6_combout\,
	datac => \Equal3~9_combout\,
	datad => \Add1~87_combout\,
	combout => \Add1~89_combout\);

-- Location: FF_X76_Y34_N27
\wordCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~89_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(30));

-- Location: LCCOMB_X74_Y35_N18
\Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (!wordCount(28) & (!wordCount(27) & (!wordCount(26) & !wordCount(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(28),
	datab => wordCount(27),
	datac => wordCount(26),
	datad => wordCount(29),
	combout => \Equal3~6_combout\);

-- Location: LCCOMB_X74_Y34_N28
\Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (!wordCount(25) & (!wordCount(22) & (!wordCount(24) & !wordCount(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(25),
	datab => wordCount(22),
	datac => wordCount(24),
	datad => wordCount(23),
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X75_Y36_N10
\Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (!wordCount(30) & (\Equal3~6_combout\ & \Equal3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wordCount(30),
	datac => \Equal3~6_combout\,
	datad => \Equal3~5_combout\,
	combout => \Equal3~7_combout\);

-- Location: LCCOMB_X75_Y36_N2
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((wordCount(5) & !\LessThan1~0_combout\)) # (!\Equal3~7_combout\)) # (!\Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(5),
	datab => \Equal3~4_combout\,
	datac => \LessThan1~0_combout\,
	datad => \Equal3~7_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X74_Y35_N30
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!wordCount(3) & (!wordCount(2) & !wordCount(1)))) # (!wordCount(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(4),
	datab => wordCount(3),
	datac => wordCount(2),
	datad => wordCount(1),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X75_Y36_N8
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~1_combout\ & (\Equal3~4_combout\ & (!wordCount(5) & \Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \Equal3~4_combout\,
	datac => wordCount(5),
	datad => \Equal3~7_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X75_Y36_N24
\Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (\LessThan0~0_combout\ & (\Equal3~4_combout\ & (!wordCount(5) & \Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Equal3~4_combout\,
	datac => wordCount(5),
	datad => \Equal3~7_combout\,
	combout => \Equal3~8_combout\);

-- Location: LCCOMB_X75_Y36_N16
\wordval~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~6_combout\ = (\LessThan1~1_combout\ & (!\LessThan0~2_combout\ & ((\Equal5~0_combout\) # (!\Equal3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \LessThan1~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Equal3~8_combout\,
	combout => \wordval~6_combout\);

-- Location: LCCOMB_X75_Y35_N0
\Add1~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~91_combout\ = (\Equal3~9_combout\) # ((!\wordval~6_combout\ & (\Add1~0_combout\ & \wordCount[11]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordval~6_combout\,
	datab => \Add1~0_combout\,
	datac => \Equal3~9_combout\,
	datad => \wordCount[11]~0_combout\,
	combout => \Add1~91_combout\);

-- Location: FF_X75_Y35_N1
\wordCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~91_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(0));

-- Location: LCCOMB_X75_Y36_N6
\Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = (!wordCount(4) & (!wordCount(0) & (!wordCount(1) & \Equal3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(4),
	datab => wordCount(0),
	datac => wordCount(1),
	datad => \Equal3~8_combout\,
	combout => \Equal3~9_combout\);

-- Location: LCCOMB_X74_Y35_N16
\wordCount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordCount~1_combout\ = (!\Equal3~9_combout\ & ((\Equal4~0_combout\) # ((\Add1~2_combout\ & !\wordval~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal3~9_combout\,
	datac => \Add1~2_combout\,
	datad => \wordval~6_combout\,
	combout => \wordCount~1_combout\);

-- Location: FF_X74_Y35_N17
\wordCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \wordCount~1_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(1));

-- Location: LCCOMB_X75_Y36_N0
\wordCount[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordCount[11]~0_combout\ = (wordCount(4)) # ((wordCount(1)) # (!\Equal3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(4),
	datab => wordCount(1),
	datad => \Equal3~8_combout\,
	combout => \wordCount[11]~0_combout\);

-- Location: LCCOMB_X74_Y35_N6
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\wordCount[11]~0_combout\ & (\Add1~8_combout\ & !\wordval~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordCount[11]~0_combout\,
	datac => \Add1~8_combout\,
	datad => \wordval~6_combout\,
	combout => \Add1~10_combout\);

-- Location: FF_X74_Y35_N7
\wordCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Add1~10_combout\,
	ena => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordCount(4));

-- Location: LCCOMB_X75_Y36_N4
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!wordCount(4) & (wordCount(0) & (!wordCount(1) & \Equal3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(4),
	datab => wordCount(0),
	datac => wordCount(1),
	datad => \Equal3~8_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X76_Y34_N16
\writeReady~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeReady~0_combout\ = (\Selector1~0_combout\ & ((\Equal4~0_combout\) # ((\Equal3~9_combout\) # (!\wordval~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Selector1~0_combout\,
	datac => \Equal3~9_combout\,
	datad => \wordval~6_combout\,
	combout => \writeReady~0_combout\);

-- Location: FF_X76_Y34_N17
writeReady : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \writeReady~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \writeReady~q\);

-- Location: LCCOMB_X76_Y34_N8
\nst.ST02~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nst.ST02~0_combout\ = (\cst.ST01~q\ & \writeReady~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cst.ST01~q\,
	datad => \writeReady~q\,
	combout => \nst.ST02~0_combout\);

-- Location: FF_X76_Y34_N9
\cst.ST02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \nst.ST02~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cst.ST02~q\);

-- Location: LCCOMB_X73_Y36_N10
\lcd2|nstate.ST01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|nstate.ST01~0_combout\ = (!\lcd2|cstate.ST00~q\ & \cst.ST02~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|cstate.ST00~q\,
	datac => \cst.ST02~q\,
	combout => \lcd2|nstate.ST01~0_combout\);

-- Location: FF_X73_Y36_N11
\lcd2|cstate.ST01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|nstate.ST01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|cstate.ST01~q\);

-- Location: LCCOMB_X73_Y36_N20
\lcd2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector1~0_combout\ = (\lcd2|cstate.ST01~q\) # ((\lcd2|ready~q\ & \lcd2|cstate.ST02~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|ready~q\,
	datac => \lcd2|cstate.ST02~q\,
	datad => \lcd2|cstate.ST01~q\,
	combout => \lcd2|Selector1~0_combout\);

-- Location: FF_X73_Y36_N21
\lcd2|cstate.ST02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|cstate.ST02~q\);

-- Location: LCCOMB_X76_Y35_N24
\lcd2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|LessThan0~1_combout\ = (!\lcd2|initSeq\(2) & ((!\lcd2|initSeq\(1)) # (!\lcd2|initSeq\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq\(0),
	datab => \lcd2|initSeq\(1),
	datad => \lcd2|initSeq\(2),
	combout => \lcd2|LessThan0~1_combout\);

-- Location: LCCOMB_X77_Y35_N16
\lcd2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector3~0_combout\ = (\lcd2|cstate.ST11~q\) # ((\lcd2|ready~q\ & (\lcd2|nstate.ST07~4_combout\ & !\lcd2|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|cstate.ST11~q\,
	datab => \lcd2|ready~q\,
	datac => \lcd2|nstate.ST07~4_combout\,
	datad => \lcd2|LessThan0~1_combout\,
	combout => \lcd2|Selector3~0_combout\);

-- Location: FF_X77_Y35_N17
\lcd2|cstate.ST12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|cstate.ST12~q\);

-- Location: LCCOMB_X77_Y35_N8
\lcd2|nstate.ST07~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|nstate.ST07~4_combout\ = (!\lcd2|initSeq\(3) & \lcd2|cstate.ST12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|initSeq\(3),
	datad => \lcd2|cstate.ST12~q\,
	combout => \lcd2|nstate.ST07~4_combout\);

-- Location: LCCOMB_X77_Y35_N28
\lcd2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|LessThan0~0_combout\ = (!\lcd2|initSeq\(0)) # (!\lcd2|initSeq\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|initSeq\(1),
	datad => \lcd2|initSeq\(0),
	combout => \lcd2|LessThan0~0_combout\);

-- Location: LCCOMB_X77_Y35_N10
\lcd2|initSeq[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|initSeq[3]~0_combout\ = ((\lcd2|ready~q\ & ((\lcd2|initSeq\(2)) # (!\lcd2|LessThan0~0_combout\)))) # (!\lcd2|nstate.ST07~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq\(2),
	datab => \lcd2|ready~q\,
	datac => \lcd2|nstate.ST07~4_combout\,
	datad => \lcd2|LessThan0~0_combout\,
	combout => \lcd2|initSeq[3]~0_combout\);

-- Location: LCCOMB_X77_Y35_N6
\lcd2|initSeq[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|initSeq[0]~5_combout\ = (\lcd2|initSeq\(0) & (((\lcd2|initSeq[3]~0_combout\)))) # (!\lcd2|initSeq\(0) & (!\lcd2|initSeq[3]~0_combout\ & ((!\lcd2|nstate.ST07~5_combout\) # (!\cst.ST04~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cst.ST04~q\,
	datab => \lcd2|nstate.ST07~5_combout\,
	datac => \lcd2|initSeq\(0),
	datad => \lcd2|initSeq[3]~0_combout\,
	combout => \lcd2|initSeq[0]~5_combout\);

-- Location: FF_X77_Y35_N7
\lcd2|initSeq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|initSeq[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|initSeq\(0));

-- Location: LCCOMB_X77_Y35_N24
\lcd2|initSeq[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|initSeq[1]~4_combout\ = (\lcd2|initSeq\(1) & ((\lcd2|initSeq[3]~0_combout\) # ((\lcd2|initSeq[0]~2_combout\ & !\lcd2|initSeq\(0))))) # (!\lcd2|initSeq\(1) & (\lcd2|initSeq[0]~2_combout\ & (\lcd2|initSeq\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq[0]~2_combout\,
	datab => \lcd2|initSeq\(0),
	datac => \lcd2|initSeq\(1),
	datad => \lcd2|initSeq[3]~0_combout\,
	combout => \lcd2|initSeq[1]~4_combout\);

-- Location: FF_X77_Y35_N25
\lcd2|initSeq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|initSeq[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|initSeq\(1));

-- Location: LCCOMB_X77_Y35_N26
\lcd2|nstate.ST07~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|nstate.ST07~5_combout\ = (!\lcd2|initSeq\(2) & (\lcd2|nstate.ST07~4_combout\ & ((!\lcd2|initSeq\(0)) # (!\lcd2|initSeq\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq\(2),
	datab => \lcd2|initSeq\(1),
	datac => \lcd2|nstate.ST07~4_combout\,
	datad => \lcd2|initSeq\(0),
	combout => \lcd2|nstate.ST07~5_combout\);

-- Location: FF_X77_Y35_N1
\lcd2|cstate.ST07\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	asdata => \lcd2|nstate.ST07~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|cstate.ST07~q\);

-- Location: LCCOMB_X73_Y36_N6
\lcd2|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector2~1_combout\ = (\lcd2|cstate.ST07~q\) # ((!\lcd2|cstate.ST00~q\ & \cst.ST04~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|cstate.ST07~q\,
	datab => \lcd2|cstate.ST00~q\,
	datad => \cst.ST04~q\,
	combout => \lcd2|Selector2~1_combout\);

-- Location: LCCOMB_X77_Y35_N30
\lcd2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector2~0_combout\ = (!\lcd2|ready~q\ & (\lcd2|nstate.ST07~4_combout\ & ((\lcd2|initSeq\(2)) # (!\lcd2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq\(2),
	datab => \lcd2|ready~q\,
	datac => \lcd2|nstate.ST07~4_combout\,
	datad => \lcd2|LessThan0~0_combout\,
	combout => \lcd2|Selector2~0_combout\);

-- Location: FF_X72_Y35_N25
\lcd2|delay1|cst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	asdata => \lcd2|delay1|endDelay~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|cst~q\);

-- Location: LCCOMB_X77_Y35_N0
\lcd2|delay1|FMS_control~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|FMS_control~0_combout\ = (!\lcd2|delay1|cst~q\ & ((\lcd2|cstate.ST07~q\) # ((\lcd2|initSeq\(3) & \lcd2|cstate.ST12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq\(3),
	datab => \lcd2|cstate.ST12~q\,
	datac => \lcd2|cstate.ST07~q\,
	datad => \lcd2|delay1|cst~q\,
	combout => \lcd2|delay1|FMS_control~0_combout\);

-- Location: LCCOMB_X77_Y35_N2
\lcd2|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector7~0_combout\ = (\lcd2|initSeq\(3) & \lcd2|cstate.ST12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|initSeq\(3),
	datad => \lcd2|cstate.ST12~q\,
	combout => \lcd2|Selector7~0_combout\);

-- Location: LCCOMB_X76_Y35_N16
\lcd2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Mux4~0_combout\ = (!\lcd2|initSeq\(0) & (!\lcd2|initSeq\(2) & (!\lcd2|initSeq\(3) & !\lcd2|initSeq\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq\(0),
	datab => \lcd2|initSeq\(2),
	datac => \lcd2|initSeq\(3),
	datad => \lcd2|initSeq\(1),
	combout => \lcd2|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y35_N20
\lcd2|delay1|s_divCounter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~16_combout\ = (\lcd2|Mux4~0_combout\ & (!\lcd2|delay1|cst~q\ & ((\lcd2|Selector7~0_combout\) # (\lcd2|cstate.ST07~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|Selector7~0_combout\,
	datab => \lcd2|cstate.ST07~q\,
	datac => \lcd2|Mux4~0_combout\,
	datad => \lcd2|delay1|cst~q\,
	combout => \lcd2|delay1|s_divCounter~16_combout\);

-- Location: LCCOMB_X72_Y35_N24
\lcd2|delay1|endDelay~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|endDelay~0_combout\ = (\lcd2|delay1|cst~q\ & ((\lcd2|delay1|Equal0~0_combout\) # (\lcd2|delay1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|delay1|Equal0~0_combout\,
	datac => \lcd2|delay1|cst~q\,
	datad => \lcd2|delay1|Equal0~5_combout\,
	combout => \lcd2|delay1|endDelay~0_combout\);

-- Location: LCCOMB_X74_Y35_N4
\lcd2|delay1|s_divCounter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~10_combout\ = (!\lcd2|initSeq\(2) & (!\lcd2|initSeq\(3) & !\lcd2|initSeq\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq\(2),
	datab => \lcd2|initSeq\(3),
	datad => \lcd2|initSeq\(0),
	combout => \lcd2|delay1|s_divCounter~10_combout\);

-- Location: LCCOMB_X73_Y36_N2
\lcd2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Mux6~0_combout\ = (!\lcd2|initSeq\(2) & (!\lcd2|initSeq\(3) & (\lcd2|initSeq\(1) $ (\lcd2|initSeq\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq\(2),
	datab => \lcd2|initSeq\(3),
	datac => \lcd2|initSeq\(1),
	datad => \lcd2|initSeq\(0),
	combout => \lcd2|Mux6~0_combout\);

-- Location: LCCOMB_X73_Y36_N30
\lcd2|delay1|s_divCounter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~8_combout\ = (\lcd2|cstate.ST07~q\ & (!\lcd2|delay1|cst~q\ & (!\lcd2|Selector7~0_combout\ & \lcd2|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|cstate.ST07~q\,
	datab => \lcd2|delay1|cst~q\,
	datac => \lcd2|Selector7~0_combout\,
	datad => \lcd2|Mux6~0_combout\,
	combout => \lcd2|delay1|s_divCounter~8_combout\);

-- Location: LCCOMB_X77_Y35_N4
\lcd2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Mux7~0_combout\ = (\lcd2|initSeq\(2)) # ((\lcd2|initSeq\(3)) # ((\lcd2|initSeq\(0) & \lcd2|initSeq\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq\(0),
	datab => \lcd2|initSeq\(1),
	datac => \lcd2|initSeq\(2),
	datad => \lcd2|initSeq\(3),
	combout => \lcd2|Mux7~0_combout\);

-- Location: LCCOMB_X77_Y35_N14
\lcd2|delay1|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~6_combout\ = (!\lcd2|delay1|cst~q\ & ((\lcd2|Selector7~0_combout\) # ((\lcd2|Mux7~0_combout\ & \lcd2|cstate.ST07~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|Selector7~0_combout\,
	datab => \lcd2|delay1|cst~q\,
	datac => \lcd2|Mux7~0_combout\,
	datad => \lcd2|cstate.ST07~q\,
	combout => \lcd2|delay1|s_divCounter~6_combout\);

-- Location: LCCOMB_X73_Y35_N12
\lcd2|delay1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~0_combout\ = \lcd2|delay1|s_divCounter\(0) $ (VCC)
-- \lcd2|delay1|Add0~1\ = CARRY(\lcd2|delay1|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter\(0),
	datad => VCC,
	combout => \lcd2|delay1|Add0~0_combout\,
	cout => \lcd2|delay1|Add0~1\);

-- Location: LCCOMB_X73_Y35_N6
\lcd2|delay1|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~5_combout\ = (\lcd2|delay1|cst~q\ & (\lcd2|delay1|Add0~0_combout\ & ((\lcd2|delay1|Equal0~0_combout\) # (\lcd2|delay1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|Equal0~0_combout\,
	datab => \lcd2|delay1|cst~q\,
	datac => \lcd2|delay1|Add0~0_combout\,
	datad => \lcd2|delay1|Equal0~5_combout\,
	combout => \lcd2|delay1|s_divCounter~5_combout\);

-- Location: FF_X73_Y35_N7
\lcd2|delay1|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(0));

-- Location: LCCOMB_X73_Y35_N14
\lcd2|delay1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~2_combout\ = (\lcd2|delay1|s_divCounter\(1) & (\lcd2|delay1|Add0~1\ & VCC)) # (!\lcd2|delay1|s_divCounter\(1) & (!\lcd2|delay1|Add0~1\))
-- \lcd2|delay1|Add0~3\ = CARRY((!\lcd2|delay1|s_divCounter\(1) & !\lcd2|delay1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|delay1|s_divCounter\(1),
	datad => VCC,
	cin => \lcd2|delay1|Add0~1\,
	combout => \lcd2|delay1|Add0~2_combout\,
	cout => \lcd2|delay1|Add0~3\);

-- Location: LCCOMB_X73_Y35_N4
\lcd2|delay1|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~4_combout\ = (\lcd2|delay1|cst~q\ & (\lcd2|delay1|Add0~2_combout\ & ((\lcd2|delay1|Equal0~0_combout\) # (\lcd2|delay1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|Equal0~0_combout\,
	datab => \lcd2|delay1|cst~q\,
	datac => \lcd2|delay1|Add0~2_combout\,
	datad => \lcd2|delay1|Equal0~5_combout\,
	combout => \lcd2|delay1|s_divCounter~4_combout\);

-- Location: FF_X73_Y35_N5
\lcd2|delay1|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(1));

-- Location: LCCOMB_X73_Y35_N16
\lcd2|delay1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~4_combout\ = (\lcd2|delay1|s_divCounter\(2) & ((GND) # (!\lcd2|delay1|Add0~3\))) # (!\lcd2|delay1|s_divCounter\(2) & (\lcd2|delay1|Add0~3\ $ (GND)))
-- \lcd2|delay1|Add0~5\ = CARRY((\lcd2|delay1|s_divCounter\(2)) # (!\lcd2|delay1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|delay1|s_divCounter\(2),
	datad => VCC,
	cin => \lcd2|delay1|Add0~3\,
	combout => \lcd2|delay1|Add0~4_combout\,
	cout => \lcd2|delay1|Add0~5\);

-- Location: LCCOMB_X73_Y35_N8
\lcd2|delay1|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~7_combout\ = (\lcd2|delay1|endDelay~1_combout\ & ((\lcd2|delay1|s_divCounter~6_combout\) # ((\lcd2|delay1|Add0~4_combout\ & !\lcd2|delay1|FMS_control~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter~6_combout\,
	datab => \lcd2|delay1|Add0~4_combout\,
	datac => \lcd2|delay1|FMS_control~0_combout\,
	datad => \lcd2|delay1|endDelay~1_combout\,
	combout => \lcd2|delay1|s_divCounter~7_combout\);

-- Location: FF_X73_Y35_N9
\lcd2|delay1|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(2));

-- Location: LCCOMB_X73_Y35_N18
\lcd2|delay1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~6_combout\ = (\lcd2|delay1|s_divCounter\(3) & (\lcd2|delay1|Add0~5\ & VCC)) # (!\lcd2|delay1|s_divCounter\(3) & (!\lcd2|delay1|Add0~5\))
-- \lcd2|delay1|Add0~7\ = CARRY((!\lcd2|delay1|s_divCounter\(3) & !\lcd2|delay1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|delay1|s_divCounter\(3),
	datad => VCC,
	cin => \lcd2|delay1|Add0~5\,
	combout => \lcd2|delay1|Add0~6_combout\,
	cout => \lcd2|delay1|Add0~7\);

-- Location: LCCOMB_X73_Y35_N2
\lcd2|delay1|s_divCounter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~9_combout\ = (\lcd2|delay1|endDelay~1_combout\ & ((\lcd2|delay1|s_divCounter~8_combout\) # ((\lcd2|delay1|Add0~6_combout\ & !\lcd2|delay1|FMS_control~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter~8_combout\,
	datab => \lcd2|delay1|Add0~6_combout\,
	datac => \lcd2|delay1|FMS_control~0_combout\,
	datad => \lcd2|delay1|endDelay~1_combout\,
	combout => \lcd2|delay1|s_divCounter~9_combout\);

-- Location: FF_X73_Y35_N3
\lcd2|delay1|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(3));

-- Location: LCCOMB_X73_Y35_N20
\lcd2|delay1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~8_combout\ = (\lcd2|delay1|s_divCounter\(4) & ((GND) # (!\lcd2|delay1|Add0~7\))) # (!\lcd2|delay1|s_divCounter\(4) & (\lcd2|delay1|Add0~7\ $ (GND)))
-- \lcd2|delay1|Add0~9\ = CARRY((\lcd2|delay1|s_divCounter\(4)) # (!\lcd2|delay1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|delay1|s_divCounter\(4),
	datad => VCC,
	cin => \lcd2|delay1|Add0~7\,
	combout => \lcd2|delay1|Add0~8_combout\,
	cout => \lcd2|delay1|Add0~9\);

-- Location: LCCOMB_X73_Y35_N0
\lcd2|delay1|s_divCounter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~11_combout\ = (\lcd2|delay1|endDelay~1_combout\ & ((\lcd2|delay1|FMS_control~0_combout\ & (\lcd2|delay1|s_divCounter~10_combout\)) # (!\lcd2|delay1|FMS_control~0_combout\ & ((\lcd2|delay1|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter~10_combout\,
	datab => \lcd2|delay1|Add0~8_combout\,
	datac => \lcd2|delay1|FMS_control~0_combout\,
	datad => \lcd2|delay1|endDelay~1_combout\,
	combout => \lcd2|delay1|s_divCounter~11_combout\);

-- Location: FF_X73_Y35_N1
\lcd2|delay1|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(4));

-- Location: LCCOMB_X73_Y35_N22
\lcd2|delay1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~10_combout\ = (\lcd2|delay1|s_divCounter\(5) & (\lcd2|delay1|Add0~9\ & VCC)) # (!\lcd2|delay1|s_divCounter\(5) & (!\lcd2|delay1|Add0~9\))
-- \lcd2|delay1|Add0~11\ = CARRY((!\lcd2|delay1|s_divCounter\(5) & !\lcd2|delay1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter\(5),
	datad => VCC,
	cin => \lcd2|delay1|Add0~9\,
	combout => \lcd2|delay1|Add0~10_combout\,
	cout => \lcd2|delay1|Add0~11\);

-- Location: LCCOMB_X73_Y35_N10
\lcd2|delay1|s_divCounter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~12_combout\ = (\lcd2|delay1|endDelay~1_combout\ & ((\lcd2|delay1|FMS_control~0_combout\ & ((!\lcd2|Mux4~0_combout\))) # (!\lcd2|delay1|FMS_control~0_combout\ & (\lcd2|delay1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|Add0~10_combout\,
	datab => \lcd2|Mux4~0_combout\,
	datac => \lcd2|delay1|FMS_control~0_combout\,
	datad => \lcd2|delay1|endDelay~1_combout\,
	combout => \lcd2|delay1|s_divCounter~12_combout\);

-- Location: FF_X73_Y35_N11
\lcd2|delay1|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(5));

-- Location: LCCOMB_X73_Y35_N24
\lcd2|delay1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~12_combout\ = (\lcd2|delay1|s_divCounter\(6) & ((GND) # (!\lcd2|delay1|Add0~11\))) # (!\lcd2|delay1|s_divCounter\(6) & (\lcd2|delay1|Add0~11\ $ (GND)))
-- \lcd2|delay1|Add0~13\ = CARRY((\lcd2|delay1|s_divCounter\(6)) # (!\lcd2|delay1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter\(6),
	datad => VCC,
	cin => \lcd2|delay1|Add0~11\,
	combout => \lcd2|delay1|Add0~12_combout\,
	cout => \lcd2|delay1|Add0~13\);

-- Location: LCCOMB_X72_Y35_N16
\lcd2|delay1|s_divCounter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~13_combout\ = (\lcd2|delay1|FMS_control~0_combout\) # ((\lcd2|delay1|endDelay~0_combout\ & \lcd2|delay1|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|delay1|endDelay~0_combout\,
	datac => \lcd2|delay1|FMS_control~0_combout\,
	datad => \lcd2|delay1|Add0~12_combout\,
	combout => \lcd2|delay1|s_divCounter~13_combout\);

-- Location: FF_X72_Y35_N17
\lcd2|delay1|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(6));

-- Location: LCCOMB_X73_Y35_N26
\lcd2|delay1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~14_combout\ = (\lcd2|delay1|s_divCounter\(7) & (\lcd2|delay1|Add0~13\ & VCC)) # (!\lcd2|delay1|s_divCounter\(7) & (!\lcd2|delay1|Add0~13\))
-- \lcd2|delay1|Add0~15\ = CARRY((!\lcd2|delay1|s_divCounter\(7) & !\lcd2|delay1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|delay1|s_divCounter\(7),
	datad => VCC,
	cin => \lcd2|delay1|Add0~13\,
	combout => \lcd2|delay1|Add0~14_combout\,
	cout => \lcd2|delay1|Add0~15\);

-- Location: LCCOMB_X72_Y35_N6
\lcd2|delay1|s_divCounter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~14_combout\ = (\lcd2|delay1|Add0~14_combout\ & (\lcd2|delay1|cst~q\ & ((\lcd2|delay1|Equal0~0_combout\) # (\lcd2|delay1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|Add0~14_combout\,
	datab => \lcd2|delay1|Equal0~0_combout\,
	datac => \lcd2|delay1|cst~q\,
	datad => \lcd2|delay1|Equal0~5_combout\,
	combout => \lcd2|delay1|s_divCounter~14_combout\);

-- Location: FF_X72_Y35_N7
\lcd2|delay1|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(7));

-- Location: LCCOMB_X73_Y35_N28
\lcd2|delay1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~16_combout\ = (\lcd2|delay1|s_divCounter\(8) & ((GND) # (!\lcd2|delay1|Add0~15\))) # (!\lcd2|delay1|s_divCounter\(8) & (\lcd2|delay1|Add0~15\ $ (GND)))
-- \lcd2|delay1|Add0~17\ = CARRY((\lcd2|delay1|s_divCounter\(8)) # (!\lcd2|delay1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter\(8),
	datad => VCC,
	cin => \lcd2|delay1|Add0~15\,
	combout => \lcd2|delay1|Add0~16_combout\,
	cout => \lcd2|delay1|Add0~17\);

-- Location: LCCOMB_X72_Y35_N2
\lcd2|delay1|s_divCounter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~15_combout\ = (\lcd2|delay1|cst~q\ & (\lcd2|delay1|Add0~16_combout\ & ((\lcd2|delay1|Equal0~5_combout\) # (\lcd2|delay1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|cst~q\,
	datab => \lcd2|delay1|Equal0~5_combout\,
	datac => \lcd2|delay1|Equal0~0_combout\,
	datad => \lcd2|delay1|Add0~16_combout\,
	combout => \lcd2|delay1|s_divCounter~15_combout\);

-- Location: FF_X72_Y35_N3
\lcd2|delay1|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(8));

-- Location: LCCOMB_X73_Y35_N30
\lcd2|delay1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~18_combout\ = (\lcd2|delay1|s_divCounter\(9) & (\lcd2|delay1|Add0~17\ & VCC)) # (!\lcd2|delay1|s_divCounter\(9) & (!\lcd2|delay1|Add0~17\))
-- \lcd2|delay1|Add0~19\ = CARRY((!\lcd2|delay1|s_divCounter\(9) & !\lcd2|delay1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter\(9),
	datad => VCC,
	cin => \lcd2|delay1|Add0~17\,
	combout => \lcd2|delay1|Add0~18_combout\,
	cout => \lcd2|delay1|Add0~19\);

-- Location: LCCOMB_X72_Y35_N12
\lcd2|delay1|s_divCounter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~17_combout\ = (\lcd2|delay1|endDelay~1_combout\ & ((\lcd2|delay1|s_divCounter~16_combout\) # ((\lcd2|delay1|Add0~18_combout\ & !\lcd2|delay1|FMS_control~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|Add0~18_combout\,
	datab => \lcd2|delay1|FMS_control~0_combout\,
	datac => \lcd2|delay1|endDelay~1_combout\,
	datad => \lcd2|delay1|s_divCounter~16_combout\,
	combout => \lcd2|delay1|s_divCounter~17_combout\);

-- Location: FF_X72_Y35_N13
\lcd2|delay1|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(9));

-- Location: LCCOMB_X73_Y34_N0
\lcd2|delay1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~20_combout\ = (\lcd2|delay1|s_divCounter\(10) & ((GND) # (!\lcd2|delay1|Add0~19\))) # (!\lcd2|delay1|s_divCounter\(10) & (\lcd2|delay1|Add0~19\ $ (GND)))
-- \lcd2|delay1|Add0~21\ = CARRY((\lcd2|delay1|s_divCounter\(10)) # (!\lcd2|delay1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|delay1|s_divCounter\(10),
	datad => VCC,
	cin => \lcd2|delay1|Add0~19\,
	combout => \lcd2|delay1|Add0~20_combout\,
	cout => \lcd2|delay1|Add0~21\);

-- Location: LCCOMB_X72_Y35_N30
\lcd2|delay1|s_divCounter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~18_combout\ = (\lcd2|delay1|endDelay~1_combout\ & ((\lcd2|delay1|s_divCounter~16_combout\) # ((!\lcd2|delay1|FMS_control~0_combout\ & \lcd2|delay1|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter~16_combout\,
	datab => \lcd2|delay1|FMS_control~0_combout\,
	datac => \lcd2|delay1|endDelay~1_combout\,
	datad => \lcd2|delay1|Add0~20_combout\,
	combout => \lcd2|delay1|s_divCounter~18_combout\);

-- Location: FF_X72_Y35_N31
\lcd2|delay1|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(10));

-- Location: LCCOMB_X73_Y34_N2
\lcd2|delay1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~22_combout\ = (\lcd2|delay1|s_divCounter\(11) & (\lcd2|delay1|Add0~21\ & VCC)) # (!\lcd2|delay1|s_divCounter\(11) & (!\lcd2|delay1|Add0~21\))
-- \lcd2|delay1|Add0~23\ = CARRY((!\lcd2|delay1|s_divCounter\(11) & !\lcd2|delay1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|delay1|s_divCounter\(11),
	datad => VCC,
	cin => \lcd2|delay1|Add0~21\,
	combout => \lcd2|delay1|Add0~22_combout\,
	cout => \lcd2|delay1|Add0~23\);

-- Location: LCCOMB_X72_Y35_N28
\lcd2|delay1|s_divCounter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~19_combout\ = (\lcd2|delay1|cst~q\ & (\lcd2|delay1|Add0~22_combout\ & ((\lcd2|delay1|Equal0~0_combout\) # (\lcd2|delay1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|cst~q\,
	datab => \lcd2|delay1|Add0~22_combout\,
	datac => \lcd2|delay1|Equal0~0_combout\,
	datad => \lcd2|delay1|Equal0~5_combout\,
	combout => \lcd2|delay1|s_divCounter~19_combout\);

-- Location: FF_X72_Y35_N29
\lcd2|delay1|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(11));

-- Location: LCCOMB_X73_Y34_N4
\lcd2|delay1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~24_combout\ = (\lcd2|delay1|s_divCounter\(12) & ((GND) # (!\lcd2|delay1|Add0~23\))) # (!\lcd2|delay1|s_divCounter\(12) & (\lcd2|delay1|Add0~23\ $ (GND)))
-- \lcd2|delay1|Add0~25\ = CARRY((\lcd2|delay1|s_divCounter\(12)) # (!\lcd2|delay1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|delay1|s_divCounter\(12),
	datad => VCC,
	cin => \lcd2|delay1|Add0~23\,
	combout => \lcd2|delay1|Add0~24_combout\,
	cout => \lcd2|delay1|Add0~25\);

-- Location: LCCOMB_X74_Y35_N10
\lcd2|delay1|s_divCounter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~20_combout\ = (!\lcd2|initSeq\(2) & (!\lcd2|initSeq\(3) & (!\lcd2|initSeq\(1) & \lcd2|initSeq\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq\(2),
	datab => \lcd2|initSeq\(3),
	datac => \lcd2|initSeq\(1),
	datad => \lcd2|initSeq\(0),
	combout => \lcd2|delay1|s_divCounter~20_combout\);

-- Location: LCCOMB_X72_Y35_N4
\lcd2|delay1|s_divCounter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~21_combout\ = (\lcd2|delay1|endDelay~1_combout\ & ((\lcd2|delay1|FMS_control~0_combout\ & ((\lcd2|delay1|s_divCounter~20_combout\))) # (!\lcd2|delay1|FMS_control~0_combout\ & (\lcd2|delay1|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|Add0~24_combout\,
	datab => \lcd2|delay1|endDelay~1_combout\,
	datac => \lcd2|delay1|FMS_control~0_combout\,
	datad => \lcd2|delay1|s_divCounter~20_combout\,
	combout => \lcd2|delay1|s_divCounter~21_combout\);

-- Location: FF_X72_Y35_N5
\lcd2|delay1|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(12));

-- Location: LCCOMB_X73_Y34_N6
\lcd2|delay1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~26_combout\ = (\lcd2|delay1|s_divCounter\(13) & (\lcd2|delay1|Add0~25\ & VCC)) # (!\lcd2|delay1|s_divCounter\(13) & (!\lcd2|delay1|Add0~25\))
-- \lcd2|delay1|Add0~27\ = CARRY((!\lcd2|delay1|s_divCounter\(13) & !\lcd2|delay1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter\(13),
	datad => VCC,
	cin => \lcd2|delay1|Add0~25\,
	combout => \lcd2|delay1|Add0~26_combout\,
	cout => \lcd2|delay1|Add0~27\);

-- Location: LCCOMB_X73_Y34_N22
\lcd2|delay1|s_divCounter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~22_combout\ = (\lcd2|delay1|cst~q\ & (\lcd2|delay1|Add0~26_combout\ & ((\lcd2|delay1|Equal0~0_combout\) # (\lcd2|delay1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|Equal0~0_combout\,
	datab => \lcd2|delay1|Equal0~5_combout\,
	datac => \lcd2|delay1|cst~q\,
	datad => \lcd2|delay1|Add0~26_combout\,
	combout => \lcd2|delay1|s_divCounter~22_combout\);

-- Location: FF_X73_Y34_N23
\lcd2|delay1|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(13));

-- Location: LCCOMB_X73_Y34_N8
\lcd2|delay1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~28_combout\ = (\lcd2|delay1|s_divCounter\(14) & ((GND) # (!\lcd2|delay1|Add0~27\))) # (!\lcd2|delay1|s_divCounter\(14) & (\lcd2|delay1|Add0~27\ $ (GND)))
-- \lcd2|delay1|Add0~29\ = CARRY((\lcd2|delay1|s_divCounter\(14)) # (!\lcd2|delay1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter\(14),
	datad => VCC,
	cin => \lcd2|delay1|Add0~27\,
	combout => \lcd2|delay1|Add0~28_combout\,
	cout => \lcd2|delay1|Add0~29\);

-- Location: LCCOMB_X72_Y35_N26
\lcd2|delay1|s_divCounter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~23_combout\ = (\lcd2|delay1|endDelay~1_combout\ & ((\lcd2|delay1|s_divCounter~16_combout\) # ((!\lcd2|delay1|FMS_control~0_combout\ & \lcd2|delay1|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|endDelay~1_combout\,
	datab => \lcd2|delay1|FMS_control~0_combout\,
	datac => \lcd2|delay1|Add0~28_combout\,
	datad => \lcd2|delay1|s_divCounter~16_combout\,
	combout => \lcd2|delay1|s_divCounter~23_combout\);

-- Location: FF_X72_Y35_N27
\lcd2|delay1|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(14));

-- Location: LCCOMB_X73_Y34_N10
\lcd2|delay1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~30_combout\ = (\lcd2|delay1|s_divCounter\(15) & (\lcd2|delay1|Add0~29\ & VCC)) # (!\lcd2|delay1|s_divCounter\(15) & (!\lcd2|delay1|Add0~29\))
-- \lcd2|delay1|Add0~31\ = CARRY((!\lcd2|delay1|s_divCounter\(15) & !\lcd2|delay1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter\(15),
	datad => VCC,
	cin => \lcd2|delay1|Add0~29\,
	combout => \lcd2|delay1|Add0~30_combout\,
	cout => \lcd2|delay1|Add0~31\);

-- Location: LCCOMB_X72_Y35_N8
\lcd2|delay1|s_divCounter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~24_combout\ = (\lcd2|delay1|cst~q\ & (\lcd2|delay1|Add0~30_combout\ & ((\lcd2|delay1|Equal0~0_combout\) # (\lcd2|delay1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|cst~q\,
	datab => \lcd2|delay1|Add0~30_combout\,
	datac => \lcd2|delay1|Equal0~0_combout\,
	datad => \lcd2|delay1|Equal0~5_combout\,
	combout => \lcd2|delay1|s_divCounter~24_combout\);

-- Location: FF_X72_Y35_N9
\lcd2|delay1|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(15));

-- Location: LCCOMB_X72_Y35_N10
\lcd2|delay1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Equal0~4_combout\ = (\lcd2|delay1|s_divCounter\(14)) # ((\lcd2|delay1|s_divCounter\(12)) # ((\lcd2|delay1|s_divCounter\(15)) # (\lcd2|delay1|s_divCounter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter\(14),
	datab => \lcd2|delay1|s_divCounter\(12),
	datac => \lcd2|delay1|s_divCounter\(15),
	datad => \lcd2|delay1|s_divCounter\(13),
	combout => \lcd2|delay1|Equal0~4_combout\);

-- Location: LCCOMB_X72_Y35_N18
\lcd2|delay1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Equal0~1_combout\ = (\lcd2|delay1|s_divCounter\(3)) # ((\lcd2|delay1|s_divCounter\(0)) # ((\lcd2|delay1|s_divCounter\(2)) # (\lcd2|delay1|s_divCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter\(3),
	datab => \lcd2|delay1|s_divCounter\(0),
	datac => \lcd2|delay1|s_divCounter\(2),
	datad => \lcd2|delay1|s_divCounter\(1),
	combout => \lcd2|delay1|Equal0~1_combout\);

-- Location: LCCOMB_X72_Y35_N22
\lcd2|delay1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Equal0~3_combout\ = (\lcd2|delay1|s_divCounter\(9)) # ((\lcd2|delay1|s_divCounter\(11)) # ((\lcd2|delay1|s_divCounter\(10)) # (\lcd2|delay1|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter\(9),
	datab => \lcd2|delay1|s_divCounter\(11),
	datac => \lcd2|delay1|s_divCounter\(10),
	datad => \lcd2|delay1|s_divCounter\(8),
	combout => \lcd2|delay1|Equal0~3_combout\);

-- Location: LCCOMB_X72_Y35_N0
\lcd2|delay1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Equal0~2_combout\ = (\lcd2|delay1|s_divCounter\(7)) # ((\lcd2|delay1|s_divCounter\(6)) # ((\lcd2|delay1|s_divCounter\(4)) # (\lcd2|delay1|s_divCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter\(7),
	datab => \lcd2|delay1|s_divCounter\(6),
	datac => \lcd2|delay1|s_divCounter\(4),
	datad => \lcd2|delay1|s_divCounter\(5),
	combout => \lcd2|delay1|Equal0~2_combout\);

-- Location: LCCOMB_X72_Y35_N20
\lcd2|delay1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Equal0~5_combout\ = (\lcd2|delay1|Equal0~4_combout\) # ((\lcd2|delay1|Equal0~1_combout\) # ((\lcd2|delay1|Equal0~3_combout\) # (\lcd2|delay1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|Equal0~4_combout\,
	datab => \lcd2|delay1|Equal0~1_combout\,
	datac => \lcd2|delay1|Equal0~3_combout\,
	datad => \lcd2|delay1|Equal0~2_combout\,
	combout => \lcd2|delay1|Equal0~5_combout\);

-- Location: LCCOMB_X73_Y34_N12
\lcd2|delay1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~32_combout\ = (\lcd2|delay1|s_divCounter\(16) & ((GND) # (!\lcd2|delay1|Add0~31\))) # (!\lcd2|delay1|s_divCounter\(16) & (\lcd2|delay1|Add0~31\ $ (GND)))
-- \lcd2|delay1|Add0~33\ = CARRY((\lcd2|delay1|s_divCounter\(16)) # (!\lcd2|delay1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|delay1|s_divCounter\(16),
	datad => VCC,
	cin => \lcd2|delay1|Add0~31\,
	combout => \lcd2|delay1|Add0~32_combout\,
	cout => \lcd2|delay1|Add0~33\);

-- Location: LCCOMB_X73_Y34_N20
\lcd2|delay1|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~0_combout\ = (\lcd2|delay1|cst~q\ & (\lcd2|delay1|Add0~32_combout\ & ((\lcd2|delay1|Equal0~0_combout\) # (\lcd2|delay1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|Equal0~0_combout\,
	datab => \lcd2|delay1|Equal0~5_combout\,
	datac => \lcd2|delay1|cst~q\,
	datad => \lcd2|delay1|Add0~32_combout\,
	combout => \lcd2|delay1|s_divCounter~0_combout\);

-- Location: FF_X73_Y34_N21
\lcd2|delay1|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(16));

-- Location: LCCOMB_X73_Y34_N14
\lcd2|delay1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~34_combout\ = (\lcd2|delay1|s_divCounter\(17) & (\lcd2|delay1|Add0~33\ & VCC)) # (!\lcd2|delay1|s_divCounter\(17) & (!\lcd2|delay1|Add0~33\))
-- \lcd2|delay1|Add0~35\ = CARRY((!\lcd2|delay1|s_divCounter\(17) & !\lcd2|delay1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter\(17),
	datad => VCC,
	cin => \lcd2|delay1|Add0~33\,
	combout => \lcd2|delay1|Add0~34_combout\,
	cout => \lcd2|delay1|Add0~35\);

-- Location: LCCOMB_X73_Y34_N30
\lcd2|delay1|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~1_combout\ = (\lcd2|delay1|cst~q\ & (\lcd2|delay1|Add0~34_combout\ & ((\lcd2|delay1|Equal0~0_combout\) # (\lcd2|delay1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|Equal0~0_combout\,
	datab => \lcd2|delay1|cst~q\,
	datac => \lcd2|delay1|Add0~34_combout\,
	datad => \lcd2|delay1|Equal0~5_combout\,
	combout => \lcd2|delay1|s_divCounter~1_combout\);

-- Location: FF_X73_Y34_N31
\lcd2|delay1|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(17));

-- Location: LCCOMB_X73_Y34_N16
\lcd2|delay1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~36_combout\ = (\lcd2|delay1|s_divCounter\(18) & ((GND) # (!\lcd2|delay1|Add0~35\))) # (!\lcd2|delay1|s_divCounter\(18) & (\lcd2|delay1|Add0~35\ $ (GND)))
-- \lcd2|delay1|Add0~37\ = CARRY((\lcd2|delay1|s_divCounter\(18)) # (!\lcd2|delay1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|delay1|s_divCounter\(18),
	datad => VCC,
	cin => \lcd2|delay1|Add0~35\,
	combout => \lcd2|delay1|Add0~36_combout\,
	cout => \lcd2|delay1|Add0~37\);

-- Location: LCCOMB_X73_Y34_N24
\lcd2|delay1|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~2_combout\ = (\lcd2|delay1|cst~q\ & (\lcd2|delay1|Add0~36_combout\ & ((\lcd2|delay1|Equal0~0_combout\) # (\lcd2|delay1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|Equal0~0_combout\,
	datab => \lcd2|delay1|Equal0~5_combout\,
	datac => \lcd2|delay1|cst~q\,
	datad => \lcd2|delay1|Add0~36_combout\,
	combout => \lcd2|delay1|s_divCounter~2_combout\);

-- Location: FF_X73_Y34_N25
\lcd2|delay1|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(18));

-- Location: LCCOMB_X73_Y34_N18
\lcd2|delay1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Add0~38_combout\ = \lcd2|delay1|s_divCounter\(19) $ (!\lcd2|delay1|Add0~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter\(19),
	cin => \lcd2|delay1|Add0~37\,
	combout => \lcd2|delay1|Add0~38_combout\);

-- Location: LCCOMB_X73_Y34_N26
\lcd2|delay1|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|s_divCounter~3_combout\ = (\lcd2|delay1|cst~q\ & (\lcd2|delay1|Add0~38_combout\ & ((\lcd2|delay1|Equal0~0_combout\) # (\lcd2|delay1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|Equal0~0_combout\,
	datab => \lcd2|delay1|Equal0~5_combout\,
	datac => \lcd2|delay1|cst~q\,
	datad => \lcd2|delay1|Add0~38_combout\,
	combout => \lcd2|delay1|s_divCounter~3_combout\);

-- Location: FF_X73_Y34_N27
\lcd2|delay1|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|delay1|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|delay1|s_divCounter\(19));

-- Location: LCCOMB_X73_Y34_N28
\lcd2|delay1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|Equal0~0_combout\ = (\lcd2|delay1|s_divCounter\(19)) # ((\lcd2|delay1|s_divCounter\(18)) # ((\lcd2|delay1|s_divCounter\(17)) # (\lcd2|delay1|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|s_divCounter\(19),
	datab => \lcd2|delay1|s_divCounter\(18),
	datac => \lcd2|delay1|s_divCounter\(17),
	datad => \lcd2|delay1|s_divCounter\(16),
	combout => \lcd2|delay1|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y35_N14
\lcd2|delay1|endDelay~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|delay1|endDelay~1_combout\ = (\lcd2|delay1|FMS_control~0_combout\) # ((\lcd2|delay1|cst~q\ & ((\lcd2|delay1|Equal0~0_combout\) # (\lcd2|delay1|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|delay1|cst~q\,
	datab => \lcd2|delay1|Equal0~0_combout\,
	datac => \lcd2|delay1|FMS_control~0_combout\,
	datad => \lcd2|delay1|Equal0~5_combout\,
	combout => \lcd2|delay1|endDelay~1_combout\);

-- Location: LCCOMB_X73_Y36_N26
\lcd2|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector2~2_combout\ = (\lcd2|Selector2~1_combout\) # ((\lcd2|Selector2~0_combout\) # ((\lcd2|cstate.ST08~q\ & \lcd2|delay1|endDelay~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|Selector2~1_combout\,
	datab => \lcd2|Selector2~0_combout\,
	datac => \lcd2|cstate.ST08~q\,
	datad => \lcd2|delay1|endDelay~1_combout\,
	combout => \lcd2|Selector2~2_combout\);

-- Location: FF_X73_Y36_N27
\lcd2|cstate.ST08\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|Selector2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|cstate.ST08~q\);

-- Location: LCCOMB_X73_Y36_N18
\lcd2|nstate.ST09~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|nstate.ST09~0_combout\ = (\lcd2|cstate.ST08~q\ & !\lcd2|delay1|endDelay~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd2|cstate.ST08~q\,
	datad => \lcd2|delay1|endDelay~1_combout\,
	combout => \lcd2|nstate.ST09~0_combout\);

-- Location: FF_X73_Y36_N19
\lcd2|cstate.ST09\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|nstate.ST09~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|cstate.ST09~q\);

-- Location: FF_X73_Y36_N13
\lcd2|cstate.ST10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	asdata => \lcd2|cstate.ST09~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|cstate.ST10~q\);

-- Location: FF_X73_Y36_N1
\lcd2|cstate.ST11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	asdata => \lcd2|cstate.ST10~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|cstate.ST11~q\);

-- Location: LCCOMB_X73_Y36_N0
\lcd2|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector16~0_combout\ = (!\lcd2|cstate.ST01~q\ & (!\lcd2|cstate.ST02~q\ & (!\lcd2|cstate.ST11~q\ & !\lcd2|cstate.ST12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|cstate.ST01~q\,
	datab => \lcd2|cstate.ST02~q\,
	datac => \lcd2|cstate.ST11~q\,
	datad => \lcd2|cstate.ST12~q\,
	combout => \lcd2|Selector16~0_combout\);

-- Location: IOIBUF_X0_Y47_N1
\LCD_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(7),
	o => \LCD_DATA[7]~input_o\);

-- Location: LCCOMB_X73_Y36_N16
\lcd2|ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|ready~0_combout\ = (\lcd2|Selector16~0_combout\ & ((\lcd2|ready~q\))) # (!\lcd2|Selector16~0_combout\ & (\LCD_DATA[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|Selector16~0_combout\,
	datab => \LCD_DATA[7]~input_o\,
	datac => \lcd2|ready~q\,
	combout => \lcd2|ready~0_combout\);

-- Location: FF_X73_Y36_N17
\lcd2|ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|ready~q\);

-- Location: LCCOMB_X73_Y36_N22
\lcd2|nstate.ST03~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|nstate.ST03~0_combout\ = (!\lcd2|ready~q\ & \lcd2|cstate.ST02~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|ready~q\,
	datad => \lcd2|cstate.ST02~q\,
	combout => \lcd2|nstate.ST03~0_combout\);

-- Location: FF_X73_Y36_N23
\lcd2|cstate.ST03\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|nstate.ST03~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|cstate.ST03~q\);

-- Location: FF_X73_Y36_N9
\lcd2|cstate.ST04\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	asdata => \lcd2|cstate.ST03~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|cstate.ST04~q\);

-- Location: FF_X73_Y36_N7
\lcd2|cstate.ST05\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	asdata => \lcd2|cstate.ST04~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|cstate.ST05~q\);

-- Location: FF_X73_Y36_N29
\lcd2|cstate.ST06\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	asdata => \lcd2|cstate.ST05~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|cstate.ST06~q\);

-- Location: LCCOMB_X76_Y35_N22
\lcd2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector0~0_combout\ = (\lcd2|cstate.ST06~q\) # ((!\cst.ST04~q\ & (!\cst.ST02~q\ & !\lcd2|cstate.ST00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cst.ST04~q\,
	datab => \cst.ST02~q\,
	datac => \lcd2|cstate.ST06~q\,
	datad => \lcd2|cstate.ST00~q\,
	combout => \lcd2|Selector0~0_combout\);

-- Location: FF_X73_Y36_N31
\lcd2|cstate.ST14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	asdata => \lcd2|Selector7~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|cstate.ST14~q\);

-- Location: LCCOMB_X76_Y35_N18
\lcd2|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector0~1_combout\ = (!\lcd2|Selector0~0_combout\ & !\lcd2|cstate.ST14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|Selector0~0_combout\,
	datac => \lcd2|cstate.ST14~q\,
	combout => \lcd2|Selector0~1_combout\);

-- Location: FF_X76_Y35_N19
\lcd2|cstate.ST00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|cstate.ST00~q\);

-- Location: LCCOMB_X76_Y35_N12
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\cst.ST02~q\) # ((\cst.ST03~q\ & \lcd2|cstate.ST00~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cst.ST02~q\,
	datac => \cst.ST03~q\,
	datad => \lcd2|cstate.ST00~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X76_Y35_N13
\cst.ST03\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cst.ST03~q\);

-- Location: LCCOMB_X75_Y33_N22
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\lcd2|cstate.ST00~q\ & (!\cst.ST00~q\ & ((\system_core|romOut~q\)))) # (!\lcd2|cstate.ST00~q\ & ((\cst.ST03~q\) # ((!\cst.ST00~q\ & \system_core|romOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|cstate.ST00~q\,
	datab => \cst.ST00~q\,
	datac => \cst.ST03~q\,
	datad => \system_core|romOut~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X76_Y34_N22
\cst.ST01~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cst.ST01~feeder_combout\ = \Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector1~0_combout\,
	combout => \cst.ST01~feeder_combout\);

-- Location: FF_X76_Y34_N23
\cst.ST01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \cst.ST01~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cst.ST01~q\);

-- Location: LCCOMB_X76_Y34_N20
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\cst.ST04~q\) # ((\lcd2|cstate.ST00~q\ & \cst.ST05~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|cstate.ST00~q\,
	datab => \cst.ST04~q\,
	datac => \cst.ST05~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X76_Y34_N21
\cst.ST05\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cst.ST05~q\);

-- Location: LCCOMB_X76_Y34_N6
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\cst.ST01~q\ & (((\cst.ST05~q\ & !\lcd2|cstate.ST00~q\)) # (!\writeReady~q\))) # (!\cst.ST01~q\ & (\cst.ST05~q\ & (!\lcd2|cstate.ST00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cst.ST01~q\,
	datab => \cst.ST05~q\,
	datac => \lcd2|cstate.ST00~q\,
	datad => \writeReady~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X76_Y32_N2
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector0~0_combout\ & ((\system_core|romOut~q\) # ((\cst.ST00~q\) # (\sp2|pulse~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \system_core|romOut~q\,
	datac => \cst.ST00~q\,
	datad => \sp2|pulse~q\,
	combout => \Selector0~1_combout\);

-- Location: FF_X76_Y32_N3
\cst.ST00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cst.ST00~q\);

-- Location: LCCOMB_X76_Y32_N4
\nst.ST04~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \nst.ST04~0_combout\ = (!\system_core|romOut~q\ & (\sp2|pulse~q\ & !\cst.ST00~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|romOut~q\,
	datac => \sp2|pulse~q\,
	datad => \cst.ST00~q\,
	combout => \nst.ST04~0_combout\);

-- Location: FF_X76_Y32_N5
\cst.ST04\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \nst.ST04~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cst.ST04~q\);

-- Location: LCCOMB_X77_Y35_N12
\lcd2|initSeq[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|initSeq[0]~2_combout\ = (\lcd2|nstate.ST07~4_combout\ & ((\lcd2|LessThan0~1_combout\ & (!\cst.ST04~q\)) # (!\lcd2|LessThan0~1_combout\ & ((!\lcd2|ready~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cst.ST04~q\,
	datab => \lcd2|ready~q\,
	datac => \lcd2|nstate.ST07~4_combout\,
	datad => \lcd2|LessThan0~1_combout\,
	combout => \lcd2|initSeq[0]~2_combout\);

-- Location: LCCOMB_X77_Y35_N22
\lcd2|initSeq[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|initSeq[2]~3_combout\ = (\lcd2|initSeq\(2) & ((\lcd2|initSeq[3]~0_combout\) # ((\lcd2|initSeq[0]~2_combout\ & \lcd2|LessThan0~0_combout\)))) # (!\lcd2|initSeq\(2) & (\lcd2|initSeq[0]~2_combout\ & (!\lcd2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq[0]~2_combout\,
	datab => \lcd2|LessThan0~0_combout\,
	datac => \lcd2|initSeq\(2),
	datad => \lcd2|initSeq[3]~0_combout\,
	combout => \lcd2|initSeq[2]~3_combout\);

-- Location: FF_X77_Y35_N23
\lcd2|initSeq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|initSeq[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|initSeq\(2));

-- Location: LCCOMB_X77_Y35_N18
\lcd2|initSeq[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|initSeq[3]~1_combout\ = (\lcd2|initSeq\(3)) # ((\lcd2|initSeq\(2) & (!\lcd2|LessThan0~0_combout\ & !\lcd2|initSeq[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq\(2),
	datab => \lcd2|LessThan0~0_combout\,
	datac => \lcd2|initSeq\(3),
	datad => \lcd2|initSeq[3]~0_combout\,
	combout => \lcd2|initSeq[3]~1_combout\);

-- Location: FF_X77_Y35_N19
\lcd2|initSeq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \lcd2|initSeq[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd2|initSeq\(3));

-- Location: LCCOMB_X72_Y36_N8
\lcd2|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector15~0_combout\ = (!\lcd2|initSeq\(3) & (!\lcd2|initSeq\(1) & (\lcd2|initSeq\(2) & \lcd2|initSeq\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq\(3),
	datab => \lcd2|initSeq\(1),
	datac => \lcd2|initSeq\(2),
	datad => \lcd2|initSeq\(0),
	combout => \lcd2|Selector15~0_combout\);

-- Location: LCCOMB_X73_Y36_N8
\lcd2|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|WideOr9~combout\ = (\lcd2|cstate.ST03~q\) # ((\lcd2|cstate.ST05~q\) # ((\lcd2|cstate.ST04~q\) # (\lcd2|cstate.ST06~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|cstate.ST03~q\,
	datab => \lcd2|cstate.ST05~q\,
	datac => \lcd2|cstate.ST04~q\,
	datad => \lcd2|cstate.ST06~q\,
	combout => \lcd2|WideOr9~combout\);

-- Location: LCCOMB_X72_Y36_N26
\lcd2|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector8~0_combout\ = (\lcd2|WideOr9~combout\ & ((\cst.ST03~q\) # (\cst.ST02~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cst.ST03~q\,
	datab => \lcd2|WideOr9~combout\,
	datad => \cst.ST02~q\,
	combout => \lcd2|Selector8~0_combout\);

-- Location: LCCOMB_X74_Y36_N2
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = ((wordCount(0)) # ((!\Equal3~8_combout\) # (!wordCount(4)))) # (!wordCount(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wordCount(1),
	datab => wordCount(0),
	datac => wordCount(4),
	datad => \Equal3~8_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X75_Y36_N14
\wordval~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~4_combout\ = (!\LessThan0~2_combout\ & ((\LessThan1~1_combout\) # ((!\Equal5~0_combout\ & \Equal3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal3~8_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan1~1_combout\,
	combout => \wordval~4_combout\);

-- Location: LCCOMB_X75_Y36_N22
\wordval[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval[6]~8_combout\ = (!\Equal3~9_combout\ & (!\Equal4~0_combout\ & (!\wordval~4_combout\ & \Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datab => \Equal4~0_combout\,
	datac => \wordval~4_combout\,
	datad => \Selector1~0_combout\,
	combout => \wordval[6]~8_combout\);

-- Location: LCCOMB_X74_Y36_N20
\wordval~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~14_combout\ = (\wordval[6]~8_combout\) # ((!\Equal4~0_combout\ & (\Equal5~1_combout\ & \wordval~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal5~1_combout\,
	datac => \wordval~4_combout\,
	datad => \wordval[6]~8_combout\,
	combout => \wordval~14_combout\);

-- Location: LCCOMB_X75_Y33_N20
\system_core|product~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|product~1_combout\ = (!\SW[1]~input_o\ & ((\SW[3]~input_o\) # (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \system_core|product~1_combout\);

-- Location: FF_X80_Y33_N17
\system_core|product[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \system_core|product~1_combout\,
	sclr => \auxiliaryMachine_reset|s_currentState.E1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|product\(1));

-- Location: LCCOMB_X77_Y36_N0
\address[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[0]~6_combout\ = address(0) $ (VCC)
-- \address[0]~7\ = CARRY(address(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => address(0),
	datad => VCC,
	combout => \address[0]~6_combout\,
	cout => \address[0]~7\);

-- Location: LCCOMB_X76_Y36_N20
\address[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[4]~16_combout\ = (\Selector1~0_combout\ & (!\Equal3~9_combout\ & ((\Equal4~0_combout\) # (!\wordval~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Equal3~9_combout\,
	datac => \Equal4~0_combout\,
	datad => \wordval~4_combout\,
	combout => \address[4]~16_combout\);

-- Location: FF_X76_Y36_N29
\address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	asdata => \address[0]~6_combout\,
	sclr => \Equal4~0_combout\,
	sload => VCC,
	ena => \address[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(0));

-- Location: LCCOMB_X77_Y36_N2
\address[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[1]~8_combout\ = (address(1) & (!\address[0]~7\)) # (!address(1) & ((\address[0]~7\) # (GND)))
-- \address[1]~9\ = CARRY((!\address[0]~7\) # (!address(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => address(1),
	datad => VCC,
	cin => \address[0]~7\,
	combout => \address[1]~8_combout\,
	cout => \address[1]~9\);

-- Location: FF_X77_Y36_N3
\address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \address[1]~8_combout\,
	sclr => \Equal4~0_combout\,
	ena => \address[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(1));

-- Location: LCCOMB_X77_Y36_N4
\address[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[2]~10_combout\ = (address(2) & (\address[1]~9\ $ (GND))) # (!address(2) & (!\address[1]~9\ & VCC))
-- \address[2]~11\ = CARRY((address(2) & !\address[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => address(2),
	datad => VCC,
	cin => \address[1]~9\,
	combout => \address[2]~10_combout\,
	cout => \address[2]~11\);

-- Location: FF_X77_Y36_N5
\address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \address[2]~10_combout\,
	sclr => \Equal4~0_combout\,
	ena => \address[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(2));

-- Location: LCCOMB_X77_Y36_N6
\address[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[3]~12_combout\ = (address(3) & (!\address[2]~11\)) # (!address(3) & ((\address[2]~11\) # (GND)))
-- \address[3]~13\ = CARRY((!\address[2]~11\) # (!address(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datad => VCC,
	cin => \address[2]~11\,
	combout => \address[3]~12_combout\,
	cout => \address[3]~13\);

-- Location: FF_X77_Y36_N7
\address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \address[3]~12_combout\,
	sclr => \Equal4~0_combout\,
	ena => \address[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(3));

-- Location: LCCOMB_X77_Y36_N8
\address[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[4]~14_combout\ = address(4) $ (!\address[3]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => address(4),
	cin => \address[3]~13\,
	combout => \address[4]~14_combout\);

-- Location: FF_X77_Y36_N9
\address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \address[4]~14_combout\,
	sclr => \Equal4~0_combout\,
	ena => \address[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address(4));

-- Location: LCCOMB_X75_Y33_N10
\system_core|product~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|product~0_combout\ = (\SW[1]~input_o\) # ((\SW[3]~input_o\ & !\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \system_core|product~0_combout\);

-- Location: FF_X80_Y29_N5
\system_core|product[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \system_core|product~0_combout\,
	sclr => \auxiliaryMachine_reset|s_currentState.E1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|product\(0));

-- Location: LCCOMB_X77_Y36_N24
\wordval~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~9_combout\ = (address(3) & (((!address(2) & address(0))))) # (!address(3) & (((!address(1) & address(0))) # (!address(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => address(1),
	datac => address(2),
	datad => address(0),
	combout => \wordval~9_combout\);

-- Location: LCCOMB_X77_Y36_N22
\wordval~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~35_combout\ = (!address(4) & ((\system_core|product\(0)) # ((\system_core|product\(1) & \wordval~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|product\(1),
	datab => address(4),
	datac => \system_core|product\(0),
	datad => \wordval~9_combout\,
	combout => \wordval~35_combout\);

-- Location: LCCOMB_X77_Y36_N30
\wordval~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~12_combout\ = (!address(0) & ((address(2) & (!address(3))) # (!address(2) & ((!\system_core|product\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => address(2),
	datac => address(0),
	datad => \system_core|product\(1),
	combout => \wordval~12_combout\);

-- Location: LCCOMB_X80_Y33_N18
\wordval~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~10_combout\ = (address(2) & ((address(1) & ((\system_core|product\(1)))) # (!address(1) & (address(3) & !\system_core|product\(1))))) # (!address(2) & ((address(1) & (!address(3))) # (!address(1) & ((\system_core|product\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => address(2),
	datac => address(1),
	datad => \system_core|product\(1),
	combout => \wordval~10_combout\);

-- Location: LCCOMB_X80_Y33_N8
\wordval~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~11_combout\ = ((\wordval~10_combout\ & ((address(0)) # (!\system_core|product\(1))))) # (!\system_core|product\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|product\(1),
	datab => address(0),
	datac => \system_core|product\(0),
	datad => \wordval~10_combout\,
	combout => \wordval~11_combout\);

-- Location: LCCOMB_X76_Y36_N12
\wordval~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~13_combout\ = ((\wordval~35_combout\ & ((\wordval~12_combout\) # (\wordval~11_combout\)))) # (!\wordval[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordval~35_combout\,
	datab => \wordval[6]~8_combout\,
	datac => \wordval~12_combout\,
	datad => \wordval~11_combout\,
	combout => \wordval~13_combout\);

-- Location: LCCOMB_X76_Y36_N0
\wordval~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~15_combout\ = (\wordval~13_combout\ & (((\Equal3~9_combout\) # (\wordval~14_combout\)) # (!\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Equal3~9_combout\,
	datac => \wordval~14_combout\,
	datad => \wordval~13_combout\,
	combout => \wordval~15_combout\);

-- Location: LCCOMB_X76_Y36_N18
\main~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main~0_combout\ = (!\system_core|product\(1) & !\system_core|product\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|product\(1),
	datad => \system_core|product\(0),
	combout => \main~0_combout\);

-- Location: LCCOMB_X76_Y36_N6
\wordval[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval[6]~16_combout\ = (\main~0_combout\) # ((\Selector1~0_combout\ & ((!\wordval~6_combout\) # (!\wordCount[11]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordCount[11]~0_combout\,
	datab => \Selector1~0_combout\,
	datac => \wordval~6_combout\,
	datad => \main~0_combout\,
	combout => \wordval[6]~16_combout\);

-- Location: FF_X76_Y36_N1
\wordval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \wordval~15_combout\,
	ena => \wordval[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordval(0));

-- Location: LCCOMB_X72_Y36_N30
\lcd2|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector15~1_combout\ = (\lcd2|Selector15~0_combout\ & (((\lcd2|Selector8~0_combout\ & wordval(0))) # (!\lcd2|WideOr9~combout\))) # (!\lcd2|Selector15~0_combout\ & (((\lcd2|Selector8~0_combout\ & wordval(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|Selector15~0_combout\,
	datab => \lcd2|WideOr9~combout\,
	datac => \lcd2|Selector8~0_combout\,
	datad => wordval(0),
	combout => \lcd2|Selector15~1_combout\);

-- Location: LCCOMB_X73_Y36_N14
\lcd2|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector16~1_combout\ = (!\lcd2|cstate.ST07~q\ & (\lcd2|cstate.ST00~q\ & !\lcd2|cstate.ST14~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|cstate.ST07~q\,
	datac => \lcd2|cstate.ST00~q\,
	datad => \lcd2|cstate.ST14~q\,
	combout => \lcd2|Selector16~1_combout\);

-- Location: LCCOMB_X72_Y36_N16
\lcd2|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector16~2_combout\ = (\lcd2|Selector16~1_combout\ & (\lcd2|Selector16~0_combout\ & ((!\lcd2|cstate.ST08~q\) # (!\lcd2|delay1|endDelay~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|Selector16~1_combout\,
	datab => \lcd2|delay1|endDelay~0_combout\,
	datac => \lcd2|Selector16~0_combout\,
	datad => \lcd2|cstate.ST08~q\,
	combout => \lcd2|Selector16~2_combout\);

-- Location: LCCOMB_X72_Y36_N22
\lcd2|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector14~0_combout\ = (!\lcd2|initSeq\(3) & (\lcd2|initSeq\(2) & (!\lcd2|WideOr9~combout\ & \lcd2|initSeq\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq\(3),
	datab => \lcd2|initSeq\(2),
	datac => \lcd2|WideOr9~combout\,
	datad => \lcd2|initSeq\(1),
	combout => \lcd2|Selector14~0_combout\);

-- Location: LCCOMB_X80_Y33_N4
\rom1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom1|Mux5~1_combout\ = (\system_core|product\(1) & (address(1) $ (((address(2) & address(0)))))) # (!\system_core|product\(1) & ((address(1) & (address(2))) # (!address(1) & ((address(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(0),
	datac => \system_core|product\(1),
	datad => address(1),
	combout => \rom1|Mux5~1_combout\);

-- Location: LCCOMB_X80_Y33_N22
\rom1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom1|Mux5~0_combout\ = (address(2) & ((address(0) & ((\system_core|product\(1)) # (!address(1)))) # (!address(0) & (\system_core|product\(1) & !address(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(0),
	datac => \system_core|product\(1),
	datad => address(1),
	combout => \rom1|Mux5~0_combout\);

-- Location: LCCOMB_X80_Y33_N26
\wordval~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~17_combout\ = (\system_core|product\(0) & ((address(3) & ((\rom1|Mux5~0_combout\))) # (!address(3) & (!\rom1|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => \rom1|Mux5~1_combout\,
	datac => \rom1|Mux5~0_combout\,
	datad => \system_core|product\(0),
	combout => \wordval~17_combout\);

-- Location: LCCOMB_X77_Y36_N16
\rom1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom1|Mux12~0_combout\ = (!address(2) & ((address(3) & (address(1) $ (!address(0)))) # (!address(3) & (!address(1) & address(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => address(1),
	datac => address(2),
	datad => address(0),
	combout => \rom1|Mux12~0_combout\);

-- Location: LCCOMB_X76_Y36_N2
\wordval~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~36_combout\ = (!address(4) & (\wordval[6]~8_combout\ & ((\system_core|product\(0)) # (\system_core|product\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|product\(0),
	datab => \system_core|product\(1),
	datac => address(4),
	datad => \wordval[6]~8_combout\,
	combout => \wordval~36_combout\);

-- Location: LCCOMB_X76_Y36_N10
\wordval~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~18_combout\ = (\wordval~36_combout\ & ((\wordval~17_combout\) # ((!\system_core|product\(0) & \rom1|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|product\(0),
	datab => \wordval~17_combout\,
	datac => \rom1|Mux12~0_combout\,
	datad => \wordval~36_combout\,
	combout => \wordval~18_combout\);

-- Location: FF_X76_Y36_N11
\wordval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \wordval~18_combout\,
	ena => \wordval[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordval(1));

-- Location: LCCOMB_X72_Y36_N20
\lcd2|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector14~1_combout\ = (\lcd2|Selector14~0_combout\ & ((\lcd2|initSeq\(0)) # ((wordval(1) & \lcd2|Selector8~0_combout\)))) # (!\lcd2|Selector14~0_combout\ & (wordval(1) & (\lcd2|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|Selector14~0_combout\,
	datab => wordval(1),
	datac => \lcd2|Selector8~0_combout\,
	datad => \lcd2|initSeq\(0),
	combout => \lcd2|Selector14~1_combout\);

-- Location: LCCOMB_X77_Y36_N26
\rom1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom1|Mux11~0_combout\ = (address(3) & (!address(1) & (!address(2)))) # (!address(3) & ((address(1) & (!address(2) & !address(0))) # (!address(1) & ((address(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => address(1),
	datac => address(2),
	datad => address(0),
	combout => \rom1|Mux11~0_combout\);

-- Location: LCCOMB_X80_Y33_N0
\rom1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom1|Mux4~0_combout\ = (address(2) & ((\system_core|product\(1) $ (!address(3))))) # (!address(2) & ((address(0) & (\system_core|product\(1))) # (!address(0) & (!\system_core|product\(1) & address(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(0),
	datac => \system_core|product\(1),
	datad => address(3),
	combout => \rom1|Mux4~0_combout\);

-- Location: LCCOMB_X80_Y33_N14
\rom1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom1|Mux4~1_combout\ = (address(2) & (((\system_core|product\(1)) # (address(3))) # (!address(0)))) # (!address(2) & ((address(0)) # ((\system_core|product\(1) & address(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(0),
	datac => \system_core|product\(1),
	datad => address(3),
	combout => \rom1|Mux4~1_combout\);

-- Location: LCCOMB_X80_Y33_N24
\wordval~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~19_combout\ = (\system_core|product\(0) & ((address(1) & ((!\rom1|Mux4~1_combout\))) # (!address(1) & (\rom1|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => \rom1|Mux4~0_combout\,
	datac => \rom1|Mux4~1_combout\,
	datad => \system_core|product\(0),
	combout => \wordval~19_combout\);

-- Location: LCCOMB_X76_Y36_N24
\wordval~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~20_combout\ = (\wordval~36_combout\ & ((\wordval~19_combout\) # ((!\system_core|product\(0) & \rom1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|product\(0),
	datab => \rom1|Mux11~0_combout\,
	datac => \wordval~19_combout\,
	datad => \wordval~36_combout\,
	combout => \wordval~20_combout\);

-- Location: FF_X76_Y36_N25
\wordval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \wordval~20_combout\,
	ena => \wordval[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordval(2));

-- Location: LCCOMB_X72_Y36_N10
\lcd2|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector13~0_combout\ = (\lcd2|Selector14~0_combout\) # ((\lcd2|Selector8~0_combout\ & wordval(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|Selector8~0_combout\,
	datac => \lcd2|Selector14~0_combout\,
	datad => wordval(2),
	combout => \lcd2|Selector13~0_combout\);

-- Location: LCCOMB_X72_Y36_N28
\lcd2|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector12~0_combout\ = (!\lcd2|WideOr9~combout\ & (!\lcd2|initSeq\(3) & ((!\lcd2|initSeq\(2)) # (!\lcd2|initSeq\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|initSeq\(0),
	datab => \lcd2|initSeq\(2),
	datac => \lcd2|WideOr9~combout\,
	datad => \lcd2|initSeq\(3),
	combout => \lcd2|Selector12~0_combout\);

-- Location: LCCOMB_X80_Y33_N10
\rom1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom1|Mux3~0_combout\ = (\system_core|product\(1) & (!address(1) & (address(2) $ (address(0))))) # (!\system_core|product\(1) & (!address(2) & (!address(0) & address(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(0),
	datac => \system_core|product\(1),
	datad => address(1),
	combout => \rom1|Mux3~0_combout\);

-- Location: LCCOMB_X80_Y33_N20
\rom1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom1|Mux3~1_combout\ = (address(2) & (!address(1) & ((address(0)) # (!\system_core|product\(1))))) # (!address(2) & (address(0) $ (((address(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(0),
	datac => \system_core|product\(1),
	datad => address(1),
	combout => \rom1|Mux3~1_combout\);

-- Location: LCCOMB_X80_Y33_N30
\wordval~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~21_combout\ = (\system_core|product\(0) & ((address(3) & (\rom1|Mux3~0_combout\)) # (!address(3) & ((\rom1|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom1|Mux3~0_combout\,
	datab => \rom1|Mux3~1_combout\,
	datac => address(3),
	datad => \system_core|product\(0),
	combout => \wordval~21_combout\);

-- Location: LCCOMB_X77_Y36_N12
\rom1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom1|Mux10~0_combout\ = (!address(1) & ((address(3) & (!address(2) & !address(0))) # (!address(3) & (address(2) & address(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => address(1),
	datac => address(2),
	datad => address(0),
	combout => \rom1|Mux10~0_combout\);

-- Location: LCCOMB_X76_Y36_N26
\wordval~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~22_combout\ = (\wordval~36_combout\ & ((\wordval~21_combout\) # ((!\system_core|product\(0) & \rom1|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|product\(0),
	datab => \wordval~21_combout\,
	datac => \rom1|Mux10~0_combout\,
	datad => \wordval~36_combout\,
	combout => \wordval~22_combout\);

-- Location: FF_X76_Y36_N27
\wordval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \wordval~22_combout\,
	ena => \wordval[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordval(3));

-- Location: LCCOMB_X72_Y36_N18
\lcd2|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector12~1_combout\ = (\lcd2|Selector12~0_combout\) # ((\lcd2|Selector8~0_combout\ & wordval(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|Selector12~0_combout\,
	datac => \lcd2|Selector8~0_combout\,
	datad => wordval(3),
	combout => \lcd2|Selector12~1_combout\);

-- Location: LCCOMB_X77_Y36_N14
\rom1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom1|Mux9~0_combout\ = (address(3) & (!address(2) & (address(1) $ (address(0))))) # (!address(3) & (address(1) & (address(2) $ (!address(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => address(1),
	datac => address(2),
	datad => address(0),
	combout => \rom1|Mux9~0_combout\);

-- Location: LCCOMB_X77_Y36_N28
\wordval~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~23_combout\ = (address(3) & (address(1) & (!address(2) & address(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => address(1),
	datac => address(2),
	datad => address(0),
	combout => \wordval~23_combout\);

-- Location: LCCOMB_X77_Y36_N18
\rom1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom1|Mux2~0_combout\ = (address(3) & ((address(1) & (\system_core|product\(1) & !address(0))) # (!address(1) & (\system_core|product\(1) $ (!address(0)))))) # (!address(3) & (address(1) & ((address(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => address(1),
	datac => \system_core|product\(1),
	datad => address(0),
	combout => \rom1|Mux2~0_combout\);

-- Location: LCCOMB_X76_Y36_N4
\wordval~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~24_combout\ = (address(2) & ((\rom1|Mux2~0_combout\) # ((\wordval~23_combout\ & \system_core|product\(1))))) # (!address(2) & (\wordval~23_combout\ & (\system_core|product\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => \wordval~23_combout\,
	datac => \system_core|product\(1),
	datad => \rom1|Mux2~0_combout\,
	combout => \wordval~24_combout\);

-- Location: LCCOMB_X76_Y36_N8
\wordval~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~25_combout\ = (\wordval~36_combout\ & ((\system_core|product\(0) & ((\wordval~24_combout\))) # (!\system_core|product\(0) & (\rom1|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|product\(0),
	datab => \rom1|Mux9~0_combout\,
	datac => \wordval~24_combout\,
	datad => \wordval~36_combout\,
	combout => \wordval~25_combout\);

-- Location: FF_X76_Y36_N9
\wordval[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \wordval~25_combout\,
	ena => \wordval[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordval(4));

-- Location: LCCOMB_X72_Y36_N12
\lcd2|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Mux4~1_combout\ = (!\lcd2|initSeq\(2) & !\lcd2|initSeq\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd2|initSeq\(2),
	datac => \lcd2|initSeq\(3),
	combout => \lcd2|Mux4~1_combout\);

-- Location: LCCOMB_X72_Y36_N2
\lcd2|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector11~0_combout\ = (\lcd2|Selector8~0_combout\ & ((wordval(4)) # ((!\lcd2|WideOr9~combout\ & \lcd2|Mux4~1_combout\)))) # (!\lcd2|Selector8~0_combout\ & (((!\lcd2|WideOr9~combout\ & \lcd2|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|Selector8~0_combout\,
	datab => wordval(4),
	datac => \lcd2|WideOr9~combout\,
	datad => \lcd2|Mux4~1_combout\,
	combout => \lcd2|Selector11~0_combout\);

-- Location: LCCOMB_X79_Y36_N0
\rom1|output[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom1|output[5]~1_combout\ = (address(4)) # ((address(2)) # (address(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(4),
	datac => address(2),
	datad => address(3),
	combout => \rom1|output[5]~1_combout\);

-- Location: LCCOMB_X74_Y36_N6
\wordval~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~5_combout\ = (\Selector1~0_combout\ & (!\wordval~4_combout\ & \wordCount[11]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \wordval~4_combout\,
	datac => \wordCount[11]~0_combout\,
	combout => \wordval~5_combout\);

-- Location: LCCOMB_X76_Y36_N22
\rom1|output[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom1|output[5]~0_combout\ = (address(1)) # ((address(0)) # ((!\system_core|product\(1) & !\system_core|product\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => address(0),
	datac => \system_core|product\(1),
	datad => \system_core|product\(0),
	combout => \rom1|output[5]~0_combout\);

-- Location: LCCOMB_X75_Y36_N20
\wordval~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~26_combout\ = (\wordval~5_combout\ & ((\rom1|output[5]~1_combout\) # (\rom1|output[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom1|output[5]~1_combout\,
	datac => \wordval~5_combout\,
	datad => \rom1|output[5]~0_combout\,
	combout => \wordval~26_combout\);

-- Location: LCCOMB_X75_Y36_N26
\wordval~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~7_combout\ = (\main~0_combout\) # ((\Selector1~0_combout\ & ((!\wordval~6_combout\) # (!\wordCount[11]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \wordCount[11]~0_combout\,
	datac => \wordval~6_combout\,
	datad => \main~0_combout\,
	combout => \wordval~7_combout\);

-- Location: FF_X75_Y36_N21
\wordval[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \wordval~26_combout\,
	ena => \wordval~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordval(5));

-- Location: LCCOMB_X72_Y36_N24
\lcd2|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector10~0_combout\ = (\lcd2|Selector8~0_combout\ & ((wordval(5)) # ((!\lcd2|WideOr9~combout\ & \lcd2|Mux4~1_combout\)))) # (!\lcd2|Selector8~0_combout\ & (!\lcd2|WideOr9~combout\ & ((\lcd2|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|Selector8~0_combout\,
	datab => \lcd2|WideOr9~combout\,
	datac => wordval(5),
	datad => \lcd2|Mux4~1_combout\,
	combout => \lcd2|Selector10~0_combout\);

-- Location: LCCOMB_X80_Y33_N28
\rom1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom1|Mux8~0_combout\ = (address(2)) # ((address(3) & ((!address(0)) # (!address(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => address(2),
	datac => address(0),
	datad => address(3),
	combout => \rom1|Mux8~0_combout\);

-- Location: LCCOMB_X80_Y33_N2
\rom1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom1|Mux1~0_combout\ = (address(2) & ((\system_core|product\(1) $ (address(1))) # (!address(0)))) # (!address(2) & ((address(0)) # ((\system_core|product\(1)) # (address(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(2),
	datab => address(0),
	datac => \system_core|product\(1),
	datad => address(1),
	combout => \rom1|Mux1~0_combout\);

-- Location: LCCOMB_X80_Y33_N12
\wordval~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~30_combout\ = (\system_core|product\(0) & (((!\rom1|Mux1~0_combout\) # (!address(3))))) # (!\system_core|product\(0) & (!\rom1|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|product\(0),
	datab => \rom1|Mux8~0_combout\,
	datac => address(3),
	datad => \rom1|Mux1~0_combout\,
	combout => \wordval~30_combout\);

-- Location: LCCOMB_X76_Y36_N14
\wordval~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~29_combout\ = (\Selector1~0_combout\ & (!address(4) & (\wordCount[11]~0_combout\ & !\wordval~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => address(4),
	datac => \wordCount[11]~0_combout\,
	datad => \wordval~4_combout\,
	combout => \wordval~29_combout\);

-- Location: LCCOMB_X74_Y36_N10
\wordval~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~28_combout\ = (\Selector1~0_combout\ & (\wordval~4_combout\ & (\wordCount[11]~0_combout\ & !\Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \wordval~4_combout\,
	datac => \wordCount[11]~0_combout\,
	datad => \Equal5~1_combout\,
	combout => \wordval~28_combout\);

-- Location: LCCOMB_X76_Y36_N16
\wordval[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval[6]~27_combout\ = (\wordval~4_combout\) # (((!\main~0_combout\) # (!\wordCount[11]~0_combout\)) # (!\Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordval~4_combout\,
	datab => \Selector1~0_combout\,
	datac => \wordCount[11]~0_combout\,
	datad => \main~0_combout\,
	combout => \wordval[6]~27_combout\);

-- Location: LCCOMB_X76_Y36_N30
\wordval~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~31_combout\ = (\wordval[6]~27_combout\ & ((\wordval~28_combout\) # ((\wordval~30_combout\ & \wordval~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wordval~30_combout\,
	datab => \wordval~29_combout\,
	datac => \wordval~28_combout\,
	datad => \wordval[6]~27_combout\,
	combout => \wordval~31_combout\);

-- Location: FF_X76_Y36_N31
\wordval[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \wordval~31_combout\,
	ena => \wordval[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordval(6));

-- Location: LCCOMB_X76_Y35_N28
\lcd2|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector9~0_combout\ = (\lcd2|WideOr9~combout\ & (wordval(6) & ((\cst.ST02~q\) # (\cst.ST03~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|WideOr9~combout\,
	datab => \cst.ST02~q\,
	datac => wordval(6),
	datad => \cst.ST03~q\,
	combout => \lcd2|Selector9~0_combout\);

-- Location: LCCOMB_X76_Y36_N28
\address[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \address[4]~5_combout\ = (\Selector1~0_combout\ & !\Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Equal3~9_combout\,
	combout => \address[4]~5_combout\);

-- Location: LCCOMB_X80_Y33_N6
\wordval~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~32_combout\ = (address(2) & (\system_core|product\(0) & (address(1) $ (!\system_core|product\(1))))) # (!address(2) & (address(1) & ((!\system_core|product\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(1),
	datab => address(2),
	datac => \system_core|product\(1),
	datad => \system_core|product\(0),
	combout => \wordval~32_combout\);

-- Location: LCCOMB_X77_Y36_N20
\wordval~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~33_combout\ = (address(3) & (address(0) & (\wordval~32_combout\ & \wordval~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => address(3),
	datab => address(0),
	datac => \wordval~32_combout\,
	datad => \wordval~29_combout\,
	combout => \wordval~33_combout\);

-- Location: LCCOMB_X77_Y36_N10
\wordval~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \wordval~34_combout\ = (\wordval[6]~27_combout\ & ((\wordval~33_combout\) # ((\address[4]~5_combout\ & !\wordval~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~5_combout\,
	datab => \wordval~33_combout\,
	datac => \wordval[6]~27_combout\,
	datad => \wordval~14_combout\,
	combout => \wordval~34_combout\);

-- Location: FF_X77_Y36_N11
\wordval[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	d => \wordval~34_combout\,
	ena => \wordval[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordval(7));

-- Location: LCCOMB_X74_Y36_N8
\lcd2|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector8~1_combout\ = (\lcd2|WideOr9~combout\ & (wordval(7) & ((\cst.ST02~q\) # (\cst.ST03~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cst.ST02~q\,
	datab => \lcd2|WideOr9~combout\,
	datac => wordval(7),
	datad => \cst.ST03~q\,
	combout => \lcd2|Selector8~1_combout\);

-- Location: LCCOMB_X73_Y36_N12
\lcd2|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector6~0_combout\ = (\lcd2|cstate.ST09~q\) # ((\lcd2|cstate.ST05~q\) # ((\lcd2|cstate.ST10~q\) # (\lcd2|cstate.ST04~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|cstate.ST09~q\,
	datab => \lcd2|cstate.ST05~q\,
	datac => \lcd2|cstate.ST10~q\,
	datad => \lcd2|cstate.ST04~q\,
	combout => \lcd2|Selector6~0_combout\);

-- Location: LCCOMB_X72_Y36_N0
\lcd2|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector6~1_combout\ = (\lcd2|cstate.ST08~q\ & (((\lcd2|delay1|endDelay~0_combout\)))) # (!\lcd2|cstate.ST08~q\ & (!\lcd2|cstate.ST03~q\ & ((!\lcd2|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|cstate.ST03~q\,
	datab => \lcd2|delay1|endDelay~0_combout\,
	datac => \lcd2|Selector6~0_combout\,
	datad => \lcd2|cstate.ST08~q\,
	combout => \lcd2|Selector6~1_combout\);

-- Location: FF_X75_Y36_N1
\wordval[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1|clkOut~clkctrl_outclk\,
	asdata => \wordval~5_combout\,
	sload => VCC,
	ena => \wordval~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wordval(8));

-- Location: LCCOMB_X74_Y36_N16
\lcd2|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector5~0_combout\ = (\lcd2|WideOr9~combout\ & (wordval(8) & ((\cst.ST03~q\) # (\cst.ST02~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cst.ST03~q\,
	datab => \lcd2|WideOr9~combout\,
	datac => wordval(8),
	datad => \cst.ST02~q\,
	combout => \lcd2|Selector5~0_combout\);

-- Location: LCCOMB_X73_Y36_N4
\lcd2|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector4~0_combout\ = (\lcd2|cstate.ST01~q\) # ((\lcd2|cstate.ST11~q\) # ((\lcd2|cstate.ST04~q\) # (\lcd2|cstate.ST12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|cstate.ST01~q\,
	datab => \lcd2|cstate.ST11~q\,
	datac => \lcd2|cstate.ST04~q\,
	datad => \lcd2|cstate.ST12~q\,
	combout => \lcd2|Selector4~0_combout\);

-- Location: LCCOMB_X73_Y36_N24
\lcd2|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd2|Selector4~1_combout\ = (\lcd2|Selector4~0_combout\) # ((\lcd2|cstate.ST09~q\) # ((\lcd2|ready~q\ & \lcd2|cstate.ST02~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd2|Selector4~0_combout\,
	datab => \lcd2|ready~q\,
	datac => \lcd2|cstate.ST09~q\,
	datad => \lcd2|cstate.ST02~q\,
	combout => \lcd2|Selector4~1_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X83_Y27_N2
\auxiliaryMachine_replacement|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_replacement|Selector0~0_combout\ = (\SW[0]~input_o\) # (\auxiliaryMachine_replacement|s_currentState.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \auxiliaryMachine_replacement|s_currentState.E1~q\,
	combout => \auxiliaryMachine_replacement|Selector0~0_combout\);

-- Location: FF_X83_Y27_N3
\auxiliaryMachine_replacement|s_currentState.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auxiliaryMachine_replacement|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxiliaryMachine_replacement|s_currentState.E0~q\);

-- Location: LCCOMB_X83_Y27_N24
\auxiliaryMachine_replacement|s_nextState.E1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_replacement|s_nextState.E1~0_combout\ = (\SW[0]~input_o\ & !\auxiliaryMachine_replacement|s_currentState.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \auxiliaryMachine_replacement|s_currentState.E0~q\,
	combout => \auxiliaryMachine_replacement|s_nextState.E1~0_combout\);

-- Location: FF_X83_Y27_N25
\auxiliaryMachine_replacement|s_currentState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auxiliaryMachine_replacement|s_nextState.E1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxiliaryMachine_replacement|s_currentState.E1~q\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X79_Y30_N18
\auxiliaryMachine_push|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_push|Selector0~0_combout\ = (\auxiliaryMachine_push|s_currentState.E1~q\) # (\SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auxiliaryMachine_push|s_currentState.E1~q\,
	datac => \SW[16]~input_o\,
	combout => \auxiliaryMachine_push|Selector0~0_combout\);

-- Location: FF_X79_Y30_N19
\auxiliaryMachine_push|s_currentState.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auxiliaryMachine_push|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxiliaryMachine_push|s_currentState.E0~q\);

-- Location: LCCOMB_X79_Y30_N28
\auxiliaryMachine_push|s_nextState.E1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_push|s_nextState.E1~0_combout\ = (\SW[16]~input_o\ & !\auxiliaryMachine_push|s_currentState.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[16]~input_o\,
	datad => \auxiliaryMachine_push|s_currentState.E0~q\,
	combout => \auxiliaryMachine_push|s_nextState.E1~0_combout\);

-- Location: FF_X79_Y30_N29
\auxiliaryMachine_push|s_currentState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auxiliaryMachine_push|s_nextState.E1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxiliaryMachine_push|s_currentState.E1~q\);

-- Location: LCCOMB_X79_Y30_N30
\system_core|s_resetAux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_resetAux~0_combout\ = (!\system_core|moneyOut~1_combout\ & ((\auxiliaryMachine_reset|s_currentState.E1~q\) # (\system_core|s_resetAux~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auxiliaryMachine_reset|s_currentState.E1~q\,
	datac => \system_core|s_resetAux~q\,
	datad => \system_core|moneyOut~1_combout\,
	combout => \system_core|s_resetAux~0_combout\);

-- Location: FF_X79_Y30_N31
\system_core|s_resetAux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_resetAux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_resetAux~q\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X82_Y37_N20
\KEY2_debounce|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_dirtyIn~feeder_combout\ = \KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \KEY2_debounce|s_dirtyIn~feeder_combout\);

-- Location: FF_X82_Y37_N21
\KEY2_debounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_dirtyIn~q\);

-- Location: LCCOMB_X81_Y37_N28
\KEY2_debounce|s_pulsedOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_pulsedOut~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \KEY2_debounce|s_pulsedOut~feeder_combout\);

-- Location: LCCOMB_X81_Y41_N2
\KEY2_debounce|s_debounceCnt[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[0]~31_combout\ = \KEY2_debounce|s_debounceCnt\(0) $ (VCC)
-- \KEY2_debounce|s_debounceCnt[0]~32\ = CARRY(\KEY2_debounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \KEY2_debounce|s_debounceCnt[0]~31_combout\,
	cout => \KEY2_debounce|s_debounceCnt[0]~32\);

-- Location: LCCOMB_X79_Y39_N16
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X81_Y41_N3
\KEY2_debounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[0]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(0));

-- Location: LCCOMB_X81_Y41_N4
\KEY2_debounce|s_debounceCnt[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[1]~33_combout\ = (\KEY2_debounce|s_debounceCnt\(1) & (\KEY2_debounce|s_debounceCnt[0]~32\ & VCC)) # (!\KEY2_debounce|s_debounceCnt\(1) & (!\KEY2_debounce|s_debounceCnt[0]~32\))
-- \KEY2_debounce|s_debounceCnt[1]~34\ = CARRY((!\KEY2_debounce|s_debounceCnt\(1) & !\KEY2_debounce|s_debounceCnt[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[0]~32\,
	combout => \KEY2_debounce|s_debounceCnt[1]~33_combout\,
	cout => \KEY2_debounce|s_debounceCnt[1]~34\);

-- Location: FF_X81_Y41_N5
\KEY2_debounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[1]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(1));

-- Location: LCCOMB_X81_Y41_N6
\KEY2_debounce|s_debounceCnt[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[2]~35_combout\ = (\KEY2_debounce|s_debounceCnt\(2) & ((GND) # (!\KEY2_debounce|s_debounceCnt[1]~34\))) # (!\KEY2_debounce|s_debounceCnt\(2) & (\KEY2_debounce|s_debounceCnt[1]~34\ $ (GND)))
-- \KEY2_debounce|s_debounceCnt[2]~36\ = CARRY((\KEY2_debounce|s_debounceCnt\(2)) # (!\KEY2_debounce|s_debounceCnt[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[1]~34\,
	combout => \KEY2_debounce|s_debounceCnt[2]~35_combout\,
	cout => \KEY2_debounce|s_debounceCnt[2]~36\);

-- Location: FF_X81_Y41_N7
\KEY2_debounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[2]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(2));

-- Location: LCCOMB_X81_Y41_N8
\KEY2_debounce|s_debounceCnt[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[3]~37_combout\ = (\KEY2_debounce|s_debounceCnt\(3) & (\KEY2_debounce|s_debounceCnt[2]~36\ & VCC)) # (!\KEY2_debounce|s_debounceCnt\(3) & (!\KEY2_debounce|s_debounceCnt[2]~36\))
-- \KEY2_debounce|s_debounceCnt[3]~38\ = CARRY((!\KEY2_debounce|s_debounceCnt\(3) & !\KEY2_debounce|s_debounceCnt[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[2]~36\,
	combout => \KEY2_debounce|s_debounceCnt[3]~37_combout\,
	cout => \KEY2_debounce|s_debounceCnt[3]~38\);

-- Location: FF_X81_Y41_N9
\KEY2_debounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[3]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(3));

-- Location: LCCOMB_X81_Y41_N10
\KEY2_debounce|s_debounceCnt[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[4]~39_combout\ = (\KEY2_debounce|s_debounceCnt\(4) & ((GND) # (!\KEY2_debounce|s_debounceCnt[3]~38\))) # (!\KEY2_debounce|s_debounceCnt\(4) & (\KEY2_debounce|s_debounceCnt[3]~38\ $ (GND)))
-- \KEY2_debounce|s_debounceCnt[4]~40\ = CARRY((\KEY2_debounce|s_debounceCnt\(4)) # (!\KEY2_debounce|s_debounceCnt[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[3]~38\,
	combout => \KEY2_debounce|s_debounceCnt[4]~39_combout\,
	cout => \KEY2_debounce|s_debounceCnt[4]~40\);

-- Location: FF_X81_Y41_N11
\KEY2_debounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[4]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(4));

-- Location: LCCOMB_X81_Y41_N12
\KEY2_debounce|s_debounceCnt[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[5]~41_combout\ = (\KEY2_debounce|s_debounceCnt\(5) & (\KEY2_debounce|s_debounceCnt[4]~40\ & VCC)) # (!\KEY2_debounce|s_debounceCnt\(5) & (!\KEY2_debounce|s_debounceCnt[4]~40\))
-- \KEY2_debounce|s_debounceCnt[5]~42\ = CARRY((!\KEY2_debounce|s_debounceCnt\(5) & !\KEY2_debounce|s_debounceCnt[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[4]~40\,
	combout => \KEY2_debounce|s_debounceCnt[5]~41_combout\,
	cout => \KEY2_debounce|s_debounceCnt[5]~42\);

-- Location: FF_X81_Y41_N13
\KEY2_debounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[5]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(5));

-- Location: LCCOMB_X81_Y41_N14
\KEY2_debounce|s_debounceCnt[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[6]~43_combout\ = (\KEY2_debounce|s_debounceCnt\(6) & ((GND) # (!\KEY2_debounce|s_debounceCnt[5]~42\))) # (!\KEY2_debounce|s_debounceCnt\(6) & (\KEY2_debounce|s_debounceCnt[5]~42\ $ (GND)))
-- \KEY2_debounce|s_debounceCnt[6]~44\ = CARRY((\KEY2_debounce|s_debounceCnt\(6)) # (!\KEY2_debounce|s_debounceCnt[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[5]~42\,
	combout => \KEY2_debounce|s_debounceCnt[6]~43_combout\,
	cout => \KEY2_debounce|s_debounceCnt[6]~44\);

-- Location: FF_X81_Y41_N15
\KEY2_debounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[6]~43_combout\,
	asdata => \KEY2_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(6));

-- Location: LCCOMB_X81_Y41_N16
\KEY2_debounce|s_debounceCnt[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[7]~45_combout\ = (\KEY2_debounce|s_debounceCnt\(7) & (\KEY2_debounce|s_debounceCnt[6]~44\ & VCC)) # (!\KEY2_debounce|s_debounceCnt\(7) & (!\KEY2_debounce|s_debounceCnt[6]~44\))
-- \KEY2_debounce|s_debounceCnt[7]~46\ = CARRY((!\KEY2_debounce|s_debounceCnt\(7) & !\KEY2_debounce|s_debounceCnt[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[6]~44\,
	combout => \KEY2_debounce|s_debounceCnt[7]~45_combout\,
	cout => \KEY2_debounce|s_debounceCnt[7]~46\);

-- Location: FF_X81_Y41_N17
\KEY2_debounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[7]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(7));

-- Location: LCCOMB_X81_Y41_N18
\KEY2_debounce|s_debounceCnt[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[8]~47_combout\ = (\KEY2_debounce|s_debounceCnt\(8) & ((GND) # (!\KEY2_debounce|s_debounceCnt[7]~46\))) # (!\KEY2_debounce|s_debounceCnt\(8) & (\KEY2_debounce|s_debounceCnt[7]~46\ $ (GND)))
-- \KEY2_debounce|s_debounceCnt[8]~48\ = CARRY((\KEY2_debounce|s_debounceCnt\(8)) # (!\KEY2_debounce|s_debounceCnt[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[7]~46\,
	combout => \KEY2_debounce|s_debounceCnt[8]~47_combout\,
	cout => \KEY2_debounce|s_debounceCnt[8]~48\);

-- Location: FF_X81_Y41_N19
\KEY2_debounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[8]~47_combout\,
	asdata => \KEY2_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(8));

-- Location: LCCOMB_X81_Y41_N20
\KEY2_debounce|s_debounceCnt[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[9]~49_combout\ = (\KEY2_debounce|s_debounceCnt\(9) & (\KEY2_debounce|s_debounceCnt[8]~48\ & VCC)) # (!\KEY2_debounce|s_debounceCnt\(9) & (!\KEY2_debounce|s_debounceCnt[8]~48\))
-- \KEY2_debounce|s_debounceCnt[9]~50\ = CARRY((!\KEY2_debounce|s_debounceCnt\(9) & !\KEY2_debounce|s_debounceCnt[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[8]~48\,
	combout => \KEY2_debounce|s_debounceCnt[9]~49_combout\,
	cout => \KEY2_debounce|s_debounceCnt[9]~50\);

-- Location: FF_X81_Y41_N21
\KEY2_debounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[9]~49_combout\,
	asdata => \KEY2_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(9));

-- Location: LCCOMB_X81_Y41_N22
\KEY2_debounce|s_debounceCnt[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[10]~51_combout\ = (\KEY2_debounce|s_debounceCnt\(10) & ((GND) # (!\KEY2_debounce|s_debounceCnt[9]~50\))) # (!\KEY2_debounce|s_debounceCnt\(10) & (\KEY2_debounce|s_debounceCnt[9]~50\ $ (GND)))
-- \KEY2_debounce|s_debounceCnt[10]~52\ = CARRY((\KEY2_debounce|s_debounceCnt\(10)) # (!\KEY2_debounce|s_debounceCnt[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[9]~50\,
	combout => \KEY2_debounce|s_debounceCnt[10]~51_combout\,
	cout => \KEY2_debounce|s_debounceCnt[10]~52\);

-- Location: FF_X81_Y41_N23
\KEY2_debounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[10]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(10));

-- Location: LCCOMB_X81_Y41_N24
\KEY2_debounce|s_debounceCnt[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[11]~53_combout\ = (\KEY2_debounce|s_debounceCnt\(11) & (\KEY2_debounce|s_debounceCnt[10]~52\ & VCC)) # (!\KEY2_debounce|s_debounceCnt\(11) & (!\KEY2_debounce|s_debounceCnt[10]~52\))
-- \KEY2_debounce|s_debounceCnt[11]~54\ = CARRY((!\KEY2_debounce|s_debounceCnt\(11) & !\KEY2_debounce|s_debounceCnt[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[10]~52\,
	combout => \KEY2_debounce|s_debounceCnt[11]~53_combout\,
	cout => \KEY2_debounce|s_debounceCnt[11]~54\);

-- Location: FF_X81_Y41_N25
\KEY2_debounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[11]~53_combout\,
	asdata => \KEY2_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(11));

-- Location: LCCOMB_X81_Y41_N26
\KEY2_debounce|s_debounceCnt[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[12]~55_combout\ = (\KEY2_debounce|s_debounceCnt\(12) & ((GND) # (!\KEY2_debounce|s_debounceCnt[11]~54\))) # (!\KEY2_debounce|s_debounceCnt\(12) & (\KEY2_debounce|s_debounceCnt[11]~54\ $ (GND)))
-- \KEY2_debounce|s_debounceCnt[12]~56\ = CARRY((\KEY2_debounce|s_debounceCnt\(12)) # (!\KEY2_debounce|s_debounceCnt[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[11]~54\,
	combout => \KEY2_debounce|s_debounceCnt[12]~55_combout\,
	cout => \KEY2_debounce|s_debounceCnt[12]~56\);

-- Location: FF_X81_Y41_N27
\KEY2_debounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[12]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(12));

-- Location: LCCOMB_X81_Y41_N28
\KEY2_debounce|s_debounceCnt[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[13]~57_combout\ = (\KEY2_debounce|s_debounceCnt\(13) & (\KEY2_debounce|s_debounceCnt[12]~56\ & VCC)) # (!\KEY2_debounce|s_debounceCnt\(13) & (!\KEY2_debounce|s_debounceCnt[12]~56\))
-- \KEY2_debounce|s_debounceCnt[13]~58\ = CARRY((!\KEY2_debounce|s_debounceCnt\(13) & !\KEY2_debounce|s_debounceCnt[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[12]~56\,
	combout => \KEY2_debounce|s_debounceCnt[13]~57_combout\,
	cout => \KEY2_debounce|s_debounceCnt[13]~58\);

-- Location: FF_X81_Y41_N29
\KEY2_debounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[13]~57_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(13));

-- Location: LCCOMB_X81_Y41_N30
\KEY2_debounce|s_debounceCnt[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[14]~59_combout\ = (\KEY2_debounce|s_debounceCnt\(14) & ((GND) # (!\KEY2_debounce|s_debounceCnt[13]~58\))) # (!\KEY2_debounce|s_debounceCnt\(14) & (\KEY2_debounce|s_debounceCnt[13]~58\ $ (GND)))
-- \KEY2_debounce|s_debounceCnt[14]~60\ = CARRY((\KEY2_debounce|s_debounceCnt\(14)) # (!\KEY2_debounce|s_debounceCnt[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[13]~58\,
	combout => \KEY2_debounce|s_debounceCnt[14]~59_combout\,
	cout => \KEY2_debounce|s_debounceCnt[14]~60\);

-- Location: FF_X81_Y41_N31
\KEY2_debounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[14]~59_combout\,
	asdata => \KEY2_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(14));

-- Location: LCCOMB_X81_Y40_N0
\KEY2_debounce|s_debounceCnt[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[15]~61_combout\ = (\KEY2_debounce|s_debounceCnt\(15) & (\KEY2_debounce|s_debounceCnt[14]~60\ & VCC)) # (!\KEY2_debounce|s_debounceCnt\(15) & (!\KEY2_debounce|s_debounceCnt[14]~60\))
-- \KEY2_debounce|s_debounceCnt[15]~62\ = CARRY((!\KEY2_debounce|s_debounceCnt\(15) & !\KEY2_debounce|s_debounceCnt[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[14]~60\,
	combout => \KEY2_debounce|s_debounceCnt[15]~61_combout\,
	cout => \KEY2_debounce|s_debounceCnt[15]~62\);

-- Location: LCCOMB_X83_Y41_N8
\KEY2_debounce|s_debounceCnt[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[15]~feeder_combout\ = \KEY2_debounce|s_debounceCnt[15]~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY2_debounce|s_debounceCnt[15]~61_combout\,
	combout => \KEY2_debounce|s_debounceCnt[15]~feeder_combout\);

-- Location: FF_X83_Y41_N9
\KEY2_debounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[15]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(15));

-- Location: LCCOMB_X81_Y40_N2
\KEY2_debounce|s_debounceCnt[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[16]~63_combout\ = (\KEY2_debounce|s_debounceCnt\(16) & ((GND) # (!\KEY2_debounce|s_debounceCnt[15]~62\))) # (!\KEY2_debounce|s_debounceCnt\(16) & (\KEY2_debounce|s_debounceCnt[15]~62\ $ (GND)))
-- \KEY2_debounce|s_debounceCnt[16]~64\ = CARRY((\KEY2_debounce|s_debounceCnt\(16)) # (!\KEY2_debounce|s_debounceCnt[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[15]~62\,
	combout => \KEY2_debounce|s_debounceCnt[16]~63_combout\,
	cout => \KEY2_debounce|s_debounceCnt[16]~64\);

-- Location: FF_X81_Y40_N3
\KEY2_debounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[16]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(16));

-- Location: LCCOMB_X81_Y40_N4
\KEY2_debounce|s_debounceCnt[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[17]~65_combout\ = (\KEY2_debounce|s_debounceCnt\(17) & (\KEY2_debounce|s_debounceCnt[16]~64\ & VCC)) # (!\KEY2_debounce|s_debounceCnt\(17) & (!\KEY2_debounce|s_debounceCnt[16]~64\))
-- \KEY2_debounce|s_debounceCnt[17]~66\ = CARRY((!\KEY2_debounce|s_debounceCnt\(17) & !\KEY2_debounce|s_debounceCnt[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[16]~64\,
	combout => \KEY2_debounce|s_debounceCnt[17]~65_combout\,
	cout => \KEY2_debounce|s_debounceCnt[17]~66\);

-- Location: FF_X81_Y40_N5
\KEY2_debounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[17]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(17));

-- Location: LCCOMB_X81_Y40_N6
\KEY2_debounce|s_debounceCnt[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[18]~67_combout\ = (\KEY2_debounce|s_debounceCnt\(18) & ((GND) # (!\KEY2_debounce|s_debounceCnt[17]~66\))) # (!\KEY2_debounce|s_debounceCnt\(18) & (\KEY2_debounce|s_debounceCnt[17]~66\ $ (GND)))
-- \KEY2_debounce|s_debounceCnt[18]~68\ = CARRY((\KEY2_debounce|s_debounceCnt\(18)) # (!\KEY2_debounce|s_debounceCnt[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[17]~66\,
	combout => \KEY2_debounce|s_debounceCnt[18]~67_combout\,
	cout => \KEY2_debounce|s_debounceCnt[18]~68\);

-- Location: FF_X81_Y40_N7
\KEY2_debounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[18]~67_combout\,
	asdata => \KEY2_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(18));

-- Location: LCCOMB_X81_Y40_N8
\KEY2_debounce|s_debounceCnt[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[19]~69_combout\ = (\KEY2_debounce|s_debounceCnt\(19) & (\KEY2_debounce|s_debounceCnt[18]~68\ & VCC)) # (!\KEY2_debounce|s_debounceCnt\(19) & (!\KEY2_debounce|s_debounceCnt[18]~68\))
-- \KEY2_debounce|s_debounceCnt[19]~70\ = CARRY((!\KEY2_debounce|s_debounceCnt\(19) & !\KEY2_debounce|s_debounceCnt[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[18]~68\,
	combout => \KEY2_debounce|s_debounceCnt[19]~69_combout\,
	cout => \KEY2_debounce|s_debounceCnt[19]~70\);

-- Location: FF_X81_Y40_N9
\KEY2_debounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[19]~69_combout\,
	asdata => \KEY2_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(19));

-- Location: LCCOMB_X81_Y40_N10
\KEY2_debounce|s_debounceCnt[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[20]~71_combout\ = (\KEY2_debounce|s_debounceCnt\(20) & ((GND) # (!\KEY2_debounce|s_debounceCnt[19]~70\))) # (!\KEY2_debounce|s_debounceCnt\(20) & (\KEY2_debounce|s_debounceCnt[19]~70\ $ (GND)))
-- \KEY2_debounce|s_debounceCnt[20]~72\ = CARRY((\KEY2_debounce|s_debounceCnt\(20)) # (!\KEY2_debounce|s_debounceCnt[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[19]~70\,
	combout => \KEY2_debounce|s_debounceCnt[20]~71_combout\,
	cout => \KEY2_debounce|s_debounceCnt[20]~72\);

-- Location: FF_X81_Y40_N11
\KEY2_debounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[20]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(20));

-- Location: LCCOMB_X81_Y40_N12
\KEY2_debounce|s_debounceCnt[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[21]~73_combout\ = (\KEY2_debounce|s_debounceCnt\(21) & (\KEY2_debounce|s_debounceCnt[20]~72\ & VCC)) # (!\KEY2_debounce|s_debounceCnt\(21) & (!\KEY2_debounce|s_debounceCnt[20]~72\))
-- \KEY2_debounce|s_debounceCnt[21]~74\ = CARRY((!\KEY2_debounce|s_debounceCnt\(21) & !\KEY2_debounce|s_debounceCnt[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[20]~72\,
	combout => \KEY2_debounce|s_debounceCnt[21]~73_combout\,
	cout => \KEY2_debounce|s_debounceCnt[21]~74\);

-- Location: FF_X81_Y40_N13
\KEY2_debounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[21]~73_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(21));

-- Location: LCCOMB_X81_Y40_N14
\KEY2_debounce|s_debounceCnt[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[22]~75_combout\ = (\KEY2_debounce|s_debounceCnt\(22) & ((GND) # (!\KEY2_debounce|s_debounceCnt[21]~74\))) # (!\KEY2_debounce|s_debounceCnt\(22) & (\KEY2_debounce|s_debounceCnt[21]~74\ $ (GND)))
-- \KEY2_debounce|s_debounceCnt[22]~76\ = CARRY((\KEY2_debounce|s_debounceCnt\(22)) # (!\KEY2_debounce|s_debounceCnt[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(22),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[21]~74\,
	combout => \KEY2_debounce|s_debounceCnt[22]~75_combout\,
	cout => \KEY2_debounce|s_debounceCnt[22]~76\);

-- Location: FF_X81_Y40_N15
\KEY2_debounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[22]~75_combout\,
	asdata => \KEY2_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(22));

-- Location: LCCOMB_X81_Y40_N16
\KEY2_debounce|s_debounceCnt[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[23]~77_combout\ = (\KEY2_debounce|s_debounceCnt\(23) & (\KEY2_debounce|s_debounceCnt[22]~76\ & VCC)) # (!\KEY2_debounce|s_debounceCnt\(23) & (!\KEY2_debounce|s_debounceCnt[22]~76\))
-- \KEY2_debounce|s_debounceCnt[23]~78\ = CARRY((!\KEY2_debounce|s_debounceCnt\(23) & !\KEY2_debounce|s_debounceCnt[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(23),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[22]~76\,
	combout => \KEY2_debounce|s_debounceCnt[23]~77_combout\,
	cout => \KEY2_debounce|s_debounceCnt[23]~78\);

-- Location: FF_X81_Y40_N17
\KEY2_debounce|s_debounceCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[23]~77_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(23));

-- Location: LCCOMB_X81_Y40_N18
\KEY2_debounce|s_debounceCnt[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[24]~79_combout\ = (\KEY2_debounce|s_debounceCnt\(24) & ((GND) # (!\KEY2_debounce|s_debounceCnt[23]~78\))) # (!\KEY2_debounce|s_debounceCnt\(24) & (\KEY2_debounce|s_debounceCnt[23]~78\ $ (GND)))
-- \KEY2_debounce|s_debounceCnt[24]~80\ = CARRY((\KEY2_debounce|s_debounceCnt\(24)) # (!\KEY2_debounce|s_debounceCnt[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(24),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[23]~78\,
	combout => \KEY2_debounce|s_debounceCnt[24]~79_combout\,
	cout => \KEY2_debounce|s_debounceCnt[24]~80\);

-- Location: FF_X81_Y40_N19
\KEY2_debounce|s_debounceCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[24]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(24));

-- Location: LCCOMB_X81_Y40_N20
\KEY2_debounce|s_debounceCnt[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[25]~81_combout\ = (\KEY2_debounce|s_debounceCnt\(25) & (\KEY2_debounce|s_debounceCnt[24]~80\ & VCC)) # (!\KEY2_debounce|s_debounceCnt\(25) & (!\KEY2_debounce|s_debounceCnt[24]~80\))
-- \KEY2_debounce|s_debounceCnt[25]~82\ = CARRY((!\KEY2_debounce|s_debounceCnt\(25) & !\KEY2_debounce|s_debounceCnt[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(25),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[24]~80\,
	combout => \KEY2_debounce|s_debounceCnt[25]~81_combout\,
	cout => \KEY2_debounce|s_debounceCnt[25]~82\);

-- Location: FF_X81_Y40_N21
\KEY2_debounce|s_debounceCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[25]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(25));

-- Location: LCCOMB_X81_Y40_N22
\KEY2_debounce|s_debounceCnt[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[26]~83_combout\ = (\KEY2_debounce|s_debounceCnt\(26) & ((GND) # (!\KEY2_debounce|s_debounceCnt[25]~82\))) # (!\KEY2_debounce|s_debounceCnt\(26) & (\KEY2_debounce|s_debounceCnt[25]~82\ $ (GND)))
-- \KEY2_debounce|s_debounceCnt[26]~84\ = CARRY((\KEY2_debounce|s_debounceCnt\(26)) # (!\KEY2_debounce|s_debounceCnt[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(26),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[25]~82\,
	combout => \KEY2_debounce|s_debounceCnt[26]~83_combout\,
	cout => \KEY2_debounce|s_debounceCnt[26]~84\);

-- Location: FF_X81_Y40_N23
\KEY2_debounce|s_debounceCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[26]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(26));

-- Location: LCCOMB_X81_Y40_N24
\KEY2_debounce|s_debounceCnt[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[27]~85_combout\ = (\KEY2_debounce|s_debounceCnt\(27) & (\KEY2_debounce|s_debounceCnt[26]~84\ & VCC)) # (!\KEY2_debounce|s_debounceCnt\(27) & (!\KEY2_debounce|s_debounceCnt[26]~84\))
-- \KEY2_debounce|s_debounceCnt[27]~86\ = CARRY((!\KEY2_debounce|s_debounceCnt\(27) & !\KEY2_debounce|s_debounceCnt[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(27),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[26]~84\,
	combout => \KEY2_debounce|s_debounceCnt[27]~85_combout\,
	cout => \KEY2_debounce|s_debounceCnt[27]~86\);

-- Location: FF_X81_Y40_N25
\KEY2_debounce|s_debounceCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[27]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(27));

-- Location: LCCOMB_X81_Y40_N26
\KEY2_debounce|s_debounceCnt[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[28]~87_combout\ = (\KEY2_debounce|s_debounceCnt\(28) & ((GND) # (!\KEY2_debounce|s_debounceCnt[27]~86\))) # (!\KEY2_debounce|s_debounceCnt\(28) & (\KEY2_debounce|s_debounceCnt[27]~86\ $ (GND)))
-- \KEY2_debounce|s_debounceCnt[28]~88\ = CARRY((\KEY2_debounce|s_debounceCnt\(28)) # (!\KEY2_debounce|s_debounceCnt[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(28),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[27]~86\,
	combout => \KEY2_debounce|s_debounceCnt[28]~87_combout\,
	cout => \KEY2_debounce|s_debounceCnt[28]~88\);

-- Location: FF_X81_Y40_N27
\KEY2_debounce|s_debounceCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[28]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(28));

-- Location: LCCOMB_X81_Y40_N28
\KEY2_debounce|s_debounceCnt[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[29]~89_combout\ = (\KEY2_debounce|s_debounceCnt\(29) & (\KEY2_debounce|s_debounceCnt[28]~88\ & VCC)) # (!\KEY2_debounce|s_debounceCnt\(29) & (!\KEY2_debounce|s_debounceCnt[28]~88\))
-- \KEY2_debounce|s_debounceCnt[29]~90\ = CARRY((!\KEY2_debounce|s_debounceCnt\(29) & !\KEY2_debounce|s_debounceCnt[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_debounceCnt\(29),
	datad => VCC,
	cin => \KEY2_debounce|s_debounceCnt[28]~88\,
	combout => \KEY2_debounce|s_debounceCnt[29]~89_combout\,
	cout => \KEY2_debounce|s_debounceCnt[29]~90\);

-- Location: FF_X81_Y40_N29
\KEY2_debounce|s_debounceCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[29]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(29));

-- Location: LCCOMB_X81_Y40_N30
\KEY2_debounce|s_debounceCnt[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_debounceCnt[30]~91_combout\ = \KEY2_debounce|s_debounceCnt\(30) $ (\KEY2_debounce|s_debounceCnt[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(30),
	cin => \KEY2_debounce|s_debounceCnt[29]~90\,
	combout => \KEY2_debounce|s_debounceCnt[30]~91_combout\);

-- Location: FF_X81_Y40_N31
\KEY2_debounce|s_debounceCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_debounceCnt[30]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY2_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_debounceCnt\(30));

-- Location: LCCOMB_X82_Y41_N24
\KEY2_debounce|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|Equal0~7_combout\ = (!\KEY2_debounce|s_debounceCnt\(25) & (!\KEY2_debounce|s_debounceCnt\(24) & (!\KEY2_debounce|s_debounceCnt\(27) & !\KEY2_debounce|s_debounceCnt\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(25),
	datab => \KEY2_debounce|s_debounceCnt\(24),
	datac => \KEY2_debounce|s_debounceCnt\(27),
	datad => \KEY2_debounce|s_debounceCnt\(26),
	combout => \KEY2_debounce|Equal0~7_combout\);

-- Location: LCCOMB_X82_Y41_N18
\KEY2_debounce|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|Equal0~8_combout\ = (!\KEY2_debounce|s_debounceCnt\(30) & (!\KEY2_debounce|s_debounceCnt\(29) & (!\KEY2_debounce|s_debounceCnt\(28) & \KEY2_debounce|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(30),
	datab => \KEY2_debounce|s_debounceCnt\(29),
	datac => \KEY2_debounce|s_debounceCnt\(28),
	datad => \KEY2_debounce|Equal0~7_combout\,
	combout => \KEY2_debounce|Equal0~8_combout\);

-- Location: LCCOMB_X82_Y41_N4
\KEY2_debounce|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|Equal0~5_combout\ = (!\KEY2_debounce|s_debounceCnt\(18) & (!\KEY2_debounce|s_debounceCnt\(16) & (!\KEY2_debounce|s_debounceCnt\(17) & !\KEY2_debounce|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(18),
	datab => \KEY2_debounce|s_debounceCnt\(16),
	datac => \KEY2_debounce|s_debounceCnt\(17),
	datad => \KEY2_debounce|s_debounceCnt\(19),
	combout => \KEY2_debounce|Equal0~5_combout\);

-- Location: LCCOMB_X81_Y41_N0
\KEY2_debounce|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|Equal0~0_combout\ = (!\KEY2_debounce|s_debounceCnt\(2) & (!\KEY2_debounce|s_debounceCnt\(1) & (!\KEY2_debounce|s_debounceCnt\(3) & !\KEY2_debounce|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(2),
	datab => \KEY2_debounce|s_debounceCnt\(1),
	datac => \KEY2_debounce|s_debounceCnt\(3),
	datad => \KEY2_debounce|s_debounceCnt\(0),
	combout => \KEY2_debounce|Equal0~0_combout\);

-- Location: LCCOMB_X82_Y41_N20
\KEY2_debounce|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|Equal0~1_combout\ = (!\KEY2_debounce|s_debounceCnt\(5) & (!\KEY2_debounce|s_debounceCnt\(4) & (!\KEY2_debounce|s_debounceCnt\(7) & !\KEY2_debounce|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(5),
	datab => \KEY2_debounce|s_debounceCnt\(4),
	datac => \KEY2_debounce|s_debounceCnt\(7),
	datad => \KEY2_debounce|s_debounceCnt\(6),
	combout => \KEY2_debounce|Equal0~1_combout\);

-- Location: LCCOMB_X82_Y41_N8
\KEY2_debounce|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|Equal0~3_combout\ = (!\KEY2_debounce|s_debounceCnt\(12) & (!\KEY2_debounce|s_debounceCnt\(14) & (!\KEY2_debounce|s_debounceCnt\(15) & !\KEY2_debounce|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(12),
	datab => \KEY2_debounce|s_debounceCnt\(14),
	datac => \KEY2_debounce|s_debounceCnt\(15),
	datad => \KEY2_debounce|s_debounceCnt\(13),
	combout => \KEY2_debounce|Equal0~3_combout\);

-- Location: LCCOMB_X82_Y41_N10
\KEY2_debounce|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|Equal0~2_combout\ = (!\KEY2_debounce|s_debounceCnt\(11) & (!\KEY2_debounce|s_debounceCnt\(9) & (!\KEY2_debounce|s_debounceCnt\(8) & !\KEY2_debounce|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(11),
	datab => \KEY2_debounce|s_debounceCnt\(9),
	datac => \KEY2_debounce|s_debounceCnt\(8),
	datad => \KEY2_debounce|s_debounceCnt\(10),
	combout => \KEY2_debounce|Equal0~2_combout\);

-- Location: LCCOMB_X82_Y41_N22
\KEY2_debounce|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|Equal0~4_combout\ = (\KEY2_debounce|Equal0~0_combout\ & (\KEY2_debounce|Equal0~1_combout\ & (\KEY2_debounce|Equal0~3_combout\ & \KEY2_debounce|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|Equal0~0_combout\,
	datab => \KEY2_debounce|Equal0~1_combout\,
	datac => \KEY2_debounce|Equal0~3_combout\,
	datad => \KEY2_debounce|Equal0~2_combout\,
	combout => \KEY2_debounce|Equal0~4_combout\);

-- Location: LCCOMB_X82_Y41_N6
\KEY2_debounce|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|Equal0~6_combout\ = (!\KEY2_debounce|s_debounceCnt\(23) & (!\KEY2_debounce|s_debounceCnt\(22) & (!\KEY2_debounce|s_debounceCnt\(21) & !\KEY2_debounce|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_debounceCnt\(23),
	datab => \KEY2_debounce|s_debounceCnt\(22),
	datac => \KEY2_debounce|s_debounceCnt\(21),
	datad => \KEY2_debounce|s_debounceCnt\(20),
	combout => \KEY2_debounce|Equal0~6_combout\);

-- Location: LCCOMB_X82_Y41_N28
\KEY2_debounce|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|Equal0~9_combout\ = (\KEY2_debounce|Equal0~8_combout\ & (\KEY2_debounce|Equal0~5_combout\ & (\KEY2_debounce|Equal0~4_combout\ & \KEY2_debounce|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|Equal0~8_combout\,
	datab => \KEY2_debounce|Equal0~5_combout\,
	datac => \KEY2_debounce|Equal0~4_combout\,
	datad => \KEY2_debounce|Equal0~6_combout\,
	combout => \KEY2_debounce|Equal0~9_combout\);

-- Location: LCCOMB_X81_Y37_N2
\KEY2_debounce|s_resetPulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|s_resetPulse~0_combout\ = (\KEY2_debounce|s_pulsedOut~q\) # (!\KEY2_debounce|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY2_debounce|s_pulsedOut~q\,
	datad => \KEY2_debounce|Equal0~9_combout\,
	combout => \KEY2_debounce|s_resetPulse~0_combout\);

-- Location: FF_X81_Y37_N3
\KEY2_debounce|s_resetPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY2_debounce|s_resetPulse~0_combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_resetPulse~q\);

-- Location: LCCOMB_X81_Y37_N0
\KEY2_debounce|out_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY2_debounce|out_proc~0_combout\ = (\SW[17]~input_o\) # (\KEY2_debounce|s_resetPulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datad => \KEY2_debounce|s_resetPulse~q\,
	combout => \KEY2_debounce|out_proc~0_combout\);

-- Location: FF_X81_Y37_N29
\KEY2_debounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY2_debounce|ALT_INV_s_dirtyIn~q\,
	d => \KEY2_debounce|s_pulsedOut~feeder_combout\,
	clrn => \KEY2_debounce|ALT_INV_out_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY2_debounce|s_pulsedOut~q\);

-- Location: LCCOMB_X81_Y34_N2
\auxiliaryMachine_um|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_um|Selector0~0_combout\ = (\KEY2_debounce|s_pulsedOut~q\) # (\auxiliaryMachine_um|s_currentState.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY2_debounce|s_pulsedOut~q\,
	datac => \auxiliaryMachine_um|s_currentState.E1~q\,
	combout => \auxiliaryMachine_um|Selector0~0_combout\);

-- Location: LCCOMB_X81_Y34_N28
\auxiliaryMachine_um|s_currentState.E0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_um|s_currentState.E0~feeder_combout\ = \auxiliaryMachine_um|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auxiliaryMachine_um|Selector0~0_combout\,
	combout => \auxiliaryMachine_um|s_currentState.E0~feeder_combout\);

-- Location: FF_X81_Y34_N29
\auxiliaryMachine_um|s_currentState.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auxiliaryMachine_um|s_currentState.E0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxiliaryMachine_um|s_currentState.E0~q\);

-- Location: LCCOMB_X81_Y30_N12
\auxiliaryMachine_um|s_nextState.E1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_um|s_nextState.E1~0_combout\ = (!\auxiliaryMachine_um|s_currentState.E0~q\ & \KEY2_debounce|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auxiliaryMachine_um|s_currentState.E0~q\,
	datad => \KEY2_debounce|s_pulsedOut~q\,
	combout => \auxiliaryMachine_um|s_nextState.E1~0_combout\);

-- Location: LCCOMB_X81_Y30_N16
\auxiliaryMachine_um|s_currentState.E1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_um|s_currentState.E1~feeder_combout\ = \auxiliaryMachine_um|s_nextState.E1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auxiliaryMachine_um|s_nextState.E1~0_combout\,
	combout => \auxiliaryMachine_um|s_currentState.E1~feeder_combout\);

-- Location: FF_X81_Y30_N17
\auxiliaryMachine_um|s_currentState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auxiliaryMachine_um|s_currentState.E1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxiliaryMachine_um|s_currentState.E1~q\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X77_Y30_N6
\KEY3_debounce|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_dirtyIn~feeder_combout\ = \KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[3]~input_o\,
	combout => \KEY3_debounce|s_dirtyIn~feeder_combout\);

-- Location: FF_X77_Y30_N7
\KEY3_debounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_dirtyIn~q\);

-- Location: LCCOMB_X76_Y30_N12
\KEY3_debounce|s_pulsedOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_pulsedOut~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \KEY3_debounce|s_pulsedOut~feeder_combout\);

-- Location: LCCOMB_X75_Y30_N2
\KEY3_debounce|s_debounceCnt[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[0]~31_combout\ = \KEY3_debounce|s_debounceCnt\(0) $ (VCC)
-- \KEY3_debounce|s_debounceCnt[0]~32\ = CARRY(\KEY3_debounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \KEY3_debounce|s_debounceCnt[0]~31_combout\,
	cout => \KEY3_debounce|s_debounceCnt[0]~32\);

-- Location: FF_X75_Y30_N3
\KEY3_debounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[0]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(0));

-- Location: LCCOMB_X75_Y30_N4
\KEY3_debounce|s_debounceCnt[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[1]~33_combout\ = (\KEY3_debounce|s_debounceCnt\(1) & (\KEY3_debounce|s_debounceCnt[0]~32\ & VCC)) # (!\KEY3_debounce|s_debounceCnt\(1) & (!\KEY3_debounce|s_debounceCnt[0]~32\))
-- \KEY3_debounce|s_debounceCnt[1]~34\ = CARRY((!\KEY3_debounce|s_debounceCnt\(1) & !\KEY3_debounce|s_debounceCnt[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[0]~32\,
	combout => \KEY3_debounce|s_debounceCnt[1]~33_combout\,
	cout => \KEY3_debounce|s_debounceCnt[1]~34\);

-- Location: FF_X75_Y30_N5
\KEY3_debounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[1]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(1));

-- Location: LCCOMB_X75_Y30_N6
\KEY3_debounce|s_debounceCnt[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[2]~35_combout\ = (\KEY3_debounce|s_debounceCnt\(2) & ((GND) # (!\KEY3_debounce|s_debounceCnt[1]~34\))) # (!\KEY3_debounce|s_debounceCnt\(2) & (\KEY3_debounce|s_debounceCnt[1]~34\ $ (GND)))
-- \KEY3_debounce|s_debounceCnt[2]~36\ = CARRY((\KEY3_debounce|s_debounceCnt\(2)) # (!\KEY3_debounce|s_debounceCnt[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[1]~34\,
	combout => \KEY3_debounce|s_debounceCnt[2]~35_combout\,
	cout => \KEY3_debounce|s_debounceCnt[2]~36\);

-- Location: FF_X75_Y30_N7
\KEY3_debounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[2]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(2));

-- Location: LCCOMB_X75_Y30_N8
\KEY3_debounce|s_debounceCnt[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[3]~37_combout\ = (\KEY3_debounce|s_debounceCnt\(3) & (\KEY3_debounce|s_debounceCnt[2]~36\ & VCC)) # (!\KEY3_debounce|s_debounceCnt\(3) & (!\KEY3_debounce|s_debounceCnt[2]~36\))
-- \KEY3_debounce|s_debounceCnt[3]~38\ = CARRY((!\KEY3_debounce|s_debounceCnt\(3) & !\KEY3_debounce|s_debounceCnt[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[2]~36\,
	combout => \KEY3_debounce|s_debounceCnt[3]~37_combout\,
	cout => \KEY3_debounce|s_debounceCnt[3]~38\);

-- Location: FF_X75_Y30_N9
\KEY3_debounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[3]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(3));

-- Location: LCCOMB_X75_Y30_N10
\KEY3_debounce|s_debounceCnt[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[4]~39_combout\ = (\KEY3_debounce|s_debounceCnt\(4) & ((GND) # (!\KEY3_debounce|s_debounceCnt[3]~38\))) # (!\KEY3_debounce|s_debounceCnt\(4) & (\KEY3_debounce|s_debounceCnt[3]~38\ $ (GND)))
-- \KEY3_debounce|s_debounceCnt[4]~40\ = CARRY((\KEY3_debounce|s_debounceCnt\(4)) # (!\KEY3_debounce|s_debounceCnt[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[3]~38\,
	combout => \KEY3_debounce|s_debounceCnt[4]~39_combout\,
	cout => \KEY3_debounce|s_debounceCnt[4]~40\);

-- Location: FF_X75_Y30_N11
\KEY3_debounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[4]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(4));

-- Location: LCCOMB_X75_Y30_N12
\KEY3_debounce|s_debounceCnt[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[5]~41_combout\ = (\KEY3_debounce|s_debounceCnt\(5) & (\KEY3_debounce|s_debounceCnt[4]~40\ & VCC)) # (!\KEY3_debounce|s_debounceCnt\(5) & (!\KEY3_debounce|s_debounceCnt[4]~40\))
-- \KEY3_debounce|s_debounceCnt[5]~42\ = CARRY((!\KEY3_debounce|s_debounceCnt\(5) & !\KEY3_debounce|s_debounceCnt[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[4]~40\,
	combout => \KEY3_debounce|s_debounceCnt[5]~41_combout\,
	cout => \KEY3_debounce|s_debounceCnt[5]~42\);

-- Location: FF_X75_Y30_N13
\KEY3_debounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[5]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(5));

-- Location: LCCOMB_X75_Y30_N14
\KEY3_debounce|s_debounceCnt[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[6]~43_combout\ = (\KEY3_debounce|s_debounceCnt\(6) & ((GND) # (!\KEY3_debounce|s_debounceCnt[5]~42\))) # (!\KEY3_debounce|s_debounceCnt\(6) & (\KEY3_debounce|s_debounceCnt[5]~42\ $ (GND)))
-- \KEY3_debounce|s_debounceCnt[6]~44\ = CARRY((\KEY3_debounce|s_debounceCnt\(6)) # (!\KEY3_debounce|s_debounceCnt[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[5]~42\,
	combout => \KEY3_debounce|s_debounceCnt[6]~43_combout\,
	cout => \KEY3_debounce|s_debounceCnt[6]~44\);

-- Location: FF_X75_Y30_N15
\KEY3_debounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[6]~43_combout\,
	asdata => \KEY3_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(6));

-- Location: LCCOMB_X75_Y30_N16
\KEY3_debounce|s_debounceCnt[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[7]~45_combout\ = (\KEY3_debounce|s_debounceCnt\(7) & (\KEY3_debounce|s_debounceCnt[6]~44\ & VCC)) # (!\KEY3_debounce|s_debounceCnt\(7) & (!\KEY3_debounce|s_debounceCnt[6]~44\))
-- \KEY3_debounce|s_debounceCnt[7]~46\ = CARRY((!\KEY3_debounce|s_debounceCnt\(7) & !\KEY3_debounce|s_debounceCnt[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[6]~44\,
	combout => \KEY3_debounce|s_debounceCnt[7]~45_combout\,
	cout => \KEY3_debounce|s_debounceCnt[7]~46\);

-- Location: FF_X75_Y30_N17
\KEY3_debounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[7]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(7));

-- Location: LCCOMB_X75_Y30_N18
\KEY3_debounce|s_debounceCnt[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[8]~47_combout\ = (\KEY3_debounce|s_debounceCnt\(8) & ((GND) # (!\KEY3_debounce|s_debounceCnt[7]~46\))) # (!\KEY3_debounce|s_debounceCnt\(8) & (\KEY3_debounce|s_debounceCnt[7]~46\ $ (GND)))
-- \KEY3_debounce|s_debounceCnt[8]~48\ = CARRY((\KEY3_debounce|s_debounceCnt\(8)) # (!\KEY3_debounce|s_debounceCnt[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[7]~46\,
	combout => \KEY3_debounce|s_debounceCnt[8]~47_combout\,
	cout => \KEY3_debounce|s_debounceCnt[8]~48\);

-- Location: FF_X75_Y30_N19
\KEY3_debounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[8]~47_combout\,
	asdata => \KEY3_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(8));

-- Location: LCCOMB_X75_Y30_N20
\KEY3_debounce|s_debounceCnt[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[9]~49_combout\ = (\KEY3_debounce|s_debounceCnt\(9) & (\KEY3_debounce|s_debounceCnt[8]~48\ & VCC)) # (!\KEY3_debounce|s_debounceCnt\(9) & (!\KEY3_debounce|s_debounceCnt[8]~48\))
-- \KEY3_debounce|s_debounceCnt[9]~50\ = CARRY((!\KEY3_debounce|s_debounceCnt\(9) & !\KEY3_debounce|s_debounceCnt[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[8]~48\,
	combout => \KEY3_debounce|s_debounceCnt[9]~49_combout\,
	cout => \KEY3_debounce|s_debounceCnt[9]~50\);

-- Location: FF_X75_Y30_N21
\KEY3_debounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[9]~49_combout\,
	asdata => \KEY3_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(9));

-- Location: LCCOMB_X75_Y30_N22
\KEY3_debounce|s_debounceCnt[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[10]~51_combout\ = (\KEY3_debounce|s_debounceCnt\(10) & ((GND) # (!\KEY3_debounce|s_debounceCnt[9]~50\))) # (!\KEY3_debounce|s_debounceCnt\(10) & (\KEY3_debounce|s_debounceCnt[9]~50\ $ (GND)))
-- \KEY3_debounce|s_debounceCnt[10]~52\ = CARRY((\KEY3_debounce|s_debounceCnt\(10)) # (!\KEY3_debounce|s_debounceCnt[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[9]~50\,
	combout => \KEY3_debounce|s_debounceCnt[10]~51_combout\,
	cout => \KEY3_debounce|s_debounceCnt[10]~52\);

-- Location: FF_X75_Y30_N23
\KEY3_debounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[10]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(10));

-- Location: LCCOMB_X75_Y30_N24
\KEY3_debounce|s_debounceCnt[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[11]~53_combout\ = (\KEY3_debounce|s_debounceCnt\(11) & (\KEY3_debounce|s_debounceCnt[10]~52\ & VCC)) # (!\KEY3_debounce|s_debounceCnt\(11) & (!\KEY3_debounce|s_debounceCnt[10]~52\))
-- \KEY3_debounce|s_debounceCnt[11]~54\ = CARRY((!\KEY3_debounce|s_debounceCnt\(11) & !\KEY3_debounce|s_debounceCnt[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[10]~52\,
	combout => \KEY3_debounce|s_debounceCnt[11]~53_combout\,
	cout => \KEY3_debounce|s_debounceCnt[11]~54\);

-- Location: FF_X75_Y30_N25
\KEY3_debounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[11]~53_combout\,
	asdata => \KEY3_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(11));

-- Location: LCCOMB_X75_Y30_N26
\KEY3_debounce|s_debounceCnt[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[12]~55_combout\ = (\KEY3_debounce|s_debounceCnt\(12) & ((GND) # (!\KEY3_debounce|s_debounceCnt[11]~54\))) # (!\KEY3_debounce|s_debounceCnt\(12) & (\KEY3_debounce|s_debounceCnt[11]~54\ $ (GND)))
-- \KEY3_debounce|s_debounceCnt[12]~56\ = CARRY((\KEY3_debounce|s_debounceCnt\(12)) # (!\KEY3_debounce|s_debounceCnt[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[11]~54\,
	combout => \KEY3_debounce|s_debounceCnt[12]~55_combout\,
	cout => \KEY3_debounce|s_debounceCnt[12]~56\);

-- Location: FF_X75_Y30_N27
\KEY3_debounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[12]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(12));

-- Location: LCCOMB_X75_Y30_N28
\KEY3_debounce|s_debounceCnt[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[13]~57_combout\ = (\KEY3_debounce|s_debounceCnt\(13) & (\KEY3_debounce|s_debounceCnt[12]~56\ & VCC)) # (!\KEY3_debounce|s_debounceCnt\(13) & (!\KEY3_debounce|s_debounceCnt[12]~56\))
-- \KEY3_debounce|s_debounceCnt[13]~58\ = CARRY((!\KEY3_debounce|s_debounceCnt\(13) & !\KEY3_debounce|s_debounceCnt[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[12]~56\,
	combout => \KEY3_debounce|s_debounceCnt[13]~57_combout\,
	cout => \KEY3_debounce|s_debounceCnt[13]~58\);

-- Location: FF_X75_Y30_N29
\KEY3_debounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[13]~57_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(13));

-- Location: LCCOMB_X75_Y30_N30
\KEY3_debounce|s_debounceCnt[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[14]~59_combout\ = (\KEY3_debounce|s_debounceCnt\(14) & ((GND) # (!\KEY3_debounce|s_debounceCnt[13]~58\))) # (!\KEY3_debounce|s_debounceCnt\(14) & (\KEY3_debounce|s_debounceCnt[13]~58\ $ (GND)))
-- \KEY3_debounce|s_debounceCnt[14]~60\ = CARRY((\KEY3_debounce|s_debounceCnt\(14)) # (!\KEY3_debounce|s_debounceCnt[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[13]~58\,
	combout => \KEY3_debounce|s_debounceCnt[14]~59_combout\,
	cout => \KEY3_debounce|s_debounceCnt[14]~60\);

-- Location: FF_X75_Y30_N31
\KEY3_debounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[14]~59_combout\,
	asdata => \KEY3_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(14));

-- Location: LCCOMB_X75_Y29_N0
\KEY3_debounce|s_debounceCnt[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[15]~61_combout\ = (\KEY3_debounce|s_debounceCnt\(15) & (\KEY3_debounce|s_debounceCnt[14]~60\ & VCC)) # (!\KEY3_debounce|s_debounceCnt\(15) & (!\KEY3_debounce|s_debounceCnt[14]~60\))
-- \KEY3_debounce|s_debounceCnt[15]~62\ = CARRY((!\KEY3_debounce|s_debounceCnt\(15) & !\KEY3_debounce|s_debounceCnt[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[14]~60\,
	combout => \KEY3_debounce|s_debounceCnt[15]~61_combout\,
	cout => \KEY3_debounce|s_debounceCnt[15]~62\);

-- Location: FF_X75_Y29_N1
\KEY3_debounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[15]~61_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(15));

-- Location: LCCOMB_X75_Y29_N2
\KEY3_debounce|s_debounceCnt[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[16]~63_combout\ = (\KEY3_debounce|s_debounceCnt\(16) & ((GND) # (!\KEY3_debounce|s_debounceCnt[15]~62\))) # (!\KEY3_debounce|s_debounceCnt\(16) & (\KEY3_debounce|s_debounceCnt[15]~62\ $ (GND)))
-- \KEY3_debounce|s_debounceCnt[16]~64\ = CARRY((\KEY3_debounce|s_debounceCnt\(16)) # (!\KEY3_debounce|s_debounceCnt[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[15]~62\,
	combout => \KEY3_debounce|s_debounceCnt[16]~63_combout\,
	cout => \KEY3_debounce|s_debounceCnt[16]~64\);

-- Location: FF_X75_Y29_N3
\KEY3_debounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[16]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(16));

-- Location: LCCOMB_X75_Y29_N4
\KEY3_debounce|s_debounceCnt[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[17]~65_combout\ = (\KEY3_debounce|s_debounceCnt\(17) & (\KEY3_debounce|s_debounceCnt[16]~64\ & VCC)) # (!\KEY3_debounce|s_debounceCnt\(17) & (!\KEY3_debounce|s_debounceCnt[16]~64\))
-- \KEY3_debounce|s_debounceCnt[17]~66\ = CARRY((!\KEY3_debounce|s_debounceCnt\(17) & !\KEY3_debounce|s_debounceCnt[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[16]~64\,
	combout => \KEY3_debounce|s_debounceCnt[17]~65_combout\,
	cout => \KEY3_debounce|s_debounceCnt[17]~66\);

-- Location: FF_X75_Y29_N5
\KEY3_debounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[17]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(17));

-- Location: LCCOMB_X75_Y29_N6
\KEY3_debounce|s_debounceCnt[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[18]~67_combout\ = (\KEY3_debounce|s_debounceCnt\(18) & ((GND) # (!\KEY3_debounce|s_debounceCnt[17]~66\))) # (!\KEY3_debounce|s_debounceCnt\(18) & (\KEY3_debounce|s_debounceCnt[17]~66\ $ (GND)))
-- \KEY3_debounce|s_debounceCnt[18]~68\ = CARRY((\KEY3_debounce|s_debounceCnt\(18)) # (!\KEY3_debounce|s_debounceCnt[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[17]~66\,
	combout => \KEY3_debounce|s_debounceCnt[18]~67_combout\,
	cout => \KEY3_debounce|s_debounceCnt[18]~68\);

-- Location: FF_X75_Y29_N7
\KEY3_debounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[18]~67_combout\,
	asdata => \KEY3_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(18));

-- Location: LCCOMB_X75_Y29_N8
\KEY3_debounce|s_debounceCnt[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[19]~69_combout\ = (\KEY3_debounce|s_debounceCnt\(19) & (\KEY3_debounce|s_debounceCnt[18]~68\ & VCC)) # (!\KEY3_debounce|s_debounceCnt\(19) & (!\KEY3_debounce|s_debounceCnt[18]~68\))
-- \KEY3_debounce|s_debounceCnt[19]~70\ = CARRY((!\KEY3_debounce|s_debounceCnt\(19) & !\KEY3_debounce|s_debounceCnt[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[18]~68\,
	combout => \KEY3_debounce|s_debounceCnt[19]~69_combout\,
	cout => \KEY3_debounce|s_debounceCnt[19]~70\);

-- Location: FF_X75_Y29_N9
\KEY3_debounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[19]~69_combout\,
	asdata => \KEY3_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(19));

-- Location: LCCOMB_X75_Y29_N10
\KEY3_debounce|s_debounceCnt[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[20]~71_combout\ = (\KEY3_debounce|s_debounceCnt\(20) & ((GND) # (!\KEY3_debounce|s_debounceCnt[19]~70\))) # (!\KEY3_debounce|s_debounceCnt\(20) & (\KEY3_debounce|s_debounceCnt[19]~70\ $ (GND)))
-- \KEY3_debounce|s_debounceCnt[20]~72\ = CARRY((\KEY3_debounce|s_debounceCnt\(20)) # (!\KEY3_debounce|s_debounceCnt[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[19]~70\,
	combout => \KEY3_debounce|s_debounceCnt[20]~71_combout\,
	cout => \KEY3_debounce|s_debounceCnt[20]~72\);

-- Location: FF_X75_Y29_N11
\KEY3_debounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[20]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(20));

-- Location: LCCOMB_X75_Y29_N12
\KEY3_debounce|s_debounceCnt[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[21]~73_combout\ = (\KEY3_debounce|s_debounceCnt\(21) & (\KEY3_debounce|s_debounceCnt[20]~72\ & VCC)) # (!\KEY3_debounce|s_debounceCnt\(21) & (!\KEY3_debounce|s_debounceCnt[20]~72\))
-- \KEY3_debounce|s_debounceCnt[21]~74\ = CARRY((!\KEY3_debounce|s_debounceCnt\(21) & !\KEY3_debounce|s_debounceCnt[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[20]~72\,
	combout => \KEY3_debounce|s_debounceCnt[21]~73_combout\,
	cout => \KEY3_debounce|s_debounceCnt[21]~74\);

-- Location: FF_X75_Y29_N13
\KEY3_debounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[21]~73_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(21));

-- Location: LCCOMB_X75_Y29_N14
\KEY3_debounce|s_debounceCnt[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[22]~75_combout\ = (\KEY3_debounce|s_debounceCnt\(22) & ((GND) # (!\KEY3_debounce|s_debounceCnt[21]~74\))) # (!\KEY3_debounce|s_debounceCnt\(22) & (\KEY3_debounce|s_debounceCnt[21]~74\ $ (GND)))
-- \KEY3_debounce|s_debounceCnt[22]~76\ = CARRY((\KEY3_debounce|s_debounceCnt\(22)) # (!\KEY3_debounce|s_debounceCnt[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(22),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[21]~74\,
	combout => \KEY3_debounce|s_debounceCnt[22]~75_combout\,
	cout => \KEY3_debounce|s_debounceCnt[22]~76\);

-- Location: FF_X75_Y29_N15
\KEY3_debounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[22]~75_combout\,
	asdata => \KEY3_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(22));

-- Location: LCCOMB_X75_Y29_N16
\KEY3_debounce|s_debounceCnt[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[23]~77_combout\ = (\KEY3_debounce|s_debounceCnt\(23) & (\KEY3_debounce|s_debounceCnt[22]~76\ & VCC)) # (!\KEY3_debounce|s_debounceCnt\(23) & (!\KEY3_debounce|s_debounceCnt[22]~76\))
-- \KEY3_debounce|s_debounceCnt[23]~78\ = CARRY((!\KEY3_debounce|s_debounceCnt\(23) & !\KEY3_debounce|s_debounceCnt[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(23),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[22]~76\,
	combout => \KEY3_debounce|s_debounceCnt[23]~77_combout\,
	cout => \KEY3_debounce|s_debounceCnt[23]~78\);

-- Location: FF_X75_Y29_N17
\KEY3_debounce|s_debounceCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[23]~77_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(23));

-- Location: LCCOMB_X76_Y29_N22
\KEY3_debounce|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|Equal0~6_combout\ = (!\KEY3_debounce|s_debounceCnt\(22) & (!\KEY3_debounce|s_debounceCnt\(21) & (!\KEY3_debounce|s_debounceCnt\(23) & !\KEY3_debounce|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(22),
	datab => \KEY3_debounce|s_debounceCnt\(21),
	datac => \KEY3_debounce|s_debounceCnt\(23),
	datad => \KEY3_debounce|s_debounceCnt\(20),
	combout => \KEY3_debounce|Equal0~6_combout\);

-- Location: LCCOMB_X76_Y29_N16
\KEY3_debounce|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|Equal0~5_combout\ = (!\KEY3_debounce|s_debounceCnt\(19) & (!\KEY3_debounce|s_debounceCnt\(18) & (!\KEY3_debounce|s_debounceCnt\(17) & !\KEY3_debounce|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(19),
	datab => \KEY3_debounce|s_debounceCnt\(18),
	datac => \KEY3_debounce|s_debounceCnt\(17),
	datad => \KEY3_debounce|s_debounceCnt\(16),
	combout => \KEY3_debounce|Equal0~5_combout\);

-- Location: LCCOMB_X75_Y29_N18
\KEY3_debounce|s_debounceCnt[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[24]~79_combout\ = (\KEY3_debounce|s_debounceCnt\(24) & ((GND) # (!\KEY3_debounce|s_debounceCnt[23]~78\))) # (!\KEY3_debounce|s_debounceCnt\(24) & (\KEY3_debounce|s_debounceCnt[23]~78\ $ (GND)))
-- \KEY3_debounce|s_debounceCnt[24]~80\ = CARRY((\KEY3_debounce|s_debounceCnt\(24)) # (!\KEY3_debounce|s_debounceCnt[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(24),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[23]~78\,
	combout => \KEY3_debounce|s_debounceCnt[24]~79_combout\,
	cout => \KEY3_debounce|s_debounceCnt[24]~80\);

-- Location: FF_X75_Y29_N19
\KEY3_debounce|s_debounceCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[24]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(24));

-- Location: LCCOMB_X75_Y29_N20
\KEY3_debounce|s_debounceCnt[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[25]~81_combout\ = (\KEY3_debounce|s_debounceCnt\(25) & (\KEY3_debounce|s_debounceCnt[24]~80\ & VCC)) # (!\KEY3_debounce|s_debounceCnt\(25) & (!\KEY3_debounce|s_debounceCnt[24]~80\))
-- \KEY3_debounce|s_debounceCnt[25]~82\ = CARRY((!\KEY3_debounce|s_debounceCnt\(25) & !\KEY3_debounce|s_debounceCnt[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(25),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[24]~80\,
	combout => \KEY3_debounce|s_debounceCnt[25]~81_combout\,
	cout => \KEY3_debounce|s_debounceCnt[25]~82\);

-- Location: FF_X75_Y29_N21
\KEY3_debounce|s_debounceCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[25]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(25));

-- Location: LCCOMB_X75_Y29_N22
\KEY3_debounce|s_debounceCnt[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[26]~83_combout\ = (\KEY3_debounce|s_debounceCnt\(26) & ((GND) # (!\KEY3_debounce|s_debounceCnt[25]~82\))) # (!\KEY3_debounce|s_debounceCnt\(26) & (\KEY3_debounce|s_debounceCnt[25]~82\ $ (GND)))
-- \KEY3_debounce|s_debounceCnt[26]~84\ = CARRY((\KEY3_debounce|s_debounceCnt\(26)) # (!\KEY3_debounce|s_debounceCnt[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(26),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[25]~82\,
	combout => \KEY3_debounce|s_debounceCnt[26]~83_combout\,
	cout => \KEY3_debounce|s_debounceCnt[26]~84\);

-- Location: FF_X75_Y29_N23
\KEY3_debounce|s_debounceCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[26]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(26));

-- Location: LCCOMB_X75_Y29_N24
\KEY3_debounce|s_debounceCnt[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[27]~85_combout\ = (\KEY3_debounce|s_debounceCnt\(27) & (\KEY3_debounce|s_debounceCnt[26]~84\ & VCC)) # (!\KEY3_debounce|s_debounceCnt\(27) & (!\KEY3_debounce|s_debounceCnt[26]~84\))
-- \KEY3_debounce|s_debounceCnt[27]~86\ = CARRY((!\KEY3_debounce|s_debounceCnt\(27) & !\KEY3_debounce|s_debounceCnt[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(27),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[26]~84\,
	combout => \KEY3_debounce|s_debounceCnt[27]~85_combout\,
	cout => \KEY3_debounce|s_debounceCnt[27]~86\);

-- Location: FF_X75_Y29_N25
\KEY3_debounce|s_debounceCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[27]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(27));

-- Location: LCCOMB_X75_Y29_N26
\KEY3_debounce|s_debounceCnt[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[28]~87_combout\ = (\KEY3_debounce|s_debounceCnt\(28) & ((GND) # (!\KEY3_debounce|s_debounceCnt[27]~86\))) # (!\KEY3_debounce|s_debounceCnt\(28) & (\KEY3_debounce|s_debounceCnt[27]~86\ $ (GND)))
-- \KEY3_debounce|s_debounceCnt[28]~88\ = CARRY((\KEY3_debounce|s_debounceCnt\(28)) # (!\KEY3_debounce|s_debounceCnt[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(28),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[27]~86\,
	combout => \KEY3_debounce|s_debounceCnt[28]~87_combout\,
	cout => \KEY3_debounce|s_debounceCnt[28]~88\);

-- Location: FF_X75_Y29_N27
\KEY3_debounce|s_debounceCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[28]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(28));

-- Location: LCCOMB_X75_Y29_N28
\KEY3_debounce|s_debounceCnt[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[29]~89_combout\ = (\KEY3_debounce|s_debounceCnt\(29) & (\KEY3_debounce|s_debounceCnt[28]~88\ & VCC)) # (!\KEY3_debounce|s_debounceCnt\(29) & (!\KEY3_debounce|s_debounceCnt[28]~88\))
-- \KEY3_debounce|s_debounceCnt[29]~90\ = CARRY((!\KEY3_debounce|s_debounceCnt\(29) & !\KEY3_debounce|s_debounceCnt[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_debounceCnt\(29),
	datad => VCC,
	cin => \KEY3_debounce|s_debounceCnt[28]~88\,
	combout => \KEY3_debounce|s_debounceCnt[29]~89_combout\,
	cout => \KEY3_debounce|s_debounceCnt[29]~90\);

-- Location: FF_X75_Y29_N29
\KEY3_debounce|s_debounceCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[29]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(29));

-- Location: LCCOMB_X75_Y29_N30
\KEY3_debounce|s_debounceCnt[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_debounceCnt[30]~91_combout\ = \KEY3_debounce|s_debounceCnt\(30) $ (\KEY3_debounce|s_debounceCnt[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(30),
	cin => \KEY3_debounce|s_debounceCnt[29]~90\,
	combout => \KEY3_debounce|s_debounceCnt[30]~91_combout\);

-- Location: FF_X75_Y29_N31
\KEY3_debounce|s_debounceCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_debounceCnt[30]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY3_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_debounceCnt\(30));

-- Location: LCCOMB_X76_Y29_N20
\KEY3_debounce|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|Equal0~7_combout\ = (!\KEY3_debounce|s_debounceCnt\(27) & (!\KEY3_debounce|s_debounceCnt\(26) & (!\KEY3_debounce|s_debounceCnt\(25) & !\KEY3_debounce|s_debounceCnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(27),
	datab => \KEY3_debounce|s_debounceCnt\(26),
	datac => \KEY3_debounce|s_debounceCnt\(25),
	datad => \KEY3_debounce|s_debounceCnt\(24),
	combout => \KEY3_debounce|Equal0~7_combout\);

-- Location: LCCOMB_X76_Y29_N26
\KEY3_debounce|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|Equal0~8_combout\ = (!\KEY3_debounce|s_debounceCnt\(28) & (!\KEY3_debounce|s_debounceCnt\(29) & (!\KEY3_debounce|s_debounceCnt\(30) & \KEY3_debounce|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(28),
	datab => \KEY3_debounce|s_debounceCnt\(29),
	datac => \KEY3_debounce|s_debounceCnt\(30),
	datad => \KEY3_debounce|Equal0~7_combout\,
	combout => \KEY3_debounce|Equal0~8_combout\);

-- Location: LCCOMB_X76_Y29_N10
\KEY3_debounce|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|Equal0~2_combout\ = (!\KEY3_debounce|s_debounceCnt\(9) & (!\KEY3_debounce|s_debounceCnt\(8) & (!\KEY3_debounce|s_debounceCnt\(11) & !\KEY3_debounce|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(9),
	datab => \KEY3_debounce|s_debounceCnt\(8),
	datac => \KEY3_debounce|s_debounceCnt\(11),
	datad => \KEY3_debounce|s_debounceCnt\(10),
	combout => \KEY3_debounce|Equal0~2_combout\);

-- Location: LCCOMB_X76_Y29_N12
\KEY3_debounce|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|Equal0~1_combout\ = (!\KEY3_debounce|s_debounceCnt\(5) & (!\KEY3_debounce|s_debounceCnt\(6) & (!\KEY3_debounce|s_debounceCnt\(7) & !\KEY3_debounce|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(5),
	datab => \KEY3_debounce|s_debounceCnt\(6),
	datac => \KEY3_debounce|s_debounceCnt\(7),
	datad => \KEY3_debounce|s_debounceCnt\(4),
	combout => \KEY3_debounce|Equal0~1_combout\);

-- Location: LCCOMB_X76_Y29_N4
\KEY3_debounce|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|Equal0~3_combout\ = (!\KEY3_debounce|s_debounceCnt\(13) & (!\KEY3_debounce|s_debounceCnt\(14) & (!\KEY3_debounce|s_debounceCnt\(12) & !\KEY3_debounce|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(13),
	datab => \KEY3_debounce|s_debounceCnt\(14),
	datac => \KEY3_debounce|s_debounceCnt\(12),
	datad => \KEY3_debounce|s_debounceCnt\(15),
	combout => \KEY3_debounce|Equal0~3_combout\);

-- Location: LCCOMB_X75_Y30_N0
\KEY3_debounce|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|Equal0~0_combout\ = (!\KEY3_debounce|s_debounceCnt\(0) & (!\KEY3_debounce|s_debounceCnt\(1) & (!\KEY3_debounce|s_debounceCnt\(3) & !\KEY3_debounce|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|s_debounceCnt\(0),
	datab => \KEY3_debounce|s_debounceCnt\(1),
	datac => \KEY3_debounce|s_debounceCnt\(3),
	datad => \KEY3_debounce|s_debounceCnt\(2),
	combout => \KEY3_debounce|Equal0~0_combout\);

-- Location: LCCOMB_X76_Y29_N18
\KEY3_debounce|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|Equal0~4_combout\ = (\KEY3_debounce|Equal0~2_combout\ & (\KEY3_debounce|Equal0~1_combout\ & (\KEY3_debounce|Equal0~3_combout\ & \KEY3_debounce|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|Equal0~2_combout\,
	datab => \KEY3_debounce|Equal0~1_combout\,
	datac => \KEY3_debounce|Equal0~3_combout\,
	datad => \KEY3_debounce|Equal0~0_combout\,
	combout => \KEY3_debounce|Equal0~4_combout\);

-- Location: LCCOMB_X76_Y29_N0
\KEY3_debounce|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|Equal0~9_combout\ = (\KEY3_debounce|Equal0~6_combout\ & (\KEY3_debounce|Equal0~5_combout\ & (\KEY3_debounce|Equal0~8_combout\ & \KEY3_debounce|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3_debounce|Equal0~6_combout\,
	datab => \KEY3_debounce|Equal0~5_combout\,
	datac => \KEY3_debounce|Equal0~8_combout\,
	datad => \KEY3_debounce|Equal0~4_combout\,
	combout => \KEY3_debounce|Equal0~9_combout\);

-- Location: LCCOMB_X76_Y30_N2
\KEY3_debounce|s_resetPulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|s_resetPulse~0_combout\ = (\KEY3_debounce|s_pulsedOut~q\) # (!\KEY3_debounce|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY3_debounce|s_pulsedOut~q\,
	datad => \KEY3_debounce|Equal0~9_combout\,
	combout => \KEY3_debounce|s_resetPulse~0_combout\);

-- Location: FF_X76_Y30_N3
\KEY3_debounce|s_resetPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY3_debounce|s_resetPulse~0_combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_resetPulse~q\);

-- Location: LCCOMB_X76_Y30_N0
\KEY3_debounce|out_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY3_debounce|out_proc~0_combout\ = (\SW[17]~input_o\) # (\KEY3_debounce|s_resetPulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \KEY3_debounce|s_resetPulse~q\,
	combout => \KEY3_debounce|out_proc~0_combout\);

-- Location: FF_X76_Y30_N13
\KEY3_debounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY3_debounce|ALT_INV_s_dirtyIn~q\,
	d => \KEY3_debounce|s_pulsedOut~feeder_combout\,
	clrn => \KEY3_debounce|ALT_INV_out_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY3_debounce|s_pulsedOut~q\);

-- Location: LCCOMB_X81_Y30_N6
\auxiliaryMachine_dois|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_dois|Selector0~0_combout\ = (\auxiliaryMachine_dois|s_currentState.E1~q\) # (\KEY3_debounce|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auxiliaryMachine_dois|s_currentState.E1~q\,
	datad => \KEY3_debounce|s_pulsedOut~q\,
	combout => \auxiliaryMachine_dois|Selector0~0_combout\);

-- Location: LCCOMB_X81_Y30_N0
\auxiliaryMachine_dois|s_currentState.E0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_dois|s_currentState.E0~feeder_combout\ = \auxiliaryMachine_dois|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_dois|Selector0~0_combout\,
	combout => \auxiliaryMachine_dois|s_currentState.E0~feeder_combout\);

-- Location: FF_X81_Y30_N1
\auxiliaryMachine_dois|s_currentState.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auxiliaryMachine_dois|s_currentState.E0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxiliaryMachine_dois|s_currentState.E0~q\);

-- Location: LCCOMB_X81_Y30_N2
\auxiliaryMachine_dois|s_nextState.E1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_dois|s_nextState.E1~0_combout\ = (!\auxiliaryMachine_dois|s_currentState.E0~q\ & \KEY3_debounce|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auxiliaryMachine_dois|s_currentState.E0~q\,
	datad => \KEY3_debounce|s_pulsedOut~q\,
	combout => \auxiliaryMachine_dois|s_nextState.E1~0_combout\);

-- Location: FF_X81_Y30_N23
\auxiliaryMachine_dois|s_currentState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auxiliaryMachine_dois|s_nextState.E1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxiliaryMachine_dois|s_currentState.E1~q\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X82_Y46_N6
\KEY1_debounce|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_dirtyIn~feeder_combout\ = \KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \KEY1_debounce|s_dirtyIn~feeder_combout\);

-- Location: FF_X82_Y46_N7
\KEY1_debounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_dirtyIn~q\);

-- Location: LCCOMB_X81_Y46_N4
\KEY1_debounce|s_pulsedOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_pulsedOut~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \KEY1_debounce|s_pulsedOut~feeder_combout\);

-- Location: LCCOMB_X80_Y46_N2
\KEY1_debounce|s_debounceCnt[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[0]~31_combout\ = \KEY1_debounce|s_debounceCnt\(0) $ (VCC)
-- \KEY1_debounce|s_debounceCnt[0]~32\ = CARRY(\KEY1_debounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \KEY1_debounce|s_debounceCnt[0]~31_combout\,
	cout => \KEY1_debounce|s_debounceCnt[0]~32\);

-- Location: FF_X80_Y46_N3
\KEY1_debounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[0]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(0));

-- Location: LCCOMB_X80_Y46_N4
\KEY1_debounce|s_debounceCnt[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[1]~33_combout\ = (\KEY1_debounce|s_debounceCnt\(1) & (\KEY1_debounce|s_debounceCnt[0]~32\ & VCC)) # (!\KEY1_debounce|s_debounceCnt\(1) & (!\KEY1_debounce|s_debounceCnt[0]~32\))
-- \KEY1_debounce|s_debounceCnt[1]~34\ = CARRY((!\KEY1_debounce|s_debounceCnt\(1) & !\KEY1_debounce|s_debounceCnt[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[0]~32\,
	combout => \KEY1_debounce|s_debounceCnt[1]~33_combout\,
	cout => \KEY1_debounce|s_debounceCnt[1]~34\);

-- Location: FF_X80_Y46_N5
\KEY1_debounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[1]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(1));

-- Location: LCCOMB_X80_Y46_N6
\KEY1_debounce|s_debounceCnt[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[2]~35_combout\ = (\KEY1_debounce|s_debounceCnt\(2) & ((GND) # (!\KEY1_debounce|s_debounceCnt[1]~34\))) # (!\KEY1_debounce|s_debounceCnt\(2) & (\KEY1_debounce|s_debounceCnt[1]~34\ $ (GND)))
-- \KEY1_debounce|s_debounceCnt[2]~36\ = CARRY((\KEY1_debounce|s_debounceCnt\(2)) # (!\KEY1_debounce|s_debounceCnt[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[1]~34\,
	combout => \KEY1_debounce|s_debounceCnt[2]~35_combout\,
	cout => \KEY1_debounce|s_debounceCnt[2]~36\);

-- Location: FF_X80_Y46_N7
\KEY1_debounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[2]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(2));

-- Location: LCCOMB_X80_Y46_N8
\KEY1_debounce|s_debounceCnt[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[3]~37_combout\ = (\KEY1_debounce|s_debounceCnt\(3) & (\KEY1_debounce|s_debounceCnt[2]~36\ & VCC)) # (!\KEY1_debounce|s_debounceCnt\(3) & (!\KEY1_debounce|s_debounceCnt[2]~36\))
-- \KEY1_debounce|s_debounceCnt[3]~38\ = CARRY((!\KEY1_debounce|s_debounceCnt\(3) & !\KEY1_debounce|s_debounceCnt[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[2]~36\,
	combout => \KEY1_debounce|s_debounceCnt[3]~37_combout\,
	cout => \KEY1_debounce|s_debounceCnt[3]~38\);

-- Location: FF_X80_Y46_N9
\KEY1_debounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[3]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(3));

-- Location: LCCOMB_X80_Y46_N10
\KEY1_debounce|s_debounceCnt[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[4]~39_combout\ = (\KEY1_debounce|s_debounceCnt\(4) & ((GND) # (!\KEY1_debounce|s_debounceCnt[3]~38\))) # (!\KEY1_debounce|s_debounceCnt\(4) & (\KEY1_debounce|s_debounceCnt[3]~38\ $ (GND)))
-- \KEY1_debounce|s_debounceCnt[4]~40\ = CARRY((\KEY1_debounce|s_debounceCnt\(4)) # (!\KEY1_debounce|s_debounceCnt[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[3]~38\,
	combout => \KEY1_debounce|s_debounceCnt[4]~39_combout\,
	cout => \KEY1_debounce|s_debounceCnt[4]~40\);

-- Location: FF_X80_Y46_N11
\KEY1_debounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[4]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(4));

-- Location: LCCOMB_X80_Y46_N12
\KEY1_debounce|s_debounceCnt[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[5]~41_combout\ = (\KEY1_debounce|s_debounceCnt\(5) & (\KEY1_debounce|s_debounceCnt[4]~40\ & VCC)) # (!\KEY1_debounce|s_debounceCnt\(5) & (!\KEY1_debounce|s_debounceCnt[4]~40\))
-- \KEY1_debounce|s_debounceCnt[5]~42\ = CARRY((!\KEY1_debounce|s_debounceCnt\(5) & !\KEY1_debounce|s_debounceCnt[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[4]~40\,
	combout => \KEY1_debounce|s_debounceCnt[5]~41_combout\,
	cout => \KEY1_debounce|s_debounceCnt[5]~42\);

-- Location: FF_X80_Y46_N13
\KEY1_debounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[5]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(5));

-- Location: LCCOMB_X80_Y46_N14
\KEY1_debounce|s_debounceCnt[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[6]~43_combout\ = (\KEY1_debounce|s_debounceCnt\(6) & ((GND) # (!\KEY1_debounce|s_debounceCnt[5]~42\))) # (!\KEY1_debounce|s_debounceCnt\(6) & (\KEY1_debounce|s_debounceCnt[5]~42\ $ (GND)))
-- \KEY1_debounce|s_debounceCnt[6]~44\ = CARRY((\KEY1_debounce|s_debounceCnt\(6)) # (!\KEY1_debounce|s_debounceCnt[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[5]~42\,
	combout => \KEY1_debounce|s_debounceCnt[6]~43_combout\,
	cout => \KEY1_debounce|s_debounceCnt[6]~44\);

-- Location: FF_X80_Y46_N15
\KEY1_debounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[6]~43_combout\,
	asdata => \KEY1_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(6));

-- Location: LCCOMB_X80_Y46_N16
\KEY1_debounce|s_debounceCnt[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[7]~45_combout\ = (\KEY1_debounce|s_debounceCnt\(7) & (\KEY1_debounce|s_debounceCnt[6]~44\ & VCC)) # (!\KEY1_debounce|s_debounceCnt\(7) & (!\KEY1_debounce|s_debounceCnt[6]~44\))
-- \KEY1_debounce|s_debounceCnt[7]~46\ = CARRY((!\KEY1_debounce|s_debounceCnt\(7) & !\KEY1_debounce|s_debounceCnt[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[6]~44\,
	combout => \KEY1_debounce|s_debounceCnt[7]~45_combout\,
	cout => \KEY1_debounce|s_debounceCnt[7]~46\);

-- Location: FF_X80_Y46_N17
\KEY1_debounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[7]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(7));

-- Location: LCCOMB_X80_Y46_N18
\KEY1_debounce|s_debounceCnt[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[8]~47_combout\ = (\KEY1_debounce|s_debounceCnt\(8) & ((GND) # (!\KEY1_debounce|s_debounceCnt[7]~46\))) # (!\KEY1_debounce|s_debounceCnt\(8) & (\KEY1_debounce|s_debounceCnt[7]~46\ $ (GND)))
-- \KEY1_debounce|s_debounceCnt[8]~48\ = CARRY((\KEY1_debounce|s_debounceCnt\(8)) # (!\KEY1_debounce|s_debounceCnt[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[7]~46\,
	combout => \KEY1_debounce|s_debounceCnt[8]~47_combout\,
	cout => \KEY1_debounce|s_debounceCnt[8]~48\);

-- Location: FF_X80_Y46_N19
\KEY1_debounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[8]~47_combout\,
	asdata => \KEY1_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(8));

-- Location: LCCOMB_X80_Y46_N20
\KEY1_debounce|s_debounceCnt[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[9]~49_combout\ = (\KEY1_debounce|s_debounceCnt\(9) & (\KEY1_debounce|s_debounceCnt[8]~48\ & VCC)) # (!\KEY1_debounce|s_debounceCnt\(9) & (!\KEY1_debounce|s_debounceCnt[8]~48\))
-- \KEY1_debounce|s_debounceCnt[9]~50\ = CARRY((!\KEY1_debounce|s_debounceCnt\(9) & !\KEY1_debounce|s_debounceCnt[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[8]~48\,
	combout => \KEY1_debounce|s_debounceCnt[9]~49_combout\,
	cout => \KEY1_debounce|s_debounceCnt[9]~50\);

-- Location: FF_X80_Y46_N21
\KEY1_debounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[9]~49_combout\,
	asdata => \KEY1_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(9));

-- Location: LCCOMB_X80_Y46_N22
\KEY1_debounce|s_debounceCnt[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[10]~51_combout\ = (\KEY1_debounce|s_debounceCnt\(10) & ((GND) # (!\KEY1_debounce|s_debounceCnt[9]~50\))) # (!\KEY1_debounce|s_debounceCnt\(10) & (\KEY1_debounce|s_debounceCnt[9]~50\ $ (GND)))
-- \KEY1_debounce|s_debounceCnt[10]~52\ = CARRY((\KEY1_debounce|s_debounceCnt\(10)) # (!\KEY1_debounce|s_debounceCnt[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[9]~50\,
	combout => \KEY1_debounce|s_debounceCnt[10]~51_combout\,
	cout => \KEY1_debounce|s_debounceCnt[10]~52\);

-- Location: FF_X80_Y46_N23
\KEY1_debounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[10]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(10));

-- Location: LCCOMB_X80_Y46_N24
\KEY1_debounce|s_debounceCnt[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[11]~53_combout\ = (\KEY1_debounce|s_debounceCnt\(11) & (\KEY1_debounce|s_debounceCnt[10]~52\ & VCC)) # (!\KEY1_debounce|s_debounceCnt\(11) & (!\KEY1_debounce|s_debounceCnt[10]~52\))
-- \KEY1_debounce|s_debounceCnt[11]~54\ = CARRY((!\KEY1_debounce|s_debounceCnt\(11) & !\KEY1_debounce|s_debounceCnt[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[10]~52\,
	combout => \KEY1_debounce|s_debounceCnt[11]~53_combout\,
	cout => \KEY1_debounce|s_debounceCnt[11]~54\);

-- Location: FF_X80_Y46_N25
\KEY1_debounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[11]~53_combout\,
	asdata => \KEY1_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(11));

-- Location: LCCOMB_X80_Y46_N26
\KEY1_debounce|s_debounceCnt[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[12]~55_combout\ = (\KEY1_debounce|s_debounceCnt\(12) & ((GND) # (!\KEY1_debounce|s_debounceCnt[11]~54\))) # (!\KEY1_debounce|s_debounceCnt\(12) & (\KEY1_debounce|s_debounceCnt[11]~54\ $ (GND)))
-- \KEY1_debounce|s_debounceCnt[12]~56\ = CARRY((\KEY1_debounce|s_debounceCnt\(12)) # (!\KEY1_debounce|s_debounceCnt[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[11]~54\,
	combout => \KEY1_debounce|s_debounceCnt[12]~55_combout\,
	cout => \KEY1_debounce|s_debounceCnt[12]~56\);

-- Location: FF_X80_Y46_N27
\KEY1_debounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[12]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(12));

-- Location: LCCOMB_X80_Y46_N28
\KEY1_debounce|s_debounceCnt[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[13]~57_combout\ = (\KEY1_debounce|s_debounceCnt\(13) & (\KEY1_debounce|s_debounceCnt[12]~56\ & VCC)) # (!\KEY1_debounce|s_debounceCnt\(13) & (!\KEY1_debounce|s_debounceCnt[12]~56\))
-- \KEY1_debounce|s_debounceCnt[13]~58\ = CARRY((!\KEY1_debounce|s_debounceCnt\(13) & !\KEY1_debounce|s_debounceCnt[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[12]~56\,
	combout => \KEY1_debounce|s_debounceCnt[13]~57_combout\,
	cout => \KEY1_debounce|s_debounceCnt[13]~58\);

-- Location: FF_X80_Y46_N29
\KEY1_debounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[13]~57_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(13));

-- Location: LCCOMB_X80_Y46_N30
\KEY1_debounce|s_debounceCnt[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[14]~59_combout\ = (\KEY1_debounce|s_debounceCnt\(14) & ((GND) # (!\KEY1_debounce|s_debounceCnt[13]~58\))) # (!\KEY1_debounce|s_debounceCnt\(14) & (\KEY1_debounce|s_debounceCnt[13]~58\ $ (GND)))
-- \KEY1_debounce|s_debounceCnt[14]~60\ = CARRY((\KEY1_debounce|s_debounceCnt\(14)) # (!\KEY1_debounce|s_debounceCnt[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[13]~58\,
	combout => \KEY1_debounce|s_debounceCnt[14]~59_combout\,
	cout => \KEY1_debounce|s_debounceCnt[14]~60\);

-- Location: FF_X80_Y46_N31
\KEY1_debounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[14]~59_combout\,
	asdata => \KEY1_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(14));

-- Location: LCCOMB_X80_Y45_N0
\KEY1_debounce|s_debounceCnt[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[15]~61_combout\ = (\KEY1_debounce|s_debounceCnt\(15) & (\KEY1_debounce|s_debounceCnt[14]~60\ & VCC)) # (!\KEY1_debounce|s_debounceCnt\(15) & (!\KEY1_debounce|s_debounceCnt[14]~60\))
-- \KEY1_debounce|s_debounceCnt[15]~62\ = CARRY((!\KEY1_debounce|s_debounceCnt\(15) & !\KEY1_debounce|s_debounceCnt[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[14]~60\,
	combout => \KEY1_debounce|s_debounceCnt[15]~61_combout\,
	cout => \KEY1_debounce|s_debounceCnt[15]~62\);

-- Location: FF_X80_Y45_N1
\KEY1_debounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[15]~61_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(15));

-- Location: LCCOMB_X80_Y45_N2
\KEY1_debounce|s_debounceCnt[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[16]~63_combout\ = (\KEY1_debounce|s_debounceCnt\(16) & ((GND) # (!\KEY1_debounce|s_debounceCnt[15]~62\))) # (!\KEY1_debounce|s_debounceCnt\(16) & (\KEY1_debounce|s_debounceCnt[15]~62\ $ (GND)))
-- \KEY1_debounce|s_debounceCnt[16]~64\ = CARRY((\KEY1_debounce|s_debounceCnt\(16)) # (!\KEY1_debounce|s_debounceCnt[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[15]~62\,
	combout => \KEY1_debounce|s_debounceCnt[16]~63_combout\,
	cout => \KEY1_debounce|s_debounceCnt[16]~64\);

-- Location: FF_X80_Y45_N3
\KEY1_debounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[16]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(16));

-- Location: LCCOMB_X80_Y45_N4
\KEY1_debounce|s_debounceCnt[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[17]~65_combout\ = (\KEY1_debounce|s_debounceCnt\(17) & (\KEY1_debounce|s_debounceCnt[16]~64\ & VCC)) # (!\KEY1_debounce|s_debounceCnt\(17) & (!\KEY1_debounce|s_debounceCnt[16]~64\))
-- \KEY1_debounce|s_debounceCnt[17]~66\ = CARRY((!\KEY1_debounce|s_debounceCnt\(17) & !\KEY1_debounce|s_debounceCnt[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[16]~64\,
	combout => \KEY1_debounce|s_debounceCnt[17]~65_combout\,
	cout => \KEY1_debounce|s_debounceCnt[17]~66\);

-- Location: FF_X80_Y45_N5
\KEY1_debounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[17]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(17));

-- Location: LCCOMB_X80_Y45_N6
\KEY1_debounce|s_debounceCnt[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[18]~67_combout\ = (\KEY1_debounce|s_debounceCnt\(18) & ((GND) # (!\KEY1_debounce|s_debounceCnt[17]~66\))) # (!\KEY1_debounce|s_debounceCnt\(18) & (\KEY1_debounce|s_debounceCnt[17]~66\ $ (GND)))
-- \KEY1_debounce|s_debounceCnt[18]~68\ = CARRY((\KEY1_debounce|s_debounceCnt\(18)) # (!\KEY1_debounce|s_debounceCnt[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[17]~66\,
	combout => \KEY1_debounce|s_debounceCnt[18]~67_combout\,
	cout => \KEY1_debounce|s_debounceCnt[18]~68\);

-- Location: FF_X80_Y45_N7
\KEY1_debounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[18]~67_combout\,
	asdata => \KEY1_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(18));

-- Location: LCCOMB_X80_Y45_N8
\KEY1_debounce|s_debounceCnt[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[19]~69_combout\ = (\KEY1_debounce|s_debounceCnt\(19) & (\KEY1_debounce|s_debounceCnt[18]~68\ & VCC)) # (!\KEY1_debounce|s_debounceCnt\(19) & (!\KEY1_debounce|s_debounceCnt[18]~68\))
-- \KEY1_debounce|s_debounceCnt[19]~70\ = CARRY((!\KEY1_debounce|s_debounceCnt\(19) & !\KEY1_debounce|s_debounceCnt[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[18]~68\,
	combout => \KEY1_debounce|s_debounceCnt[19]~69_combout\,
	cout => \KEY1_debounce|s_debounceCnt[19]~70\);

-- Location: FF_X80_Y45_N9
\KEY1_debounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[19]~69_combout\,
	asdata => \KEY1_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(19));

-- Location: LCCOMB_X80_Y45_N10
\KEY1_debounce|s_debounceCnt[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[20]~71_combout\ = (\KEY1_debounce|s_debounceCnt\(20) & ((GND) # (!\KEY1_debounce|s_debounceCnt[19]~70\))) # (!\KEY1_debounce|s_debounceCnt\(20) & (\KEY1_debounce|s_debounceCnt[19]~70\ $ (GND)))
-- \KEY1_debounce|s_debounceCnt[20]~72\ = CARRY((\KEY1_debounce|s_debounceCnt\(20)) # (!\KEY1_debounce|s_debounceCnt[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[19]~70\,
	combout => \KEY1_debounce|s_debounceCnt[20]~71_combout\,
	cout => \KEY1_debounce|s_debounceCnt[20]~72\);

-- Location: FF_X80_Y45_N11
\KEY1_debounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[20]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(20));

-- Location: LCCOMB_X80_Y45_N12
\KEY1_debounce|s_debounceCnt[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[21]~73_combout\ = (\KEY1_debounce|s_debounceCnt\(21) & (\KEY1_debounce|s_debounceCnt[20]~72\ & VCC)) # (!\KEY1_debounce|s_debounceCnt\(21) & (!\KEY1_debounce|s_debounceCnt[20]~72\))
-- \KEY1_debounce|s_debounceCnt[21]~74\ = CARRY((!\KEY1_debounce|s_debounceCnt\(21) & !\KEY1_debounce|s_debounceCnt[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[20]~72\,
	combout => \KEY1_debounce|s_debounceCnt[21]~73_combout\,
	cout => \KEY1_debounce|s_debounceCnt[21]~74\);

-- Location: FF_X80_Y45_N13
\KEY1_debounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[21]~73_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(21));

-- Location: LCCOMB_X80_Y45_N14
\KEY1_debounce|s_debounceCnt[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[22]~75_combout\ = (\KEY1_debounce|s_debounceCnt\(22) & ((GND) # (!\KEY1_debounce|s_debounceCnt[21]~74\))) # (!\KEY1_debounce|s_debounceCnt\(22) & (\KEY1_debounce|s_debounceCnt[21]~74\ $ (GND)))
-- \KEY1_debounce|s_debounceCnt[22]~76\ = CARRY((\KEY1_debounce|s_debounceCnt\(22)) # (!\KEY1_debounce|s_debounceCnt[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(22),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[21]~74\,
	combout => \KEY1_debounce|s_debounceCnt[22]~75_combout\,
	cout => \KEY1_debounce|s_debounceCnt[22]~76\);

-- Location: FF_X80_Y45_N15
\KEY1_debounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[22]~75_combout\,
	asdata => \KEY1_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(22));

-- Location: LCCOMB_X80_Y45_N16
\KEY1_debounce|s_debounceCnt[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[23]~77_combout\ = (\KEY1_debounce|s_debounceCnt\(23) & (\KEY1_debounce|s_debounceCnt[22]~76\ & VCC)) # (!\KEY1_debounce|s_debounceCnt\(23) & (!\KEY1_debounce|s_debounceCnt[22]~76\))
-- \KEY1_debounce|s_debounceCnt[23]~78\ = CARRY((!\KEY1_debounce|s_debounceCnt\(23) & !\KEY1_debounce|s_debounceCnt[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(23),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[22]~76\,
	combout => \KEY1_debounce|s_debounceCnt[23]~77_combout\,
	cout => \KEY1_debounce|s_debounceCnt[23]~78\);

-- Location: FF_X80_Y45_N17
\KEY1_debounce|s_debounceCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[23]~77_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(23));

-- Location: LCCOMB_X81_Y45_N22
\KEY1_debounce|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|Equal0~6_combout\ = (!\KEY1_debounce|s_debounceCnt\(22) & (!\KEY1_debounce|s_debounceCnt\(21) & (!\KEY1_debounce|s_debounceCnt\(23) & !\KEY1_debounce|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(22),
	datab => \KEY1_debounce|s_debounceCnt\(21),
	datac => \KEY1_debounce|s_debounceCnt\(23),
	datad => \KEY1_debounce|s_debounceCnt\(20),
	combout => \KEY1_debounce|Equal0~6_combout\);

-- Location: LCCOMB_X81_Y45_N20
\KEY1_debounce|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|Equal0~5_combout\ = (!\KEY1_debounce|s_debounceCnt\(19) & (!\KEY1_debounce|s_debounceCnt\(16) & (!\KEY1_debounce|s_debounceCnt\(18) & !\KEY1_debounce|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(19),
	datab => \KEY1_debounce|s_debounceCnt\(16),
	datac => \KEY1_debounce|s_debounceCnt\(18),
	datad => \KEY1_debounce|s_debounceCnt\(17),
	combout => \KEY1_debounce|Equal0~5_combout\);

-- Location: LCCOMB_X80_Y45_N18
\KEY1_debounce|s_debounceCnt[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[24]~79_combout\ = (\KEY1_debounce|s_debounceCnt\(24) & ((GND) # (!\KEY1_debounce|s_debounceCnt[23]~78\))) # (!\KEY1_debounce|s_debounceCnt\(24) & (\KEY1_debounce|s_debounceCnt[23]~78\ $ (GND)))
-- \KEY1_debounce|s_debounceCnt[24]~80\ = CARRY((\KEY1_debounce|s_debounceCnt\(24)) # (!\KEY1_debounce|s_debounceCnt[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(24),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[23]~78\,
	combout => \KEY1_debounce|s_debounceCnt[24]~79_combout\,
	cout => \KEY1_debounce|s_debounceCnt[24]~80\);

-- Location: FF_X80_Y45_N19
\KEY1_debounce|s_debounceCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[24]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(24));

-- Location: LCCOMB_X80_Y45_N20
\KEY1_debounce|s_debounceCnt[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[25]~81_combout\ = (\KEY1_debounce|s_debounceCnt\(25) & (\KEY1_debounce|s_debounceCnt[24]~80\ & VCC)) # (!\KEY1_debounce|s_debounceCnt\(25) & (!\KEY1_debounce|s_debounceCnt[24]~80\))
-- \KEY1_debounce|s_debounceCnt[25]~82\ = CARRY((!\KEY1_debounce|s_debounceCnt\(25) & !\KEY1_debounce|s_debounceCnt[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(25),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[24]~80\,
	combout => \KEY1_debounce|s_debounceCnt[25]~81_combout\,
	cout => \KEY1_debounce|s_debounceCnt[25]~82\);

-- Location: FF_X80_Y45_N21
\KEY1_debounce|s_debounceCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[25]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(25));

-- Location: LCCOMB_X80_Y45_N22
\KEY1_debounce|s_debounceCnt[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[26]~83_combout\ = (\KEY1_debounce|s_debounceCnt\(26) & ((GND) # (!\KEY1_debounce|s_debounceCnt[25]~82\))) # (!\KEY1_debounce|s_debounceCnt\(26) & (\KEY1_debounce|s_debounceCnt[25]~82\ $ (GND)))
-- \KEY1_debounce|s_debounceCnt[26]~84\ = CARRY((\KEY1_debounce|s_debounceCnt\(26)) # (!\KEY1_debounce|s_debounceCnt[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(26),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[25]~82\,
	combout => \KEY1_debounce|s_debounceCnt[26]~83_combout\,
	cout => \KEY1_debounce|s_debounceCnt[26]~84\);

-- Location: FF_X80_Y45_N23
\KEY1_debounce|s_debounceCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[26]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(26));

-- Location: LCCOMB_X80_Y45_N24
\KEY1_debounce|s_debounceCnt[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[27]~85_combout\ = (\KEY1_debounce|s_debounceCnt\(27) & (\KEY1_debounce|s_debounceCnt[26]~84\ & VCC)) # (!\KEY1_debounce|s_debounceCnt\(27) & (!\KEY1_debounce|s_debounceCnt[26]~84\))
-- \KEY1_debounce|s_debounceCnt[27]~86\ = CARRY((!\KEY1_debounce|s_debounceCnt\(27) & !\KEY1_debounce|s_debounceCnt[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(27),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[26]~84\,
	combout => \KEY1_debounce|s_debounceCnt[27]~85_combout\,
	cout => \KEY1_debounce|s_debounceCnt[27]~86\);

-- Location: FF_X80_Y45_N25
\KEY1_debounce|s_debounceCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[27]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(27));

-- Location: LCCOMB_X80_Y45_N26
\KEY1_debounce|s_debounceCnt[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[28]~87_combout\ = (\KEY1_debounce|s_debounceCnt\(28) & ((GND) # (!\KEY1_debounce|s_debounceCnt[27]~86\))) # (!\KEY1_debounce|s_debounceCnt\(28) & (\KEY1_debounce|s_debounceCnt[27]~86\ $ (GND)))
-- \KEY1_debounce|s_debounceCnt[28]~88\ = CARRY((\KEY1_debounce|s_debounceCnt\(28)) # (!\KEY1_debounce|s_debounceCnt[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(28),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[27]~86\,
	combout => \KEY1_debounce|s_debounceCnt[28]~87_combout\,
	cout => \KEY1_debounce|s_debounceCnt[28]~88\);

-- Location: FF_X80_Y45_N27
\KEY1_debounce|s_debounceCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[28]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(28));

-- Location: LCCOMB_X80_Y45_N28
\KEY1_debounce|s_debounceCnt[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[29]~89_combout\ = (\KEY1_debounce|s_debounceCnt\(29) & (\KEY1_debounce|s_debounceCnt[28]~88\ & VCC)) # (!\KEY1_debounce|s_debounceCnt\(29) & (!\KEY1_debounce|s_debounceCnt[28]~88\))
-- \KEY1_debounce|s_debounceCnt[29]~90\ = CARRY((!\KEY1_debounce|s_debounceCnt\(29) & !\KEY1_debounce|s_debounceCnt[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY1_debounce|s_debounceCnt\(29),
	datad => VCC,
	cin => \KEY1_debounce|s_debounceCnt[28]~88\,
	combout => \KEY1_debounce|s_debounceCnt[29]~89_combout\,
	cout => \KEY1_debounce|s_debounceCnt[29]~90\);

-- Location: FF_X80_Y45_N29
\KEY1_debounce|s_debounceCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[29]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(29));

-- Location: LCCOMB_X80_Y45_N30
\KEY1_debounce|s_debounceCnt[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_debounceCnt[30]~91_combout\ = \KEY1_debounce|s_debounceCnt\(30) $ (\KEY1_debounce|s_debounceCnt[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(30),
	cin => \KEY1_debounce|s_debounceCnt[29]~90\,
	combout => \KEY1_debounce|s_debounceCnt[30]~91_combout\);

-- Location: FF_X80_Y45_N31
\KEY1_debounce|s_debounceCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_debounceCnt[30]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY1_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_debounceCnt\(30));

-- Location: LCCOMB_X81_Y45_N16
\KEY1_debounce|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|Equal0~7_combout\ = (!\KEY1_debounce|s_debounceCnt\(25) & (!\KEY1_debounce|s_debounceCnt\(27) & (!\KEY1_debounce|s_debounceCnt\(24) & !\KEY1_debounce|s_debounceCnt\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(25),
	datab => \KEY1_debounce|s_debounceCnt\(27),
	datac => \KEY1_debounce|s_debounceCnt\(24),
	datad => \KEY1_debounce|s_debounceCnt\(26),
	combout => \KEY1_debounce|Equal0~7_combout\);

-- Location: LCCOMB_X81_Y45_N26
\KEY1_debounce|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|Equal0~8_combout\ = (!\KEY1_debounce|s_debounceCnt\(28) & (!\KEY1_debounce|s_debounceCnt\(30) & (!\KEY1_debounce|s_debounceCnt\(29) & \KEY1_debounce|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(28),
	datab => \KEY1_debounce|s_debounceCnt\(30),
	datac => \KEY1_debounce|s_debounceCnt\(29),
	datad => \KEY1_debounce|Equal0~7_combout\,
	combout => \KEY1_debounce|Equal0~8_combout\);

-- Location: LCCOMB_X81_Y45_N10
\KEY1_debounce|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|Equal0~2_combout\ = (!\KEY1_debounce|s_debounceCnt\(10) & (!\KEY1_debounce|s_debounceCnt\(9) & (!\KEY1_debounce|s_debounceCnt\(11) & !\KEY1_debounce|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(10),
	datab => \KEY1_debounce|s_debounceCnt\(9),
	datac => \KEY1_debounce|s_debounceCnt\(11),
	datad => \KEY1_debounce|s_debounceCnt\(8),
	combout => \KEY1_debounce|Equal0~2_combout\);

-- Location: LCCOMB_X80_Y46_N0
\KEY1_debounce|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|Equal0~1_combout\ = (!\KEY1_debounce|s_debounceCnt\(5) & (!\KEY1_debounce|s_debounceCnt\(7) & (!\KEY1_debounce|s_debounceCnt\(6) & !\KEY1_debounce|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(5),
	datab => \KEY1_debounce|s_debounceCnt\(7),
	datac => \KEY1_debounce|s_debounceCnt\(6),
	datad => \KEY1_debounce|s_debounceCnt\(4),
	combout => \KEY1_debounce|Equal0~1_combout\);

-- Location: LCCOMB_X81_Y45_N4
\KEY1_debounce|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|Equal0~3_combout\ = (!\KEY1_debounce|s_debounceCnt\(13) & (!\KEY1_debounce|s_debounceCnt\(14) & (!\KEY1_debounce|s_debounceCnt\(12) & !\KEY1_debounce|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(13),
	datab => \KEY1_debounce|s_debounceCnt\(14),
	datac => \KEY1_debounce|s_debounceCnt\(12),
	datad => \KEY1_debounce|s_debounceCnt\(15),
	combout => \KEY1_debounce|Equal0~3_combout\);

-- Location: LCCOMB_X81_Y45_N12
\KEY1_debounce|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|Equal0~0_combout\ = (!\KEY1_debounce|s_debounceCnt\(0) & (!\KEY1_debounce|s_debounceCnt\(1) & (!\KEY1_debounce|s_debounceCnt\(3) & !\KEY1_debounce|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|s_debounceCnt\(0),
	datab => \KEY1_debounce|s_debounceCnt\(1),
	datac => \KEY1_debounce|s_debounceCnt\(3),
	datad => \KEY1_debounce|s_debounceCnt\(2),
	combout => \KEY1_debounce|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y45_N18
\KEY1_debounce|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|Equal0~4_combout\ = (\KEY1_debounce|Equal0~2_combout\ & (\KEY1_debounce|Equal0~1_combout\ & (\KEY1_debounce|Equal0~3_combout\ & \KEY1_debounce|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|Equal0~2_combout\,
	datab => \KEY1_debounce|Equal0~1_combout\,
	datac => \KEY1_debounce|Equal0~3_combout\,
	datad => \KEY1_debounce|Equal0~0_combout\,
	combout => \KEY1_debounce|Equal0~4_combout\);

-- Location: LCCOMB_X81_Y45_N0
\KEY1_debounce|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|Equal0~9_combout\ = (\KEY1_debounce|Equal0~6_combout\ & (\KEY1_debounce|Equal0~5_combout\ & (\KEY1_debounce|Equal0~8_combout\ & \KEY1_debounce|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY1_debounce|Equal0~6_combout\,
	datab => \KEY1_debounce|Equal0~5_combout\,
	datac => \KEY1_debounce|Equal0~8_combout\,
	datad => \KEY1_debounce|Equal0~4_combout\,
	combout => \KEY1_debounce|Equal0~9_combout\);

-- Location: LCCOMB_X81_Y46_N2
\KEY1_debounce|s_resetPulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|s_resetPulse~0_combout\ = (\KEY1_debounce|s_pulsedOut~q\) # (!\KEY1_debounce|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY1_debounce|s_pulsedOut~q\,
	datad => \KEY1_debounce|Equal0~9_combout\,
	combout => \KEY1_debounce|s_resetPulse~0_combout\);

-- Location: FF_X81_Y46_N3
\KEY1_debounce|s_resetPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY1_debounce|s_resetPulse~0_combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_resetPulse~q\);

-- Location: LCCOMB_X81_Y46_N0
\KEY1_debounce|out_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY1_debounce|out_proc~0_combout\ = (\SW[17]~input_o\) # (\KEY1_debounce|s_resetPulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datad => \KEY1_debounce|s_resetPulse~q\,
	combout => \KEY1_debounce|out_proc~0_combout\);

-- Location: FF_X81_Y46_N5
\KEY1_debounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY1_debounce|ALT_INV_s_dirtyIn~q\,
	d => \KEY1_debounce|s_pulsedOut~feeder_combout\,
	clrn => \KEY1_debounce|ALT_INV_out_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY1_debounce|s_pulsedOut~q\);

-- Location: LCCOMB_X81_Y30_N14
\auxiliaryMachine_cinquenta|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_cinquenta|Selector0~0_combout\ = (\auxiliaryMachine_cinquenta|s_currentState.E1~q\) # (\KEY1_debounce|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auxiliaryMachine_cinquenta|s_currentState.E1~q\,
	datad => \KEY1_debounce|s_pulsedOut~q\,
	combout => \auxiliaryMachine_cinquenta|Selector0~0_combout\);

-- Location: FF_X81_Y30_N25
\auxiliaryMachine_cinquenta|s_currentState.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auxiliaryMachine_cinquenta|Selector0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxiliaryMachine_cinquenta|s_currentState.E0~q\);

-- Location: LCCOMB_X81_Y30_N24
\auxiliaryMachine_cinquenta|s_nextState.E1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_cinquenta|s_nextState.E1~0_combout\ = (!\auxiliaryMachine_cinquenta|s_currentState.E0~q\ & \KEY1_debounce|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auxiliaryMachine_cinquenta|s_currentState.E0~q\,
	datad => \KEY1_debounce|s_pulsedOut~q\,
	combout => \auxiliaryMachine_cinquenta|s_nextState.E1~0_combout\);

-- Location: LCCOMB_X81_Y30_N28
\auxiliaryMachine_cinquenta|s_currentState.E1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_cinquenta|s_currentState.E1~feeder_combout\ = \auxiliaryMachine_cinquenta|s_nextState.E1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auxiliaryMachine_cinquenta|s_nextState.E1~0_combout\,
	combout => \auxiliaryMachine_cinquenta|s_currentState.E1~feeder_combout\);

-- Location: FF_X81_Y30_N29
\auxiliaryMachine_cinquenta|s_currentState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auxiliaryMachine_cinquenta|s_currentState.E1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxiliaryMachine_cinquenta|s_currentState.E1~q\);

-- Location: LCCOMB_X81_Y30_N26
\FSM_Chocolate|comb_proc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|comb_proc~2_combout\ = (\auxiliaryMachine_um|s_currentState.E1~q\) # ((\auxiliaryMachine_dois|s_currentState.E1~q\) # (\auxiliaryMachine_cinquenta|s_currentState.E1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auxiliaryMachine_um|s_currentState.E1~q\,
	datac => \auxiliaryMachine_dois|s_currentState.E1~q\,
	datad => \auxiliaryMachine_cinquenta|s_currentState.E1~q\,
	combout => \FSM_Chocolate|comb_proc~2_combout\);

-- Location: LCCOMB_X79_Y29_N18
\FSM_agua|s_currentState.E0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_agua|s_currentState.E0~0_combout\ = (\FSM_agua|s_currentState.E3~q\ & ((\auxiliaryMachine_push|s_currentState.E1~q\))) # (!\FSM_agua|s_currentState.E3~q\ & (\auxiliaryMachine_reset|s_currentState.E1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_agua|s_currentState.E3~q\,
	datac => \auxiliaryMachine_reset|s_currentState.E1~q\,
	datad => \auxiliaryMachine_push|s_currentState.E1~q\,
	combout => \FSM_agua|s_currentState.E0~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X83_Y30_N21
\KEY0_debounce|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_dirtyIn~q\);

-- Location: LCCOMB_X82_Y30_N6
\KEY0_debounce|s_pulsedOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_pulsedOut~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \KEY0_debounce|s_pulsedOut~feeder_combout\);

-- Location: LCCOMB_X81_Y32_N2
\KEY0_debounce|s_debounceCnt[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[0]~31_combout\ = \KEY0_debounce|s_debounceCnt\(0) $ (VCC)
-- \KEY0_debounce|s_debounceCnt[0]~32\ = CARRY(\KEY0_debounce|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(0),
	datad => VCC,
	combout => \KEY0_debounce|s_debounceCnt[0]~31_combout\,
	cout => \KEY0_debounce|s_debounceCnt[0]~32\);

-- Location: FF_X81_Y32_N3
\KEY0_debounce|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[0]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(0));

-- Location: LCCOMB_X81_Y32_N4
\KEY0_debounce|s_debounceCnt[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[1]~33_combout\ = (\KEY0_debounce|s_debounceCnt\(1) & (\KEY0_debounce|s_debounceCnt[0]~32\ & VCC)) # (!\KEY0_debounce|s_debounceCnt\(1) & (!\KEY0_debounce|s_debounceCnt[0]~32\))
-- \KEY0_debounce|s_debounceCnt[1]~34\ = CARRY((!\KEY0_debounce|s_debounceCnt\(1) & !\KEY0_debounce|s_debounceCnt[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(1),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[0]~32\,
	combout => \KEY0_debounce|s_debounceCnt[1]~33_combout\,
	cout => \KEY0_debounce|s_debounceCnt[1]~34\);

-- Location: FF_X81_Y32_N5
\KEY0_debounce|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[1]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(1));

-- Location: LCCOMB_X81_Y32_N6
\KEY0_debounce|s_debounceCnt[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[2]~35_combout\ = (\KEY0_debounce|s_debounceCnt\(2) & ((GND) # (!\KEY0_debounce|s_debounceCnt[1]~34\))) # (!\KEY0_debounce|s_debounceCnt\(2) & (\KEY0_debounce|s_debounceCnt[1]~34\ $ (GND)))
-- \KEY0_debounce|s_debounceCnt[2]~36\ = CARRY((\KEY0_debounce|s_debounceCnt\(2)) # (!\KEY0_debounce|s_debounceCnt[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(2),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[1]~34\,
	combout => \KEY0_debounce|s_debounceCnt[2]~35_combout\,
	cout => \KEY0_debounce|s_debounceCnt[2]~36\);

-- Location: FF_X81_Y32_N7
\KEY0_debounce|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[2]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(2));

-- Location: LCCOMB_X81_Y32_N8
\KEY0_debounce|s_debounceCnt[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[3]~37_combout\ = (\KEY0_debounce|s_debounceCnt\(3) & (\KEY0_debounce|s_debounceCnt[2]~36\ & VCC)) # (!\KEY0_debounce|s_debounceCnt\(3) & (!\KEY0_debounce|s_debounceCnt[2]~36\))
-- \KEY0_debounce|s_debounceCnt[3]~38\ = CARRY((!\KEY0_debounce|s_debounceCnt\(3) & !\KEY0_debounce|s_debounceCnt[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(3),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[2]~36\,
	combout => \KEY0_debounce|s_debounceCnt[3]~37_combout\,
	cout => \KEY0_debounce|s_debounceCnt[3]~38\);

-- Location: FF_X81_Y32_N9
\KEY0_debounce|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[3]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(3));

-- Location: LCCOMB_X81_Y32_N10
\KEY0_debounce|s_debounceCnt[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[4]~39_combout\ = (\KEY0_debounce|s_debounceCnt\(4) & ((GND) # (!\KEY0_debounce|s_debounceCnt[3]~38\))) # (!\KEY0_debounce|s_debounceCnt\(4) & (\KEY0_debounce|s_debounceCnt[3]~38\ $ (GND)))
-- \KEY0_debounce|s_debounceCnt[4]~40\ = CARRY((\KEY0_debounce|s_debounceCnt\(4)) # (!\KEY0_debounce|s_debounceCnt[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(4),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[3]~38\,
	combout => \KEY0_debounce|s_debounceCnt[4]~39_combout\,
	cout => \KEY0_debounce|s_debounceCnt[4]~40\);

-- Location: FF_X81_Y32_N11
\KEY0_debounce|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[4]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(4));

-- Location: LCCOMB_X81_Y32_N12
\KEY0_debounce|s_debounceCnt[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[5]~41_combout\ = (\KEY0_debounce|s_debounceCnt\(5) & (\KEY0_debounce|s_debounceCnt[4]~40\ & VCC)) # (!\KEY0_debounce|s_debounceCnt\(5) & (!\KEY0_debounce|s_debounceCnt[4]~40\))
-- \KEY0_debounce|s_debounceCnt[5]~42\ = CARRY((!\KEY0_debounce|s_debounceCnt\(5) & !\KEY0_debounce|s_debounceCnt[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(5),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[4]~40\,
	combout => \KEY0_debounce|s_debounceCnt[5]~41_combout\,
	cout => \KEY0_debounce|s_debounceCnt[5]~42\);

-- Location: FF_X81_Y32_N13
\KEY0_debounce|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[5]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(5));

-- Location: LCCOMB_X81_Y32_N14
\KEY0_debounce|s_debounceCnt[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[6]~43_combout\ = (\KEY0_debounce|s_debounceCnt\(6) & ((GND) # (!\KEY0_debounce|s_debounceCnt[5]~42\))) # (!\KEY0_debounce|s_debounceCnt\(6) & (\KEY0_debounce|s_debounceCnt[5]~42\ $ (GND)))
-- \KEY0_debounce|s_debounceCnt[6]~44\ = CARRY((\KEY0_debounce|s_debounceCnt\(6)) # (!\KEY0_debounce|s_debounceCnt[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(6),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[5]~42\,
	combout => \KEY0_debounce|s_debounceCnt[6]~43_combout\,
	cout => \KEY0_debounce|s_debounceCnt[6]~44\);

-- Location: FF_X81_Y32_N15
\KEY0_debounce|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[6]~43_combout\,
	asdata => \KEY0_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(6));

-- Location: LCCOMB_X81_Y32_N16
\KEY0_debounce|s_debounceCnt[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[7]~45_combout\ = (\KEY0_debounce|s_debounceCnt\(7) & (\KEY0_debounce|s_debounceCnt[6]~44\ & VCC)) # (!\KEY0_debounce|s_debounceCnt\(7) & (!\KEY0_debounce|s_debounceCnt[6]~44\))
-- \KEY0_debounce|s_debounceCnt[7]~46\ = CARRY((!\KEY0_debounce|s_debounceCnt\(7) & !\KEY0_debounce|s_debounceCnt[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(7),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[6]~44\,
	combout => \KEY0_debounce|s_debounceCnt[7]~45_combout\,
	cout => \KEY0_debounce|s_debounceCnt[7]~46\);

-- Location: FF_X81_Y32_N17
\KEY0_debounce|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[7]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(7));

-- Location: LCCOMB_X81_Y32_N18
\KEY0_debounce|s_debounceCnt[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[8]~47_combout\ = (\KEY0_debounce|s_debounceCnt\(8) & ((GND) # (!\KEY0_debounce|s_debounceCnt[7]~46\))) # (!\KEY0_debounce|s_debounceCnt\(8) & (\KEY0_debounce|s_debounceCnt[7]~46\ $ (GND)))
-- \KEY0_debounce|s_debounceCnt[8]~48\ = CARRY((\KEY0_debounce|s_debounceCnt\(8)) # (!\KEY0_debounce|s_debounceCnt[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(8),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[7]~46\,
	combout => \KEY0_debounce|s_debounceCnt[8]~47_combout\,
	cout => \KEY0_debounce|s_debounceCnt[8]~48\);

-- Location: FF_X81_Y32_N19
\KEY0_debounce|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[8]~47_combout\,
	asdata => \KEY0_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(8));

-- Location: LCCOMB_X81_Y32_N20
\KEY0_debounce|s_debounceCnt[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[9]~49_combout\ = (\KEY0_debounce|s_debounceCnt\(9) & (\KEY0_debounce|s_debounceCnt[8]~48\ & VCC)) # (!\KEY0_debounce|s_debounceCnt\(9) & (!\KEY0_debounce|s_debounceCnt[8]~48\))
-- \KEY0_debounce|s_debounceCnt[9]~50\ = CARRY((!\KEY0_debounce|s_debounceCnt\(9) & !\KEY0_debounce|s_debounceCnt[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(9),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[8]~48\,
	combout => \KEY0_debounce|s_debounceCnt[9]~49_combout\,
	cout => \KEY0_debounce|s_debounceCnt[9]~50\);

-- Location: FF_X81_Y32_N21
\KEY0_debounce|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[9]~49_combout\,
	asdata => \KEY0_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(9));

-- Location: LCCOMB_X81_Y32_N22
\KEY0_debounce|s_debounceCnt[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[10]~51_combout\ = (\KEY0_debounce|s_debounceCnt\(10) & ((GND) # (!\KEY0_debounce|s_debounceCnt[9]~50\))) # (!\KEY0_debounce|s_debounceCnt\(10) & (\KEY0_debounce|s_debounceCnt[9]~50\ $ (GND)))
-- \KEY0_debounce|s_debounceCnt[10]~52\ = CARRY((\KEY0_debounce|s_debounceCnt\(10)) # (!\KEY0_debounce|s_debounceCnt[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(10),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[9]~50\,
	combout => \KEY0_debounce|s_debounceCnt[10]~51_combout\,
	cout => \KEY0_debounce|s_debounceCnt[10]~52\);

-- Location: FF_X81_Y32_N23
\KEY0_debounce|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[10]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(10));

-- Location: LCCOMB_X81_Y32_N24
\KEY0_debounce|s_debounceCnt[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[11]~53_combout\ = (\KEY0_debounce|s_debounceCnt\(11) & (\KEY0_debounce|s_debounceCnt[10]~52\ & VCC)) # (!\KEY0_debounce|s_debounceCnt\(11) & (!\KEY0_debounce|s_debounceCnt[10]~52\))
-- \KEY0_debounce|s_debounceCnt[11]~54\ = CARRY((!\KEY0_debounce|s_debounceCnt\(11) & !\KEY0_debounce|s_debounceCnt[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(11),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[10]~52\,
	combout => \KEY0_debounce|s_debounceCnt[11]~53_combout\,
	cout => \KEY0_debounce|s_debounceCnt[11]~54\);

-- Location: FF_X81_Y32_N25
\KEY0_debounce|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[11]~53_combout\,
	asdata => \KEY0_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(11));

-- Location: LCCOMB_X81_Y32_N26
\KEY0_debounce|s_debounceCnt[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[12]~55_combout\ = (\KEY0_debounce|s_debounceCnt\(12) & ((GND) # (!\KEY0_debounce|s_debounceCnt[11]~54\))) # (!\KEY0_debounce|s_debounceCnt\(12) & (\KEY0_debounce|s_debounceCnt[11]~54\ $ (GND)))
-- \KEY0_debounce|s_debounceCnt[12]~56\ = CARRY((\KEY0_debounce|s_debounceCnt\(12)) # (!\KEY0_debounce|s_debounceCnt[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(12),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[11]~54\,
	combout => \KEY0_debounce|s_debounceCnt[12]~55_combout\,
	cout => \KEY0_debounce|s_debounceCnt[12]~56\);

-- Location: FF_X81_Y32_N27
\KEY0_debounce|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[12]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(12));

-- Location: LCCOMB_X81_Y32_N28
\KEY0_debounce|s_debounceCnt[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[13]~57_combout\ = (\KEY0_debounce|s_debounceCnt\(13) & (\KEY0_debounce|s_debounceCnt[12]~56\ & VCC)) # (!\KEY0_debounce|s_debounceCnt\(13) & (!\KEY0_debounce|s_debounceCnt[12]~56\))
-- \KEY0_debounce|s_debounceCnt[13]~58\ = CARRY((!\KEY0_debounce|s_debounceCnt\(13) & !\KEY0_debounce|s_debounceCnt[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(13),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[12]~56\,
	combout => \KEY0_debounce|s_debounceCnt[13]~57_combout\,
	cout => \KEY0_debounce|s_debounceCnt[13]~58\);

-- Location: FF_X81_Y32_N29
\KEY0_debounce|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[13]~57_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(13));

-- Location: LCCOMB_X81_Y32_N30
\KEY0_debounce|s_debounceCnt[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[14]~59_combout\ = (\KEY0_debounce|s_debounceCnt\(14) & ((GND) # (!\KEY0_debounce|s_debounceCnt[13]~58\))) # (!\KEY0_debounce|s_debounceCnt\(14) & (\KEY0_debounce|s_debounceCnt[13]~58\ $ (GND)))
-- \KEY0_debounce|s_debounceCnt[14]~60\ = CARRY((\KEY0_debounce|s_debounceCnt\(14)) # (!\KEY0_debounce|s_debounceCnt[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(14),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[13]~58\,
	combout => \KEY0_debounce|s_debounceCnt[14]~59_combout\,
	cout => \KEY0_debounce|s_debounceCnt[14]~60\);

-- Location: FF_X81_Y32_N31
\KEY0_debounce|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[14]~59_combout\,
	asdata => \KEY0_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(14));

-- Location: LCCOMB_X81_Y31_N0
\KEY0_debounce|s_debounceCnt[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[15]~61_combout\ = (\KEY0_debounce|s_debounceCnt\(15) & (\KEY0_debounce|s_debounceCnt[14]~60\ & VCC)) # (!\KEY0_debounce|s_debounceCnt\(15) & (!\KEY0_debounce|s_debounceCnt[14]~60\))
-- \KEY0_debounce|s_debounceCnt[15]~62\ = CARRY((!\KEY0_debounce|s_debounceCnt\(15) & !\KEY0_debounce|s_debounceCnt[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(15),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[14]~60\,
	combout => \KEY0_debounce|s_debounceCnt[15]~61_combout\,
	cout => \KEY0_debounce|s_debounceCnt[15]~62\);

-- Location: FF_X81_Y31_N1
\KEY0_debounce|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[15]~61_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(15));

-- Location: LCCOMB_X81_Y31_N2
\KEY0_debounce|s_debounceCnt[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[16]~63_combout\ = (\KEY0_debounce|s_debounceCnt\(16) & ((GND) # (!\KEY0_debounce|s_debounceCnt[15]~62\))) # (!\KEY0_debounce|s_debounceCnt\(16) & (\KEY0_debounce|s_debounceCnt[15]~62\ $ (GND)))
-- \KEY0_debounce|s_debounceCnt[16]~64\ = CARRY((\KEY0_debounce|s_debounceCnt\(16)) # (!\KEY0_debounce|s_debounceCnt[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(16),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[15]~62\,
	combout => \KEY0_debounce|s_debounceCnt[16]~63_combout\,
	cout => \KEY0_debounce|s_debounceCnt[16]~64\);

-- Location: FF_X81_Y31_N3
\KEY0_debounce|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[16]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(16));

-- Location: LCCOMB_X81_Y31_N4
\KEY0_debounce|s_debounceCnt[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[17]~65_combout\ = (\KEY0_debounce|s_debounceCnt\(17) & (\KEY0_debounce|s_debounceCnt[16]~64\ & VCC)) # (!\KEY0_debounce|s_debounceCnt\(17) & (!\KEY0_debounce|s_debounceCnt[16]~64\))
-- \KEY0_debounce|s_debounceCnt[17]~66\ = CARRY((!\KEY0_debounce|s_debounceCnt\(17) & !\KEY0_debounce|s_debounceCnt[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(17),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[16]~64\,
	combout => \KEY0_debounce|s_debounceCnt[17]~65_combout\,
	cout => \KEY0_debounce|s_debounceCnt[17]~66\);

-- Location: FF_X81_Y31_N5
\KEY0_debounce|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[17]~65_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(17));

-- Location: LCCOMB_X81_Y31_N6
\KEY0_debounce|s_debounceCnt[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[18]~67_combout\ = (\KEY0_debounce|s_debounceCnt\(18) & ((GND) # (!\KEY0_debounce|s_debounceCnt[17]~66\))) # (!\KEY0_debounce|s_debounceCnt\(18) & (\KEY0_debounce|s_debounceCnt[17]~66\ $ (GND)))
-- \KEY0_debounce|s_debounceCnt[18]~68\ = CARRY((\KEY0_debounce|s_debounceCnt\(18)) # (!\KEY0_debounce|s_debounceCnt[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(18),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[17]~66\,
	combout => \KEY0_debounce|s_debounceCnt[18]~67_combout\,
	cout => \KEY0_debounce|s_debounceCnt[18]~68\);

-- Location: FF_X81_Y31_N7
\KEY0_debounce|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[18]~67_combout\,
	asdata => \KEY0_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(18));

-- Location: LCCOMB_X81_Y31_N8
\KEY0_debounce|s_debounceCnt[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[19]~69_combout\ = (\KEY0_debounce|s_debounceCnt\(19) & (\KEY0_debounce|s_debounceCnt[18]~68\ & VCC)) # (!\KEY0_debounce|s_debounceCnt\(19) & (!\KEY0_debounce|s_debounceCnt[18]~68\))
-- \KEY0_debounce|s_debounceCnt[19]~70\ = CARRY((!\KEY0_debounce|s_debounceCnt\(19) & !\KEY0_debounce|s_debounceCnt[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(19),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[18]~68\,
	combout => \KEY0_debounce|s_debounceCnt[19]~69_combout\,
	cout => \KEY0_debounce|s_debounceCnt[19]~70\);

-- Location: FF_X81_Y31_N9
\KEY0_debounce|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[19]~69_combout\,
	asdata => \KEY0_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(19));

-- Location: LCCOMB_X81_Y31_N10
\KEY0_debounce|s_debounceCnt[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[20]~71_combout\ = (\KEY0_debounce|s_debounceCnt\(20) & ((GND) # (!\KEY0_debounce|s_debounceCnt[19]~70\))) # (!\KEY0_debounce|s_debounceCnt\(20) & (\KEY0_debounce|s_debounceCnt[19]~70\ $ (GND)))
-- \KEY0_debounce|s_debounceCnt[20]~72\ = CARRY((\KEY0_debounce|s_debounceCnt\(20)) # (!\KEY0_debounce|s_debounceCnt[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(20),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[19]~70\,
	combout => \KEY0_debounce|s_debounceCnt[20]~71_combout\,
	cout => \KEY0_debounce|s_debounceCnt[20]~72\);

-- Location: FF_X81_Y31_N11
\KEY0_debounce|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[20]~71_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(20));

-- Location: LCCOMB_X81_Y31_N12
\KEY0_debounce|s_debounceCnt[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[21]~73_combout\ = (\KEY0_debounce|s_debounceCnt\(21) & (\KEY0_debounce|s_debounceCnt[20]~72\ & VCC)) # (!\KEY0_debounce|s_debounceCnt\(21) & (!\KEY0_debounce|s_debounceCnt[20]~72\))
-- \KEY0_debounce|s_debounceCnt[21]~74\ = CARRY((!\KEY0_debounce|s_debounceCnt\(21) & !\KEY0_debounce|s_debounceCnt[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(21),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[20]~72\,
	combout => \KEY0_debounce|s_debounceCnt[21]~73_combout\,
	cout => \KEY0_debounce|s_debounceCnt[21]~74\);

-- Location: FF_X81_Y31_N13
\KEY0_debounce|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[21]~73_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(21));

-- Location: LCCOMB_X81_Y31_N14
\KEY0_debounce|s_debounceCnt[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[22]~75_combout\ = (\KEY0_debounce|s_debounceCnt\(22) & ((GND) # (!\KEY0_debounce|s_debounceCnt[21]~74\))) # (!\KEY0_debounce|s_debounceCnt\(22) & (\KEY0_debounce|s_debounceCnt[21]~74\ $ (GND)))
-- \KEY0_debounce|s_debounceCnt[22]~76\ = CARRY((\KEY0_debounce|s_debounceCnt\(22)) # (!\KEY0_debounce|s_debounceCnt[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(22),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[21]~74\,
	combout => \KEY0_debounce|s_debounceCnt[22]~75_combout\,
	cout => \KEY0_debounce|s_debounceCnt[22]~76\);

-- Location: FF_X81_Y31_N15
\KEY0_debounce|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[22]~75_combout\,
	asdata => \KEY0_debounce|s_pulsedOut~q\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(22));

-- Location: LCCOMB_X81_Y31_N16
\KEY0_debounce|s_debounceCnt[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[23]~77_combout\ = (\KEY0_debounce|s_debounceCnt\(23) & (\KEY0_debounce|s_debounceCnt[22]~76\ & VCC)) # (!\KEY0_debounce|s_debounceCnt\(23) & (!\KEY0_debounce|s_debounceCnt[22]~76\))
-- \KEY0_debounce|s_debounceCnt[23]~78\ = CARRY((!\KEY0_debounce|s_debounceCnt\(23) & !\KEY0_debounce|s_debounceCnt[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(23),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[22]~76\,
	combout => \KEY0_debounce|s_debounceCnt[23]~77_combout\,
	cout => \KEY0_debounce|s_debounceCnt[23]~78\);

-- Location: FF_X81_Y31_N17
\KEY0_debounce|s_debounceCnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[23]~77_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(23));

-- Location: LCCOMB_X80_Y31_N26
\KEY0_debounce|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|Equal0~6_combout\ = (!\KEY0_debounce|s_debounceCnt\(22) & (!\KEY0_debounce|s_debounceCnt\(21) & (!\KEY0_debounce|s_debounceCnt\(20) & !\KEY0_debounce|s_debounceCnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(22),
	datab => \KEY0_debounce|s_debounceCnt\(21),
	datac => \KEY0_debounce|s_debounceCnt\(20),
	datad => \KEY0_debounce|s_debounceCnt\(23),
	combout => \KEY0_debounce|Equal0~6_combout\);

-- Location: LCCOMB_X80_Y31_N24
\KEY0_debounce|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|Equal0~5_combout\ = (!\KEY0_debounce|s_debounceCnt\(18) & (!\KEY0_debounce|s_debounceCnt\(19) & (!\KEY0_debounce|s_debounceCnt\(16) & !\KEY0_debounce|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(18),
	datab => \KEY0_debounce|s_debounceCnt\(19),
	datac => \KEY0_debounce|s_debounceCnt\(16),
	datad => \KEY0_debounce|s_debounceCnt\(17),
	combout => \KEY0_debounce|Equal0~5_combout\);

-- Location: LCCOMB_X81_Y31_N18
\KEY0_debounce|s_debounceCnt[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[24]~79_combout\ = (\KEY0_debounce|s_debounceCnt\(24) & ((GND) # (!\KEY0_debounce|s_debounceCnt[23]~78\))) # (!\KEY0_debounce|s_debounceCnt\(24) & (\KEY0_debounce|s_debounceCnt[23]~78\ $ (GND)))
-- \KEY0_debounce|s_debounceCnt[24]~80\ = CARRY((\KEY0_debounce|s_debounceCnt\(24)) # (!\KEY0_debounce|s_debounceCnt[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(24),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[23]~78\,
	combout => \KEY0_debounce|s_debounceCnt[24]~79_combout\,
	cout => \KEY0_debounce|s_debounceCnt[24]~80\);

-- Location: FF_X81_Y31_N19
\KEY0_debounce|s_debounceCnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[24]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(24));

-- Location: LCCOMB_X81_Y31_N20
\KEY0_debounce|s_debounceCnt[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[25]~81_combout\ = (\KEY0_debounce|s_debounceCnt\(25) & (\KEY0_debounce|s_debounceCnt[24]~80\ & VCC)) # (!\KEY0_debounce|s_debounceCnt\(25) & (!\KEY0_debounce|s_debounceCnt[24]~80\))
-- \KEY0_debounce|s_debounceCnt[25]~82\ = CARRY((!\KEY0_debounce|s_debounceCnt\(25) & !\KEY0_debounce|s_debounceCnt[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(25),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[24]~80\,
	combout => \KEY0_debounce|s_debounceCnt[25]~81_combout\,
	cout => \KEY0_debounce|s_debounceCnt[25]~82\);

-- Location: FF_X81_Y31_N21
\KEY0_debounce|s_debounceCnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[25]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(25));

-- Location: LCCOMB_X81_Y31_N22
\KEY0_debounce|s_debounceCnt[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[26]~83_combout\ = (\KEY0_debounce|s_debounceCnt\(26) & ((GND) # (!\KEY0_debounce|s_debounceCnt[25]~82\))) # (!\KEY0_debounce|s_debounceCnt\(26) & (\KEY0_debounce|s_debounceCnt[25]~82\ $ (GND)))
-- \KEY0_debounce|s_debounceCnt[26]~84\ = CARRY((\KEY0_debounce|s_debounceCnt\(26)) # (!\KEY0_debounce|s_debounceCnt[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(26),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[25]~82\,
	combout => \KEY0_debounce|s_debounceCnt[26]~83_combout\,
	cout => \KEY0_debounce|s_debounceCnt[26]~84\);

-- Location: FF_X81_Y31_N23
\KEY0_debounce|s_debounceCnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[26]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(26));

-- Location: LCCOMB_X81_Y31_N24
\KEY0_debounce|s_debounceCnt[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[27]~85_combout\ = (\KEY0_debounce|s_debounceCnt\(27) & (\KEY0_debounce|s_debounceCnt[26]~84\ & VCC)) # (!\KEY0_debounce|s_debounceCnt\(27) & (!\KEY0_debounce|s_debounceCnt[26]~84\))
-- \KEY0_debounce|s_debounceCnt[27]~86\ = CARRY((!\KEY0_debounce|s_debounceCnt\(27) & !\KEY0_debounce|s_debounceCnt[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(27),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[26]~84\,
	combout => \KEY0_debounce|s_debounceCnt[27]~85_combout\,
	cout => \KEY0_debounce|s_debounceCnt[27]~86\);

-- Location: FF_X81_Y31_N25
\KEY0_debounce|s_debounceCnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[27]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(27));

-- Location: LCCOMB_X81_Y31_N26
\KEY0_debounce|s_debounceCnt[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[28]~87_combout\ = (\KEY0_debounce|s_debounceCnt\(28) & ((GND) # (!\KEY0_debounce|s_debounceCnt[27]~86\))) # (!\KEY0_debounce|s_debounceCnt\(28) & (\KEY0_debounce|s_debounceCnt[27]~86\ $ (GND)))
-- \KEY0_debounce|s_debounceCnt[28]~88\ = CARRY((\KEY0_debounce|s_debounceCnt\(28)) # (!\KEY0_debounce|s_debounceCnt[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(28),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[27]~86\,
	combout => \KEY0_debounce|s_debounceCnt[28]~87_combout\,
	cout => \KEY0_debounce|s_debounceCnt[28]~88\);

-- Location: FF_X81_Y31_N27
\KEY0_debounce|s_debounceCnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[28]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(28));

-- Location: LCCOMB_X81_Y31_N28
\KEY0_debounce|s_debounceCnt[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[29]~89_combout\ = (\KEY0_debounce|s_debounceCnt\(29) & (\KEY0_debounce|s_debounceCnt[28]~88\ & VCC)) # (!\KEY0_debounce|s_debounceCnt\(29) & (!\KEY0_debounce|s_debounceCnt[28]~88\))
-- \KEY0_debounce|s_debounceCnt[29]~90\ = CARRY((!\KEY0_debounce|s_debounceCnt\(29) & !\KEY0_debounce|s_debounceCnt[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY0_debounce|s_debounceCnt\(29),
	datad => VCC,
	cin => \KEY0_debounce|s_debounceCnt[28]~88\,
	combout => \KEY0_debounce|s_debounceCnt[29]~89_combout\,
	cout => \KEY0_debounce|s_debounceCnt[29]~90\);

-- Location: FF_X81_Y31_N29
\KEY0_debounce|s_debounceCnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[29]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(29));

-- Location: LCCOMB_X81_Y31_N30
\KEY0_debounce|s_debounceCnt[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_debounceCnt[30]~91_combout\ = \KEY0_debounce|s_debounceCnt\(30) $ (\KEY0_debounce|s_debounceCnt[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(30),
	cin => \KEY0_debounce|s_debounceCnt[29]~90\,
	combout => \KEY0_debounce|s_debounceCnt[30]~91_combout\);

-- Location: FF_X81_Y31_N31
\KEY0_debounce|s_debounceCnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_debounceCnt[30]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	sload => \KEY0_debounce|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_debounceCnt\(30));

-- Location: LCCOMB_X80_Y31_N28
\KEY0_debounce|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|Equal0~7_combout\ = (!\KEY0_debounce|s_debounceCnt\(26) & (!\KEY0_debounce|s_debounceCnt\(27) & (!\KEY0_debounce|s_debounceCnt\(25) & !\KEY0_debounce|s_debounceCnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(26),
	datab => \KEY0_debounce|s_debounceCnt\(27),
	datac => \KEY0_debounce|s_debounceCnt\(25),
	datad => \KEY0_debounce|s_debounceCnt\(24),
	combout => \KEY0_debounce|Equal0~7_combout\);

-- Location: LCCOMB_X80_Y31_N14
\KEY0_debounce|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|Equal0~8_combout\ = (!\KEY0_debounce|s_debounceCnt\(30) & (!\KEY0_debounce|s_debounceCnt\(29) & (!\KEY0_debounce|s_debounceCnt\(28) & \KEY0_debounce|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(30),
	datab => \KEY0_debounce|s_debounceCnt\(29),
	datac => \KEY0_debounce|s_debounceCnt\(28),
	datad => \KEY0_debounce|Equal0~7_combout\,
	combout => \KEY0_debounce|Equal0~8_combout\);

-- Location: LCCOMB_X80_Y31_N12
\KEY0_debounce|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|Equal0~3_combout\ = (!\KEY0_debounce|s_debounceCnt\(14) & (!\KEY0_debounce|s_debounceCnt\(12) & (!\KEY0_debounce|s_debounceCnt\(15) & !\KEY0_debounce|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(14),
	datab => \KEY0_debounce|s_debounceCnt\(12),
	datac => \KEY0_debounce|s_debounceCnt\(15),
	datad => \KEY0_debounce|s_debounceCnt\(13),
	combout => \KEY0_debounce|Equal0~3_combout\);

-- Location: LCCOMB_X81_Y32_N0
\KEY0_debounce|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|Equal0~0_combout\ = (!\KEY0_debounce|s_debounceCnt\(2) & (!\KEY0_debounce|s_debounceCnt\(3) & (!\KEY0_debounce|s_debounceCnt\(1) & !\KEY0_debounce|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(2),
	datab => \KEY0_debounce|s_debounceCnt\(3),
	datac => \KEY0_debounce|s_debounceCnt\(1),
	datad => \KEY0_debounce|s_debounceCnt\(0),
	combout => \KEY0_debounce|Equal0~0_combout\);

-- Location: LCCOMB_X80_Y31_N22
\KEY0_debounce|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|Equal0~2_combout\ = (!\KEY0_debounce|s_debounceCnt\(9) & (!\KEY0_debounce|s_debounceCnt\(8) & (!\KEY0_debounce|s_debounceCnt\(10) & !\KEY0_debounce|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(9),
	datab => \KEY0_debounce|s_debounceCnt\(8),
	datac => \KEY0_debounce|s_debounceCnt\(10),
	datad => \KEY0_debounce|s_debounceCnt\(11),
	combout => \KEY0_debounce|Equal0~2_combout\);

-- Location: LCCOMB_X80_Y31_N20
\KEY0_debounce|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|Equal0~1_combout\ = (!\KEY0_debounce|s_debounceCnt\(5) & (!\KEY0_debounce|s_debounceCnt\(4) & (!\KEY0_debounce|s_debounceCnt\(6) & !\KEY0_debounce|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_debounceCnt\(5),
	datab => \KEY0_debounce|s_debounceCnt\(4),
	datac => \KEY0_debounce|s_debounceCnt\(6),
	datad => \KEY0_debounce|s_debounceCnt\(7),
	combout => \KEY0_debounce|Equal0~1_combout\);

-- Location: LCCOMB_X80_Y31_N2
\KEY0_debounce|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|Equal0~4_combout\ = (\KEY0_debounce|Equal0~3_combout\ & (\KEY0_debounce|Equal0~0_combout\ & (\KEY0_debounce|Equal0~2_combout\ & \KEY0_debounce|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|Equal0~3_combout\,
	datab => \KEY0_debounce|Equal0~0_combout\,
	datac => \KEY0_debounce|Equal0~2_combout\,
	datad => \KEY0_debounce|Equal0~1_combout\,
	combout => \KEY0_debounce|Equal0~4_combout\);

-- Location: LCCOMB_X80_Y31_N0
\KEY0_debounce|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|Equal0~9_combout\ = (\KEY0_debounce|Equal0~6_combout\ & (\KEY0_debounce|Equal0~5_combout\ & (\KEY0_debounce|Equal0~8_combout\ & \KEY0_debounce|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|Equal0~6_combout\,
	datab => \KEY0_debounce|Equal0~5_combout\,
	datac => \KEY0_debounce|Equal0~8_combout\,
	datad => \KEY0_debounce|Equal0~4_combout\,
	combout => \KEY0_debounce|Equal0~9_combout\);

-- Location: LCCOMB_X82_Y30_N0
\KEY0_debounce|s_resetPulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|s_resetPulse~0_combout\ = (\KEY0_debounce|s_pulsedOut~q\) # (!\KEY0_debounce|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_pulsedOut~q\,
	datad => \KEY0_debounce|Equal0~9_combout\,
	combout => \KEY0_debounce|s_resetPulse~0_combout\);

-- Location: FF_X82_Y30_N1
\KEY0_debounce|s_resetPulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \KEY0_debounce|s_resetPulse~0_combout\,
	clrn => \ALT_INV_SW[17]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_resetPulse~q\);

-- Location: LCCOMB_X82_Y30_N14
\KEY0_debounce|out_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \KEY0_debounce|out_proc~0_combout\ = (\SW[17]~input_o\) # (\KEY0_debounce|s_resetPulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \KEY0_debounce|s_resetPulse~q\,
	combout => \KEY0_debounce|out_proc~0_combout\);

-- Location: FF_X82_Y30_N7
\KEY0_debounce|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY0_debounce|ALT_INV_s_dirtyIn~q\,
	d => \KEY0_debounce|s_pulsedOut~feeder_combout\,
	clrn => \KEY0_debounce|ALT_INV_out_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY0_debounce|s_pulsedOut~q\);

-- Location: LCCOMB_X81_Y30_N4
\auxiliaryMachine_vinte|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_vinte|Selector0~0_combout\ = (\KEY0_debounce|s_pulsedOut~q\) # (\auxiliaryMachine_vinte|s_currentState.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_pulsedOut~q\,
	datad => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	combout => \auxiliaryMachine_vinte|Selector0~0_combout\);

-- Location: FF_X81_Y30_N19
\auxiliaryMachine_vinte|s_currentState.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auxiliaryMachine_vinte|Selector0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxiliaryMachine_vinte|s_currentState.E0~q\);

-- Location: LCCOMB_X81_Y30_N18
\auxiliaryMachine_vinte|s_nextState.E1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auxiliaryMachine_vinte|s_nextState.E1~0_combout\ = (\KEY0_debounce|s_pulsedOut~q\ & !\auxiliaryMachine_vinte|s_currentState.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0_debounce|s_pulsedOut~q\,
	datac => \auxiliaryMachine_vinte|s_currentState.E0~q\,
	combout => \auxiliaryMachine_vinte|s_nextState.E1~0_combout\);

-- Location: FF_X81_Y30_N11
\auxiliaryMachine_vinte|s_currentState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auxiliaryMachine_vinte|s_nextState.E1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auxiliaryMachine_vinte|s_currentState.E1~q\);

-- Location: LCCOMB_X79_Y29_N4
\FSM_agua|s_currentState.E0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_agua|s_currentState.E0~1_combout\ = (!\FSM_agua|s_currentState.E0~0_combout\ & ((\FSM_Chocolate|comb_proc~2_combout\) # ((\FSM_agua|s_currentState.E0~q\) # (\auxiliaryMachine_vinte|s_currentState.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Chocolate|comb_proc~2_combout\,
	datab => \FSM_agua|s_currentState.E0~0_combout\,
	datac => \FSM_agua|s_currentState.E0~q\,
	datad => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	combout => \FSM_agua|s_currentState.E0~1_combout\);

-- Location: LCCOMB_X80_Y29_N26
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\system_core|product\(0) & \system_core|product\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|product\(0),
	datad => \system_core|product\(1),
	combout => \Equal1~1_combout\);

-- Location: FF_X79_Y29_N5
\FSM_agua|s_currentState.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM_agua|s_currentState.E0~1_combout\,
	ena => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_agua|s_currentState.E0~q\);

-- Location: LCCOMB_X79_Y29_N28
\FSM_agua|s_currentState.E1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_agua|s_currentState.E1~0_combout\ = (\auxiliaryMachine_vinte|s_currentState.E1~q\ & (((!\FSM_agua|s_currentState.E0~q\)))) # (!\auxiliaryMachine_vinte|s_currentState.E1~q\ & (\FSM_agua|s_currentState.E1~q\ & ((!\FSM_Chocolate|comb_proc~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_agua|s_currentState.E1~q\,
	datab => \FSM_agua|s_currentState.E0~q\,
	datac => \FSM_Chocolate|comb_proc~2_combout\,
	datad => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	combout => \FSM_agua|s_currentState.E1~0_combout\);

-- Location: LCCOMB_X79_Y29_N22
\FSM_agua|s_currentState.E1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_agua|s_currentState.E1~1_combout\ = (\FSM_agua|s_currentState.E1~0_combout\ & ((\FSM_agua|s_currentState.E3~q\) # (!\auxiliaryMachine_reset|s_currentState.E1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_agua|s_currentState.E3~q\,
	datac => \auxiliaryMachine_reset|s_currentState.E1~q\,
	datad => \FSM_agua|s_currentState.E1~0_combout\,
	combout => \FSM_agua|s_currentState.E1~1_combout\);

-- Location: FF_X79_Y29_N23
\FSM_agua|s_currentState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM_agua|s_currentState.E1~1_combout\,
	ena => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_agua|s_currentState.E1~q\);

-- Location: LCCOMB_X81_Y30_N20
\FSM_Chocolate|comb_proc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|comb_proc~3_combout\ = (!\auxiliaryMachine_vinte|s_currentState.E1~q\ & (!\auxiliaryMachine_um|s_currentState.E1~q\ & (!\auxiliaryMachine_dois|s_currentState.E1~q\ & !\auxiliaryMachine_cinquenta|s_currentState.E1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	datab => \auxiliaryMachine_um|s_currentState.E1~q\,
	datac => \auxiliaryMachine_dois|s_currentState.E1~q\,
	datad => \auxiliaryMachine_cinquenta|s_currentState.E1~q\,
	combout => \FSM_Chocolate|comb_proc~3_combout\);

-- Location: LCCOMB_X79_Y29_N24
\FSM_agua|s_currentState.E2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_agua|s_currentState.E2~0_combout\ = (\FSM_agua|s_currentState.E1~q\ & ((\auxiliaryMachine_vinte|s_currentState.E1~q\) # ((\FSM_Chocolate|comb_proc~3_combout\ & \FSM_agua|s_currentState.E2~q\)))) # (!\FSM_agua|s_currentState.E1~q\ & 
-- (((\FSM_Chocolate|comb_proc~3_combout\ & \FSM_agua|s_currentState.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_agua|s_currentState.E1~q\,
	datab => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	datac => \FSM_Chocolate|comb_proc~3_combout\,
	datad => \FSM_agua|s_currentState.E2~q\,
	combout => \FSM_agua|s_currentState.E2~0_combout\);

-- Location: LCCOMB_X79_Y29_N12
\FSM_agua|s_currentState.E2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_agua|s_currentState.E2~1_combout\ = (\FSM_agua|s_currentState.E2~0_combout\ & ((\FSM_agua|s_currentState.E3~q\) # (!\auxiliaryMachine_reset|s_currentState.E1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_agua|s_currentState.E3~q\,
	datac => \auxiliaryMachine_reset|s_currentState.E1~q\,
	datad => \FSM_agua|s_currentState.E2~0_combout\,
	combout => \FSM_agua|s_currentState.E2~1_combout\);

-- Location: FF_X79_Y29_N13
\FSM_agua|s_currentState.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM_agua|s_currentState.E2~1_combout\,
	ena => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_agua|s_currentState.E2~q\);

-- Location: LCCOMB_X79_Y29_N26
\FSM_agua|product~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_agua|product~1_combout\ = (\auxiliaryMachine_push|s_currentState.E1~q\) # (!\FSM_agua|s_currentState.E3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_agua|s_currentState.E3~q\,
	datad => \auxiliaryMachine_push|s_currentState.E1~q\,
	combout => \FSM_agua|product~1_combout\);

-- Location: LCCOMB_X79_Y29_N10
\FSM_agua|s_currentState~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_agua|s_currentState~6_combout\ = (\FSM_Chocolate|comb_proc~2_combout\ & (!\auxiliaryMachine_vinte|s_currentState.E1~q\ & ((\FSM_agua|s_currentState.E1~q\) # (!\FSM_agua|s_currentState.E0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_agua|s_currentState.E1~q\,
	datab => \FSM_agua|s_currentState.E0~q\,
	datac => \FSM_Chocolate|comb_proc~2_combout\,
	datad => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	combout => \FSM_agua|s_currentState~6_combout\);

-- Location: LCCOMB_X79_Y29_N6
\FSM_agua|s_currentState~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_agua|s_currentState~7_combout\ = ((\FSM_agua|s_currentState~6_combout\) # ((\FSM_agua|s_currentState.E2~q\ & !\FSM_Chocolate|comb_proc~3_combout\))) # (!\FSM_agua|product~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_agua|s_currentState.E2~q\,
	datab => \FSM_agua|product~1_combout\,
	datac => \FSM_Chocolate|comb_proc~3_combout\,
	datad => \FSM_agua|s_currentState~6_combout\,
	combout => \FSM_agua|s_currentState~7_combout\);

-- Location: LCCOMB_X79_Y29_N0
\FSM_agua|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_agua|s_currentState~8_combout\ = (\FSM_agua|s_currentState~7_combout\ & ((\FSM_agua|s_currentState.E3~q\) # (!\auxiliaryMachine_reset|s_currentState.E1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_reset|s_currentState.E1~q\,
	datac => \FSM_agua|s_currentState.E3~q\,
	datad => \FSM_agua|s_currentState~7_combout\,
	combout => \FSM_agua|s_currentState~8_combout\);

-- Location: FF_X79_Y29_N1
\FSM_agua|s_currentState.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM_agua|s_currentState~8_combout\,
	ena => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_agua|s_currentState.E3~q\);

-- Location: LCCOMB_X79_Y30_N10
\FSM_Bolachas|s_currentState.E0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Bolachas|s_currentState.E0~0_combout\ = (\FSM_Bolachas|s_currentState.E3~q\ & (\auxiliaryMachine_push|s_currentState.E1~q\)) # (!\FSM_Bolachas|s_currentState.E3~q\ & ((\auxiliaryMachine_reset|s_currentState.E1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Bolachas|s_currentState.E3~q\,
	datab => \auxiliaryMachine_push|s_currentState.E1~q\,
	datac => \auxiliaryMachine_reset|s_currentState.E1~q\,
	combout => \FSM_Bolachas|s_currentState.E0~0_combout\);

-- Location: LCCOMB_X79_Y30_N6
\FSM_Bolachas|s_currentState.E0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Bolachas|s_currentState.E0~1_combout\ = (!\FSM_Bolachas|s_currentState.E0~0_combout\ & ((\FSM_Bolachas|s_currentState.E0~q\) # (!\FSM_Chocolate|comb_proc~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Bolachas|s_currentState.E0~0_combout\,
	datac => \FSM_Bolachas|s_currentState.E0~q\,
	datad => \FSM_Chocolate|comb_proc~3_combout\,
	combout => \FSM_Bolachas|s_currentState.E0~1_combout\);

-- Location: LCCOMB_X79_Y29_N20
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\system_core|product\(0) & \system_core|product\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|product\(0),
	datac => \system_core|product\(1),
	combout => \Equal1~2_combout\);

-- Location: FF_X79_Y30_N7
\FSM_Bolachas|s_currentState.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM_Bolachas|s_currentState.E0~1_combout\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_Bolachas|s_currentState.E0~q\);

-- Location: LCCOMB_X79_Y29_N2
\FSM_Bolachas|s_currentState.E1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Bolachas|s_currentState.E1~2_combout\ = (\auxiliaryMachine_vinte|s_currentState.E1~q\ & (!\FSM_Bolachas|s_currentState.E0~q\)) # (!\auxiliaryMachine_vinte|s_currentState.E1~q\ & (((\FSM_Bolachas|s_currentState.E1~q\ & 
-- !\FSM_Chocolate|comb_proc~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Bolachas|s_currentState.E0~q\,
	datab => \FSM_Bolachas|s_currentState.E1~q\,
	datac => \FSM_Chocolate|comb_proc~2_combout\,
	datad => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	combout => \FSM_Bolachas|s_currentState.E1~2_combout\);

-- Location: LCCOMB_X79_Y29_N16
\FSM_Bolachas|s_currentState.E1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Bolachas|s_currentState.E1~3_combout\ = (\FSM_Bolachas|s_currentState.E1~2_combout\ & ((\FSM_Bolachas|s_currentState.E3~q\) # (!\auxiliaryMachine_reset|s_currentState.E1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_reset|s_currentState.E1~q\,
	datab => \FSM_Bolachas|s_currentState.E1~2_combout\,
	datac => \FSM_Bolachas|s_currentState.E3~q\,
	combout => \FSM_Bolachas|s_currentState.E1~3_combout\);

-- Location: FF_X79_Y29_N17
\FSM_Bolachas|s_currentState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM_Bolachas|s_currentState.E1~3_combout\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_Bolachas|s_currentState.E1~q\);

-- Location: LCCOMB_X79_Y29_N8
\FSM_Bolachas|product~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Bolachas|product~1_combout\ = (\auxiliaryMachine_push|s_currentState.E1~q\) # (!\FSM_Bolachas|s_currentState.E3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM_Bolachas|s_currentState.E3~q\,
	datad => \auxiliaryMachine_push|s_currentState.E1~q\,
	combout => \FSM_Bolachas|product~1_combout\);

-- Location: LCCOMB_X79_Y29_N30
\FSM_Bolachas|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Bolachas|s_currentState~9_combout\ = ((\FSM_Chocolate|comb_proc~2_combout\ & (\FSM_Bolachas|s_currentState.E1~q\ & !\auxiliaryMachine_vinte|s_currentState.E1~q\))) # (!\FSM_Bolachas|product~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Chocolate|comb_proc~2_combout\,
	datab => \FSM_Bolachas|s_currentState.E1~q\,
	datac => \FSM_Bolachas|product~1_combout\,
	datad => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	combout => \FSM_Bolachas|s_currentState~9_combout\);

-- Location: LCCOMB_X79_Y30_N26
\FSM_Bolachas|sync_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Bolachas|sync_proc~0_combout\ = (!\FSM_Bolachas|s_currentState.E3~q\ & \auxiliaryMachine_reset|s_currentState.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Bolachas|s_currentState.E3~q\,
	datac => \auxiliaryMachine_reset|s_currentState.E1~q\,
	combout => \FSM_Bolachas|sync_proc~0_combout\);

-- Location: LCCOMB_X79_Y30_N0
\FSM_Bolachas|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Bolachas|s_currentState~10_combout\ = (\auxiliaryMachine_vinte|s_currentState.E1~q\ & (((\FSM_Bolachas|s_currentState.E1~q\)))) # (!\auxiliaryMachine_vinte|s_currentState.E1~q\ & (!\FSM_Bolachas|s_currentState.E0~q\ & 
-- ((\auxiliaryMachine_cinquenta|s_currentState.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Bolachas|s_currentState.E0~q\,
	datab => \FSM_Bolachas|s_currentState.E1~q\,
	datac => \auxiliaryMachine_cinquenta|s_currentState.E1~q\,
	datad => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	combout => \FSM_Bolachas|s_currentState~10_combout\);

-- Location: LCCOMB_X79_Y30_N8
\FSM_Bolachas|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Bolachas|s_currentState~11_combout\ = (!\FSM_Bolachas|sync_proc~0_combout\ & ((\FSM_Bolachas|s_currentState~10_combout\) # ((\FSM_Chocolate|comb_proc~3_combout\ & \FSM_Bolachas|s_currentState.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Bolachas|sync_proc~0_combout\,
	datab => \FSM_Chocolate|comb_proc~3_combout\,
	datac => \FSM_Bolachas|s_currentState.E2~q\,
	datad => \FSM_Bolachas|s_currentState~10_combout\,
	combout => \FSM_Bolachas|s_currentState~11_combout\);

-- Location: FF_X79_Y30_N9
\FSM_Bolachas|s_currentState.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM_Bolachas|s_currentState~11_combout\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_Bolachas|s_currentState.E2~q\);

-- Location: LCCOMB_X81_Y30_N8
\FSM_Chocolate|comb_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|comb_proc~0_combout\ = (!\auxiliaryMachine_vinte|s_currentState.E1~q\ & !\auxiliaryMachine_cinquenta|s_currentState.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	datad => \auxiliaryMachine_cinquenta|s_currentState.E1~q\,
	combout => \FSM_Chocolate|comb_proc~0_combout\);

-- Location: LCCOMB_X81_Y30_N22
\FSM_Chocolate|comb_proc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|comb_proc~1_combout\ = (!\auxiliaryMachine_dois|s_currentState.E1~q\ & !\auxiliaryMachine_um|s_currentState.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auxiliaryMachine_dois|s_currentState.E1~q\,
	datad => \auxiliaryMachine_um|s_currentState.E1~q\,
	combout => \FSM_Chocolate|comb_proc~1_combout\);

-- Location: LCCOMB_X79_Y30_N16
\FSM_Bolachas|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Bolachas|s_currentState~8_combout\ = (\FSM_Chocolate|comb_proc~0_combout\ & (!\FSM_Chocolate|comb_proc~1_combout\ & ((\FSM_Bolachas|s_currentState.E2~q\) # (!\FSM_Bolachas|s_currentState.E0~q\)))) # (!\FSM_Chocolate|comb_proc~0_combout\ & 
-- (((\FSM_Bolachas|s_currentState.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Bolachas|s_currentState.E0~q\,
	datab => \FSM_Bolachas|s_currentState.E2~q\,
	datac => \FSM_Chocolate|comb_proc~0_combout\,
	datad => \FSM_Chocolate|comb_proc~1_combout\,
	combout => \FSM_Bolachas|s_currentState~8_combout\);

-- Location: LCCOMB_X79_Y30_N22
\FSM_Bolachas|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Bolachas|s_currentState~12_combout\ = (\FSM_Bolachas|s_currentState~9_combout\ & (((\FSM_Bolachas|s_currentState.E3~q\)) # (!\auxiliaryMachine_reset|s_currentState.E1~q\))) # (!\FSM_Bolachas|s_currentState~9_combout\ & 
-- (\FSM_Bolachas|s_currentState~8_combout\ & ((\FSM_Bolachas|s_currentState.E3~q\) # (!\auxiliaryMachine_reset|s_currentState.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Bolachas|s_currentState~9_combout\,
	datab => \auxiliaryMachine_reset|s_currentState.E1~q\,
	datac => \FSM_Bolachas|s_currentState.E3~q\,
	datad => \FSM_Bolachas|s_currentState~8_combout\,
	combout => \FSM_Bolachas|s_currentState~12_combout\);

-- Location: FF_X79_Y30_N23
\FSM_Bolachas|s_currentState.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM_Bolachas|s_currentState~12_combout\,
	ena => \Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_Bolachas|s_currentState.E3~q\);

-- Location: LCCOMB_X79_Y30_N24
\FSM_Chocolate|s_currentState.E0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState.E0~0_combout\ = (\FSM_Chocolate|s_currentState.E5~q\ & (\auxiliaryMachine_push|s_currentState.E1~q\)) # (!\FSM_Chocolate|s_currentState.E5~q\ & ((\auxiliaryMachine_reset|s_currentState.E1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auxiliaryMachine_push|s_currentState.E1~q\,
	datac => \auxiliaryMachine_reset|s_currentState.E1~q\,
	datad => \FSM_Chocolate|s_currentState.E5~q\,
	combout => \FSM_Chocolate|s_currentState.E0~0_combout\);

-- Location: LCCOMB_X80_Y30_N24
\FSM_Chocolate|s_currentState.E0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState.E0~1_combout\ = (!\FSM_Chocolate|s_currentState.E0~0_combout\ & ((\FSM_Chocolate|s_currentState.E0~q\) # (!\FSM_Chocolate|comb_proc~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_Chocolate|comb_proc~3_combout\,
	datac => \FSM_Chocolate|s_currentState.E0~q\,
	datad => \FSM_Chocolate|s_currentState.E0~0_combout\,
	combout => \FSM_Chocolate|s_currentState.E0~1_combout\);

-- Location: LCCOMB_X80_Y30_N26
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\system_core|product\(1) & \system_core|product\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|product\(1),
	datad => \system_core|product\(0),
	combout => \Equal1~0_combout\);

-- Location: FF_X80_Y30_N25
\FSM_Chocolate|s_currentState.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM_Chocolate|s_currentState.E0~1_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_Chocolate|s_currentState.E0~q\);

-- Location: LCCOMB_X83_Y30_N28
\FSM_Chocolate|s_currentState.E6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState.E6~2_combout\ = (\auxiliaryMachine_cinquenta|s_currentState.E1~q\ & (((\FSM_Chocolate|s_currentState.E6~q\ & !\FSM_Chocolate|comb_proc~2_combout\)) # (!\FSM_Chocolate|s_currentState.E0~q\))) # 
-- (!\auxiliaryMachine_cinquenta|s_currentState.E1~q\ & (\FSM_Chocolate|s_currentState.E6~q\ & ((!\FSM_Chocolate|comb_proc~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_cinquenta|s_currentState.E1~q\,
	datab => \FSM_Chocolate|s_currentState.E6~q\,
	datac => \FSM_Chocolate|s_currentState.E0~q\,
	datad => \FSM_Chocolate|comb_proc~2_combout\,
	combout => \FSM_Chocolate|s_currentState.E6~2_combout\);

-- Location: LCCOMB_X83_Y30_N0
\FSM_Chocolate|s_currentState.E6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState.E6~3_combout\ = (!\auxiliaryMachine_vinte|s_currentState.E1~q\ & (\FSM_Chocolate|s_currentState.E6~2_combout\ & ((\FSM_Chocolate|s_currentState.E5~q\) # (!\auxiliaryMachine_reset|s_currentState.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	datab => \FSM_Chocolate|s_currentState.E5~q\,
	datac => \auxiliaryMachine_reset|s_currentState.E1~q\,
	datad => \FSM_Chocolate|s_currentState.E6~2_combout\,
	combout => \FSM_Chocolate|s_currentState.E6~3_combout\);

-- Location: FF_X83_Y30_N1
\FSM_Chocolate|s_currentState.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM_Chocolate|s_currentState.E6~3_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_Chocolate|s_currentState.E6~q\);

-- Location: LCCOMB_X83_Y30_N24
\FSM_Chocolate|sync_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|sync_proc~0_combout\ = (\auxiliaryMachine_reset|s_currentState.E1~q\ & !\FSM_Chocolate|s_currentState.E5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auxiliaryMachine_reset|s_currentState.E1~q\,
	datad => \FSM_Chocolate|s_currentState.E5~q\,
	combout => \FSM_Chocolate|sync_proc~0_combout\);

-- Location: LCCOMB_X83_Y30_N12
\FSM_Chocolate|s_currentState.E1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState.E1~0_combout\ = (!\FSM_Chocolate|s_currentState.E0~q\ & \auxiliaryMachine_vinte|s_currentState.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM_Chocolate|s_currentState.E0~q\,
	datad => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	combout => \FSM_Chocolate|s_currentState.E1~0_combout\);

-- Location: LCCOMB_X83_Y30_N4
\FSM_Chocolate|s_currentState.E1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState.E1~1_combout\ = (!\FSM_Chocolate|sync_proc~0_combout\ & ((\FSM_Chocolate|s_currentState.E1~0_combout\) # ((\FSM_Chocolate|comb_proc~3_combout\ & \FSM_Chocolate|s_currentState.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Chocolate|s_currentState.E1~0_combout\,
	datab => \FSM_Chocolate|comb_proc~3_combout\,
	datac => \FSM_Chocolate|s_currentState.E1~q\,
	datad => \FSM_Chocolate|sync_proc~0_combout\,
	combout => \FSM_Chocolate|s_currentState.E1~1_combout\);

-- Location: FF_X83_Y30_N5
\FSM_Chocolate|s_currentState.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM_Chocolate|s_currentState.E1~1_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_Chocolate|s_currentState.E1~q\);

-- Location: LCCOMB_X82_Y30_N16
\FSM_Chocolate|s_currentState.E2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState.E2~0_combout\ = (\auxiliaryMachine_vinte|s_currentState.E1~q\ & \FSM_Chocolate|s_currentState.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	datad => \FSM_Chocolate|s_currentState.E1~q\,
	combout => \FSM_Chocolate|s_currentState.E2~0_combout\);

-- Location: LCCOMB_X83_Y30_N8
\FSM_Chocolate|s_currentState.E2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState.E2~1_combout\ = (!\FSM_Chocolate|sync_proc~0_combout\ & ((\FSM_Chocolate|s_currentState.E2~0_combout\) # ((\FSM_Chocolate|comb_proc~3_combout\ & \FSM_Chocolate|s_currentState.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Chocolate|s_currentState.E2~0_combout\,
	datab => \FSM_Chocolate|comb_proc~3_combout\,
	datac => \FSM_Chocolate|s_currentState.E2~q\,
	datad => \FSM_Chocolate|sync_proc~0_combout\,
	combout => \FSM_Chocolate|s_currentState.E2~1_combout\);

-- Location: FF_X83_Y30_N9
\FSM_Chocolate|s_currentState.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM_Chocolate|s_currentState.E2~1_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_Chocolate|s_currentState.E2~q\);

-- Location: LCCOMB_X83_Y30_N26
\FSM_Chocolate|s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState~16_combout\ = (\auxiliaryMachine_vinte|s_currentState.E1~q\ & ((\FSM_Chocolate|s_currentState.E2~q\) # (\FSM_Chocolate|s_currentState.E6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	datac => \FSM_Chocolate|s_currentState.E2~q\,
	datad => \FSM_Chocolate|s_currentState.E6~q\,
	combout => \FSM_Chocolate|s_currentState~16_combout\);

-- Location: LCCOMB_X83_Y30_N2
\FSM_Chocolate|s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState~17_combout\ = (\auxiliaryMachine_cinquenta|s_currentState.E1~q\ & ((\FSM_Chocolate|s_currentState.E1~q\) # ((\FSM_Chocolate|s_currentState.E3~q\ & !\FSM_Chocolate|comb_proc~2_combout\)))) # 
-- (!\auxiliaryMachine_cinquenta|s_currentState.E1~q\ & (((\FSM_Chocolate|s_currentState.E3~q\ & !\FSM_Chocolate|comb_proc~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_cinquenta|s_currentState.E1~q\,
	datab => \FSM_Chocolate|s_currentState.E1~q\,
	datac => \FSM_Chocolate|s_currentState.E3~q\,
	datad => \FSM_Chocolate|comb_proc~2_combout\,
	combout => \FSM_Chocolate|s_currentState~17_combout\);

-- Location: LCCOMB_X83_Y30_N30
\FSM_Chocolate|s_currentState~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState~18_combout\ = (!\FSM_Chocolate|sync_proc~0_combout\ & ((\FSM_Chocolate|s_currentState~16_combout\) # ((!\auxiliaryMachine_vinte|s_currentState.E1~q\ & \FSM_Chocolate|s_currentState~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	datab => \FSM_Chocolate|sync_proc~0_combout\,
	datac => \FSM_Chocolate|s_currentState~16_combout\,
	datad => \FSM_Chocolate|s_currentState~17_combout\,
	combout => \FSM_Chocolate|s_currentState~18_combout\);

-- Location: FF_X83_Y30_N31
\FSM_Chocolate|s_currentState.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM_Chocolate|s_currentState~18_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_Chocolate|s_currentState.E3~q\);

-- Location: LCCOMB_X83_Y30_N10
\FSM_Chocolate|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState~12_combout\ = (!\auxiliaryMachine_vinte|s_currentState.E1~q\ & (\FSM_Chocolate|comb_proc~2_combout\ & ((\FSM_Chocolate|s_currentState.E6~q\) # (\FSM_Chocolate|s_currentState.E3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	datab => \FSM_Chocolate|s_currentState.E6~q\,
	datac => \FSM_Chocolate|s_currentState.E3~q\,
	datad => \FSM_Chocolate|comb_proc~2_combout\,
	combout => \FSM_Chocolate|s_currentState~12_combout\);

-- Location: LCCOMB_X83_Y30_N6
\FSM_Chocolate|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState~14_combout\ = (\auxiliaryMachine_vinte|s_currentState.E1~q\ & (((\FSM_Chocolate|s_currentState.E3~q\)))) # (!\auxiliaryMachine_vinte|s_currentState.E1~q\ & (\auxiliaryMachine_cinquenta|s_currentState.E1~q\ & 
-- (\FSM_Chocolate|s_currentState.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_cinquenta|s_currentState.E1~q\,
	datab => \FSM_Chocolate|s_currentState.E2~q\,
	datac => \FSM_Chocolate|s_currentState.E3~q\,
	datad => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	combout => \FSM_Chocolate|s_currentState~14_combout\);

-- Location: LCCOMB_X83_Y30_N14
\FSM_Chocolate|s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState~15_combout\ = (!\FSM_Chocolate|sync_proc~0_combout\ & ((\FSM_Chocolate|s_currentState~14_combout\) # ((\FSM_Chocolate|s_currentState.E4~q\ & \FSM_Chocolate|comb_proc~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Chocolate|s_currentState~14_combout\,
	datab => \FSM_Chocolate|sync_proc~0_combout\,
	datac => \FSM_Chocolate|s_currentState.E4~q\,
	datad => \FSM_Chocolate|comb_proc~3_combout\,
	combout => \FSM_Chocolate|s_currentState~15_combout\);

-- Location: FF_X83_Y30_N15
\FSM_Chocolate|s_currentState.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM_Chocolate|s_currentState~15_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_Chocolate|s_currentState.E4~q\);

-- Location: LCCOMB_X83_Y30_N20
\FSM_Chocolate|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState~9_combout\ = ((\FSM_Chocolate|s_currentState.E1~q\) # (\FSM_Chocolate|s_currentState.E2~q\)) # (!\FSM_Chocolate|s_currentState.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Chocolate|s_currentState.E0~q\,
	datab => \FSM_Chocolate|s_currentState.E1~q\,
	datad => \FSM_Chocolate|s_currentState.E2~q\,
	combout => \FSM_Chocolate|s_currentState~9_combout\);

-- Location: LCCOMB_X83_Y30_N22
\FSM_Chocolate|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState~10_combout\ = (\FSM_Chocolate|comb_proc~0_combout\ & (!\FSM_Chocolate|comb_proc~1_combout\ & ((\FSM_Chocolate|s_currentState.E4~q\) # (\FSM_Chocolate|s_currentState~9_combout\)))) # (!\FSM_Chocolate|comb_proc~0_combout\ & 
-- (((\FSM_Chocolate|s_currentState.E4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Chocolate|comb_proc~0_combout\,
	datab => \FSM_Chocolate|comb_proc~1_combout\,
	datac => \FSM_Chocolate|s_currentState.E4~q\,
	datad => \FSM_Chocolate|s_currentState~9_combout\,
	combout => \FSM_Chocolate|s_currentState~10_combout\);

-- Location: LCCOMB_X83_Y30_N16
\FSM_Chocolate|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState~11_combout\ = (\FSM_Chocolate|s_currentState.E5~q\ & !\auxiliaryMachine_push|s_currentState.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_Chocolate|s_currentState.E5~q\,
	datad => \auxiliaryMachine_push|s_currentState.E1~q\,
	combout => \FSM_Chocolate|s_currentState~11_combout\);

-- Location: LCCOMB_X83_Y30_N18
\FSM_Chocolate|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FSM_Chocolate|s_currentState~13_combout\ = (!\FSM_Chocolate|sync_proc~0_combout\ & ((\FSM_Chocolate|s_currentState~12_combout\) # ((\FSM_Chocolate|s_currentState~10_combout\) # (\FSM_Chocolate|s_currentState~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM_Chocolate|s_currentState~12_combout\,
	datab => \FSM_Chocolate|sync_proc~0_combout\,
	datac => \FSM_Chocolate|s_currentState~10_combout\,
	datad => \FSM_Chocolate|s_currentState~11_combout\,
	combout => \FSM_Chocolate|s_currentState~13_combout\);

-- Location: FF_X83_Y30_N19
\FSM_Chocolate|s_currentState.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FSM_Chocolate|s_currentState~13_combout\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM_Chocolate|s_currentState.E5~q\);

-- Location: LCCOMB_X79_Y30_N20
\system_core|moneyOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|moneyOut~0_combout\ = (\FSM_agua|s_currentState.E3~q\) # ((\FSM_Bolachas|s_currentState.E3~q\) # (\FSM_Chocolate|s_currentState.E5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM_agua|s_currentState.E3~q\,
	datac => \FSM_Bolachas|s_currentState.E3~q\,
	datad => \FSM_Chocolate|s_currentState.E5~q\,
	combout => \system_core|moneyOut~0_combout\);

-- Location: LCCOMB_X79_Y30_N12
\system_core|moneyOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|moneyOut~1_combout\ = (\system_core|moneyOut~0_combout\ & (((\auxiliaryMachine_push|s_currentState.E1~q\)))) # (!\system_core|moneyOut~0_combout\ & (\system_core|s_resetAux~q\ & ((!\SW[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_resetAux~q\,
	datab => \auxiliaryMachine_push|s_currentState.E1~q\,
	datac => \SW[17]~input_o\,
	datad => \system_core|moneyOut~0_combout\,
	combout => \system_core|moneyOut~1_combout\);

-- Location: LCCOMB_X79_Y29_N14
\system_core|s_money~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money~8_combout\ = (!\auxiliaryMachine_vinte|s_currentState.E1~q\ & (\auxiliaryMachine_cinquenta|s_currentState.E1~q\ & !\system_core|moneyOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	datac => \auxiliaryMachine_cinquenta|s_currentState.E1~q\,
	datad => \system_core|moneyOut~0_combout\,
	combout => \system_core|s_money~8_combout\);

-- Location: LCCOMB_X81_Y29_N10
\system_core|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|Add1~0_combout\ = \system_core|s_money\(0) $ (VCC)
-- \system_core|Add1~1\ = CARRY(\system_core|s_money\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_money\(0),
	datad => VCC,
	combout => \system_core|Add1~0_combout\,
	cout => \system_core|Add1~1\);

-- Location: LCCOMB_X80_Y29_N30
\system_core|s_money~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money~9_combout\ = (!\system_core|moneyOut~1_combout\ & ((\system_core|s_money~8_combout\ & (\system_core|Add1~0_combout\)) # (!\system_core|s_money~8_combout\ & ((\system_core|s_money\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money~8_combout\,
	datab => \system_core|Add1~0_combout\,
	datac => \system_core|s_money\(0),
	datad => \system_core|moneyOut~1_combout\,
	combout => \system_core|s_money~9_combout\);

-- Location: FF_X80_Y29_N31
\system_core|s_money[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_money~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_money\(0));

-- Location: LCCOMB_X81_Y29_N12
\system_core|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|Add1~2_combout\ = (\system_core|s_money\(1) & (!\system_core|Add1~1\)) # (!\system_core|s_money\(1) & ((\system_core|Add1~1\) # (GND)))
-- \system_core|Add1~3\ = CARRY((!\system_core|Add1~1\) # (!\system_core|s_money\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_money\(1),
	datad => VCC,
	cin => \system_core|Add1~1\,
	combout => \system_core|Add1~2_combout\,
	cout => \system_core|Add1~3\);

-- Location: LCCOMB_X81_Y29_N24
\system_core|s_money~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money~10_combout\ = (\auxiliaryMachine_cinquenta|s_currentState.E1~q\ & (((\system_core|Add1~2_combout\)))) # (!\auxiliaryMachine_cinquenta|s_currentState.E1~q\ & (\system_core|s_money\(1) $ ((\auxiliaryMachine_um|s_currentState.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_cinquenta|s_currentState.E1~q\,
	datab => \system_core|s_money\(1),
	datac => \auxiliaryMachine_um|s_currentState.E1~q\,
	datad => \system_core|Add1~2_combout\,
	combout => \system_core|s_money~10_combout\);

-- Location: LCCOMB_X81_Y29_N6
\system_core|s_money~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money~11_combout\ = (\system_core|moneyOut~0_combout\ & (\system_core|s_money\(1))) # (!\system_core|moneyOut~0_combout\ & ((\auxiliaryMachine_vinte|s_currentState.E1~q\ & (!\system_core|s_money\(1))) # 
-- (!\auxiliaryMachine_vinte|s_currentState.E1~q\ & ((\system_core|s_money~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|moneyOut~0_combout\,
	datab => \system_core|s_money\(1),
	datac => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	datad => \system_core|s_money~10_combout\,
	combout => \system_core|s_money~11_combout\);

-- Location: LCCOMB_X80_Y29_N24
\system_core|s_money~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money~12_combout\ = (!\system_core|moneyOut~1_combout\ & \system_core|s_money~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|moneyOut~1_combout\,
	datad => \system_core|s_money~11_combout\,
	combout => \system_core|s_money~12_combout\);

-- Location: FF_X80_Y29_N25
\system_core|s_money[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_money~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_money\(1));

-- Location: LCCOMB_X81_Y30_N30
\system_core|s_money[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money[4]~13_combout\ = (\auxiliaryMachine_vinte|s_currentState.E1~q\) # ((\auxiliaryMachine_um|s_currentState.E1~q\ & !\auxiliaryMachine_cinquenta|s_currentState.E1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	datab => \auxiliaryMachine_um|s_currentState.E1~q\,
	datad => \auxiliaryMachine_cinquenta|s_currentState.E1~q\,
	combout => \system_core|s_money[4]~13_combout\);

-- Location: LCCOMB_X81_Y29_N14
\system_core|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|Add1~4_combout\ = (\system_core|s_money\(2) & ((GND) # (!\system_core|Add1~3\))) # (!\system_core|s_money\(2) & (\system_core|Add1~3\ $ (GND)))
-- \system_core|Add1~5\ = CARRY((\system_core|s_money\(2)) # (!\system_core|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_money\(2),
	datad => VCC,
	cin => \system_core|Add1~3\,
	combout => \system_core|Add1~4_combout\,
	cout => \system_core|Add1~5\);

-- Location: LCCOMB_X81_Y29_N0
\system_core|s_money~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money~14_combout\ = (!\system_core|s_money[4]~13_combout\ & ((\FSM_Chocolate|comb_proc~0_combout\ & ((!\system_core|s_money\(2)))) # (!\FSM_Chocolate|comb_proc~0_combout\ & (\system_core|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money[4]~13_combout\,
	datab => \FSM_Chocolate|comb_proc~0_combout\,
	datac => \system_core|Add1~4_combout\,
	datad => \system_core|s_money\(2),
	combout => \system_core|s_money~14_combout\);

-- Location: LCCOMB_X80_Y29_N6
\system_core|s_money~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money~15_combout\ = (!\system_core|moneyOut~1_combout\ & ((\system_core|s_money~14_combout\) # ((\system_core|Add0~0_combout\ & \system_core|s_money[4]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|Add0~0_combout\,
	datab => \system_core|s_money[4]~13_combout\,
	datac => \system_core|s_money~14_combout\,
	datad => \system_core|moneyOut~1_combout\,
	combout => \system_core|s_money~15_combout\);

-- Location: LCCOMB_X79_Y30_N14
\system_core|s_money[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money[4]~16_combout\ = (\system_core|moneyOut~1_combout\) # ((!\system_core|moneyOut~0_combout\ & !\FSM_Chocolate|comb_proc~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|moneyOut~0_combout\,
	datac => \FSM_Chocolate|comb_proc~3_combout\,
	datad => \system_core|moneyOut~1_combout\,
	combout => \system_core|s_money[4]~16_combout\);

-- Location: FF_X80_Y29_N7
\system_core|s_money[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_money~15_combout\,
	ena => \system_core|s_money[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_money\(2));

-- Location: LCCOMB_X81_Y28_N28
\system_core|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|Add0~0_combout\ = \system_core|s_money\(1) $ (\system_core|s_money\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|s_money\(1),
	datad => \system_core|s_money\(2),
	combout => \system_core|Add0~0_combout\);

-- Location: LCCOMB_X81_Y29_N28
\system_core|s_money~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money~21_combout\ = \system_core|s_money\(3) $ (((\system_core|s_money[4]~13_combout\ & ((!\system_core|s_money\(1)) # (!\system_core|s_money\(2)))) # (!\system_core|s_money[4]~13_combout\ & (\system_core|s_money\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money[4]~13_combout\,
	datab => \system_core|s_money\(3),
	datac => \system_core|s_money\(2),
	datad => \system_core|s_money\(1),
	combout => \system_core|s_money~21_combout\);

-- Location: LCCOMB_X81_Y29_N16
\system_core|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|Add1~6_combout\ = (\system_core|s_money\(3) & (!\system_core|Add1~5\)) # (!\system_core|s_money\(3) & ((\system_core|Add1~5\) # (GND)))
-- \system_core|Add1~7\ = CARRY((!\system_core|Add1~5\) # (!\system_core|s_money\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_money\(3),
	datad => VCC,
	cin => \system_core|Add1~5\,
	combout => \system_core|Add1~6_combout\,
	cout => \system_core|Add1~7\);

-- Location: LCCOMB_X81_Y29_N26
\system_core|s_money~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money~17_combout\ = (\FSM_Chocolate|comb_proc~0_combout\ & (((\system_core|s_money~21_combout\)))) # (!\FSM_Chocolate|comb_proc~0_combout\ & ((\system_core|s_money[4]~13_combout\ & (!\system_core|s_money~21_combout\)) # 
-- (!\system_core|s_money[4]~13_combout\ & ((\system_core|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money[4]~13_combout\,
	datab => \FSM_Chocolate|comb_proc~0_combout\,
	datac => \system_core|s_money~21_combout\,
	datad => \system_core|Add1~6_combout\,
	combout => \system_core|s_money~17_combout\);

-- Location: LCCOMB_X80_Y29_N28
\system_core|s_money~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money~18_combout\ = (!\system_core|moneyOut~1_combout\ & \system_core|s_money~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|moneyOut~1_combout\,
	datad => \system_core|s_money~17_combout\,
	combout => \system_core|s_money~18_combout\);

-- Location: FF_X80_Y29_N29
\system_core|s_money[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_money~18_combout\,
	ena => \system_core|s_money[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_money\(3));

-- Location: LCCOMB_X81_Y29_N20
\system_core|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|Add2~0_combout\ = \system_core|s_money\(4) $ (((\system_core|s_money\(3)) # ((\system_core|s_money\(2) & \system_core|s_money\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(4),
	datab => \system_core|s_money\(3),
	datac => \system_core|s_money\(2),
	datad => \system_core|s_money\(1),
	combout => \system_core|Add2~0_combout\);

-- Location: LCCOMB_X81_Y29_N22
\system_core|s_money~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money~22_combout\ = \system_core|s_money\(4) $ (((\system_core|s_money\(3) & (\system_core|s_money\(2) & \system_core|s_money\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(4),
	datab => \system_core|s_money\(3),
	datac => \system_core|s_money\(2),
	datad => \system_core|s_money\(1),
	combout => \system_core|s_money~22_combout\);

-- Location: LCCOMB_X81_Y29_N4
\system_core|s_money~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money~23_combout\ = (\auxiliaryMachine_vinte|s_currentState.E1~q\ & (((\system_core|s_money~22_combout\)))) # (!\auxiliaryMachine_vinte|s_currentState.E1~q\ & ((\auxiliaryMachine_cinquenta|s_currentState.E1~q\ & 
-- ((\system_core|s_money~22_combout\))) # (!\auxiliaryMachine_cinquenta|s_currentState.E1~q\ & (\system_core|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|Add2~0_combout\,
	datab => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	datac => \system_core|s_money~22_combout\,
	datad => \auxiliaryMachine_cinquenta|s_currentState.E1~q\,
	combout => \system_core|s_money~23_combout\);

-- Location: LCCOMB_X81_Y29_N8
\system_core|s_money~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money~19_combout\ = \system_core|s_money\(4) $ (((!\system_core|s_money\(2)) # (!\system_core|s_money\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_money\(3),
	datac => \system_core|s_money\(2),
	datad => \system_core|s_money\(4),
	combout => \system_core|s_money~19_combout\);

-- Location: LCCOMB_X81_Y29_N18
\system_core|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|Add1~8_combout\ = \system_core|Add1~7\ $ (!\system_core|s_money\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \system_core|s_money\(4),
	cin => \system_core|Add1~7\,
	combout => \system_core|Add1~8_combout\);

-- Location: LCCOMB_X81_Y29_N30
\system_core|s_money~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money~24_combout\ = (\auxiliaryMachine_cinquenta|s_currentState.E1~q\ & (((\system_core|Add1~8_combout\)))) # (!\auxiliaryMachine_cinquenta|s_currentState.E1~q\ & ((\auxiliaryMachine_vinte|s_currentState.E1~q\ & 
-- ((\system_core|Add1~8_combout\))) # (!\auxiliaryMachine_vinte|s_currentState.E1~q\ & (\system_core|s_money~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_cinquenta|s_currentState.E1~q\,
	datab => \auxiliaryMachine_vinte|s_currentState.E1~q\,
	datac => \system_core|s_money~19_combout\,
	datad => \system_core|Add1~8_combout\,
	combout => \system_core|s_money~24_combout\);

-- Location: LCCOMB_X80_Y29_N10
\system_core|s_money~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|s_money~20_combout\ = (!\system_core|moneyOut~1_combout\ & ((\system_core|s_money[4]~13_combout\ & (\system_core|s_money~23_combout\)) # (!\system_core|s_money[4]~13_combout\ & ((\system_core|s_money~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money~23_combout\,
	datab => \system_core|s_money[4]~13_combout\,
	datac => \system_core|s_money~24_combout\,
	datad => \system_core|moneyOut~1_combout\,
	combout => \system_core|s_money~20_combout\);

-- Location: FF_X80_Y29_N11
\system_core|s_money[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_core|s_money~20_combout\,
	ena => \system_core|s_money[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|s_money\(4));

-- Location: LCCOMB_X80_Y29_N4
\changeMachine|change_process~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|change_process~1_combout\ = (!\system_core|s_money\(3) & !\system_core|s_money\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_money\(3),
	datad => \system_core|s_money\(4),
	combout => \changeMachine|change_process~1_combout\);

-- Location: LCCOMB_X81_Y28_N30
\changeMachine|s_change~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change~7_combout\ = (\system_core|s_money\(2)) # ((!\system_core|s_money\(1) & (!\system_core|s_money\(0) & \changeMachine|change_process~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(1),
	datab => \system_core|s_money\(2),
	datac => \system_core|s_money\(0),
	datad => \changeMachine|change_process~1_combout\,
	combout => \changeMachine|s_change~7_combout\);

-- Location: LCCOMB_X80_Y29_N20
\changeMachine|change_process~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|change_process~0_combout\ = (\system_core|s_money\(2) & ((\system_core|s_money\(1)) # (\system_core|s_money\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_money\(1),
	datac => \system_core|s_money\(0),
	datad => \system_core|s_money\(2),
	combout => \changeMachine|change_process~0_combout\);

-- Location: LCCOMB_X80_Y29_N2
\changeMachine|change_process~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|change_process~2_combout\ = (\system_core|product\(1) & (!\system_core|product\(0) & ((\changeMachine|change_process~0_combout\) # (!\changeMachine|change_process~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|product\(1),
	datab => \system_core|product\(0),
	datac => \changeMachine|change_process~1_combout\,
	datad => \changeMachine|change_process~0_combout\,
	combout => \changeMachine|change_process~2_combout\);

-- Location: LCCOMB_X80_Y29_N22
\changeMachine|change_process~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|change_process~3_combout\ = (\system_core|s_money\(4)) # ((\system_core|s_money\(3) & ((\system_core|s_money\(2)) # (\system_core|s_money\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(4),
	datab => \system_core|s_money\(3),
	datac => \system_core|s_money\(2),
	datad => \system_core|s_money\(1),
	combout => \changeMachine|change_process~3_combout\);

-- Location: LCCOMB_X80_Y29_N16
\changeMachine|change_process~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|change_process~4_combout\ = (\system_core|product\(0) & (\changeMachine|change_process~3_combout\ & !\system_core|product\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|product\(0),
	datac => \changeMachine|change_process~3_combout\,
	datad => \system_core|product\(1),
	combout => \changeMachine|change_process~4_combout\);

-- Location: LCCOMB_X80_Y29_N8
\bin7_money|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux5~0_combout\ = (\system_core|s_money\(1) & \system_core|s_money\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_money\(1),
	datad => \system_core|s_money\(2),
	combout => \bin7_money|Mux5~0_combout\);

-- Location: LCCOMB_X80_Y29_N18
\changeMachine|change_process~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|change_process~5_combout\ = (\system_core|product\(0) & (\system_core|product\(1) & ((\bin7_money|Mux5~0_combout\) # (!\changeMachine|change_process~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|change_process~1_combout\,
	datab => \system_core|product\(0),
	datac => \bin7_money|Mux5~0_combout\,
	datad => \system_core|product\(1),
	combout => \changeMachine|change_process~5_combout\);

-- Location: LCCOMB_X80_Y29_N14
\changeMachine|s_change[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change[3]~8_combout\ = (!\changeMachine|change_process~2_combout\ & (!\changeMachine|change_process~4_combout\ & ((\auxiliaryMachine_reset|s_currentState.E1~q\) # (\changeMachine|change_process~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|change_process~2_combout\,
	datab => \auxiliaryMachine_reset|s_currentState.E1~q\,
	datac => \changeMachine|change_process~4_combout\,
	datad => \changeMachine|change_process~5_combout\,
	combout => \changeMachine|s_change[3]~8_combout\);

-- Location: LCCOMB_X81_Y27_N8
\changeMachine|s_change[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change[3]~16_combout\ = (\changeMachine|change_process~2_combout\) # ((!\system_core|product\(1) & (\system_core|product\(0) & \changeMachine|change_process~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|product\(1),
	datab => \system_core|product\(0),
	datac => \changeMachine|change_process~3_combout\,
	datad => \changeMachine|change_process~2_combout\,
	combout => \changeMachine|s_change[3]~16_combout\);

-- Location: LCCOMB_X81_Y27_N10
\changeMachine|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|Add1~0_combout\ = \system_core|s_money\(0) $ (VCC)
-- \changeMachine|Add1~1\ = CARRY(\system_core|s_money\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(0),
	datad => VCC,
	combout => \changeMachine|Add1~0_combout\,
	cout => \changeMachine|Add1~1\);

-- Location: LCCOMB_X81_Y27_N12
\changeMachine|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|Add1~2_combout\ = (\system_core|s_money\(1) & (\changeMachine|Add1~1\ & VCC)) # (!\system_core|s_money\(1) & (!\changeMachine|Add1~1\))
-- \changeMachine|Add1~3\ = CARRY((!\system_core|s_money\(1) & !\changeMachine|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(1),
	datad => VCC,
	cin => \changeMachine|Add1~1\,
	combout => \changeMachine|Add1~2_combout\,
	cout => \changeMachine|Add1~3\);

-- Location: LCCOMB_X81_Y27_N14
\changeMachine|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|Add1~4_combout\ = (\system_core|s_money\(2) & (\changeMachine|Add1~3\ $ (GND))) # (!\system_core|s_money\(2) & (!\changeMachine|Add1~3\ & VCC))
-- \changeMachine|Add1~5\ = CARRY((\system_core|s_money\(2) & !\changeMachine|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(2),
	datad => VCC,
	cin => \changeMachine|Add1~3\,
	combout => \changeMachine|Add1~4_combout\,
	cout => \changeMachine|Add1~5\);

-- Location: LCCOMB_X81_Y27_N6
\changeMachine|s_change[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change[3]~9_combout\ = (\changeMachine|change_process~4_combout\) # ((\changeMachine|change_process~5_combout\ & !\changeMachine|change_process~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \changeMachine|change_process~4_combout\,
	datac => \changeMachine|change_process~5_combout\,
	datad => \changeMachine|change_process~2_combout\,
	combout => \changeMachine|s_change[3]~9_combout\);

-- Location: LCCOMB_X81_Y27_N28
\changeMachine|s_change~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change~10_combout\ = (\changeMachine|s_change[3]~16_combout\ & ((\changeMachine|s_change[3]~9_combout\ & (!\system_core|Add0~0_combout\)) # (!\changeMachine|s_change[3]~9_combout\ & ((\changeMachine|Add1~4_combout\))))) # 
-- (!\changeMachine|s_change[3]~16_combout\ & (((!\changeMachine|s_change[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|Add0~0_combout\,
	datab => \changeMachine|s_change[3]~16_combout\,
	datac => \changeMachine|Add1~4_combout\,
	datad => \changeMachine|s_change[3]~9_combout\,
	combout => \changeMachine|s_change~10_combout\);

-- Location: LCCOMB_X80_Y27_N18
\changeMachine|s_change~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change~11_combout\ = (\changeMachine|s_change[3]~8_combout\ & ((\changeMachine|s_change~10_combout\ & ((\changeMachine|s_change~7_combout\))) # (!\changeMachine|s_change~10_combout\ & (\system_core|Add0~0_combout\)))) # 
-- (!\changeMachine|s_change[3]~8_combout\ & (((\changeMachine|s_change~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|Add0~0_combout\,
	datab => \changeMachine|s_change~7_combout\,
	datac => \changeMachine|s_change[3]~8_combout\,
	datad => \changeMachine|s_change~10_combout\,
	combout => \changeMachine|s_change~11_combout\);

-- Location: LCCOMB_X80_Y29_N12
\changeMachine|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|Equal3~0_combout\ = (\system_core|s_money\(0)) # ((\system_core|s_money\(2)) # ((\system_core|s_money\(1)) # (!\changeMachine|change_process~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(0),
	datab => \system_core|s_money\(2),
	datac => \changeMachine|change_process~1_combout\,
	datad => \system_core|s_money\(1),
	combout => \changeMachine|Equal3~0_combout\);

-- Location: LCCOMB_X80_Y27_N30
\changeMachine|s_change1[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change1[4]~4_combout\ = (!\changeMachine|change_process~5_combout\ & ((\system_core|product\(1)) # ((!\changeMachine|change_process~3_combout\) # (!\system_core|product\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|product\(1),
	datab => \system_core|product\(0),
	datac => \changeMachine|change_process~5_combout\,
	datad => \changeMachine|change_process~3_combout\,
	combout => \changeMachine|s_change1[4]~4_combout\);

-- Location: LCCOMB_X80_Y29_N0
\changeMachine|s_change1[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change1[4]~2_combout\ = (!\auxiliaryMachine_reset|s_currentState.E1~q\ & (((!\changeMachine|change_process~0_combout\ & \changeMachine|change_process~1_combout\)) # (!\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|change_process~0_combout\,
	datab => \changeMachine|change_process~1_combout\,
	datac => \Equal1~1_combout\,
	datad => \auxiliaryMachine_reset|s_currentState.E1~q\,
	combout => \changeMachine|s_change1[4]~2_combout\);

-- Location: LCCOMB_X80_Y27_N24
\changeMachine|s_change1[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change1[4]~3_combout\ = (!\auxiliaryMachine_push|s_currentState.E1~q\ & (((!\changeMachine|s_change1[4]~2_combout\) # (!\changeMachine|s_change1[4]~4_combout\)) # (!\changeMachine|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_push|s_currentState.E1~q\,
	datab => \changeMachine|Equal3~0_combout\,
	datac => \changeMachine|s_change1[4]~4_combout\,
	datad => \changeMachine|s_change1[4]~2_combout\,
	combout => \changeMachine|s_change1[4]~3_combout\);

-- Location: FF_X80_Y27_N19
\changeMachine|s_change1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \changeMachine|s_change~11_combout\,
	ena => \changeMachine|s_change1[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \changeMachine|s_change1\(2));

-- Location: LCCOMB_X81_Y27_N4
\changeMachine|s_change~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change~5_combout\ = (\changeMachine|change_process~2_combout\ & (((\changeMachine|Add1~2_combout\)))) # (!\changeMachine|change_process~2_combout\ & (\auxiliaryMachine_reset|s_currentState.E1~q\ & (\changeMachine|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|change_process~2_combout\,
	datab => \auxiliaryMachine_reset|s_currentState.E1~q\,
	datac => \changeMachine|Equal3~0_combout\,
	datad => \changeMachine|Add1~2_combout\,
	combout => \changeMachine|s_change~5_combout\);

-- Location: LCCOMB_X80_Y27_N16
\changeMachine|s_change~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change~6_combout\ = (\changeMachine|s_change1[4]~4_combout\ & ((\changeMachine|change_process~2_combout\ & ((\changeMachine|s_change~5_combout\))) # (!\changeMachine|change_process~2_combout\ & ((\system_core|s_money\(1)) # 
-- (!\changeMachine|s_change~5_combout\))))) # (!\changeMachine|s_change1[4]~4_combout\ & (!\system_core|s_money\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(1),
	datab => \changeMachine|change_process~2_combout\,
	datac => \changeMachine|s_change1[4]~4_combout\,
	datad => \changeMachine|s_change~5_combout\,
	combout => \changeMachine|s_change~6_combout\);

-- Location: FF_X80_Y27_N17
\changeMachine|s_change1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \changeMachine|s_change~6_combout\,
	ena => \changeMachine|s_change1[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \changeMachine|s_change1\(1));

-- Location: LCCOMB_X80_Y27_N0
\changeMachine|s_change~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change~2_combout\ = (\changeMachine|change_process~2_combout\ & (((\changeMachine|Add1~0_combout\)))) # (!\changeMachine|change_process~2_combout\ & (((!\auxiliaryMachine_reset|s_currentState.E1~q\)) # 
-- (!\changeMachine|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|Equal3~0_combout\,
	datab => \changeMachine|change_process~2_combout\,
	datac => \changeMachine|Add1~0_combout\,
	datad => \auxiliaryMachine_reset|s_currentState.E1~q\,
	combout => \changeMachine|s_change~2_combout\);

-- Location: LCCOMB_X80_Y27_N6
\changeMachine|s_change~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change~3_combout\ = (\changeMachine|s_change1[4]~4_combout\ & ((\changeMachine|s_change~2_combout\) # ((\system_core|s_money\(0) & !\changeMachine|change_process~2_combout\)))) # (!\changeMachine|s_change1[4]~4_combout\ & 
-- (\system_core|s_money\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(0),
	datab => \changeMachine|change_process~2_combout\,
	datac => \changeMachine|s_change1[4]~4_combout\,
	datad => \changeMachine|s_change~2_combout\,
	combout => \changeMachine|s_change~3_combout\);

-- Location: FF_X80_Y27_N7
\changeMachine|s_change1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \changeMachine|s_change~3_combout\,
	ena => \changeMachine|s_change1[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \changeMachine|s_change1\(0));

-- Location: LCCOMB_X79_Y27_N22
\plafon_pro|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|Add0~0_combout\ = (\changeMachine|s_change1\(0) & (\plafon_pro|s_plafon_10\(0) $ (GND))) # (!\changeMachine|s_change1\(0) & ((GND) # (!\plafon_pro|s_plafon_10\(0))))
-- \plafon_pro|Add0~1\ = CARRY((!\plafon_pro|s_plafon_10\(0)) # (!\changeMachine|s_change1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change1\(0),
	datab => \plafon_pro|s_plafon_10\(0),
	datad => VCC,
	combout => \plafon_pro|Add0~0_combout\,
	cout => \plafon_pro|Add0~1\);

-- Location: LCCOMB_X79_Y27_N14
\plafon_pro|s_plafon_10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|s_plafon_10~6_combout\ = (!\auxiliaryMachine_replacement|s_currentState.E1~q\ & ((!\plafon_pro|s_plafon_10~0_combout\) # (!\plafon_pro|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_replacement|s_currentState.E1~q\,
	datac => \plafon_pro|Add0~0_combout\,
	datad => \plafon_pro|s_plafon_10~0_combout\,
	combout => \plafon_pro|s_plafon_10~6_combout\);

-- Location: LCCOMB_X79_Y27_N0
\plafon_pro|s_plafon_10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|s_plafon_10~2_combout\ = (\auxiliaryMachine_replacement|s_currentState.E1~q\) # (\auxiliaryMachine_push|s_currentState.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auxiliaryMachine_replacement|s_currentState.E1~q\,
	datad => \auxiliaryMachine_push|s_currentState.E1~q\,
	combout => \plafon_pro|s_plafon_10~2_combout\);

-- Location: FF_X79_Y27_N15
\plafon_pro|s_plafon_10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \plafon_pro|s_plafon_10~6_combout\,
	ena => \plafon_pro|s_plafon_10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \plafon_pro|s_plafon_10\(0));

-- Location: LCCOMB_X79_Y27_N24
\plafon_pro|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|Add0~2_combout\ = (\plafon_pro|s_plafon_10\(1) & ((\changeMachine|s_change1\(1) & ((\plafon_pro|Add0~1\) # (GND))) # (!\changeMachine|s_change1\(1) & (!\plafon_pro|Add0~1\)))) # (!\plafon_pro|s_plafon_10\(1) & ((\changeMachine|s_change1\(1) & 
-- (!\plafon_pro|Add0~1\)) # (!\changeMachine|s_change1\(1) & (\plafon_pro|Add0~1\ & VCC))))
-- \plafon_pro|Add0~3\ = CARRY((\plafon_pro|s_plafon_10\(1) & ((\changeMachine|s_change1\(1)) # (!\plafon_pro|Add0~1\))) # (!\plafon_pro|s_plafon_10\(1) & (\changeMachine|s_change1\(1) & !\plafon_pro|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \plafon_pro|s_plafon_10\(1),
	datab => \changeMachine|s_change1\(1),
	datad => VCC,
	cin => \plafon_pro|Add0~1\,
	combout => \plafon_pro|Add0~2_combout\,
	cout => \plafon_pro|Add0~3\);

-- Location: LCCOMB_X79_Y27_N12
\plafon_pro|s_plafon_10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|s_plafon_10~5_combout\ = (!\auxiliaryMachine_replacement|s_currentState.E1~q\ & ((!\plafon_pro|s_plafon_10~0_combout\) # (!\plafon_pro|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \plafon_pro|Add0~2_combout\,
	datac => \auxiliaryMachine_replacement|s_currentState.E1~q\,
	datad => \plafon_pro|s_plafon_10~0_combout\,
	combout => \plafon_pro|s_plafon_10~5_combout\);

-- Location: FF_X79_Y27_N13
\plafon_pro|s_plafon_10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \plafon_pro|s_plafon_10~5_combout\,
	ena => \plafon_pro|s_plafon_10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \plafon_pro|s_plafon_10\(1));

-- Location: LCCOMB_X79_Y27_N26
\plafon_pro|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|Add0~4_combout\ = ((\plafon_pro|s_plafon_10\(2) $ (\changeMachine|s_change1\(2) $ (!\plafon_pro|Add0~3\)))) # (GND)
-- \plafon_pro|Add0~5\ = CARRY((\plafon_pro|s_plafon_10\(2) & (!\changeMachine|s_change1\(2) & !\plafon_pro|Add0~3\)) # (!\plafon_pro|s_plafon_10\(2) & ((!\plafon_pro|Add0~3\) # (!\changeMachine|s_change1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \plafon_pro|s_plafon_10\(2),
	datab => \changeMachine|s_change1\(2),
	datad => VCC,
	cin => \plafon_pro|Add0~3\,
	combout => \plafon_pro|Add0~4_combout\,
	cout => \plafon_pro|Add0~5\);

-- Location: LCCOMB_X79_Y27_N18
\plafon_pro|s_plafon_10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|s_plafon_10~4_combout\ = (!\auxiliaryMachine_replacement|s_currentState.E1~q\ & ((!\plafon_pro|s_plafon_10~0_combout\) # (!\plafon_pro|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_replacement|s_currentState.E1~q\,
	datac => \plafon_pro|Add0~4_combout\,
	datad => \plafon_pro|s_plafon_10~0_combout\,
	combout => \plafon_pro|s_plafon_10~4_combout\);

-- Location: FF_X79_Y27_N19
\plafon_pro|s_plafon_10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \plafon_pro|s_plafon_10~4_combout\,
	ena => \plafon_pro|s_plafon_10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \plafon_pro|s_plafon_10\(2));

-- Location: LCCOMB_X79_Y27_N8
\plafon_pro|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|LessThan1~1_combout\ = (\changeMachine|s_change1\(1) & ((\plafon_pro|s_plafon_10\(1)) # ((\changeMachine|s_change1\(0) & \plafon_pro|s_plafon_10\(0))))) # (!\changeMachine|s_change1\(1) & (\changeMachine|s_change1\(0) & 
-- (\plafon_pro|s_plafon_10\(0) & \plafon_pro|s_plafon_10\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change1\(0),
	datab => \changeMachine|s_change1\(1),
	datac => \plafon_pro|s_plafon_10\(0),
	datad => \plafon_pro|s_plafon_10\(1),
	combout => \plafon_pro|LessThan1~1_combout\);

-- Location: LCCOMB_X81_Y27_N26
\changeMachine|s_change~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change~13_combout\ = (\system_core|s_money\(4)) # (!\changeMachine|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \changeMachine|Equal3~0_combout\,
	datad => \system_core|s_money\(4),
	combout => \changeMachine|s_change~13_combout\);

-- Location: LCCOMB_X81_Y27_N20
\changeMachine|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|Add0~1_combout\ = \system_core|s_money\(4) $ (((\system_core|s_money\(3) & ((\system_core|s_money\(2)) # (\system_core|s_money\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(2),
	datab => \system_core|s_money\(3),
	datac => \system_core|s_money\(1),
	datad => \system_core|s_money\(4),
	combout => \changeMachine|Add0~1_combout\);

-- Location: LCCOMB_X81_Y27_N16
\changeMachine|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|Add1~6_combout\ = (\system_core|s_money\(3) & (\changeMachine|Add1~5\ & VCC)) # (!\system_core|s_money\(3) & (!\changeMachine|Add1~5\))
-- \changeMachine|Add1~7\ = CARRY((!\system_core|s_money\(3) & !\changeMachine|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_money\(3),
	datad => VCC,
	cin => \changeMachine|Add1~5\,
	combout => \changeMachine|Add1~6_combout\,
	cout => \changeMachine|Add1~7\);

-- Location: LCCOMB_X81_Y27_N18
\changeMachine|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|Add1~8_combout\ = \changeMachine|Add1~7\ $ (\system_core|s_money\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \system_core|s_money\(4),
	cin => \changeMachine|Add1~7\,
	combout => \changeMachine|Add1~8_combout\);

-- Location: LCCOMB_X81_Y27_N2
\changeMachine|s_change~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change~14_combout\ = (\changeMachine|s_change[3]~9_combout\ & (!\changeMachine|Add0~1_combout\ & (\changeMachine|s_change[3]~16_combout\))) # (!\changeMachine|s_change[3]~9_combout\ & (((\changeMachine|Add1~8_combout\) # 
-- (!\changeMachine|s_change[3]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change[3]~9_combout\,
	datab => \changeMachine|Add0~1_combout\,
	datac => \changeMachine|s_change[3]~16_combout\,
	datad => \changeMachine|Add1~8_combout\,
	combout => \changeMachine|s_change~14_combout\);

-- Location: LCCOMB_X81_Y27_N30
\changeMachine|s_change~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change~15_combout\ = (\changeMachine|s_change[3]~8_combout\ & ((\changeMachine|s_change~14_combout\ & (\changeMachine|s_change~13_combout\)) # (!\changeMachine|s_change~14_combout\ & ((!\system_core|Add2~0_combout\))))) # 
-- (!\changeMachine|s_change[3]~8_combout\ & (((\changeMachine|s_change~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change~13_combout\,
	datab => \system_core|Add2~0_combout\,
	datac => \changeMachine|s_change[3]~8_combout\,
	datad => \changeMachine|s_change~14_combout\,
	combout => \changeMachine|s_change~15_combout\);

-- Location: FF_X81_Y27_N31
\changeMachine|s_change1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \changeMachine|s_change~15_combout\,
	ena => \changeMachine|s_change1[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \changeMachine|s_change1\(4));

-- Location: LCCOMB_X81_Y29_N2
\changeMachine|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|Add0~0_combout\ = \system_core|s_money\(3) $ (((\system_core|s_money\(1)) # (\system_core|s_money\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_money\(1),
	datac => \system_core|s_money\(2),
	datad => \system_core|s_money\(3),
	combout => \changeMachine|Add0~0_combout\);

-- Location: LCCOMB_X81_Y27_N0
\changeMachine|s_change~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change~12_combout\ = (\changeMachine|s_change[3]~16_combout\ & ((\changeMachine|s_change[3]~9_combout\ & (\changeMachine|Add0~0_combout\)) # (!\changeMachine|s_change[3]~9_combout\ & ((\changeMachine|Add1~6_combout\))))) # 
-- (!\changeMachine|s_change[3]~16_combout\ & (((!\changeMachine|s_change[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|Add0~0_combout\,
	datab => \changeMachine|Add1~6_combout\,
	datac => \changeMachine|s_change[3]~16_combout\,
	datad => \changeMachine|s_change[3]~9_combout\,
	combout => \changeMachine|s_change~12_combout\);

-- Location: LCCOMB_X81_Y27_N22
\changeMachine|s_change~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change~17_combout\ = \system_core|s_money\(3) $ (((!\changeMachine|s_change~12_combout\ & ((!\system_core|s_money\(1)) # (!\system_core|s_money\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(2),
	datab => \system_core|s_money\(3),
	datac => \system_core|s_money\(1),
	datad => \changeMachine|s_change~12_combout\,
	combout => \changeMachine|s_change~17_combout\);

-- Location: LCCOMB_X80_Y27_N28
\changeMachine|s_change~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change~18_combout\ = (\changeMachine|s_change[3]~8_combout\ & ((\changeMachine|s_change~17_combout\) # ((!\changeMachine|Equal3~0_combout\ & \changeMachine|s_change~12_combout\)))) # (!\changeMachine|s_change[3]~8_combout\ & 
-- (((\changeMachine|s_change~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|Equal3~0_combout\,
	datab => \changeMachine|s_change~12_combout\,
	datac => \changeMachine|s_change[3]~8_combout\,
	datad => \changeMachine|s_change~17_combout\,
	combout => \changeMachine|s_change~18_combout\);

-- Location: FF_X80_Y27_N29
\changeMachine|s_change1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \changeMachine|s_change~18_combout\,
	ena => \changeMachine|s_change1[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \changeMachine|s_change1\(3));

-- Location: LCCOMB_X79_Y27_N28
\plafon_pro|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|Add0~6_combout\ = (\plafon_pro|s_plafon_10\(3) & ((\changeMachine|s_change1\(3) & ((\plafon_pro|Add0~5\) # (GND))) # (!\changeMachine|s_change1\(3) & (!\plafon_pro|Add0~5\)))) # (!\plafon_pro|s_plafon_10\(3) & ((\changeMachine|s_change1\(3) & 
-- (!\plafon_pro|Add0~5\)) # (!\changeMachine|s_change1\(3) & (\plafon_pro|Add0~5\ & VCC))))
-- \plafon_pro|Add0~7\ = CARRY((\plafon_pro|s_plafon_10\(3) & ((\changeMachine|s_change1\(3)) # (!\plafon_pro|Add0~5\))) # (!\plafon_pro|s_plafon_10\(3) & (\changeMachine|s_change1\(3) & !\plafon_pro|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \plafon_pro|s_plafon_10\(3),
	datab => \changeMachine|s_change1\(3),
	datad => VCC,
	cin => \plafon_pro|Add0~5\,
	combout => \plafon_pro|Add0~6_combout\,
	cout => \plafon_pro|Add0~7\);

-- Location: LCCOMB_X79_Y27_N30
\plafon_pro|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|Add0~8_combout\ = \plafon_pro|s_plafon_10\(4) $ (\plafon_pro|Add0~7\ $ (\changeMachine|s_change1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \plafon_pro|s_plafon_10\(4),
	datad => \changeMachine|s_change1\(4),
	cin => \plafon_pro|Add0~7\,
	combout => \plafon_pro|Add0~8_combout\);

-- Location: LCCOMB_X79_Y27_N4
\plafon_pro|s_plafon_10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|s_plafon_10~1_combout\ = (!\auxiliaryMachine_replacement|s_currentState.E1~q\ & (\plafon_pro|Add0~8_combout\ & \plafon_pro|s_plafon_10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_replacement|s_currentState.E1~q\,
	datac => \plafon_pro|Add0~8_combout\,
	datad => \plafon_pro|s_plafon_10~0_combout\,
	combout => \plafon_pro|s_plafon_10~1_combout\);

-- Location: FF_X79_Y27_N5
\plafon_pro|s_plafon_10[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \plafon_pro|s_plafon_10~1_combout\,
	ena => \plafon_pro|s_plafon_10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \plafon_pro|s_plafon_10\(4));

-- Location: LCCOMB_X79_Y27_N16
\plafon_pro|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|LessThan1~0_combout\ = (\plafon_pro|s_plafon_10\(3) & (!\changeMachine|s_change1\(3) & (\plafon_pro|s_plafon_10\(4) $ (!\changeMachine|s_change1\(4))))) # (!\plafon_pro|s_plafon_10\(3) & (\changeMachine|s_change1\(3) & 
-- (\plafon_pro|s_plafon_10\(4) $ (!\changeMachine|s_change1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plafon_pro|s_plafon_10\(3),
	datab => \plafon_pro|s_plafon_10\(4),
	datac => \changeMachine|s_change1\(3),
	datad => \changeMachine|s_change1\(4),
	combout => \plafon_pro|LessThan1~0_combout\);

-- Location: LCCOMB_X79_Y27_N10
\plafon_pro|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|LessThan1~2_combout\ = (\plafon_pro|LessThan1~0_combout\ & ((\plafon_pro|s_plafon_10\(2) & ((\changeMachine|s_change1\(2)) # (\plafon_pro|LessThan1~1_combout\))) # (!\plafon_pro|s_plafon_10\(2) & (\changeMachine|s_change1\(2) & 
-- \plafon_pro|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plafon_pro|s_plafon_10\(2),
	datab => \changeMachine|s_change1\(2),
	datac => \plafon_pro|LessThan1~1_combout\,
	datad => \plafon_pro|LessThan1~0_combout\,
	combout => \plafon_pro|LessThan1~2_combout\);

-- Location: LCCOMB_X79_Y27_N2
\plafon_pro|s_plafon_10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|s_plafon_10~0_combout\ = (\auxiliaryMachine_push|s_currentState.E1~q\ & (!\plafon_pro|LessThan1~3_combout\ & !\plafon_pro|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auxiliaryMachine_push|s_currentState.E1~q\,
	datac => \plafon_pro|LessThan1~3_combout\,
	datad => \plafon_pro|LessThan1~2_combout\,
	combout => \plafon_pro|s_plafon_10~0_combout\);

-- Location: LCCOMB_X79_Y27_N6
\plafon_pro|s_plafon_10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|s_plafon_10~3_combout\ = (!\auxiliaryMachine_replacement|s_currentState.E1~q\ & ((!\plafon_pro|Add0~6_combout\) # (!\plafon_pro|s_plafon_10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \plafon_pro|s_plafon_10~0_combout\,
	datac => \auxiliaryMachine_replacement|s_currentState.E1~q\,
	datad => \plafon_pro|Add0~6_combout\,
	combout => \plafon_pro|s_plafon_10~3_combout\);

-- Location: FF_X79_Y27_N7
\plafon_pro|s_plafon_10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \plafon_pro|s_plafon_10~3_combout\,
	ena => \plafon_pro|s_plafon_10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \plafon_pro|s_plafon_10\(3));

-- Location: LCCOMB_X79_Y27_N20
\plafon_pro|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|LessThan1~3_combout\ = (\plafon_pro|s_plafon_10\(4) & (\plafon_pro|s_plafon_10\(3) & (\changeMachine|s_change1\(3) & \changeMachine|s_change1\(4)))) # (!\plafon_pro|s_plafon_10\(4) & ((\changeMachine|s_change1\(4)) # 
-- ((\plafon_pro|s_plafon_10\(3) & \changeMachine|s_change1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plafon_pro|s_plafon_10\(3),
	datab => \plafon_pro|s_plafon_10\(4),
	datac => \changeMachine|s_change1\(3),
	datad => \changeMachine|s_change1\(4),
	combout => \plafon_pro|LessThan1~3_combout\);

-- Location: LCCOMB_X82_Y27_N2
\plafon_pro|RunOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|RunOut~0_combout\ = (\auxiliaryMachine_push|s_currentState.E1~q\ & (((\plafon_pro|LessThan1~3_combout\) # (\plafon_pro|LessThan1~2_combout\)))) # (!\auxiliaryMachine_push|s_currentState.E1~q\ & (\plafon_pro|RunOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \plafon_pro|RunOut~q\,
	datab => \plafon_pro|LessThan1~3_combout\,
	datac => \plafon_pro|LessThan1~2_combout\,
	datad => \auxiliaryMachine_push|s_currentState.E1~q\,
	combout => \plafon_pro|RunOut~0_combout\);

-- Location: LCCOMB_X82_Y27_N12
\plafon_pro|RunOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \plafon_pro|RunOut~1_combout\ = (!\auxiliaryMachine_replacement|s_currentState.E1~q\ & \plafon_pro|RunOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auxiliaryMachine_replacement|s_currentState.E1~q\,
	datad => \plafon_pro|RunOut~0_combout\,
	combout => \plafon_pro|RunOut~1_combout\);

-- Location: FF_X82_Y27_N13
\plafon_pro|RunOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \plafon_pro|RunOut~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \plafon_pro|RunOut~q\);

-- Location: LCCOMB_X80_Y22_N20
\bin7_money|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux13~0_combout\ = (\system_core|s_money\(3) & (\system_core|s_money\(1) $ (((!\system_core|s_money\(0) & !\system_core|s_money\(2)))))) # (!\system_core|s_money\(3) & (!\system_core|s_money\(1) & ((\system_core|s_money\(0)) # 
-- (\system_core|s_money\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(3),
	datab => \system_core|s_money\(0),
	datac => \system_core|s_money\(1),
	datad => \system_core|s_money\(2),
	combout => \bin7_money|Mux13~0_combout\);

-- Location: LCCOMB_X80_Y22_N26
\bin7_money|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux13~1_combout\ = (\bin7_money|Mux13~0_combout\ & (\system_core|s_money\(2) $ (\system_core|s_money\(0) $ (\system_core|s_money\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(2),
	datab => \system_core|s_money\(0),
	datac => \system_core|s_money\(4),
	datad => \bin7_money|Mux13~0_combout\,
	combout => \bin7_money|Mux13~1_combout\);

-- Location: LCCOMB_X80_Y23_N12
\bin7_money|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux12~0_combout\ = (\system_core|s_money\(3) & ((\system_core|s_money\(0) & (\system_core|s_money\(1) $ (!\system_core|s_money\(2)))) # (!\system_core|s_money\(0) & (\system_core|s_money\(1) & !\system_core|s_money\(2))))) # 
-- (!\system_core|s_money\(3) & ((\system_core|s_money\(0) & (!\system_core|s_money\(1) & \system_core|s_money\(2))) # (!\system_core|s_money\(0) & (\system_core|s_money\(1) $ (!\system_core|s_money\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(3),
	datab => \system_core|s_money\(0),
	datac => \system_core|s_money\(1),
	datad => \system_core|s_money\(2),
	combout => \bin7_money|Mux12~0_combout\);

-- Location: LCCOMB_X80_Y23_N6
\bin7_money|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux12~1_combout\ = (\bin7_money|Mux12~0_combout\ & ((\system_core|s_money\(4) & ((\system_core|s_money\(3)) # (!\system_core|s_money\(2)))) # (!\system_core|s_money\(4) & ((\system_core|s_money\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(3),
	datab => \system_core|s_money\(4),
	datac => \system_core|s_money\(2),
	datad => \bin7_money|Mux12~0_combout\,
	combout => \bin7_money|Mux12~1_combout\);

-- Location: LCCOMB_X80_Y22_N28
\bin7_money|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux11~0_combout\ = (\system_core|s_money\(3) & (\system_core|s_money\(2) & (\system_core|s_money\(1) $ (!\system_core|s_money\(4))))) # (!\system_core|s_money\(3) & (\system_core|s_money\(1) & (\system_core|s_money\(4) $ 
-- (!\system_core|s_money\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(1),
	datab => \system_core|s_money\(4),
	datac => \system_core|s_money\(3),
	datad => \system_core|s_money\(2),
	combout => \bin7_money|Mux11~0_combout\);

-- Location: LCCOMB_X80_Y22_N2
\bin7_money|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux11~1_combout\ = (\bin7_money|Mux11~0_combout\ & (\system_core|s_money\(0) $ (((!\system_core|s_money\(4)) # (!\system_core|s_money\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(3),
	datab => \system_core|s_money\(0),
	datac => \system_core|s_money\(4),
	datad => \bin7_money|Mux11~0_combout\,
	combout => \bin7_money|Mux11~1_combout\);

-- Location: LCCOMB_X80_Y22_N10
\bin7_money|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux10~1_combout\ = (\system_core|s_money\(1) & (\system_core|s_money\(3) $ (((\system_core|s_money\(4)) # (!\system_core|s_money\(2)))))) # (!\system_core|s_money\(1) & ((\system_core|s_money\(3)) # ((!\system_core|s_money\(4) & 
-- \system_core|s_money\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(1),
	datab => \system_core|s_money\(4),
	datac => \system_core|s_money\(3),
	datad => \system_core|s_money\(2),
	combout => \bin7_money|Mux10~1_combout\);

-- Location: LCCOMB_X80_Y22_N0
\bin7_money|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux10~0_combout\ = (\system_core|s_money\(4) & (!\system_core|s_money\(1) & (\system_core|s_money\(3) & !\system_core|s_money\(2)))) # (!\system_core|s_money\(4) & (\system_core|s_money\(2) & (\system_core|s_money\(1) $ 
-- (!\system_core|s_money\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(1),
	datab => \system_core|s_money\(4),
	datac => \system_core|s_money\(3),
	datad => \system_core|s_money\(2),
	combout => \bin7_money|Mux10~0_combout\);

-- Location: LCCOMB_X80_Y22_N24
\bin7_money|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux10~2_combout\ = (\system_core|s_money\(0) & (!\bin7_money|Mux10~1_combout\)) # (!\system_core|s_money\(0) & ((\bin7_money|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7_money|Mux10~1_combout\,
	datab => \bin7_money|Mux10~0_combout\,
	datad => \system_core|s_money\(0),
	combout => \bin7_money|Mux10~2_combout\);

-- Location: LCCOMB_X80_Y22_N30
\bin7_money|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux9~0_combout\ = (\system_core|s_money\(0)) # (\bin7_money|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|s_money\(0),
	datad => \bin7_money|Mux10~0_combout\,
	combout => \bin7_money|Mux9~0_combout\);

-- Location: LCCOMB_X80_Y23_N22
\bin7_money|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux8~1_combout\ = (\system_core|s_money\(1) & ((\system_core|s_money\(4) & (!\system_core|s_money\(3) & !\system_core|s_money\(2))) # (!\system_core|s_money\(4) & (\system_core|s_money\(3) & \system_core|s_money\(2))))) # 
-- (!\system_core|s_money\(1) & (\system_core|s_money\(3) $ (((!\system_core|s_money\(4) & \system_core|s_money\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(1),
	datab => \system_core|s_money\(4),
	datac => \system_core|s_money\(3),
	datad => \system_core|s_money\(2),
	combout => \bin7_money|Mux8~1_combout\);

-- Location: LCCOMB_X80_Y23_N0
\bin7_money|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux8~0_combout\ = (\system_core|s_money\(1) & (!\system_core|s_money\(3) & (\system_core|s_money\(4) $ (!\system_core|s_money\(2))))) # (!\system_core|s_money\(1) & (!\system_core|s_money\(4) & (\system_core|s_money\(3) & 
-- \system_core|s_money\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(1),
	datab => \system_core|s_money\(4),
	datac => \system_core|s_money\(3),
	datad => \system_core|s_money\(2),
	combout => \bin7_money|Mux8~0_combout\);

-- Location: LCCOMB_X80_Y23_N4
\bin7_money|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux8~2_combout\ = (\system_core|s_money\(0) & (!\bin7_money|Mux8~1_combout\)) # (!\system_core|s_money\(0) & ((\bin7_money|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7_money|Mux8~1_combout\,
	datab => \system_core|s_money\(0),
	datad => \bin7_money|Mux8~0_combout\,
	combout => \bin7_money|Mux8~2_combout\);

-- Location: LCCOMB_X80_Y22_N4
\bin7_money|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux7~0_combout\ = (\system_core|s_money\(1) & ((\system_core|s_money\(4) $ (\system_core|s_money\(2))) # (!\system_core|s_money\(3)))) # (!\system_core|s_money\(1) & ((\system_core|s_money\(3)) # (\system_core|s_money\(4) $ 
-- (\system_core|s_money\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(1),
	datab => \system_core|s_money\(4),
	datac => \system_core|s_money\(3),
	datad => \system_core|s_money\(2),
	combout => \bin7_money|Mux7~0_combout\);

-- Location: LCCOMB_X80_Y22_N18
\bin7_money|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux7~1_combout\ = (\system_core|s_money\(0) & (\bin7_money|Mux10~1_combout\)) # (!\system_core|s_money\(0) & ((\bin7_money|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7_money|Mux10~1_combout\,
	datab => \bin7_money|Mux7~0_combout\,
	datad => \system_core|s_money\(0),
	combout => \bin7_money|Mux7~1_combout\);

-- Location: LCCOMB_X80_Y23_N2
\bin7_money|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux6~0_combout\ = (\system_core|s_money\(2) & (((\system_core|s_money\(1) & \system_core|s_money\(0))) # (!\system_core|s_money\(4)))) # (!\system_core|s_money\(2) & (!\system_core|s_money\(4) & (\system_core|s_money\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(2),
	datab => \system_core|s_money\(4),
	datac => \system_core|s_money\(1),
	datad => \system_core|s_money\(0),
	combout => \bin7_money|Mux6~0_combout\);

-- Location: LCCOMB_X80_Y23_N8
\bin7_money|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux6~1_combout\ = (\system_core|s_money\(3) & (((\bin7_money|Mux6~0_combout\)))) # (!\system_core|s_money\(3) & (\system_core|s_money\(4) & (!\system_core|s_money\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(3),
	datab => \system_core|s_money\(4),
	datac => \system_core|s_money\(2),
	datad => \bin7_money|Mux6~0_combout\,
	combout => \bin7_money|Mux6~1_combout\);

-- Location: LCCOMB_X80_Y23_N30
\bin7_money|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux5~1_combout\ = (\system_core|s_money\(3) & (\system_core|s_money\(0) & (\system_core|s_money\(4) & \bin7_money|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(3),
	datab => \system_core|s_money\(0),
	datac => \system_core|s_money\(4),
	datad => \bin7_money|Mux5~0_combout\,
	combout => \bin7_money|Mux5~1_combout\);

-- Location: LCCOMB_X80_Y22_N12
\bin7_money|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux4~0_combout\ = (\system_core|s_money\(3) & ((\system_core|s_money\(0)) # ((!\system_core|s_money\(2)) # (!\system_core|s_money\(1))))) # (!\system_core|s_money\(3) & (((\system_core|s_money\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(3),
	datab => \system_core|s_money\(0),
	datac => \system_core|s_money\(1),
	datad => \system_core|s_money\(2),
	combout => \bin7_money|Mux4~0_combout\);

-- Location: LCCOMB_X80_Y22_N14
\bin7_money|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux4~1_combout\ = (\system_core|s_money\(4) & \bin7_money|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|s_money\(4),
	datad => \bin7_money|Mux4~0_combout\,
	combout => \bin7_money|Mux4~1_combout\);

-- Location: LCCOMB_X80_Y22_N8
\bin7_money|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux2~0_combout\ = (\system_core|s_money\(4) & ((\system_core|s_money\(3) & (\system_core|s_money\(1) & \system_core|s_money\(2))) # (!\system_core|s_money\(3) & ((!\system_core|s_money\(2)))))) # (!\system_core|s_money\(4) & 
-- (\system_core|s_money\(3) & ((\system_core|s_money\(1)) # (\system_core|s_money\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(1),
	datab => \system_core|s_money\(4),
	datac => \system_core|s_money\(3),
	datad => \system_core|s_money\(2),
	combout => \bin7_money|Mux2~0_combout\);

-- Location: LCCOMB_X80_Y22_N22
\bin7_money|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux1~0_combout\ = (\system_core|s_money\(4)) # ((\system_core|s_money\(3) & ((\system_core|s_money\(1)) # (\system_core|s_money\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(1),
	datab => \system_core|s_money\(4),
	datac => \system_core|s_money\(3),
	datad => \system_core|s_money\(2),
	combout => \bin7_money|Mux1~0_combout\);

-- Location: LCCOMB_X80_Y22_N16
\bin7_money|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux0~0_combout\ = (\system_core|s_money\(3) & (((!\system_core|s_money\(2)) # (!\system_core|s_money\(1))) # (!\system_core|s_money\(0)))) # (!\system_core|s_money\(3) & (((\system_core|s_money\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|s_money\(3),
	datab => \system_core|s_money\(0),
	datac => \system_core|s_money\(1),
	datad => \system_core|s_money\(2),
	combout => \bin7_money|Mux0~0_combout\);

-- Location: LCCOMB_X80_Y22_N6
\bin7_money|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_money|Mux0~1_combout\ = (!\bin7_money|Mux0~0_combout\) # (!\system_core|s_money\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|s_money\(4),
	datad => \bin7_money|Mux0~0_combout\,
	combout => \bin7_money|Mux0~1_combout\);

-- Location: LCCOMB_X80_Y27_N10
\changeMachine|s_change[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change[3]~feeder_combout\ = \changeMachine|s_change~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \changeMachine|s_change~18_combout\,
	combout => \changeMachine|s_change[3]~feeder_combout\);

-- Location: LCCOMB_X80_Y27_N14
\changeMachine|s_change[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change[3]~4_combout\ = (\auxiliaryMachine_push|s_currentState.E1~q\) # (((!\changeMachine|s_change1[4]~2_combout\) # (!\changeMachine|s_change1[4]~4_combout\)) # (!\changeMachine|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auxiliaryMachine_push|s_currentState.E1~q\,
	datab => \changeMachine|Equal3~0_combout\,
	datac => \changeMachine|s_change1[4]~4_combout\,
	datad => \changeMachine|s_change1[4]~2_combout\,
	combout => \changeMachine|s_change[3]~4_combout\);

-- Location: FF_X80_Y27_N11
\changeMachine|s_change[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \changeMachine|s_change[3]~feeder_combout\,
	asdata => VCC,
	sload => \auxiliaryMachine_push|s_currentState.E1~q\,
	ena => \changeMachine|s_change[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \changeMachine|s_change\(3));

-- Location: LCCOMB_X80_Y27_N22
\changeMachine|s_change[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change[1]~feeder_combout\ = \changeMachine|s_change~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \changeMachine|s_change~6_combout\,
	combout => \changeMachine|s_change[1]~feeder_combout\);

-- Location: FF_X80_Y27_N23
\changeMachine|s_change[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \changeMachine|s_change[1]~feeder_combout\,
	asdata => VCC,
	sload => \auxiliaryMachine_push|s_currentState.E1~q\,
	ena => \changeMachine|s_change[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \changeMachine|s_change\(1));

-- Location: LCCOMB_X80_Y27_N4
\changeMachine|s_change[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change[2]~feeder_combout\ = \changeMachine|s_change~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \changeMachine|s_change~11_combout\,
	combout => \changeMachine|s_change[2]~feeder_combout\);

-- Location: FF_X80_Y27_N5
\changeMachine|s_change[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \changeMachine|s_change[2]~feeder_combout\,
	asdata => VCC,
	sload => \auxiliaryMachine_push|s_currentState.E1~q\,
	ena => \changeMachine|s_change[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \changeMachine|s_change\(2));

-- Location: LCCOMB_X80_Y27_N20
\changeMachine|s_change[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change[0]~feeder_combout\ = \changeMachine|s_change~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \changeMachine|s_change~3_combout\,
	combout => \changeMachine|s_change[0]~feeder_combout\);

-- Location: FF_X80_Y27_N21
\changeMachine|s_change[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \changeMachine|s_change[0]~feeder_combout\,
	asdata => VCC,
	sload => \auxiliaryMachine_push|s_currentState.E1~q\,
	ena => \changeMachine|s_change[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \changeMachine|s_change\(0));

-- Location: LCCOMB_X80_Y27_N12
\bin7_change|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux13~0_combout\ = (\changeMachine|s_change\(3) & (\changeMachine|s_change\(1) $ (((!\changeMachine|s_change\(2) & !\changeMachine|s_change\(0)))))) # (!\changeMachine|s_change\(3) & (!\changeMachine|s_change\(1) & 
-- ((\changeMachine|s_change\(2)) # (\changeMachine|s_change\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(3),
	datab => \changeMachine|s_change\(1),
	datac => \changeMachine|s_change\(2),
	datad => \changeMachine|s_change\(0),
	combout => \bin7_change|Mux13~0_combout\);

-- Location: LCCOMB_X81_Y27_N24
\changeMachine|s_change[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \changeMachine|s_change[4]~feeder_combout\ = \changeMachine|s_change~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \changeMachine|s_change~15_combout\,
	combout => \changeMachine|s_change[4]~feeder_combout\);

-- Location: FF_X81_Y27_N25
\changeMachine|s_change[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \changeMachine|s_change[4]~feeder_combout\,
	asdata => VCC,
	sload => \auxiliaryMachine_push|s_currentState.E1~q\,
	ena => \changeMachine|s_change[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \changeMachine|s_change\(4));

-- Location: LCCOMB_X80_Y27_N26
\bin7_change|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux13~1_combout\ = (\bin7_change|Mux13~0_combout\ & (\changeMachine|s_change\(4) $ (\changeMachine|s_change\(2) $ (\changeMachine|s_change\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7_change|Mux13~0_combout\,
	datab => \changeMachine|s_change\(4),
	datac => \changeMachine|s_change\(2),
	datad => \changeMachine|s_change\(0),
	combout => \bin7_change|Mux13~1_combout\);

-- Location: LCCOMB_X73_Y8_N28
\bin7_change|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux12~0_combout\ = (\changeMachine|s_change\(2) & ((\changeMachine|s_change\(0) & (\changeMachine|s_change\(3) $ (!\changeMachine|s_change\(1)))) # (!\changeMachine|s_change\(0) & (!\changeMachine|s_change\(3) & 
-- \changeMachine|s_change\(1))))) # (!\changeMachine|s_change\(2) & ((\changeMachine|s_change\(0) & (\changeMachine|s_change\(3) & !\changeMachine|s_change\(1))) # (!\changeMachine|s_change\(0) & (\changeMachine|s_change\(3) $ 
-- (!\changeMachine|s_change\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(2),
	datab => \changeMachine|s_change\(0),
	datac => \changeMachine|s_change\(3),
	datad => \changeMachine|s_change\(1),
	combout => \bin7_change|Mux12~0_combout\);

-- Location: LCCOMB_X73_Y8_N26
\bin7_change|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux12~1_combout\ = (\bin7_change|Mux12~0_combout\ & ((\changeMachine|s_change\(4) & ((\changeMachine|s_change\(3)) # (!\changeMachine|s_change\(2)))) # (!\changeMachine|s_change\(4) & ((\changeMachine|s_change\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(4),
	datab => \bin7_change|Mux12~0_combout\,
	datac => \changeMachine|s_change\(3),
	datad => \changeMachine|s_change\(2),
	combout => \bin7_change|Mux12~1_combout\);

-- Location: LCCOMB_X73_Y8_N16
\bin7_change|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux11~0_combout\ = (\changeMachine|s_change\(4) & (\changeMachine|s_change\(2) & (\changeMachine|s_change\(0) $ (!\changeMachine|s_change\(3))))) # (!\changeMachine|s_change\(4) & (!\changeMachine|s_change\(0) & (\changeMachine|s_change\(3) $ 
-- (!\changeMachine|s_change\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(4),
	datab => \changeMachine|s_change\(0),
	datac => \changeMachine|s_change\(3),
	datad => \changeMachine|s_change\(2),
	combout => \bin7_change|Mux11~0_combout\);

-- Location: LCCOMB_X73_Y8_N30
\bin7_change|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux11~1_combout\ = (\bin7_change|Mux11~0_combout\ & (\changeMachine|s_change\(1) $ (((!\changeMachine|s_change\(4) & \changeMachine|s_change\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(4),
	datab => \changeMachine|s_change\(3),
	datac => \changeMachine|s_change\(1),
	datad => \bin7_change|Mux11~0_combout\,
	combout => \bin7_change|Mux11~1_combout\);

-- Location: LCCOMB_X73_Y8_N6
\bin7_change|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux10~1_combout\ = (\changeMachine|s_change\(1) & (\changeMachine|s_change\(3) $ (((\changeMachine|s_change\(4)) # (!\changeMachine|s_change\(2)))))) # (!\changeMachine|s_change\(1) & ((\changeMachine|s_change\(3)) # 
-- ((!\changeMachine|s_change\(4) & \changeMachine|s_change\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(4),
	datab => \changeMachine|s_change\(1),
	datac => \changeMachine|s_change\(3),
	datad => \changeMachine|s_change\(2),
	combout => \bin7_change|Mux10~1_combout\);

-- Location: LCCOMB_X73_Y8_N12
\bin7_change|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux10~0_combout\ = (\changeMachine|s_change\(4) & (!\changeMachine|s_change\(1) & (\changeMachine|s_change\(3) & !\changeMachine|s_change\(2)))) # (!\changeMachine|s_change\(4) & (\changeMachine|s_change\(2) & (\changeMachine|s_change\(1) $ 
-- (!\changeMachine|s_change\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(4),
	datab => \changeMachine|s_change\(1),
	datac => \changeMachine|s_change\(3),
	datad => \changeMachine|s_change\(2),
	combout => \bin7_change|Mux10~0_combout\);

-- Location: LCCOMB_X72_Y8_N20
\bin7_change|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux10~2_combout\ = (\changeMachine|s_change\(0) & (!\bin7_change|Mux10~1_combout\)) # (!\changeMachine|s_change\(0) & ((\bin7_change|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7_change|Mux10~1_combout\,
	datab => \bin7_change|Mux10~0_combout\,
	datad => \changeMachine|s_change\(0),
	combout => \bin7_change|Mux10~2_combout\);

-- Location: LCCOMB_X72_Y8_N2
\bin7_change|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux9~0_combout\ = (\bin7_change|Mux10~0_combout\) # (\changeMachine|s_change\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin7_change|Mux10~0_combout\,
	datad => \changeMachine|s_change\(0),
	combout => \bin7_change|Mux9~0_combout\);

-- Location: LCCOMB_X73_Y11_N8
\bin7_change|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux8~0_combout\ = (\changeMachine|s_change\(3) & (!\changeMachine|s_change\(4) & (!\changeMachine|s_change\(1) & \changeMachine|s_change\(2)))) # (!\changeMachine|s_change\(3) & (\changeMachine|s_change\(1) & (\changeMachine|s_change\(4) $ 
-- (!\changeMachine|s_change\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(4),
	datab => \changeMachine|s_change\(3),
	datac => \changeMachine|s_change\(1),
	datad => \changeMachine|s_change\(2),
	combout => \bin7_change|Mux8~0_combout\);

-- Location: LCCOMB_X73_Y8_N8
\bin7_change|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux8~1_combout\ = (\changeMachine|s_change\(1) & ((\changeMachine|s_change\(4) & (!\changeMachine|s_change\(3) & !\changeMachine|s_change\(2))) # (!\changeMachine|s_change\(4) & (\changeMachine|s_change\(3) & \changeMachine|s_change\(2))))) # 
-- (!\changeMachine|s_change\(1) & (\changeMachine|s_change\(3) $ (((!\changeMachine|s_change\(4) & \changeMachine|s_change\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(4),
	datab => \changeMachine|s_change\(1),
	datac => \changeMachine|s_change\(3),
	datad => \changeMachine|s_change\(2),
	combout => \bin7_change|Mux8~1_combout\);

-- Location: LCCOMB_X73_Y8_N2
\bin7_change|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux8~2_combout\ = (\changeMachine|s_change\(0) & ((!\bin7_change|Mux8~1_combout\))) # (!\changeMachine|s_change\(0) & (\bin7_change|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7_change|Mux8~0_combout\,
	datac => \bin7_change|Mux8~1_combout\,
	datad => \changeMachine|s_change\(0),
	combout => \bin7_change|Mux8~2_combout\);

-- Location: LCCOMB_X73_Y8_N24
\bin7_change|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux7~0_combout\ = (\changeMachine|s_change\(4) & ((\changeMachine|s_change\(1) $ (\changeMachine|s_change\(3))) # (!\changeMachine|s_change\(2)))) # (!\changeMachine|s_change\(4) & ((\changeMachine|s_change\(2)) # (\changeMachine|s_change\(1) 
-- $ (\changeMachine|s_change\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(4),
	datab => \changeMachine|s_change\(1),
	datac => \changeMachine|s_change\(3),
	datad => \changeMachine|s_change\(2),
	combout => \bin7_change|Mux7~0_combout\);

-- Location: LCCOMB_X73_Y8_N18
\bin7_change|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux7~1_combout\ = (\changeMachine|s_change\(0) & (\bin7_change|Mux10~1_combout\)) # (!\changeMachine|s_change\(0) & ((\bin7_change|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7_change|Mux10~1_combout\,
	datab => \bin7_change|Mux7~0_combout\,
	datad => \changeMachine|s_change\(0),
	combout => \bin7_change|Mux7~1_combout\);

-- Location: LCCOMB_X73_Y8_N4
\bin7_change|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux6~0_combout\ = (\changeMachine|s_change\(4) & (\changeMachine|s_change\(1) & (\changeMachine|s_change\(0) & \changeMachine|s_change\(2)))) # (!\changeMachine|s_change\(4) & ((\changeMachine|s_change\(1)) # ((\changeMachine|s_change\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(4),
	datab => \changeMachine|s_change\(1),
	datac => \changeMachine|s_change\(0),
	datad => \changeMachine|s_change\(2),
	combout => \bin7_change|Mux6~0_combout\);

-- Location: LCCOMB_X73_Y8_N10
\bin7_change|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux6~1_combout\ = (\changeMachine|s_change\(3) & (((\bin7_change|Mux6~0_combout\)))) # (!\changeMachine|s_change\(3) & (\changeMachine|s_change\(4) & ((!\changeMachine|s_change\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(4),
	datab => \bin7_change|Mux6~0_combout\,
	datac => \changeMachine|s_change\(3),
	datad => \changeMachine|s_change\(2),
	combout => \bin7_change|Mux6~1_combout\);

-- Location: LCCOMB_X73_Y8_N0
\bin7_change|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux5~0_combout\ = (\changeMachine|s_change\(4) & (\changeMachine|s_change\(1) & (\changeMachine|s_change\(3) & \changeMachine|s_change\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(4),
	datab => \changeMachine|s_change\(1),
	datac => \changeMachine|s_change\(3),
	datad => \changeMachine|s_change\(2),
	combout => \bin7_change|Mux5~0_combout\);

-- Location: LCCOMB_X72_Y8_N12
\bin7_change|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux5~1_combout\ = (\bin7_change|Mux5~0_combout\ & \changeMachine|s_change\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin7_change|Mux5~0_combout\,
	datad => \changeMachine|s_change\(0),
	combout => \bin7_change|Mux5~1_combout\);

-- Location: LCCOMB_X73_Y8_N22
\bin7_change|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux4~0_combout\ = (\changeMachine|s_change\(3) & (((\changeMachine|s_change\(0)) # (!\changeMachine|s_change\(2))) # (!\changeMachine|s_change\(1)))) # (!\changeMachine|s_change\(3) & (((\changeMachine|s_change\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(1),
	datab => \changeMachine|s_change\(0),
	datac => \changeMachine|s_change\(3),
	datad => \changeMachine|s_change\(2),
	combout => \bin7_change|Mux4~0_combout\);

-- Location: LCCOMB_X73_Y9_N8
\bin7_change|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux4~1_combout\ = (\bin7_change|Mux4~0_combout\ & \changeMachine|s_change\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin7_change|Mux4~0_combout\,
	datad => \changeMachine|s_change\(4),
	combout => \bin7_change|Mux4~1_combout\);

-- Location: LCCOMB_X73_Y8_N20
\bin7_change|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux2~0_combout\ = (\changeMachine|s_change\(4) & ((\changeMachine|s_change\(3) & (\changeMachine|s_change\(1) & \changeMachine|s_change\(2))) # (!\changeMachine|s_change\(3) & ((!\changeMachine|s_change\(2)))))) # 
-- (!\changeMachine|s_change\(4) & (\changeMachine|s_change\(3) & ((\changeMachine|s_change\(1)) # (\changeMachine|s_change\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(4),
	datab => \changeMachine|s_change\(1),
	datac => \changeMachine|s_change\(3),
	datad => \changeMachine|s_change\(2),
	combout => \bin7_change|Mux2~0_combout\);

-- Location: LCCOMB_X73_Y8_N14
\bin7_change|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux1~0_combout\ = (\changeMachine|s_change\(4)) # ((\changeMachine|s_change\(3) & ((\changeMachine|s_change\(1)) # (\changeMachine|s_change\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(4),
	datab => \changeMachine|s_change\(1),
	datac => \changeMachine|s_change\(3),
	datad => \changeMachine|s_change\(2),
	combout => \bin7_change|Mux1~0_combout\);

-- Location: LCCOMB_X80_Y27_N8
\bin7_change|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux0~0_combout\ = (\changeMachine|s_change\(3) & (((!\changeMachine|s_change\(0)) # (!\changeMachine|s_change\(2))) # (!\changeMachine|s_change\(1)))) # (!\changeMachine|s_change\(3) & (((\changeMachine|s_change\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \changeMachine|s_change\(3),
	datab => \changeMachine|s_change\(1),
	datac => \changeMachine|s_change\(2),
	datad => \changeMachine|s_change\(0),
	combout => \bin7_change|Mux0~0_combout\);

-- Location: LCCOMB_X80_Y27_N2
\bin7_change|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7_change|Mux0~1_combout\ = (!\changeMachine|s_change\(4)) # (!\bin7_change|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin7_change|Mux0~0_combout\,
	datad => \changeMachine|s_change\(4),
	combout => \bin7_change|Mux0~1_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\LCD_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(0),
	o => \LCD_DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\LCD_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(1),
	o => \LCD_DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\LCD_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(2),
	o => \LCD_DATA[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\LCD_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(3),
	o => \LCD_DATA[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\LCD_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(4),
	o => \LCD_DATA[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\LCD_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(5),
	o => \LCD_DATA[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\LCD_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(6),
	o => \LCD_DATA[6]~input_o\);

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_ON <= \LCD_ON~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

LCD_DATA(7) <= \LCD_DATA[7]~output_o\;
END structure;


