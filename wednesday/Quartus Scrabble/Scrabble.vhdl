library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;
entity scrabble is 
port(I0,I1,I2,I3:in std_logic;
    Y:out std_logic);
end entity;
architecture structure of scrabble is
signal L1,L2:std_logic;
begin

XNOR1:XNOR_2 port map(A=>I0,B=>I1,Y=>L1);
XOR1:XOR_2 port map(A=>I2,B=>I3,Y=>L2);
AND1:AND_2 port map(A=>L1,B=>L2,Y=>Y);
end structure;