library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;	 
use ieee.std_logic_unsigned.all;

entity pc is
port(
disable: in std_logic;
exin: in std_logic_vector(15 downto 0);
pcadd: in std_logic; 
ifin: in std_logic_vector(15 downto 0);
mwb: in std_logic_vector(19 downto 0);
clock: in std_logic;
rst: in std_logic;
bubble: in std_logic;
check: in std_logic;
check1: in std_logic;
adder1out: in std_logic_vector(15 downto 0);
alu2out: in std_logic_vector(15 downto 0);
pcout: out std_logic_vector(15 downto 0)

);
end pc;

architecture beh of pc is

signal pc1 : std_logic_vector(15 downto 0) := "0000000000000000";

begin
	
	process(clock, rst, check) --program counter register
		
	begin
		
		if(rst = '1') then
			
			pc1 <= "0000000000000000";
			
		else
		
			if(falling_edge(clock)) then
				
				if(bubble = '0' and check1 = '0') then
				
				   if(mwb(2 downto 0) = "000") then
					  pc1 <= mwb(18 downto 3);
					  
					
					  
					  
					else  
					
					   if(disable = '1' and pcadd = '1') then
						pc1 <= exin;
						
						elsif(pcadd = '0' and disable = '0') then
						pc1 <= ifin;
					
						elsif(check = '0' and disable = '0' and pcadd = '1') then
						pc1 <= adder1out; --pc update
						
						elsif(check = '1' and disable = '0' and pcadd = '1') then
						pc1 <= alu2out;
						
						
					
				      	--pc update for beq, blt, ble, jal, jlr, jri
						
						end if;
						
				   end if;	
				end if;
			
			else
				
				pc1 <= pc1;
				
			end if;
			
		end if;
		
	end process;
	
	pcout <= pc1;
	
end beh;