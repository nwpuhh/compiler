----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:07:22 05/29/2018 
-- Design Name: 
-- Module Name:    decodeur - Behavioral 
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

entity decodeur is
    Port ( 
			  ins_di : in  STD_LOGIC_VECTOR (31 downto 0);
           op : out  STD_LOGIC_VECTOR (15 downto 0);
           a : out  STD_LOGIC_VECTOR (15 downto 0);
           b : out  STD_LOGIC_VECTOR (15 downto 0);
           c : out  STD_LOGIC_VECTOR (15 downto 0));
end decodeur;

architecture Behavioral of decodeur is
	signal op_aux : STD_LOGIC_VECTOR (15 downto 0); 
begin
	
		op_aux <= x"00"&ins_di(31 downto 24);
		op <= x"00"&ins_di(31 downto 24);
				--if(op_aux = x"0008" or op_aux = x"000E" or op_aux = x"000F") then
					--a <= ins_di(23 downto 8);
				--else
					--a <= x"00"&ins_di(23 downto 16);
				--end if;
				
		a <= ins_di(23 downto 8) when (op_aux = x"0008" or op_aux = x"000E" or op_aux = x"000F") else
				x"00"&ins_di(23 downto 16);
				--if(op_aux = x"0007" or op_aux = x"0006") then
					--b <= ins_di(15 downto 0);
				--else
					--b <= x"00"&ins_di(15 downto 8);
				--end if;
		b <= ins_di(15 downto 0) when (op_aux = x"0007" or op_aux = x"0006") else
			  x"00"&ins_di(15 downto 8);
		c <= x"00"&ins_di(7 downto 0);
		
end Behavioral;

