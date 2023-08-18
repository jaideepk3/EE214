library ieee ;
use  ieee.std_logic_1164.all;

entity scrabble is 
	port (A : in std_logic_vector(3 downto 0) ; 
			Y : out std_logic);
end entity ;
 
architecture structure of scrabble is 
 
  begin 
  scrabble : process(A)
  
  begin
 
if A = "0001"  then
 Y <= '1' ;
 
elsif A = "0010"  then  
 Y <= '1' ;
  
elsif A ="1101"  then 
 Y <= '1' ;
 
elsif A = "1110"  then 
 Y <= '1' ;

else 
 Y <= '0' ;

end if ;
end process ;
end structure ;
 
  
