library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity MUX4x1  is
	port (I0, I1, I2, I3, S0, S1: in std_logic; Y: out std_logic);
end entity MUX4x1;

architecture structure of MUX4x1 is
	component MUX2x1 is
		port (I0, I1, S: in std_logic; Y: out std_logic);
	end component MUx2x1;
	signal m, o: std_logic;

begin

	ab0: MUX2x1 port map(I0 => I0, I1 => I1 ,S => S0, Y => o);
	ab1: MUX2x1 port map(I0 => I2, I1 => I3, s => s0, Y => m);
	ab2: MUX2x1 port map(I0 => o, I1 => m, S => S1, Y => Y);
 
end structure;
