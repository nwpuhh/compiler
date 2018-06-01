--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:42:52 05/15/2018
-- Design Name:   
-- Module Name:   /home/hhu/Compilateur/Compilateur_VHDL/Compilateur_VHDL/alu_test.vhd
-- Project Name:  Compilateur_VHDL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY alu_test IS
END alu_test;
 
ARCHITECTURE behavior OF alu_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU8Bits
    PORT(
         clk : IN  std_logic;
         Ctrl_Alu : IN  std_logic_vector(7 downto 0);
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         flag : OUT  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal Ctrl_Alu : std_logic_vector(7 downto 0) := (others => '0');
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal flag : std_logic_vector(3 downto 0);
   signal S : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU8Bits PORT MAP (
          clk => clk,
          Ctrl_Alu => Ctrl_Alu,
          A => A,
          B => B,
          flag => flag,
          S => S
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		Ctrl_Alu <= x"03";
		A <= x"00", x"01" after 100 ns, x"10" after 200 ns, x"00" after 300ns , x"01" after 400ns , x"ff" after 500ns, x"00" after 600ns;
		B <= x"00", x"11" after 100 ns, x"10" after 200 ns, x"10" after 300ns , x"10" after 400ns , x"00" after 500ns, x"ff" after 600ns;
      wait;
   end process;

END;
