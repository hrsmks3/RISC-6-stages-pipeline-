library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;	 
use ieee.std_logic_unsigned.all;

entity imem is
port(
pc: in std_logic_vector(15 downto 0);
inst: out std_logic_vector(15 downto 0)
);
end imem;

architecture beh of imem is

type mem is array(0 to 2**8 - 1) of std_logic_vector(15 downto 0);
signal instr: mem := (

--0 => "0001001010011000",
--1 => "0001100101110000",
--4 => "0000101011000000",
--5 => "0000110011000000", 

--0 => "1111101000000001", -- for jump instructions
--2 => "0001101110011000",
--4 => "0001001010011000",
--5 => "0011011000011111",
--6 => "0000010011000101",

--1 => "0010001010011101",
--1 => "0001001010011111",
--1 => "0001001010011100",

--0 => "0000010001000101", --example for 1 and 2 distance arithmetic data dependency check
--2 => "0000001011000001",

--0 => "0011010000000101", --example for 1 distance data dependency check
--1 => "0000010011000001",

--0 => "0011001000000101", --example for 2 distance data dependency check
--2 => "0000001010000000",

--0 => "0110001001100010", --example for load multiple

--0 => "0111001000110000", --example for store multiple
--1 => "0100011111000000",

--0 => "0100001111000010", --example of jump and datadep of load
--1 => "0000001010000001",
--2 => "1101001010000000",
--3 => "0000111011011111",
--9 => "0000111011011111",
--10 => "0000111011010101",

--0 => "0011001000000001", --for fpga we can connect register file's output with pins
--1 => "0011010000000001",
--2 => "0001001010011000",

others => "0000000000000000"
);
signal pc1: std_logic_vector(15 downto 0) := (others => '0');

	function inte(A: in std_logic_vector(15 downto 0))
	return integer is
	
	variable a1: integer := 0;
	
	begin
		
		L1: for i in 0 to 15 loop
			
			if(A(i) = '1') then
				a1 := a1 + (2**i);
			end if;
			
		end loop L1;
		
	return a1;
	
	end inte;

begin
	
	pc1(7 downto 0) <= pc(7 downto 0);
	inst <= instr(inte(pc1));
	
end beh;