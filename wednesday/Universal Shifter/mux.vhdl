library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity mux is 
 port(I0,I1,S: in std_logic;
      Y: out std_logic);
end entity mux;
architecture structure of mux is 

signal S1,S2,S3:std_logic;

begin

AND1:AND_2 port map (A => I0,B => S1,Y => S2);
AND2:AND_2 port map (A => S,B => I1, Y => S3);
INVERTER1:INVERTER port map(A => S,Y => S1);
ORGATE:OR_2 port map (A => S2,B=> S3,Y=> Y);
end structure;