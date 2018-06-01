----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:17:47 05/14/2018 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU8Bits is
    Port (
			  clk : in STD_LOGIC;  --pour tester
			  Ctrl_Alu: in STD_LOGIC_VECTOR(7 downto 0);
           A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           flag : out  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU8Bits;

architecture Behavioral of ALU8Bits is

signal R : STD_LOGIC_VECTOR(7 downto 0);
signal Radd: STD_LOGIC_VECTOR(8 downto 0);
signal Rsub: STD_LOGIC_VECTOR(8 downto 0);
signal Rmul: STD_LOGIC_VECTOR(15 downto 0);

begin
	Radd <= '0'&A + B; 
	Rsub <= '0'&A - B;     
	Rmul <= A * B; 
	    
	
	R <= Radd(7 downto 0) when Ctrl_Alu = x"01" else --x01 equal add
		  Rsub(7 downto 0) when Ctrl_Alu = x"03" else --x03 equal sub
		  Rmul(7 downto 0) when Ctrl_Alu = x"02" else --x02 equal mul
		  x"00";
		  
	S <= R;
	
	flag(0) <= Radd(8) when Ctrl_Alu = x"01" else --flag(0) is the FLAG_CARRY
				  '1' when (Ctrl_Alu= x"03" and Rsub(8) = '0') else
				  '0';
	flag(1) <= R(15) ; --flag(1) is the FLAG_NEGATIVE
	flag(2) <= '1' when (R = x"00") else '0'; -- flag(2) is the FLAG_ZERO
	flag(3) <= '1' when (Ctrl_Alu=x"01" and A(7) = '0' and B(7) = '0' and Radd(7) = '1') else-- flag(3) is the FLAG_OVERFLOW
				  '1' when (Ctrl_Alu=x"01" and A(7) = '1' and B(7) = '1' and Radd(7) = '0') else
				  '1' when (Ctrl_Alu=x"03" and A(7) = '0' and B(7) = '1' and Rsub(7) = '1') else
				  '1' when (Ctrl_Alu=x"03" and A(7) = '1' and B(7) = '0' and Rsub(7) = '0') else
				  '0';
end Behavioral;

