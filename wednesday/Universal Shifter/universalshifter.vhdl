library ieee;
use ieee.std_logic_1164.all;
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
entity UniversalShifter is 
 port (A : in std_logic_vector(7 downto 0);
        B : in std_logic_vector(2 downto 0);
		  L : in std_logic;
		  S : out std_logic_vector(7 downto 0));
 end entity UniversalShifter;
 
 architecture struct of UniversalShifter is
 signal a1, s1, s2, s3 : std_logic_vector(7 downto 0);
 begin
 
  nreverse_bit01 : for i in 0 to 7 generate 
	 
	 lsb: if i < 8 generate
            b1: mux port map(I0 => A(i), I1 => A(7-i), S => L, Y => a1(i));
        end generate lsb;

       

    end generate ; 
	 
 
     n4_bit : for i in 0 to 7 generate

        lsb: if i < 4 generate
            b2: mux port map(I0 => a1(i), I1 => a1(i+4), S => B(2), Y => s1(i));
        end generate lsb;

        msb: if i > 3 generate
            b2: mux port map(I0 => a1(i), I1 => '0', S => B(2), Y => s1(i));
        end generate msb;

    end generate ; 
	 
	 
	 n2_bit : for i in 0 to 7 generate 
	 
	 lsb: if i < 6 generate
            b1: mux port map(I0 => s1(i), I1 => s1(i+2), S => B(1), Y => s2(i));
        end generate lsb;

        msb: if i > 5 generate
            b1: mux port map(I0 => s1(i), I1 => '0', S => B(1), Y => s2(i));
        end generate msb;

    end generate ; 
	 
	 n1_bit : for i in 0 to 7 generate 
	 
	 lsb: if i < 7 generate
            b1: mux port map(I0 => s2(i), I1 => s2(i+1), S => B(0), Y => s3(i));
        end generate lsb;

        msb: if i > 6 generate
            b1: mux port map(I0 => s2(i), I1 => '0', S => B(0), Y => s3(i));
        end generate msb;

    end generate ; 
	 
	 nreverse_bit02 : for i in 0 to 7 generate 
	 
	 lsb: if i < 8 generate
            b1: mux port map(I0 => s3(i), I1 => s3(7-i), S => L, Y => S(i));
        end generate lsb;

       

    end generate ;
	 end struct;