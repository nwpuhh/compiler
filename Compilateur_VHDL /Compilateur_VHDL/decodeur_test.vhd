--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:06:34 06/01/2018
-- Design Name:   
-- Module Name:   /home/hhu/Compilateur/Compilateur_VHDL/Compilateur_VHDL/decodeur_test.vhd
-- Project Name:  Compilateur_VHDL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decodeur
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
 
ENTITY decodeur_test IS
END decodeur_test;
 
ARCHITECTURE behavior OF decodeur_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decodeur
    PORT(
         ins_di : IN  std_logic_vector(31 downto 0);
         op : OUT  std_logic_vector(15 downto 0);
         a : OUT  std_logic_vector(15 downto 0);
         b : OUT  std_logic_vector(15 downto 0);
         c : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal ins_di : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal op : std_logic_vector(15 downto 0);
   signal a : std_logic_vector(15 downto 0);
   signal b : std_logic_vector(15 downto 0);
   signal c : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decodeur PORT MAP (
          ins_di => ins_di,
          op => op,
          a => a,
          b => b,
          c => c
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
     
		ins_di <= x"01110102"; 
		wait for 100ns;
		ins_di <= x"06110102"; 
		wait for 100ns;
		ins_di <= x"07110101";
		wait for 100ns;
		ins_di <= x"08110100"; 
		wait for 100ns;
		ins_di <= x"0E111011";
		wait for 100ns;
		ins_di <= x"0F101101";
      wait for clk_period*10;

      -- insert stimulus here 
		
		
   end process;

END;
