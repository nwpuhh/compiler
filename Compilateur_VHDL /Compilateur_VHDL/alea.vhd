----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:49:13 06/06/2018 
-- Design Name: 
-- Module Name:    alea - Behavioral 
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

entity alea is
    Port (  opLI : in  STD_LOGIC_VECTOR (15 downto 0);
				aLI : in STD_LOGIC_VECTOR (15 downto 0);
				bLI : in STD_LOGIC_VECTOR (15 downto 0); 
				cLI : in STD_LOGIC_VECTOR (15 downto 0);
				opDI : in STD_LOGIC_VECTOR (15 downto 0);
				aDI : in STD_LOGIC_VECTOR (15 downto 0);
				bDI : in STD_LOGIC_VECTOR (15 downto 0);
				cDI : in STD_LOGIC_VECTOR (15 downto 0);
				opEX : in STD_LOGIC_VECTOR (15 downto 0);
				aEX : in STD_LOGIC_VECTOR (15 downto 0);
				bEX : in STD_LOGIC_VECTOR (15 downto 0);
				cEX : in STD_LOGIC_VECTOR (15 downto 0);
			  b_alea : out STD_LOGIC);
end alea;

architecture Behavioral of alea is
	signal li_read : STD_LOGIC := '0';
	signal di_write : STD_LOGIC := '0';
	signal ex_write : STD_LOGIC := '0' ;
	signal li_di_conflict : STD_LOGIC := '0' ;
	signal li_ex_conflict : STD_LOGIC := '0' ;

begin
	li_read <= '1' when (opLI = x"0001" or opLI = x"0002" or opLI = x"0003" or opLI = x"0004" or opLI = x"0005" or opLI = x"0008") else
				  '0';
	di_write <= '1' when (opDI = x"0001" or opDI = x"0002" or opDI = x"0003" or opDI = x"0004" or opLI = x"0005" or opLI = x"00006" or opLI = x"0007") else
			      '0';
	ex_write <= '1' when (opEX = x"0001" or opEX = x"0002" or opEX = x"0003" or opEX = x"0004" or opEX = x"0005" or opEX = x"00006" or opEX = x"0007") else
			      '0';
	li_di_conflict <= '1' when ((li_read = '1') and (di_write = '1') and (bLI = aDI or cLI = aDI)) else
						   '0';
	li_ex_conflict <= '1' when ((li_read = '1') and (ex_write = '1') and (bLI = aEX or cLI = aEX)) else
						   '0';
	b_alea <= (li_read and di_write and li_di_conflict) or (li_read and ex_write and li_ex_conflict); 
end Behavioral;

