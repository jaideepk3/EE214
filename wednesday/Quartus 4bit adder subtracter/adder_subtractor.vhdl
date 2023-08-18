library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Adder_Subtractor is 
port(A3,A2,A1,A0,B3,B2,B1,B0,M: in std_logic;
	     S3,S2,S1,S0,Cout: out std_logic);

end entity Adder_Subtractor;

architecture structure of Adder_Subtractor is
component Full_Adder is
  port(A,B,Cin: in std_logic;
       S,Cout: out std_logic);
end component;

signal Cout1,Cout2,Cout3,Cout4,Cout5,Cout6,Cout7: std_logic;
begin

XOR1:XOR_2 port map (A => M,B => B0,Y => Cout1);
XOR2:XOR_2 port map (A => M,B => B1,Y => Cout2);
XOR3:XOR_2 port map (A => M,B => B2,Y => Cout3);
XOR4:XOR_2 port map (A => M,B => B3,Y => Cout4);
FA1:Full_Adder port map (A => A0,B => Cout1,Cin => M,Cout => Cout5,S => S0);
FA2:Full_Adder port map ( A => A1,B => Cout2,Cin => Cout5,Cout => Cout6,S => S1);
FA3:Full_Adder port map (A => A2,B => Cout3,Cin => Cout6,Cout => Cout7,S => S2);
FA4:Full_Adder port map (A => A3,B => Cout4,Cin => Cout7,Cout => Cout,S => S3);

end structure;


