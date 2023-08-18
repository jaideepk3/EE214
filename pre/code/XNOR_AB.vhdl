library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity XNOR_AB is
   port (
	  A: in STD_LOGIC_VECTOR (3 downto 0);
	  B: in STD_LOGIC_VECTOR (3 downto 0);
	  Y: out STD_LOGIC_VECTOR (3 downto 0));
end entity XNOR_AB;

architecture Str of XNOR_AB is

begin
X1: XNOR_2 port map(A(0),B(0),Y(0));
X2: XNOR_2 port map(A(1),B(1),Y(1));
X3: XNOR_2 port map(A(2),B(2),Y(2));
X4: XNOR_2 port map(A(3),B(3),Y(3));

end Str;