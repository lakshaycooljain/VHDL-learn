library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jkff is
    Port ( j : in STD_LOGIC;
           k : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC;
           qn : out STD_LOGIC);
end jkff;

architecture structural of jkff is
component dff is
    Port ( d : in STD_LOGIC;
           en : in STD_LOGIC;
           clk :in STD_LOGIC;
           q : out STD_LOGIC;
           qn : out STD_LOGIC);
end component;

signal ip : std_logic;
signal op, opn : std_logic;    
begin
ip <= (j and opn) or (not k and op)  ;
    u0 : dff port map (ip,'1',clk,op,opn);

q <= op;
qn <=opn;
end structural;
