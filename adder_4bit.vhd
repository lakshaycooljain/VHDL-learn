library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_4bit is
     port(
         a : in STD_LOGIC_VECTOR(3 downto 0);
         b : in STD_LOGIC_VECTOR(3 downto 0);
         cin : in STD_LOGIC;
         cout : out STD_LOGIC;
         s : out STD_LOGIC_VECTOR(3 downto 0)
         );
end adder_4bit;

architecture structural of adder_4bit is

Component fa is
    port (a : in STD_LOGIC;
          b : in STD_LOGIC;
          c : in STD_LOGIC;
          sum : out STD_LOGIC;
          carry : out STD_LOGIC);
end component;       

signal t : std_logic_vector (2 downto 0);

begin
   
    u0 : fa port map (a(0),b(0),cin,s(0),t(0));
    u1 : fa port map (a(1),b(1),t(0),s(1),t(1));
    u2 : fa port map (a(2),b(2),t(1),s(2),t(2));
    ue : fa port map (a(3),b(3),t(2),s(3),cout);

end structural;           
