----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:01:31 06/01/2018 
-- Design Name: 
-- Module Name:    processeur - Behavioral 
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

entity processeur is
    Port ( ins : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC ;
			  data_di : in STD_LOGIC_VECTOR (15 downto 0);
			  data_we : out STD_LOGIC ;
			  data_a : out STD_LOGIC_VECTOR (15 downto 0); 
			  data_do : out STD_LOGIC_VECTOR (15 downto 0));
end processeur;

architecture Behavioral of processeur is

-- component declaration
    COMPONENT decodeur
    PORT(
         ins_di : IN  std_logic_vector(31 downto 0);
         op : OUT  std_logic_vector(15 downto 0);
         a : OUT  std_logic_vector(15 downto 0);
         b : OUT  std_logic_vector(15 downto 0);
         c : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
	     COMPONENT ALU
    PORT(
         Ctrl_Alu : IN  std_logic_vector(15 downto 0);
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         flag : OUT  std_logic_vector(3 downto 0);
         S : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
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

	--Decodeur
         signal opDec : std_logic_vector(15 downto 0) := (others => '0');
         signal aDec : std_logic_vector(15 downto 0) := (others => '0');
         signal bDec : std_logic_vector(15 downto 0) := (others => '0');
         signal cDec : std_logic_vector(15 downto 0) := (others => '0');

	--Pipe LI/DI
         signal opLI : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
         signal aLI : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
         signal bLI : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
         signal cLI : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
			
	--Banc Registres
         signal RST : std_logic := '1';
         signal W : std_logic := '0';
         signal QA : std_logic_vector(15 downto 0) := (others => '0');
         signal QB : std_logic_vector(15 downto 0) := (others => '0');
			
	--pipeline DI/EX
         signal opDI : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
         signal aDI : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
         signal bDI : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
         signal cDI : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
	-- ALU
         signal flag : std_logic_vector(3 downto 0) := (others => '0');
         signal S : std_logic_vector(15 downto 0) := (others => '0');
			
	--pipeline EX/Mem
         signal opEX : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
         signal aEX : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
         signal bEX : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
         signal cEX : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
			
	--pipeline Mem/RE
         signal opMem : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
         signal aMem : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
         signal bMem : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
         signal cMem : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
			
	--MUX
			signal muxBR : STD_LOGIC_VECTOR (15 downto 0) := (others =>'0');
			signal muxALU : STD_LOGIC_VECTOR (15 downto 0) := (others =>'0');
			signal muxMem : STD_LOGIC_VECTOR (15 downto 0) := (others => '0') ;
			signal muxRe : STD_LOGIC_VECTOR (15 downto 0) := (others => '0') ;
	
	--LC
			signal lcRE : STD_LOGIC := '0' ;
			signal lcMEM : STD_LOGIC := '0' ;
begin
	-- instantiation
	   dec: decodeur PORT MAP (
          ins_di => ins,
          op => opDec,
          a => aDec,
          b => bDec,
          c => cDec
      );
	   li_di: pipeline PORT MAP (
          clk => clk,
          op => opDec,
          a => aDec,
          b => bDec,
          c => cDec,
          opS => opLI,
          aS => aLI,
          bS => bLI,
          cS => cLI
      );
		bR: bancRegistres PORT MAP (
          clk => clk,
          RST => RST,
          A_no => BLI(3 downto 0),
          B_no => CLI(3 downto 0),
          W_no => AMEM(3 downto 0),
          W => lcRE,
          Data => muxRE,
          QA => QA,
          QB => QB
      );
		di_ex: pipeline PORT MAP (
          clk => clk,
          op => opLI,
          a => aLI,
          b => muxBR,
          c => QB,
          opS => opDI,
          aS => aDI,
          bS => bDI,
          cS => cDI
      );
	   ual: ALU PORT MAP (
          Ctrl_Alu => OPDI,
          A => bDI,
          B => cDI,
          flag => flag,
          S => S
      );
	   ex_mem: pipeline PORT MAP (
          clk => clk,
          op => opDI,
          a => aDI,
          b => muxALU,
          c => muxALU,
          opS => opEX,
          aS => aEX,
          bS => bEX,
          cS => cEX
      );
		mem_re: pipeline PORT MAP (
          clk => clk,
          op => opEX,
          a => aEX,
          b => bEX,
          c => cEX,
          opS => opMem,
          aS => aMem,
          bS => bMem,
          cS => cMem
      );
		
		muxBR <= BLI when (opLI = x"0006" or opLI = x"0007") else 
					QA when (opLI = x"0005" or opLI = x"0001" or opLI = x"0002" or opLI = x"0003" or opLI = x"0004");
		muxALU <= BDI when (opDI = x"0006" or opDI = x"0005" or opDI =x"0007") else
					 S   when (opDI = x"0001" or opDI = x"0002" or opDI = x"0003" or opDI = x"0004");
		lcRE <= '1' when (opMem = x"0006" or opMem = x"0005" or opMem = x"0001" or opMem = x"0002" or opMem = x"0003" or opMem = x"0004" or opMem = x"0007") else
				   '0' ;
		lcMEM <= '1' when (opEX = x"0007") else
					'0' ;
		muxMem <= aEX when (opEX = x"0008") else
					 bEX when (opEX = x"0007") ;
		muxRE <= data_di when (opMem = x"0007") else
					BMem ;
		
		data_a <= muxMem;			
		data_we <= lcMEM ;
		data_do <= bEX;
		
		

end Behavioral;

