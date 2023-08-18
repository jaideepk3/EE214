library ieee;	
use ieee.std_logic_1164.all;

entity MUX_4bit  is
     port( A: in std_logic_vector(3 downto 0);
			  B: in std_logic_vector(3 downto 0);
			  C: in std_logic_vector(3 downto 0);
			  D: in std_logic_vector(3 downto 0);
			  S: in std_logic_vector(3 downto 0);
			  Y: out std_logic_vector(3 downto 0));
end entity MUX_4bit;

architecture structure of MUX_4bit is

 begin
 mux : process (A, B, C, D, S)
 begin
 
if S = "00" then
  Y <= A ;

elsif S = "01" then
  Y <= B ;

elsif S = "10" then
  Y <= C;

else
  Y <= D;

end if;
end process; 
end structure;
