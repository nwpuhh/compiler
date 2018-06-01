--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:24:58 06/01/2018
-- Design Name:   
-- Module Name:   /home/hhu/Compilateur/Compilateur_VHDL/Compilateur_VHDL/processeur_test.vhd
-- Project Name:  Compilateur_VHDL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: processeur
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
 
ENTITY processeur_test IS
END processeur_test;
 
ARCHITECTURE behavior OF processeur_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT processeur
    PORT(
         ins : IN  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         dataIn : IN  std_logic_vector(15 downto 0);
         dataOut : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ins : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal dataIn : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal dataOut : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: processeur PORT MAP (
          ins => ins,
          clk => clk,
          dataIn => dataIn,
          dataOut => dataOut
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
		ins <= x"06010203";
		wait for 100ns;
		ins <= x"06110302";

      wait;
   end process;

END;
