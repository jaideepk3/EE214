library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all; 
use work.flipflops.all;

entity sequence_generator_structural is
port (reset,clock: in std_logic;
y:out std_logic_vector(2 downto 0));
end entity sequence_generator_structural;


architecture struct of sequence_generator_structural is 
signal D2,D1,D0  :std_logic;
signal Q:std_logic_vector(2 downto 0);
begin
-- write the equations here
D2 <= (Q(1) xor Q(0)) xnor Q(2) ;
D1<= (Q(2) AND (NOT Q(0))) OR ((NOT Q(1)) AND ( NOT Q(2))) ;
D0<= ( Q(0) AND (NOT Q(2))) OR ( Q(1) AND Q(2));
y(2)<= Q(2);
y(1)<= Q(1);
y(0)<= Q(0);

-- Do the port mapping                          --asynchronous reset
--Q0
dff_0  : dff1 port map(D => D2,CLK=> CLOCK , RESET=> RESET,Q=> Q(2));

--Q1
dff_1  : dff2 port map(D => D1,CLK=> CLOCK , RESET=> RESET,Q=> Q(1));

--Q2
dff_2  : dff1 port map(D => D0,CLK=> CLOCK , RESET=> RESET,Q=> Q(0));


end struct;