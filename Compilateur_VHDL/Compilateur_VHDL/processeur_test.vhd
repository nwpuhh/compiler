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
         ins : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC ;
			  data_di : in STD_LOGIC_VECTOR (15 downto 0);
			  data_we : out STD_LOGIC ;
			  data_a : out STD_LOGIC_VECTOR (15 downto 0); 
			  data_do : out STD_LOGIC_VECTOR (15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ins : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal data_di : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
	signal data_we : std_logic := '0';
   signal data_a : std_logic_vector(15 downto 0);
	signal data_do : std_logic_vector(15 downto 0); 

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: processeur PORT MAP (
          ins => ins,
          clk => clk,
          data_di => data_di,
          data_we => data_we,
			 data_a => data_a,
			 data_do => data_do
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
      

      -- insert stimulus here	
		ins <= x"06010203";
		wait for 50ns;
		ins <= x"06050302";
		wait for 50ns;
		ins <= x"05020100";
		wait for 50ns;
		ins <= x"05030500";
		wait for 50ns;
		ins <= x"01060301";
		wait for 50ns;
		ins <= x"01070205";
		wait for 50ns;
		ins <= x"02010203";
		wait for 50ns;
		ins <= x"03010706";
		wait for 50ns;
		ins <= x"03080702";
		wait for 50ns;
		ins <= x"07020001";
		data_di <= x"0005";
		wait for 50ns ;
		ins <= x"08000109";
		wait for 50ns ;
		

      wait;
   end process;

END;
