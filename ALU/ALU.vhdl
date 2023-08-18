
library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
        B: in std_logic_vector(operand_width-1 downto 0);
        sel: in std_logic_vector(sel_line-1 downto 0);
        op: out std_logic_vector((operand_width*2)-1 downto 0)
    ) ;
end alu_beh;

architecture a1 of alu_beh is
    function add(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
variable sum : std_logic_vector((operand_width*2)-1 downto 0) := (others=>'0');
	variable	carry : std_logic_vector(operand_width-1 downto 0) :=(others=>'0');
	variable i : integer;	  
        begin
		  sum(0) := A(0) xor B(0);
		  carry(0) := A(0) and B(0);
		  Addition : for i in 1 to (operand_width-1) loop
		  carry(i) := (A(i) and B(i)) or(A(i) and carry(i-1))or (B(i) and carry(i-1)) ;
		   sum(i) := A(i) xor B(i) xor carry(i-1);
			
			end loop ;
		
			sum(4) := carry(3);
			
            return sum;
    end add;
	 function exclusiveor(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
	 return std_logic_vector is
	variable exor : std_logic_vector((operand_width*2)-1 downto 0) := (others=>'0');
	variable i : integer;
	 begin
	 ExclusiveOR : for i in 0 to (operand_width-1) loop
	 exor(i) := A(i) xor B(i);
	 end loop ;
	 return exor;
	 end exclusiveor;

 
begin
alu : process( A, B, sel )
begin

   if sel = "00" then
	 op <= A&B;
elsif sel = "01" then
op <= add(A,B);
elsif sel ="10" then
op <= exclusiveor(A,B);
else  
op <= add(A,A);
end if;
end process ; -- alu
end a1 ; -- a1
