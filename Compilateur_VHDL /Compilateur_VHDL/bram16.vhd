library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL ;

entity bram16 is
  port (
  -- System
  sys_clk : in std_logic;
  -- Master
  di : out std_logic_vector(15 downto 0);
  we : in std_logic;
  a : in std_logic_vector(15 downto 0);
  do : in std_logic_vector(15 downto 0));
end bram16;

architecture Behavioral of bram16 is

type memory is array(integer range<>) of STD_LOGIC_VECTOR(15 downto 0); 
signal RAM: memory(0 to 127) := (others => (others => '0'));

begin
	process(sys_clk)
	begin 
		if (sys_clk'event and sys_clk='1') then
			if(we = '1') then
				RAM(conv_integer(a)) <= do ;
			else 
				di <= RAM(conv_integer(a)) ;
			end if;
		end if ;
	end process;
	
end Behavioral;

