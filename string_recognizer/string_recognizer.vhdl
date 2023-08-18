library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity string_recognizer is
port( inp:in std_logic_vector(4 downto 0);
reset,clock:in std_logic;
outp: out std_logic);
end string_recognizer;

architecture bhv of string_recognizer is
---------------Define state type here-----------------------------
type state is (rst,s1,s2,s3,s4); -- Fill other states here
---------------Define signals of state type-----------------------
signal y_present,y_next: state:=rst;

begin
clock_proc:process(clock,reset)
begin
	if(clock='1' and clock' event) then
		if(reset='1') then
			y_present<= rst;
-- Fill the code here
		else
			y_present<=y_next;
-- Fill the code here
		end if;
	end if;
end process;

state_transition_proc:process(inp,y_present)
begin
	case y_present is
		when rst=>
			if(unsigned(inp)=3) then --c has been detected
				y_next<=s1; -- Fill the code here
				outp<='0';
			else
				y_next<=rst;
				outp<='0';
			end if;
		
		when s1=>
			if(unsigned(inp)=15) then
				y_next<=s2;
				outp<='0';
			else
				y_next<=s1;
				outp<='0';
			end if;

		when s2=>
			if(unsigned(inp)=22) then
				y_next<=s3;
				outp<='0';
			else
				y_next<=s2;
				outp<='0';
			end if;

		when s3=>
			if(unsigned(inp)=9) then
				y_next<=s4;
				outp<='0';
			else
				y_next<=s3;
				outp<='0';
			end if;
				
		when s4=>
			if(unsigned(inp)=4) then
				y_next<=rst;
				outp<='1';
			else
				y_next<=s4;
				outp<='0';
			end if;
	end case;
end process;
end bhv;

		
		
-------------------------
---------Fill rest of the code here---------
-------Similarly define output process after this which will give
-------the output based on the present state and input(Mealy machine)
-------I have you have watched the video of Mealy machine.
