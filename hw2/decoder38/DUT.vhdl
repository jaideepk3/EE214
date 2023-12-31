library ieee;
use ieee.std_logic_1164.all;
entity DUT is 
   port(input_vector: in std_logic_vector( 3 downto 0);
       	output_vector: out std_logic_vector(7 downto 0));
end entity;

architecture DutWrap of DUT is
   component decorder38 is
  
     port (
	  A : in std_logic_vector(2 downto 0);
	  E : in std_logic ;
	  Y : out std_logic_vector(7 downto 0 ) := ( others => '0')) ;
	  end component;
	  
begin

   add_instance: decorder38
	      port map( 
						A(2)=>input_vector(3),
						A(1)=>input_vector(2),
						A(0)=>input_vector(1),
						E =>input_vector(0),
						Y(7) =>output_vector(7),
						Y(6) =>output_vector(6),
						Y(5) =>output_vector(5),
						Y(4) =>output_vector(4),
						Y(3) =>output_vector(3),
						Y(2) =>output_vector(2),
						Y(1) =>output_vector(1),
						Y(0) =>output_vector(0));
			

end DutWrap;