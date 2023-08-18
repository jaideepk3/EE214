library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component vowel_detector is
     port(I: in std_logic_vector(3 downto 0); Y: out std_logic);
   end component;
begin
   add_instance: vowel_detector
			port map(
			      I(3) => input_vector(3),
					I(2) => input_vector(2),
				   I(1) => input_vector(1),
				   I(0) => input_vector(0),
				   Y => output_vector(0));
end DutWrap;