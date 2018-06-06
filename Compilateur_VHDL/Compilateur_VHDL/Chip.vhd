----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:04:08 06/04/2018 
-- Design Name: 
-- Module Name:    Chip - Behavioral 
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

entity Chip is
Port ( ins : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC );
end Chip;

architecture Behavioral of Chip is

    COMPONENT processeur
    PORT(
			ins : in  STD_LOGIC_VECTOR (31 downto 0);
         clk : IN  std_logic ;
		   data_di : in STD_LOGIC_VECTOR (15 downto 0);
			data_we : out STD_LOGIC ;
			data_a : out STD_LOGIC_VECTOR (15 downto 0); 
			data_do : out STD_LOGIC_VECTOR (15 downto 0));
    END COMPONENT;
	 
    COMPONENT bram16
	 PORT(
			-- System
			sys_clk : in std_logic;
			-- Master
			di : out std_logic_vector(15 downto 0);
			we : in std_logic;
			a : in std_logic_vector(15 downto 0);
			do : in std_logic_vector(15 downto 0));
	END COMPONENT;
	
		--Processeur
			signal data_we : std_logic := '0' ;
         signal data_a : std_logic_vector(15 downto 0) := (others => '0');
         signal data_do : std_logic_vector(15 downto 0) := (others => '0');
			
		--RAM
			signal di : std_logic_vector(15 downto 0) := (others => '0');
	 
begin
		proc: processeur PORT MAP (
			 ins => ins,
          clk => clk,
          data_di  => di,
          data_we => data_we,
          data_a => data_a,
          data_do => data_do
      );
		
		ram: bram16 PORT MAP (
			sys_clk => clk,
			di => di,
			we => data_we,
			a => data_a,
			do => data_do
		);

end Behavioral;

