library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(17 downto 0);
       	output_vector: out std_logic_vector(3 downto 0));
end entity;

architecture DutWrap of DUT is
   component MUX_4bit is
     port(a0, a1, a2, a3, b0, b1, b2, b3, c0, c1, c2, c3, d0, d1, d2, d3, S0, S1: in std_logic; 
	y0, y1, y2, y3: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: MUX_4bit 
			port map (
					-- order of inputs Cin B A
					d3 => input_vector(17),
					d2 => input_vector(16),
					d1 => input_vector(15),
					d0 => input_vector(14),
					c3 => input_vector(13),
					c2 => input_vector(12),
					c1 => input_vector(11),
					c0 => input_vector(10),
					b3 => input_vector(9),
					b2 => input_vector(8),
					b1 => input_vector(7),
					b0 => input_vector(6),
					a3 => input_vector(5),
					a2 => input_vector(4),
					a1 => input_vector(3),
					a0 => input_vector(2),
					S1 => input_vector(1),
					S0 => input_vector(0),				
				        -- order of outputs S Cout
					y3 => output_vector(3),
					y2 => output_vector(2),
					y1 => output_vector(1),
					y0 => output_vector(0));

end DutWrap;

