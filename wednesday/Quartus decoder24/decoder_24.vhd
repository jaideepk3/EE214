library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;
entity decoder24 is 
port(A1,A0,E: in std_logic;
     Y3,Y2,Y1,Y0: out std_logic);
end entity decoder24;
architecture structure of decoder24 is
 component AND_2 is 
 port( A,B,C :in std_logic;
     Y: out std_logic);
end component;
component NAND_2 is
 port( A,B,C :in std_logic;
     Y: out std_logic);
end component;

signal L1,L2,L3: std_logic;
begin

INVERTER_1:INVERTER port map( A=>A1,Y=>L1);
INVERTER_2:INVERTER port map(A=>A0,Y=>L2);
INVERTER_3:INVERTER port map(A=>L3,Y=>Y0);
AND1:AND_2 port map(A=>A1,B=>A0,C=>E,Y=>Y3);
AND2:AND_2 port map(A=>A1,B=>L2,C=>E,Y=>Y2);
AND3:AND_2 port map(A=>L1,B=>A0,C=>E,Y=>Y1);
NAND1:NAND_2 port map(A=>L1,B=>L2,C=>E,Y=>L3);
end structure;