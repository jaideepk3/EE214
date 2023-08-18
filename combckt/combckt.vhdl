library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity combckt is
  port(A :in std_logic_vector(3 downto 0);B :in std_logic_vector(2 downto 0);M :out std_logic_vector(6 downto 0));
end entity combckt;
architecture structure of combckt is
signal S,X,Z : std_logic_vector(3 downto 0); 
 signal Y : std_logic_vector(2 downto 0);
begin
  -- component instances
a0: AND_2
port map(A=>A(0),B=>B(0),Y=>M(0));
a1: AND_2
port map(A=>A(1),B=>B(0),Y=>Y(0));
a2: AND_2
port map(A=>A(2),B=>B(0),Y=>Y(1));
a3: AND_2
port map(A=>A(3),B=>B(0),Y=>Y(2));
a4: AND_2
port map(A=>A(0),B=>B(1),Y=>X(0));
a5: AND_2
port map(A=>A(1),B=>B(1),Y=>X(1));
a6: AND_2
port map(A=>A(2),B=>B(1),Y=>X(2));
a7: AND_2
port map(A=>A(3),B=>B(1),Y=>X(3));
fad0: Adder_Subtractor
port map(A(3 downto 0)=>X( 3 downto 0),B(3)=>'0',B(2 downto 0)=>Y(2 downto 0),Y=>'0',
        Cout=>S(3),S( 3 downto 1)=>S(2 downto 0),S(0)=>M(1));
		  
a8: AND_2
port map(A=>A(0),B=>B(2),Y=>Z(0));
a9: AND_2
port map(A=>A(1),B=>B(2),Y=>Z(1));
a10: AND_2
port map(A=>A(2),B=>B(2),Y=>Z(2));
a11: AND_2
port map(A=>A(3),B=>B(2),Y=>Z(3));
fad1: Adder_Subtractor
port map(A(3 downto 0)=>Z(3 downto 0),B(3 downto 0)=>S(3 downto 0),Y=>'0',
       Cout=>M(6),S(3 downto 0)=>M(5 downto 2));
		 end structure;