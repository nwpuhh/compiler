----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:26:30 05/17/2018 
-- Design Name: 
-- Module Name:    bancRegistres - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bancRegistres is
    Port ( 
	        clock : in STD_LOGIC;
			  RST : in STD_LOGIC;
			  A_no : in  STD_LOGIC_VECTOR (15 downto 0);
           B_no : in  STD_LOGIC_VECTOR (15 downto 0);
           W_no : in  STD_LOGIC_VECTOR (15 downto 0);
           W : in  STD_LOGIC;
           Data : in  STD_LOGIC_VECTOR (15 downto 0);
           QA : out  STD_LOGIC_VECTOR (15 downto 0);
           QB : out  STD_LOGIC_VECTOR (15 downto 0));
end bancRegistres;

architecture Behavioral of bancRegistres is

type registerFile is array(integer range<>) of STD_LOGIC_VECTOR(15 downto 0); 
signal registers: registerFile(0 to 15);
signal W_temp : STD_LOGIC_VECTOR(15 downto 0);

-- lecture asynchrone / ecriture synchrone / bypass asynchrone
begin
	process(clock)  --writer synchrone
		begin
			if(clock'event and clock='1') then
				if(RST='0') then  --Should be reseted
					registers <= (others => (others => '0'));
				elsif (W = '1') then --should write
						registers(W_no) <= Data;
				end if;
			end if;
	end process;
	
	W_temp <= W_no;
	
	if(W_temp=A_no) then
		QA <= Data; 
		QB <= registers(B_no);
	elsif(W_temp=B_no) then
		QA <= registers(A_no);
		QB <= Data;
	elsif(W_temp = A_no and W_temp = B_no) then
		QA <= Data; 
		QB <= Data;
	else then
		QA <= registers(A_no);
		QB <= registers(B_no);
	end if;
	
end Behavioral;

