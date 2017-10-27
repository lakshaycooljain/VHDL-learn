library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_4X1 is
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 C : in STD_LOGIC;
		 D : in STD_LOGIC;
		 S : in STD_LOGIC_VECTOR(1 downto 0);
		 Y : out STD_LOGIC
	     );
end MUX_4X1;
architecture MUX_DATA of MUX_4X1 is
begin
Y<= A WHEN S(1)='0' AND S(0)='0' ELSE
    B WHEN S(1)='0' AND S(0)='1' ELSE
    C WHEN S(1)='1' AND S(0)='0' ELSE
	D WHEN S(1)='1' AND S(0)='1' ;
end MUX_DATA;
