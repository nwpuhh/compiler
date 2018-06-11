----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:02:27 06/08/2018 
-- Design Name: 
-- Module Name:    IP - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IP is
    Port ( clk : in  STD_LOGIC;
			  b_alea : in STD_LOGIC;
			  ins_a : out  STD_LOGIC_VECTOR (15 downto 0));
end IP;

architecture Behavioral of IP is
	signal a : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
begin
	process (clk)
		begin
			if (clk'event and clk='1') then
				a <= std_logic_vector( unsigned(a) + 1 ); 
		  end if;
		   if (clk'event and b_alea='1') then
				a <= std_logic_vector( unsigned(a) -1 );
			end if;
	end process;
	ins_a <= a ;
end Behavioral;

