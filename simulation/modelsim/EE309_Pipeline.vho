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

-- DATE "05/06/2023 22:17:21"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
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
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(1 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(48 DOWNTO 0)
	);
END DUT;

-- Design Ports Information
-- output_vector[0]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[1]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[2]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[3]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[4]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[5]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[6]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[7]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[8]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[9]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[10]	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[11]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[12]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[13]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[14]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[15]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[16]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[17]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[18]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[19]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[20]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[21]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[22]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[23]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[24]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[25]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[26]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[27]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[28]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[29]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[30]	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[31]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[32]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[33]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[34]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[35]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[36]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[37]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[38]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[39]	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[40]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[41]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[42]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[43]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[44]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[45]	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[46]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[47]	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[48]	=>  Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[1]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[0]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_input_vector : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(48 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \input_vector[1]~input_o\ : std_logic;
SIGNAL \input_vector[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \output_vector[0]~output_o\ : std_logic;
SIGNAL \output_vector[1]~output_o\ : std_logic;
SIGNAL \output_vector[2]~output_o\ : std_logic;
SIGNAL \output_vector[3]~output_o\ : std_logic;
SIGNAL \output_vector[4]~output_o\ : std_logic;
SIGNAL \output_vector[5]~output_o\ : std_logic;
SIGNAL \output_vector[6]~output_o\ : std_logic;
SIGNAL \output_vector[7]~output_o\ : std_logic;
SIGNAL \output_vector[8]~output_o\ : std_logic;
SIGNAL \output_vector[9]~output_o\ : std_logic;
SIGNAL \output_vector[10]~output_o\ : std_logic;
SIGNAL \output_vector[11]~output_o\ : std_logic;
SIGNAL \output_vector[12]~output_o\ : std_logic;
SIGNAL \output_vector[13]~output_o\ : std_logic;
SIGNAL \output_vector[14]~output_o\ : std_logic;
SIGNAL \output_vector[15]~output_o\ : std_logic;
SIGNAL \output_vector[16]~output_o\ : std_logic;
SIGNAL \output_vector[17]~output_o\ : std_logic;
SIGNAL \output_vector[18]~output_o\ : std_logic;
SIGNAL \output_vector[19]~output_o\ : std_logic;
SIGNAL \output_vector[20]~output_o\ : std_logic;
SIGNAL \output_vector[21]~output_o\ : std_logic;
SIGNAL \output_vector[22]~output_o\ : std_logic;
SIGNAL \output_vector[23]~output_o\ : std_logic;
SIGNAL \output_vector[24]~output_o\ : std_logic;
SIGNAL \output_vector[25]~output_o\ : std_logic;
SIGNAL \output_vector[26]~output_o\ : std_logic;
SIGNAL \output_vector[27]~output_o\ : std_logic;
SIGNAL \output_vector[28]~output_o\ : std_logic;
SIGNAL \output_vector[29]~output_o\ : std_logic;
SIGNAL \output_vector[30]~output_o\ : std_logic;
SIGNAL \output_vector[31]~output_o\ : std_logic;
SIGNAL \output_vector[32]~output_o\ : std_logic;
SIGNAL \output_vector[33]~output_o\ : std_logic;
SIGNAL \output_vector[34]~output_o\ : std_logic;
SIGNAL \output_vector[35]~output_o\ : std_logic;
SIGNAL \output_vector[36]~output_o\ : std_logic;
SIGNAL \output_vector[37]~output_o\ : std_logic;
SIGNAL \output_vector[38]~output_o\ : std_logic;
SIGNAL \output_vector[39]~output_o\ : std_logic;
SIGNAL \output_vector[40]~output_o\ : std_logic;
SIGNAL \output_vector[41]~output_o\ : std_logic;
SIGNAL \output_vector[42]~output_o\ : std_logic;
SIGNAL \output_vector[43]~output_o\ : std_logic;
SIGNAL \output_vector[44]~output_o\ : std_logic;
SIGNAL \output_vector[45]~output_o\ : std_logic;
SIGNAL \output_vector[46]~output_o\ : std_logic;
SIGNAL \output_vector[47]~output_o\ : std_logic;
SIGNAL \output_vector[48]~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y23_N24
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

-- Location: IOOBUF_X12_Y21_N30
\output_vector[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\output_vector[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[1]~output_o\);

-- Location: IOOBUF_X14_Y21_N23
\output_vector[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[2]~output_o\);

-- Location: IOOBUF_X8_Y21_N16
\output_vector[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[3]~output_o\);

-- Location: IOOBUF_X28_Y36_N9
\output_vector[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[4]~output_o\);

-- Location: IOOBUF_X60_Y15_N23
\output_vector[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[5]~output_o\);

-- Location: IOOBUF_X28_Y36_N2
\output_vector[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[6]~output_o\);

-- Location: IOOBUF_X25_Y26_N23
\output_vector[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[7]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\output_vector[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[8]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\output_vector[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[9]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\output_vector[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[10]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\output_vector[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[11]~output_o\);

-- Location: IOOBUF_X25_Y28_N16
\output_vector[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[12]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\output_vector[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[13]~output_o\);

-- Location: IOOBUF_X60_Y23_N9
\output_vector[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[14]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\output_vector[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[15]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\output_vector[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[16]~output_o\);

-- Location: IOOBUF_X12_Y21_N9
\output_vector[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[17]~output_o\);

-- Location: IOOBUF_X16_Y21_N16
\output_vector[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[18]~output_o\);

-- Location: IOOBUF_X8_Y0_N16
\output_vector[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[19]~output_o\);

-- Location: IOOBUF_X60_Y8_N2
\output_vector[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[20]~output_o\);

-- Location: IOOBUF_X60_Y22_N16
\output_vector[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[21]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\output_vector[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[22]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\output_vector[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[23]~output_o\);

-- Location: IOOBUF_X19_Y21_N23
\output_vector[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[24]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\output_vector[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[25]~output_o\);

-- Location: IOOBUF_X60_Y10_N2
\output_vector[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[26]~output_o\);

-- Location: IOOBUF_X60_Y23_N16
\output_vector[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[27]~output_o\);

-- Location: IOOBUF_X12_Y21_N2
\output_vector[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[28]~output_o\);

-- Location: IOOBUF_X14_Y21_N30
\output_vector[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[29]~output_o\);

-- Location: IOOBUF_X60_Y8_N16
\output_vector[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[30]~output_o\);

-- Location: IOOBUF_X25_Y28_N23
\output_vector[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[31]~output_o\);

-- Location: IOOBUF_X60_Y14_N16
\output_vector[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[32]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\output_vector[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[33]~output_o\);

-- Location: IOOBUF_X60_Y31_N16
\output_vector[34]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[34]~output_o\);

-- Location: IOOBUF_X38_Y36_N16
\output_vector[35]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[35]~output_o\);

-- Location: IOOBUF_X6_Y0_N9
\output_vector[36]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[36]~output_o\);

-- Location: IOOBUF_X60_Y15_N16
\output_vector[37]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[37]~output_o\);

-- Location: IOOBUF_X60_Y8_N23
\output_vector[38]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[38]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\output_vector[39]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[39]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\output_vector[40]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[40]~output_o\);

-- Location: IOOBUF_X19_Y21_N30
\output_vector[41]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[41]~output_o\);

-- Location: IOOBUF_X8_Y21_N23
\output_vector[42]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[42]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\output_vector[43]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[43]~output_o\);

-- Location: IOOBUF_X25_Y29_N23
\output_vector[44]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[44]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\output_vector[45]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[45]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\output_vector[46]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[46]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\output_vector[47]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[47]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\output_vector[48]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[48]~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\input_vector[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(1),
	o => \input_vector[1]~input_o\);

-- Location: IOIBUF_X25_Y29_N15
\input_vector[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(0),
	o => \input_vector[0]~input_o\);

-- Location: UNVM_X0_Y22_N40
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

-- Location: ADCBLOCK_X25_Y34_N0
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

-- Location: ADCBLOCK_X25_Y33_N0
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

ww_output_vector(0) <= \output_vector[0]~output_o\;

ww_output_vector(1) <= \output_vector[1]~output_o\;

ww_output_vector(2) <= \output_vector[2]~output_o\;

ww_output_vector(3) <= \output_vector[3]~output_o\;

ww_output_vector(4) <= \output_vector[4]~output_o\;

ww_output_vector(5) <= \output_vector[5]~output_o\;

ww_output_vector(6) <= \output_vector[6]~output_o\;

ww_output_vector(7) <= \output_vector[7]~output_o\;

ww_output_vector(8) <= \output_vector[8]~output_o\;

ww_output_vector(9) <= \output_vector[9]~output_o\;

ww_output_vector(10) <= \output_vector[10]~output_o\;

ww_output_vector(11) <= \output_vector[11]~output_o\;

ww_output_vector(12) <= \output_vector[12]~output_o\;

ww_output_vector(13) <= \output_vector[13]~output_o\;

ww_output_vector(14) <= \output_vector[14]~output_o\;

ww_output_vector(15) <= \output_vector[15]~output_o\;

ww_output_vector(16) <= \output_vector[16]~output_o\;

ww_output_vector(17) <= \output_vector[17]~output_o\;

ww_output_vector(18) <= \output_vector[18]~output_o\;

ww_output_vector(19) <= \output_vector[19]~output_o\;

ww_output_vector(20) <= \output_vector[20]~output_o\;

ww_output_vector(21) <= \output_vector[21]~output_o\;

ww_output_vector(22) <= \output_vector[22]~output_o\;

ww_output_vector(23) <= \output_vector[23]~output_o\;

ww_output_vector(24) <= \output_vector[24]~output_o\;

ww_output_vector(25) <= \output_vector[25]~output_o\;

ww_output_vector(26) <= \output_vector[26]~output_o\;

ww_output_vector(27) <= \output_vector[27]~output_o\;

ww_output_vector(28) <= \output_vector[28]~output_o\;

ww_output_vector(29) <= \output_vector[29]~output_o\;

ww_output_vector(30) <= \output_vector[30]~output_o\;

ww_output_vector(31) <= \output_vector[31]~output_o\;

ww_output_vector(32) <= \output_vector[32]~output_o\;

ww_output_vector(33) <= \output_vector[33]~output_o\;

ww_output_vector(34) <= \output_vector[34]~output_o\;

ww_output_vector(35) <= \output_vector[35]~output_o\;

ww_output_vector(36) <= \output_vector[36]~output_o\;

ww_output_vector(37) <= \output_vector[37]~output_o\;

ww_output_vector(38) <= \output_vector[38]~output_o\;

ww_output_vector(39) <= \output_vector[39]~output_o\;

ww_output_vector(40) <= \output_vector[40]~output_o\;

ww_output_vector(41) <= \output_vector[41]~output_o\;

ww_output_vector(42) <= \output_vector[42]~output_o\;

ww_output_vector(43) <= \output_vector[43]~output_o\;

ww_output_vector(44) <= \output_vector[44]~output_o\;

ww_output_vector(45) <= \output_vector[45]~output_o\;

ww_output_vector(46) <= \output_vector[46]~output_o\;

ww_output_vector(47) <= \output_vector[47]~output_o\;

ww_output_vector(48) <= \output_vector[48]~output_o\;
END structure;


