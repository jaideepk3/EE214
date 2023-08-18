library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Adder_8bit  is
  port(A, B :in std_logic_vector(7 downto 0); Cout :out std_logic; S :out std_logic_vector(7 downto 0));
end entity Adder_8bit;
architecture structure of Adder_8bit is
signal C1,C2,C3,C4,C5,C6,C7 : std_logic;
begin
  -- component instances
ha1: HALF_ADDER
port map (A=>A(0),B=>B(0),S=>S(0),C=>C1);
fa1: Fulladder
port map (A=>A(1),B=>B(1),Cin=>C1,S=>S(1),Cout=>C2);
fa2: Fulladder
port map (A=>A(2),B=>B(2),Cin=>C2,S=>S(2),Cout=>C3);
fa3: Fulladder
port map (A=>A(3),B=>B(3),Cin=>C3,S=>S(3),Cout=>C4);
fa4: Fulladder
port map (A=>A(4),B=>B(4),Cin=>C4,S=>S(4),Cout=>C5);
fa5: Fulladder
port map (A=>A(5),B=>B(5),Cin=>C5,S=>S(5),Cout=>C6);
fa6: Fulladder
port map (A=>A(6),B=>B(6),Cin=>C6,S=>S(6),Cout=>C7);
fa7: Fulladder
port map (A=>A(7),B=>B(7),Cin=>C7,S=>S(7),Cout=>Cout);
end structure;