library ieee;
use ieee.std_logic_1164.all;
package timers is  
 component timer_ckt is
  port ( clock_1, clock_50, reset : in std_logic;
  LED : out std_logic_vector(3 downto 0);
  timer_inp : in std_logic_vector(1 downto 0));
  -- timer_inp is State Machine output
 end component timer_ckt;
end package timers;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer_ckt is
port ( clock_1, clock_50, reset : in std_logic;
LED : out std_logic_vector(3 downto 0);
timer_inp : in std_logic_vector(1 downto 0));
-- timer_inp is State Machine output
end entity timer_ckt;
-- Define architecture body
architecture behav of timer_ckt is
signal out_LED:std_logic;

begin

clock_50_trans:process(clock_50)
variable timer1 : integer range 0 to 500E6 := 1;
variable timer2 : integer range 0 to 100E7 := 1;
variable timer3 : integer range 0 to 140E7 := 1;

begin

if (clock_50' event and clock_50 = '1') then
timer1 := timer1 + 1;
timer2 := timer2 + 1;
timer3 := timer3 + 1;
end if;
end process;

timer:process(timer_inp,reset)

begin
if (reset ='1') then
    out_LED <= '1';
    LED <= out_LED & '0' & '0' & '0';
else
    case timer_inp is
        when "001" =>
            if (timer1 < 500E6) then
                out_LED <= clock_1;
                LED <= '0' & '0' & '0' & clock_1;
            else
                timer1 := 1;
                LED <= '0' & '0' & '0' & '0';
            end if;
        when "010" =>
            if (timer2 < 100E7) then
                out_LED <= clock_1;
                LED <= '0' & '0' & clock_1 & '0';
            else
                timer2 := 1;
                LED <= '0' & '0' & '0' & '0';
            end if;
        when "100" =>
            if (timer3 < 140E7) then
                out_LED <= clock_1;
                LED <= '0' & '0' & '0' & clock_1;
            else
                timer3 := 1;
                LED <= '0' & '0' & '0' & '0';
            end if;
        end case;
end if;
end process;

end behav;




