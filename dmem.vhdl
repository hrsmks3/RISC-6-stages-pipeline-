library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;	 
use ieee.std_logic_unsigned.all;

entity dmem is
port(
opcode: in std_logic_vector(3 downto 0);
clock: in std_logic;
rst: in std_logic;
memen: in std_logic;
addr: in std_logic_vector(15 downto 0);
Din: in std_logic_vector(15 downto 0);
Dout: out std_logic_vector(15 downto 0);
data_z : out std_logic
--dmemcheck: out std_logic_vector(15 downto 0)
);
end dmem;

architecture beh of dmem is

type mem is array(0 to 2**8 - 1) of std_logic_vector(15 downto 0);
signal data: mem := (
1 => "0000000000000000",
5 => "0000000000000111",
16 => "0000000000000001",
17 => "0000000000000010",
18 => "0000000000000011",
19 => "0000000000000100",
20 => "0000000000000101",
21 => "0000000000000110",
22 => "0000000000000111",
23 => "0000000000001000",

--19 => "0000000000001010",
--20 => "0000000000000011",
others=>"0000000000000000"
);

signal addr1: std_logic_vector(15 downto 0) := (others => '0');
signal data_z1: std_logic := '0';
	
	function inte(A: in std_logic_vector(15 downto 0) )
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
	
	addr1(7 downto 0) <= addr(7 downto 0);
	
	process(clock, rst)
	
	begin
		
		if(rising_edge(clock)) then
			
			if(memen = '1') then
				
				data(inte(addr1)) <= Din; --takes data input
				
			end if;
			
			Dout <= data(inte(addr1)); --dataout
			--dmemcheck <= data(1); --reads dmem
			
			
		end if;
		
		if(falling_edge(clock)) then
		
		if(data(inte(addr1)) = "0000000000000000" and opcode = "0100") then
		     data_z1 <= '1';
			  end if;
			  
		end if;	  
		
	end process;
	data_z <= data_z1;
	
end beh;