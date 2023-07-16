library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;	 
use ieee.std_logic_unsigned.all;

entity BTB is
port(
wren: in std_logic;
clock: in std_logic;
rst: in std_logic;
--inst: in std_logic;
branch_add1: in std_logic_vector(15 downto 0); -- in IF stage
branch_add2: in std_logic_vector(15 downto 0); -- in EX stage
pc: in std_logic_vector(15 downto 0);
target_add: in std_logic_vector(15 downto 0);
taken: in std_logic;
add_out: out std_logic_vector(15 downto 0);
exstage_out: out std_logic_vector(15 downto 0);
pcadd: out std_logic;
disable: out std_logic
);
end BTB;

architecture beh of BTB is 

type btbarray is array(255 downto 0) of std_logic_vector(33 downto 0);   
signal BTBF: btbarray:= (
0 => "0000000000000000000000000000000000",
1 => "0000000000000000000000000000000000",
2 => "0000000000000000000000000000000000",
3 => "0000000000000000000000000000000000",
4 => "0000000000000000000000000000000000",
5 => "0000000000000000000000000000000000",
6 => "0000000000000000000000000000000000",
7 => "0000000000000000000000000000000000",
others => "0000000000000000000000000000000000"
);
signal add1: std_logic_vector(15 downto 0) := "0000000000000000";
signal exout1: std_logic_vector(15 downto 0) := "0000000000000000";
signal pcadd1: std_logic := '1';
signal dis1: std_logic := '0';

	function inte(A: in std_logic_vector(7 downto 0))
	return integer is
	
	variable a1: integer := 0;
	
	begin
		
		L1: for i in 0 to 7 loop
			
			if(A(i) = '1') then
				a1 := a1 + (2**i);
			end if;
			
		end loop L1;
		
	return a1;
	
	end inte;
	
	function add(A: in std_logic_vector(15 downto 0); B: in std_logic_vector(15 downto 0); C: in std_logic)
	return std_logic_vector is
	
	variable add1 : std_logic_vector(15 downto 0):= (others=>'0');
	variable carry11 : std_logic_vector(16 downto 0):= (others=>'0');
	
	begin
		
		carry11(0) := C;
		
		L1: for i in 0 to 15 loop
		
		add1(i) := A(i) xor B(i) xor carry11(i);
		carry11(i+1) := (A(i) and B(i)) or (A(i) and carry11(i)) or (B(i) and carry11(i));
		
		end loop L1;
		
--		add1(16) := carry11(16);
		
--		if(add1(15 downto 0) = "0000000000000000") then
--			add1(17) := '1';
--		else
--			add1(17) := '0';
--		end if;
		
	return add1;
	
	end add;

begin
	
	process (clock, rst, branch_add1, target_add, taken) --8 register files
	
	begin
		
		if(rst = '1') then
			
			BTBF <= (others => "0000000000000000000000000000000000");
			
		else
		
		  if(BTBF(inte(branch_add1(7 downto 0)))(1) = '0') then
		     
			  pcadd1 <= '1';
			  
			elsif(BTBF(inte(branch_add1(7 downto 0)))(1) = '1' and not(BTBF(inte(branch_add1(7 downto 0)))(17 downto 2) = "0000000000000000"))	then
           pcadd1	<= '0';
			  add1 <= BTBF(inte(branch_add1(7 downto 0)))(17 downto 2);
			
	      else pcadd1 <= '1';
	
	     end if;
		 
		 if(wren = '1') then
		  if(BTBF(inte(branch_add2(7 downto 0)))(1) = '0' and taken = '0') then
		      
				
				BTBF(inte(branch_add2(7 downto 0)))(1 downto 0) <= "00";
				
		elsif(BTBF(inte(branch_add2(7 downto 0)))(1) = '0' and taken = '1') then
		      dis1 <= '1';
				BTBF(inte(branch_add2(7 downto 0)))(17 downto 2) <= target_add;
				BTBF(inte(branch_add2(7 downto 0)))(33 downto 18) <= branch_add2;
			   exout1 <= target_add;	
				
	         if(BTBF(inte(branch_add2(7 downto 0)))(0) = '0') then
				   BTBF(inte(branch_add2(7 downto 0)))(1 downto 0) <= "01";
				else BTBF(inte(branch_add2(7 downto 0)))(1 downto 0) <= "10";
			   end if;
			
		elsif(BTBF(inte(branch_add2(7 downto 0)))(1) = '1' and taken = '1') then
		      if(not(target_add = BTBF(inte(branch_add2(7 downto 0)))(17 downto 0) or BTBF(inte(branch_add2(7 downto 0)))(17 downto 0) = "0000000000000000")) then
					dis1 <= '1';
					exout1 <= target_add;
					BTBF(inte(branch_add2(7 downto 0)))(17 downto 2) <= target_add;
					BTBF(inte(branch_add2(7 downto 0)))(33 downto 18) <= branch_add2;
				end if;	
		 
	        	BTBF(inte(branch_add2(7 downto 0)))(1 downto 0) <= "11";
		 
		 elsif(BTBF(inte(branch_add2(7 downto 0)))(1) = '1' and taken = '0') then
		 
		      dis1 <= '1';
				exout1 <= add(pc, "0000000000000001", '0');
				
				
		      if(BTBF(inte(branch_add2(7 downto 0)))(0) = '0') then
				   BTBF(inte(branch_add2(7 downto 0)))(1 downto 0) <= "01";
				else BTBF(inte(branch_add2(7 downto 0)))(1 downto 0) <= "10";
			   end if;
				
		end if;

      end if;		
		   
		
		  
		  
		end if;   
		
	end process;
	add_out <= add1;
	exstage_out <= exout1;
	pcadd <= pcadd1;
	disable <= dis1;
	
	
end beh;