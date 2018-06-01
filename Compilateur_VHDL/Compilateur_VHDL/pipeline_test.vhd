--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:45:02 05/14/2018
-- Design Name:   
-- Module Name:   /home/hhu/Compilateur/Compilateur_VHDL/Compilateur_VHDL/pipeline_test.vhd
-- Project Name:  Compilateur_VHDL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pipeline
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
 
ENTITY pipeline_test IS
END pipeline_test;
 
ARCHITECTURE behavior OF pipeline_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pipeline
    PORT(
         clk : IN  std_logic;
         op : IN  std_logic_vector(15 downto 0);
         a : IN  std_logic_vector(15 downto 0);
         b : IN  std_logic_vector(15 downto 0);
         c : IN  std_logic_vector(15 downto 0);
         opS : OUT  std_logic_vector(15 downto 0);
         aS : OUT  std_logic_vector(15 downto 0);
         bS : OUT  std_logic_vector(15 downto 0);
         cS : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal op : std_logic_vector(15 downto 0) := (others => '0');
   signal a : std_logic_vector(15 downto 0) := (others => '0');
   signal b : std_logic_vector(15 downto 0) := (others => '0');
   signal c : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal opS : std_logic_vector(15 downto 0);
   signal aS : std_logic_vector(15 downto 0);
   signal bS : std_logic_vector(15 downto 0);
   signal cS : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pipeline PORT MAP (
          clk => clk,
          op => op,
          a => a,
          b => b,
          c => c,
          opS => opS,
          aS => aS,
          bS => bS,
          cS => cS
        );

   -- Clock process definitions
   clock_process :process
   begin
		clk <= '0';
		wait for clock_period/2;
		clk <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 
		op <= x"0000", x"0001" after 100 ns, x"0010" after 200 ns, x"0100" after 300ns , x"1000" after 400ns ;
		a <= x"0000", x"0101" after 100 ns, x"0110" after 200 ns, x"0100" after 300ns , x"1100" after 400ns ;
		b <= x"0000", x"0011" after 100 ns, x"0010" after 200 ns, x"0110" after 300ns , x"1010" after 400ns ;
		c <= x"0000", x"1001" after 100 ns, x"1010" after 200 ns, x"1100" after 300ns , x"1000" after 400ns ;

      wait;
   end process;

END;
