library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity vowel_detector is
     port(I0, I1, I2, I3: in std_logic; Y: out std_logic);
end entity vowel_detector;

architecture structure of vowel_detector is
	signal x0, x1, x2, x3: std_logic;
begin  
    in0: INVERTER port map (A => I0, Y => x1);
	 and1: AND_2 port map (A => I2, B => I3, Y => x0);
    xnor1: XNOR_2 port map (A => x0, B => I1, Y => x2);
	 and2: AND_2 port map (A => x2, B => x1, Y => Y);
   
end structure;      