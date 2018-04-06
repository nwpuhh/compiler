----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:51:30 03/30/2018 
-- Design Name: 
-- Module Name:    module1 - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity module1 is
    Port ( CK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           LOAD : in  STD_LOGIC;
           SENS : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Din : in  STD_LOGIC_VECTOR (7 downto 0);
           Dout : out  STD_LOGIC_VECTOR (7 downto 0));
end module1;

architecture Behavioral of module1 is
constant null_vector: std_logic_vector(0 to 7):= "00000000";

begin
	process
		variable vector: std_logic_vector(0 to 7);

	begin
			wait until CK'event and CK='1';
			if RST='0' then Dout <= null_vector; 
			elsif LOAD='1' then vector := Din;
			elsif SENS='1' and EN='0' then               --enable and increas
				vector := vector+1;
			elsif SENS='0' and EN='0' then
				vector := vector-1;
			end if;
			Dout <= vector;
			
	end process;
end Behavioral;

