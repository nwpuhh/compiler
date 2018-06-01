----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:35:18 05/14/2018 
-- Design Name: 
-- Module Name:    pipeline - Behavioral 
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

entity pipeline is
    Port ( clk : in  STD_LOGIC;
           op : in  STD_LOGIC_VECTOR (15 downto 0);
           a : in  STD_LOGIC_VECTOR (15 downto 0);
           b : in  STD_LOGIC_VECTOR (15 downto 0);
           c : in  STD_LOGIC_VECTOR (15 downto 0);
           opS : out  STD_LOGIC_VECTOR (15 downto 0);
           aS : out  STD_LOGIC_VECTOR (15 downto 0);
           bS : out  STD_LOGIC_VECTOR (15 downto 0);
           cS : out  STD_LOGIC_VECTOR (15 downto 0));
end pipeline;

architecture Behavioral of pipeline is
	
begin
	process (clk)
		begin
			if (clk'event and clk='1') then
				opS <= op;
				aS <= a;
				bS <= b;
				cS <= c;
		  end if;
	end process;

end Behavioral;

