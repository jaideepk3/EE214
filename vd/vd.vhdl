library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity vd is
     port(I0, I1, I2, I3: in std_logic; Y: out std_logic);
end entity vd;

architecture structure of vd is
	signal x0, x1, x2, x3, x4: std_logic;
begin  
    in0: INVERTER port map (A => I0, Y => x4);
    nor1: NOR_2 port map (A => I3, B => I1,Y => X1);
    xnor1: XNOR_2 port map (A => I2, B => I1, Y => x0);
    and1: AND_2 port map (A => I3, B => x0, Y => x2);
    or1: OR_2 port map (A => x2, B => x1, Y => x3);
	 and2: AND_2 port map (A => x3, B => x4, Y => Y);
   
end structure;      