library ieee;
use ieee.std_logic_1164.all;
library work;
use work.MUX21.all

entity bitreverse is
	port (L,a7,a6,a5,a4,a3,a2,a1,a0: in std_logic;
      s7,s6,s5,s4,s3,s2,s1,s0: out std_logic);
end entity bitrev;

architecture Struct of bitrev is 
	begin
		mux7 : MUX21  port map(a7, a0, L, s7);
		mux6 : MUX21  port map(a6, a1, L, s6);
		mux5 : MUX21  port map(a5, a2, L, s5);
		mux4 : MUX21  port map(a4, a3, L, s4);
		mux3 : MUX21  port map(a3, a4, L, s3);
		mux2 : MUX21  port map(a2, a5, L, s2);
		mux1 : MUX21  port map(a1, a6,L, s1);
		mux0 : MUX21  port map(a0, a7, L, s0);
end architecture Struct;