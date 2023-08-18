library ieee;
use ieee.std_logic_1164.all;

entity vowel_detector is
port (
	I: in std_logic_vector(3 downto 0);
	Y: out std_logic) ;
end entity vowel_detector ;

architecture structure of vowel_detector is

  begin
  vowel : process(I)
  
  begin

if I = "0000" then
  Y <= '1' ;
  
elsif I = "0100" then
  Y <= '1' ;
  
elsif I = "1000" then
  Y <= '1' ;
  
elsif I = "1110" then
  Y <= '1' ;
  
else
  Y <= '0' ;
 
 end if;
 end process;
 end structure;