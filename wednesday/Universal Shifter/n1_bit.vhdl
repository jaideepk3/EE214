library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity n1_bit is
port (b0,a7,a6,a5,a4,a3,a2,a1,a0: in std_logic;
      s7,s6,s5,s4,s3,s2,s1,s0: out std_logic);
end entity;
architecture structure of n1_bit is 
component mux is 
port(I0,I1,S: in std_logic;
      Y: out std_logic);
end component;

begin 
    n1_bit : for i in 0 to 7 generate

        lsb: if i < 7 generate
            b0: mux port map(I(0) => a1(i), I(1) => a1(i+4), S => b(2), Y => s1(i));
        end generate lsb;

        msb: if i > 6 generate
            b0: mux port map(I(0) => a1(i), I(1) => '0', S => b(2), Y => s1(i));
        end generate msb;

    end generate ; -- 1_bit
	 
end structure;