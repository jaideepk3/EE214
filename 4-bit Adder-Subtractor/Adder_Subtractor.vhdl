library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Adder_Subtractor is 
   port(A, B: in std_logic_vector(3 downto 0); M: in std_logic; S: out std_logic_vector(3 downto 0); Cout: out std_logic);
end entity Adder_Subtractor;

architecture structure of Adder_Subtractor is
component Full_Adder is
  port(A,B,Cin: in std_logic;
       S,Cout: out std_logic);
end component;

signal L1,L2,L3,L4,L5,L6,L7: std_logic;
begin

xor11:XOR_2 
 port map (A => M,B => B(0),Y => L1);
xor2:XOR_2
 port map (A => M,B => B(1),Y => L2);
xor3:XOR_2
 port map (A => M,B => B(2),Y => L3);
xor4:XOR_2
 port map (A => M,B => B(3),Y => L4);
fa1:Full_Adder
 port map (A => A(0),B => L1,Cin => M,Cout => L5,S => S(0));
fa2:Full_Adder
 port map (A => A(1),B => L2,Cin => L5,Cout => L6,S => S(1));
fa3:Full_Adder
 port map (A => A(2),B => L3,Cin => L6,Cout => L7,S => S(2));
fa4:Full_Adder
 port map (A => A(3),B => L4,Cin => L7,Cout => Cout,S => S(3));

end structure;
