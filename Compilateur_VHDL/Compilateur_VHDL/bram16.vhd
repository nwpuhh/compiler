entity bram16 is
  port (
  -- System
  sys_clk : in std_logic;
  -- Master
  di : out std_logic_vector(15 downto 0);
  we : in std_logic;
  a : in std_logic_vector(15 downto 0);
  do : in std_logic_vector(15 downto 0));
end bram16;

architecture Behavioral of bram16 is

type memory is array(integer range<>) of STD_LOGIC_VECTOR(15 downto 0); 
signal RAM: memory(0 to 1024) := (others => (others => '0'));

begin

end Behavorial;

