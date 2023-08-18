library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity MUX2x1 is
     port(I0, I1, S: in std_logic; Y: out std_logic);
end entity MUX2x1;

architecture structure of MUX2x1 is
	signal m,n,o: std_logic;
begin  
 
    o1: OR_2 port map (A => o,B => m,Y => Y);
    a0: AND_2 port map (A => S,B => I1,Y => m);
    a1: ANd_2 port map (A => I0,B => n,Y => o);
    in0: INVERTER port map (A => S,Y => n);
   
end structure;      
  