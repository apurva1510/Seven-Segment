-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "10/10/2019 10:39:07"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CombinedASU1 IS
    PORT (
	Cout : OUT std_logic;
	Cin : IN std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	display : OUT std_logic_vector(1 TO 7);
	neg_display : OUT std_logic_vector(1 TO 7)
	);
END CombinedASU1;

-- Design Ports Information
-- Cout	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[2]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[3]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[7]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- neg_display[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- neg_display[2]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- neg_display[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- neg_display[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- neg_display[5]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- neg_display[6]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- neg_display[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CombinedASU1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_display : std_logic_vector(1 TO 7);
SIGNAL ww_neg_display : std_logic_vector(1 TO 7);
SIGNAL \Cin~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3_combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \display[1]~output_o\ : std_logic;
SIGNAL \display[2]~output_o\ : std_logic;
SIGNAL \display[3]~output_o\ : std_logic;
SIGNAL \display[4]~output_o\ : std_logic;
SIGNAL \display[5]~output_o\ : std_logic;
SIGNAL \display[6]~output_o\ : std_logic;
SIGNAL \display[7]~output_o\ : std_logic;
SIGNAL \neg_display[1]~output_o\ : std_logic;
SIGNAL \neg_display[2]~output_o\ : std_logic;
SIGNAL \neg_display[3]~output_o\ : std_logic;
SIGNAL \neg_display[4]~output_o\ : std_logic;
SIGNAL \neg_display[5]~output_o\ : std_logic;
SIGNAL \neg_display[6]~output_o\ : std_logic;
SIGNAL \neg_display[7]~output_o\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \Cin~inputclkctrl_outclk\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~9_combout\ : std_logic;
SIGNAL \inst|Add2~11_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~7_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~8\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~12\ : std_logic;
SIGNAL \inst|Add0~13_combout\ : std_logic;
SIGNAL \inst|Cout~combout\ : std_logic;
SIGNAL \inst|Add0~11_combout\ : std_logic;
SIGNAL \inst|neg~0_combout\ : std_logic;
SIGNAL \inst|Add0~5_combout\ : std_logic;
SIGNAL \inst|Add0~7_combout\ : std_logic;
SIGNAL \inst|Add0~9_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst|YNeg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_neg~0_combout\ : std_logic;

BEGIN

Cout <= ww_Cout;
ww_Cin <= Cin;
ww_X <= X;
ww_Y <= Y;
display <= ww_display;
neg_display <= ww_neg_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Cin~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Cin~input_o\);
\inst2|ALT_INV_Mux5~0_combout\ <= NOT \inst2|Mux5~0_combout\;
\inst2|ALT_INV_Mux4~0_combout\ <= NOT \inst2|Mux4~0_combout\;
\inst2|ALT_INV_Mux3~0_combout\ <= NOT \inst2|Mux3~0_combout\;
\inst2|ALT_INV_Mux2~0_combout\ <= NOT \inst2|Mux2~0_combout\;
\inst2|ALT_INV_Mux1~0_combout\ <= NOT \inst2|Mux1~0_combout\;
\inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst2|Mux0~0_combout\;
\inst|ALT_INV_neg~0_combout\ <= NOT \inst|neg~0_combout\;

-- Location: LCCOMB_X15_Y1_N0
\inst|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\X[3]~input_o\ & !\Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X[3]~input_o\,
	datad => \Cin~input_o\,
	combout => \inst|Add0~0_combout\);

-- Location: LCCOMB_X15_Y1_N14
\inst|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~1_combout\ = (\X[2]~input_o\ & !\Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[2]~input_o\,
	datad => \Cin~input_o\,
	combout => \inst|Add0~1_combout\);

-- Location: LCCOMB_X16_Y1_N12
\inst|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\X[1]~input_o\ & !\Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datad => \Cin~input_o\,
	combout => \inst|Add0~2_combout\);

-- Location: LCCOMB_X15_Y1_N16
\inst|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~3_combout\ = (\X[0]~input_o\) # (\Cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \inst|Add0~3_combout\);

-- Location: LCCOMB_X15_Y1_N8
\inst|YNeg[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|YNeg\(2) = (GLOBAL(\Cin~inputclkctrl_outclk\) & (!\Y[2]~input_o\)) # (!GLOBAL(\Cin~inputclkctrl_outclk\) & ((\inst|YNeg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datac => \inst|YNeg\(2),
	datad => \Cin~inputclkctrl_outclk\,
	combout => \inst|YNeg\(2));

-- Location: IOIBUF_X12_Y0_N8
\X[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\X[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\Y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: IOOBUF_X14_Y0_N2
\Cout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Cout~combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\display[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\display[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display[2]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\display[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display[3]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\display[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display[4]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\display[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display[5]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\display[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \display[6]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\display[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_neg~0_combout\,
	devoe => ww_devoe,
	o => \display[7]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\neg_display[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \neg_display[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\neg_display[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \neg_display[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\neg_display[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \neg_display[3]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\neg_display[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \neg_display[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\neg_display[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \neg_display[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\neg_display[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \neg_display[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\neg_display[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \neg_display[7]~output_o\);

-- Location: IOIBUF_X26_Y0_N8
\Y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\Cin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: CLKCTRL_G17
\Cin~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Cin~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Cin~inputclkctrl_outclk\);

-- Location: LCCOMB_X15_Y1_N22
\inst|YNeg[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|YNeg\(3) = (GLOBAL(\Cin~inputclkctrl_outclk\) & (!\Y[3]~input_o\)) # (!GLOBAL(\Cin~inputclkctrl_outclk\) & ((\inst|YNeg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[3]~input_o\,
	datac => \inst|YNeg\(3),
	datad => \Cin~inputclkctrl_outclk\,
	combout => \inst|YNeg\(3));

-- Location: IOIBUF_X29_Y0_N1
\X[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\Y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: LCCOMB_X16_Y1_N14
\inst|YNeg[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|YNeg\(1) = (GLOBAL(\Cin~inputclkctrl_outclk\) & (!\Y[1]~input_o\)) # (!GLOBAL(\Cin~inputclkctrl_outclk\) & ((\inst|YNeg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[1]~input_o\,
	datac => \inst|YNeg\(1),
	datad => \Cin~inputclkctrl_outclk\,
	combout => \inst|YNeg\(1));

-- Location: IOIBUF_X20_Y0_N8
\Y[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: LCCOMB_X16_Y1_N16
\inst|YNeg[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|YNeg\(0) = (GLOBAL(\Cin~inputclkctrl_outclk\) & ((!\Y[0]~input_o\))) # (!GLOBAL(\Cin~inputclkctrl_outclk\) & (\inst|YNeg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|YNeg\(0),
	datac => \Y[0]~input_o\,
	datad => \Cin~inputclkctrl_outclk\,
	combout => \inst|YNeg\(0));

-- Location: LCCOMB_X16_Y1_N4
\inst|Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\X[1]~input_o\ & (\inst|YNeg\(0) $ (VCC))) # (!\X[1]~input_o\ & (\inst|YNeg\(0) & VCC))
-- \inst|Add2~1\ = CARRY((\X[1]~input_o\ & \inst|YNeg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \inst|YNeg\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X16_Y1_N6
\inst|Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\X[2]~input_o\ & ((\inst|YNeg\(1) & (\inst|Add2~1\ & VCC)) # (!\inst|YNeg\(1) & (!\inst|Add2~1\)))) # (!\X[2]~input_o\ & ((\inst|YNeg\(1) & (!\inst|Add2~1\)) # (!\inst|YNeg\(1) & ((\inst|Add2~1\) # (GND)))))
-- \inst|Add2~3\ = CARRY((\X[2]~input_o\ & (!\inst|YNeg\(1) & !\inst|Add2~1\)) # (!\X[2]~input_o\ & ((!\inst|Add2~1\) # (!\inst|YNeg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \inst|YNeg\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X16_Y1_N8
\inst|Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = ((\inst|YNeg\(2) $ (\X[3]~input_o\ $ (!\inst|Add2~3\)))) # (GND)
-- \inst|Add2~5\ = CARRY((\inst|YNeg\(2) & ((\X[3]~input_o\) # (!\inst|Add2~3\))) # (!\inst|YNeg\(2) & (\X[3]~input_o\ & !\inst|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|YNeg\(2),
	datab => \X[3]~input_o\,
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X16_Y1_N10
\inst|Add2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~9_combout\ = \inst|Add2~5\ $ (\inst|YNeg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|YNeg\(3),
	cin => \inst|Add2~5\,
	combout => \inst|Add2~9_combout\);

-- Location: LCCOMB_X15_Y1_N20
\inst|Add2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~11_combout\ = (\Cin~input_o\ & \inst|Add2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => \inst|Add2~9_combout\,
	combout => \inst|Add2~11_combout\);

-- Location: LCCOMB_X16_Y1_N0
\inst|Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\Cin~input_o\ & ((\inst|Add2~4_combout\))) # (!\Cin~input_o\ & (\Y[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[3]~input_o\,
	datac => \inst|Add2~4_combout\,
	datad => \Cin~input_o\,
	combout => \inst|Add2~6_combout\);

-- Location: LCCOMB_X16_Y1_N2
\inst|Add2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~7_combout\ = (\Cin~input_o\ & ((\inst|Add2~2_combout\))) # (!\Cin~input_o\ & (\Y[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datac => \Cin~input_o\,
	datad => \inst|Add2~2_combout\,
	combout => \inst|Add2~7_combout\);

-- Location: LCCOMB_X16_Y1_N18
\inst|Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\Cin~input_o\ & ((\inst|Add2~0_combout\))) # (!\Cin~input_o\ & (\Y[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[1]~input_o\,
	datac => \inst|Add2~0_combout\,
	datad => \Cin~input_o\,
	combout => \inst|Add2~8_combout\);

-- Location: IOIBUF_X20_Y0_N1
\X[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: LCCOMB_X15_Y1_N6
\inst|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\Cin~input_o\ & ((\X[0]~input_o\))) # (!\Cin~input_o\ & (\Y[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[0]~input_o\,
	datac => \X[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \inst|Add0~4_combout\);

-- Location: LCCOMB_X16_Y1_N22
\inst|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~5_combout\ = (\inst|Add0~3_combout\ & (\inst|Add0~4_combout\ $ (VCC))) # (!\inst|Add0~3_combout\ & (\inst|Add0~4_combout\ & VCC))
-- \inst|Add0~6\ = CARRY((\inst|Add0~3_combout\ & \inst|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~3_combout\,
	datab => \inst|Add0~4_combout\,
	datad => VCC,
	combout => \inst|Add0~5_combout\,
	cout => \inst|Add0~6\);

-- Location: LCCOMB_X16_Y1_N24
\inst|Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~7_combout\ = (\inst|Add0~2_combout\ & ((\inst|Add2~8_combout\ & (\inst|Add0~6\ & VCC)) # (!\inst|Add2~8_combout\ & (!\inst|Add0~6\)))) # (!\inst|Add0~2_combout\ & ((\inst|Add2~8_combout\ & (!\inst|Add0~6\)) # (!\inst|Add2~8_combout\ & 
-- ((\inst|Add0~6\) # (GND)))))
-- \inst|Add0~8\ = CARRY((\inst|Add0~2_combout\ & (!\inst|Add2~8_combout\ & !\inst|Add0~6\)) # (!\inst|Add0~2_combout\ & ((!\inst|Add0~6\) # (!\inst|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \inst|Add2~8_combout\,
	datad => VCC,
	cin => \inst|Add0~6\,
	combout => \inst|Add0~7_combout\,
	cout => \inst|Add0~8\);

-- Location: LCCOMB_X16_Y1_N26
\inst|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~9_combout\ = ((\inst|Add0~1_combout\ $ (\inst|Add2~7_combout\ $ (!\inst|Add0~8\)))) # (GND)
-- \inst|Add0~10\ = CARRY((\inst|Add0~1_combout\ & ((\inst|Add2~7_combout\) # (!\inst|Add0~8\))) # (!\inst|Add0~1_combout\ & (\inst|Add2~7_combout\ & !\inst|Add0~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~1_combout\,
	datab => \inst|Add2~7_combout\,
	datad => VCC,
	cin => \inst|Add0~8\,
	combout => \inst|Add0~9_combout\,
	cout => \inst|Add0~10\);

-- Location: LCCOMB_X16_Y1_N28
\inst|Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~11_combout\ = (\inst|Add0~0_combout\ & ((\inst|Add2~6_combout\ & (\inst|Add0~10\ & VCC)) # (!\inst|Add2~6_combout\ & (!\inst|Add0~10\)))) # (!\inst|Add0~0_combout\ & ((\inst|Add2~6_combout\ & (!\inst|Add0~10\)) # (!\inst|Add2~6_combout\ & 
-- ((\inst|Add0~10\) # (GND)))))
-- \inst|Add0~12\ = CARRY((\inst|Add0~0_combout\ & (!\inst|Add2~6_combout\ & !\inst|Add0~10\)) # (!\inst|Add0~0_combout\ & ((!\inst|Add0~10\) # (!\inst|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \inst|Add2~6_combout\,
	datad => VCC,
	cin => \inst|Add0~10\,
	combout => \inst|Add0~11_combout\,
	cout => \inst|Add0~12\);

-- Location: LCCOMB_X16_Y1_N30
\inst|Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Add0~13_combout\ = \inst|Add0~12\ $ (!\inst|Add2~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Add2~11_combout\,
	cin => \inst|Add0~12\,
	combout => \inst|Add0~13_combout\);

-- Location: LCCOMB_X16_Y1_N20
\inst|Cout\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|Cout~combout\ = (GLOBAL(\Cin~inputclkctrl_outclk\) & (\inst|Cout~combout\)) # (!GLOBAL(\Cin~inputclkctrl_outclk\) & ((\inst|Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Cout~combout\,
	datac => \inst|Add0~13_combout\,
	datad => \Cin~inputclkctrl_outclk\,
	combout => \inst|Cout~combout\);

-- Location: LCCOMB_X15_Y1_N26
\inst|neg~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|neg~0_combout\ = \X[3]~input_o\ $ (\inst|Add0~11_combout\ $ (\Y[3]~input_o\ $ (\inst|Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \inst|Add0~11_combout\,
	datac => \Y[3]~input_o\,
	datad => \inst|Add0~13_combout\,
	combout => \inst|neg~0_combout\);

-- Location: LCCOMB_X16_Y2_N12
\inst2|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst|Add0~9_combout\ & (!\inst|Add0~7_combout\ & (\inst|Add0~5_combout\ $ (!\inst|Add0~11_combout\)))) # (!\inst|Add0~9_combout\ & (\inst|Add0~5_combout\ & (\inst|Add0~7_combout\ $ (!\inst|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~5_combout\,
	datab => \inst|Add0~7_combout\,
	datac => \inst|Add0~9_combout\,
	datad => \inst|Add0~11_combout\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y2_N22
\inst2|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst|Add0~9_combout\ & (\inst|Add0~5_combout\ $ (\inst|Add0~7_combout\ $ (\inst|Add0~11_combout\)))) # (!\inst|Add0~9_combout\ & (\inst|Add0~5_combout\ & (\inst|Add0~7_combout\ & \inst|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~5_combout\,
	datab => \inst|Add0~7_combout\,
	datac => \inst|Add0~9_combout\,
	datad => \inst|Add0~11_combout\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y2_N8
\inst2|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst|Add0~9_combout\ & (\inst|Add0~11_combout\ & ((\inst|Add0~7_combout\) # (!\inst|Add0~5_combout\)))) # (!\inst|Add0~9_combout\ & (!\inst|Add0~5_combout\ & (\inst|Add0~7_combout\ & !\inst|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~5_combout\,
	datab => \inst|Add0~7_combout\,
	datac => \inst|Add0~9_combout\,
	datad => \inst|Add0~11_combout\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y2_N26
\inst2|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst|Add0~5_combout\ & (\inst|Add0~7_combout\ $ ((!\inst|Add0~9_combout\)))) # (!\inst|Add0~5_combout\ & ((\inst|Add0~7_combout\ & (!\inst|Add0~9_combout\ & \inst|Add0~11_combout\)) # (!\inst|Add0~7_combout\ & 
-- (\inst|Add0~9_combout\ & !\inst|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~5_combout\,
	datab => \inst|Add0~7_combout\,
	datac => \inst|Add0~9_combout\,
	datad => \inst|Add0~11_combout\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y2_N4
\inst2|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst|Add0~7_combout\ & (\inst|Add0~5_combout\ & ((!\inst|Add0~11_combout\)))) # (!\inst|Add0~7_combout\ & ((\inst|Add0~9_combout\ & ((!\inst|Add0~11_combout\))) # (!\inst|Add0~9_combout\ & (\inst|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~5_combout\,
	datab => \inst|Add0~7_combout\,
	datac => \inst|Add0~9_combout\,
	datad => \inst|Add0~11_combout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y2_N10
\inst2|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst|Add0~5_combout\ & (\inst|Add0~11_combout\ $ (((\inst|Add0~7_combout\) # (!\inst|Add0~9_combout\))))) # (!\inst|Add0~5_combout\ & (\inst|Add0~7_combout\ & (!\inst|Add0~9_combout\ & !\inst|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~5_combout\,
	datab => \inst|Add0~7_combout\,
	datac => \inst|Add0~9_combout\,
	datad => \inst|Add0~11_combout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y2_N24
\inst2|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst|Add0~5_combout\ & ((\inst|Add0~11_combout\) # (\inst|Add0~7_combout\ $ (\inst|Add0~9_combout\)))) # (!\inst|Add0~5_combout\ & ((\inst|Add0~7_combout\) # (\inst|Add0~9_combout\ $ (\inst|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~5_combout\,
	datab => \inst|Add0~7_combout\,
	datac => \inst|Add0~9_combout\,
	datad => \inst|Add0~11_combout\,
	combout => \inst2|Mux6~0_combout\);

ww_Cout <= \Cout~output_o\;

ww_display(1) <= \display[1]~output_o\;

ww_display(2) <= \display[2]~output_o\;

ww_display(3) <= \display[3]~output_o\;

ww_display(4) <= \display[4]~output_o\;

ww_display(5) <= \display[5]~output_o\;

ww_display(6) <= \display[6]~output_o\;

ww_display(7) <= \display[7]~output_o\;

ww_neg_display(1) <= \neg_display[1]~output_o\;

ww_neg_display(2) <= \neg_display[2]~output_o\;

ww_neg_display(3) <= \neg_display[3]~output_o\;

ww_neg_display(4) <= \neg_display[4]~output_o\;

ww_neg_display(5) <= \neg_display[5]~output_o\;

ww_neg_display(6) <= \neg_display[6]~output_o\;

ww_neg_display(7) <= \neg_display[7]~output_o\;
END structure;


