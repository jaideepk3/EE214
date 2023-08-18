library ieee;	
	use ieee.std_logic_1164.all;
library work;
	use work.Gates.all;

entity MUX_4bit  is
	port (a0, a1, a2, a3, b0, b1, b2, b3, c0, c1, c2, c3, d0, d1, d2, d3, S0, S1: in std_logic; y0, y1, y2, y3: out std_logic);
end entity MUX_4bit;

architecture structure of MUX_4bit is
	component MUX4x1 is
		port (I0, I1, I2, I3, S0, S1: in std_logic; Y: out std_logic);
	end component MUX4x1;
begin
	-- component instances
	fb0: MUX4x1 port map (I0 => a0, I1 => b0, I2 => c0, I3 => d0, S0 => S0, S1 => S1, Y => y0);
	fb1: MUX4x1 port map (I0 => a1, I1 => b1, I2 => c1, I3 => d1, S0 => S0, S1 => S1, Y => y1);
	fb2: MUX4x1 port map (I0 => a2, I1 => b2, I2 => c2, I3 => d2, S0 => S0, S1 => S1, Y => y2);
	fb3: MUX4x1 port map (I0 => a3, I1 => b3, I2 => c3, I3 => d3, S0 => S0, S1 => S1, Y => y3);
end structure;
