library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity INVB is
   port (
	  B: in STD_LOGIC_VECTOR (3 downto 0);
	  Y: out STD_LOGIC_VECTOR (3 downto 0));
end entity INVB;

architecture Str of INVB is

begin
INV1: INVERTER port map(B(0),Y(0));
INV2: INVERTER port map(B(1),Y(1));
INV3: INVERTER port map(B(2),Y(2));
INV4: INVERTER port map(B(3),Y(3));

end Str;