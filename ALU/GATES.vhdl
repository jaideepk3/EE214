library ieee;
use ieee.std_logic_1164.all;
package Gates is
  component INVERTER is
   port (A: in std_logic; Y: out std_logic);
  end component INVERTER;

  component AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component AND_2;

  component NAND_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NAND_2;

  component OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component OR_2;

  component NOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component NOR_2;

  component XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XOR_2;

  component XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
  end component XNOR_2;

  component HALF_ADDER is
   port (A, B: in std_logic; S, C: out std_logic);
  end component HALF_ADDER;
  
  component Full_Adder is
  port(A, B, Cin : in std_logic; S,Cout: out std_logic);
  end component Full_Adder;
  
  component Adder_Subtractor is
   port(A, B: in std_logic_vector(3 downto 0);Y:in std_logic;S:out std_logic_vector(3 downto 0); Cout:out std_logic);
  end component Adder_Subtractor;
   
end package Gates;


library ieee;
use ieee.std_logic_1164.all;
entity INVERTER is
   port (A: in std_logic; Y: out std_logic);
end entity INVERTER;

architecture Equations of INVERTER is
begin
   Y <= not A;
end Equations;
  

library ieee;
use ieee.std_logic_1164.all;
entity AND_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity AND_2;

architecture Equations of AND_2 is
begin
   Y <= A and B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity NAND_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NAND_2;

architecture Equations of NAND_2 is
begin
   Y <= not (A and B);
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity OR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity OR_2;

architecture Equations of OR_2 is
begin
   Y <= A or B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity NOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity NOR_2;

architecture Equations of NOR_2 is
begin
   Y <= not (A or B);
end Equations;
  

library ieee;
use ieee.std_logic_1164.all;
entity XOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XOR_2;

architecture Equations of XOR_2 is
begin
   Y <= A xor B;
end Equations;
  
library ieee;
use ieee.std_logic_1164.all;
entity XNOR_2 is
   port (A, B: in std_logic; Y: out std_logic);
end entity XNOR_2;

architecture Equations of XNOR_2 is
begin
   Y <= not (A xor B);
end Equations;

library ieee;
use ieee.std_logic_1164.all;
entity HALF_ADDER is
   port (A, B: in std_logic; S, C: out std_logic);
end entity HALF_ADDER;

architecture Equations of HALF_ADDER is
begin
   S <= (A xor B);
   C <= (A and B);
end Equations;
  

library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity Full_Adder is
port(A,B,Cin: in std_logic ; S,Cout: out std_logic);
end entity Full_Adder;
architecture Struct of Full_Adder is
  signal tC, tS, U, V: std_logic;
begin
  -- component instances
  ha: HALF_ADDER 
       port map (A => A, B => B, S => tS, C => tC);

  -- propagate carry.
  a1: AND_2 port map (A => tS, B => Cin, Y => V);
  o1: OR_2  port map (A => V, B => tC, Y => Cout);

  -- final sum.
  x1: XOR_2 port map (A => tS, B => Cin, Y => S);
end Struct;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity Adder_Subtractor is
port(A, B: in std_logic_vector(3 downto 0);Y:in std_logic;S:out std_logic_vector(3 downto 0); Cout:out std_logic);

end entity Adder_Subtractor ;
architecture struct of Adder_Subtractor is 
signal Cout_1,Cout_2,Cout_3,B_00,B_11,B_22,B_33 : std_logic;
begin
--component instances
 x0: XOR_2
 port map (A => Y,B=> B(0),Y=> B_00);
 x1: XOR_2
 port map (A => Y,B=> B(1),Y=> B_11);
 x2: XOR_2
 port map (A => Y,B=> B(2),Y=> B_22);
 x3: XOR_2
 port map (A => Y,B=> B(3),Y=> B_33);
 --propagate carry
 f0: Full_Adder
 port map(A=> A(0),B=> B_00,Cin=>Y,S=>S(0),Cout=>Cout_1);
 f1: Full_Adder
 port map(A=> A(1),B=> B_11,Cin=>Cout_1,S=>S(1),Cout=>Cout_2);
 f2: Full_Adder
 port map(A=> A(2),B=> B_22,Cin=>Cout_2,S=>S(2),Cout=>Cout_3);
 f3: Full_Adder
 port map(A=> A(3),B=> B_33,Cin=>Cout_3,S=>S(3),Cout=>Cout);
 end struct;
