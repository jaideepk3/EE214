library ieee ;
use  ieee.std_logic_1164.all;

entity decorder38 is 
port ( 
  A : in std_logic_vector(2 downto 0);
  E : in std_logic;
  Y : out std_logic_vector(7 downto 0 )) ;
  
 end entity ;
 
 architecture structure of decorder38 is 
 
  begin 
  decoder : process(A,E)
  
  begin
  
  if E = '0' then
    Y <= "00000000" ;
  else 
  
if A = "000"  then
  Y <= "00000001" ;
 
elsif A = "001"  then 
  Y <= "00000010" ;
 
elsif A = "010"  then  
  Y <= "00000100" ;
  
elsif A = "011"  then 
  Y <= "00001000" ;
  
elsif A = "100"  then  
  Y <= "00010000" ;
 
elsif A = "101"  then  
  Y <= "00100000" ;
  
elsif A = "110"  then 
  Y <= "01000000" ;
 
else 
  Y <= "10000000";
  
end if ;
 
  end if ;
end process ;
end structure ;
 
  
