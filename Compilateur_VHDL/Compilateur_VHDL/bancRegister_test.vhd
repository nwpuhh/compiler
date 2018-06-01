--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:53:48 05/29/2018
-- Design Name:   
-- Module Name:   /home/hhu/Compilateur/Compilateur_VHDL/Compilateur_VHDL/bancRegister_test.vhd
-- Project Name:  Compilateur_VHDL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bancRegistres
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
 
ENTITY bancRegister_test IS
END bancRegister_test;
 
ARCHITECTURE behavior OF bancRegister_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bancRegistres
    PORT(
         clk : IN  std_logic;
         RST : IN  std_logic;
         A_no : IN  std_logic_vector(3 downto 0);
         B_no : IN  std_logic_vector(3 downto 0);
         W_no : IN  std_logic_vector(3 downto 0);
         W : IN  std_logic;
         Data : IN  std_logic_vector(15 downto 0);
         QA : OUT  std_logic_vector(15 downto 0);
         QB : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal RST : std_logic := '0';
   signal A_no : std_logic_vector(3 downto 0) := (others => '0');
   signal B_no : std_logic_vector(3 downto 0) := (others => '0');
   signal W_no : std_logic_vector(3 downto 0) := (others => '0');
   signal W : std_logic := '0';
   signal Data : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal QA : std_logic_vector(15 downto 0);
   signal QB : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bancRegistres PORT MAP (
          clk => clk,
          RST => RST,
          A_no => A_no,
          B_no => B_no,
          W_no => W_no,
          W => W,
          Data => Data,
          QA => QA,
          QB => QB
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
		wait for 100ns;
      wait for clock_period*10;

      -- insert stimulus here 
		W <= '1', '0' after 350ns; --should write
		RST <= '1'; --should not be reseted
		W_no <= 1, 2 after 100ns, 3 after 200ns, 4 after 300ns, 4 after 400ns;
		A_no <= 15, 1 after 100ns, 3 after 200ns, 4 after 300ns, 5 after 400ns;
		B_no <= 15, 2 after 100ns, 2 after 200ns, 4 after 300ns, 3 after 400ns;
		Data <= x"0000", x"0001" after 100ns, x"0010" after 200ns, x"0100" after 300ns, x"1000" after 400ns;
		
		wait;
   end process;

END;
