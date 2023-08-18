library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component  sequence_behavior is
port (reset,clock: in std_logic;
y:out std_logic_vector(3 downto 0));
	end component;

begin

   add_instance: sequence_behavior 
			port map (
						reset => input_vector(1),
						clock => input_vector(0),
						Y(3) => output_vector(3),
						Y(2)=> output_vector(2),
						Y(1) => output_vector(1),
						Y(0) => output_vector(0));

end DutWrap;

