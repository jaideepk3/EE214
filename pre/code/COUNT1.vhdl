 library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity COUNT1 is

port(A : in STD_LOGIC_VECTOR (3 downto 0);
O : out STD_LOGIC_VECTOR (2 downto 0));

end entity COUNT1;

architecture Str of COUNT1 is
-- Full Adder component
   component Full_Adder is
     port(A,B,Cin: in std_logic;
         	S,Cout: out std_logic);
   end component;
	
-- Carry propogation
signal C0,C1,Y0,Y1: STD_LOGIC;
begin
  -- component instances
FA1: Full_Adder port map( A(0), A(1), A(2), Y0, C0); -- Summing for the first digit of output- Y0
FA2: Full_Adder port map( A(3), Y0, '0', O(0), C1); -- Summing for the first digit of output- O0
FA3: Full_Adder port map( C0, C1, '0', O(1), O(2)); -- Summing for the first and second digit of output- O2,O1

end Str;