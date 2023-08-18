library ieee;
use ieee.std_logic_1164.all;
use work.Gates.all;
entity Full_Adder is
port(A,B,Cin: in std_logic;
   S,Cout: out std_logic);
end entity;
architecture structure of Full_Adder is
component decoder38 is
port(A2,A1,A0,E: in std_logic;
    Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0: out std_logic);
end component;
signal L1,L2,L3,L4,L5,L6,L7,L8:std_logic;
begin
decoder:decoder38 port map(A2=>A,A1=>B,A0=>Cin,E=>'1',
                            Y0=>L1,
									 Y1=>L2,
									 Y2=>L3,
									 Y3=>L4,
									 Y4=>L5,
									 Y5=>L6,
									 Y6=>L7,
									 Y7=>L8);
OR1:OR_2 port map(A=>L2,B=>L3,C=>L5,D=>L8,Y=>S);
OR2:OR_2 port map(A=>L4,B=>L6,C=>L7,D=>L8,Y=>Cout);
end structure;