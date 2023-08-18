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

-- DATE "09/18/2021 20:25:30"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(2 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END DUT;

-- Design Ports Information
-- output_vector[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(0 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \input_vector[2]~input_o\ : std_logic;
SIGNAL \input_vector[0]~input_o\ : std_logic;
SIGNAL \input_vector[1]~input_o\ : std_logic;
SIGNAL \add_instance|o1|Y~0_combout\ : std_logic;
SIGNAL \ALT_INV_input_vector[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_vector[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_vector[0]~input_o\ : std_logic;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_input_vector[1]~input_o\ <= NOT \input_vector[1]~input_o\;
\ALT_INV_input_vector[2]~input_o\ <= NOT \input_vector[2]~input_o\;
\ALT_INV_input_vector[0]~input_o\ <= NOT \input_vector[0]~input_o\;

-- Location: IOOBUF_X6_Y0_N19
\output_vector[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|o1|Y~0_combout\,
	devoe => ww_devoe,
	o => ww_output_vector(0));

-- Location: IOIBUF_X6_Y0_N35
\input_vector[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(2),
	o => \input_vector[2]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\input_vector[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(0),
	o => \input_vector[0]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\input_vector[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(1),
	o => \input_vector[1]~input_o\);

-- Location: MLABCELL_X6_Y1_N0
\add_instance|o1|Y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \add_instance|o1|Y~0_combout\ = ( \input_vector[1]~input_o\ & ( (!\input_vector[0]~input_o\) # (\input_vector[2]~input_o\) ) ) # ( !\input_vector[1]~input_o\ & ( (\input_vector[2]~input_o\ & \input_vector[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_vector[2]~input_o\,
	datac => \ALT_INV_input_vector[0]~input_o\,
	dataf => \ALT_INV_input_vector[1]~input_o\,
	combout => \add_instance|o1|Y~0_combout\);

-- Location: LABCELL_X80_Y37_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


