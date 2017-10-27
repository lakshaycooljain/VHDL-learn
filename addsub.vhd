library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity addsub is
     port(
         a : in STD_LOGIC_VECTOR(3 downto 0);
         b : in STD_LOGIC_VECTOR(3 downto 0);
         cout : out STD_LOGIC;
         s : out STD_LOGIC_VECTOR(3 downto 0);
         m: in std_logic);
end addsub;

architecture structural of addsub is

Component fa is
    port (a : in STD_LOGIC;
          b : in STD_LOGIC;
          c : in STD_LOGIC;
          sum : out STD_LOGIC;
          carry : out STD_LOGIC);
end component;       

signal t : std_logic_vector (2 downto 0);
signal x,y,z,w : std_logic;

begin
   
x<= m xor b(0); 
y<= m xor b(1);
z<= m xor b(2); 
w<= m xor b(3); 
   
    u0 : fa port map (a(0),x,m,s(0),t(0));
    u1 : fa port map (a(1),y,t(0),s(1),t(1));
    u2 : fa port map (a(2),z,t(1),s(2),t(2));
    ue : fa port map (a(3),w,t(2),s(3),cout);

end structural;   
