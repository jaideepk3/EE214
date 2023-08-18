library ieee;
use ieee.std_logic_1164.all;

entity atm is
-- port declaration
	port (I :in std_logic_vector(7 downto 0); p:out std_logic_vector(1 downto 0); a:out std_logic_vector(1 downto 0);
   b:out std_logic; c:out std_logic_vector(5 downto 0)); 
end entity atm;

architecture struct of atm is

component div is
generic(
			N : integer:=8; -- operand width
			NN : integer:=16 -- result width
        );
port (
			Nu: in std_logic_vector(N-1 downto 0);-- Nu (read numerator) is dividend
			D: in std_logic_vector(N-1 downto 0);-- D (read Denominator) is divisor
			RQ: out std_logic_vector(NN-1 downto 0)--upper N bits of RQ will have remainder and lower N bits will have quotient
) ;
end component;

-- write code here
signal L7,L6,L5,L4,L3,L2,L1,L0,K1,K2,K3,K4,K5,K6,K7,K8,K9,K10,K11,K12,K13,K14,K15 : std_logic;
begin

-- Write code here(don't worry about generic, just ignore it and do normal port mapping for div)

div1: div port map (Nu(7)=>I(7),Nu(6)=>I(6),Nu(5)=>I(5),Nu(4)=>I(4),Nu(3)=>I(3),Nu(2)=>I(2),Nu(1)=>I(1),Nu(0)=>I(0),
						  D(7)=>'0',D(6)=>'1',D(5)=>'1',D(4)=>'0',D(3)=>'0',D(2)=>'1',D(1)=>'0',D(0)=>'0',
						  RQ(15)=>L7,RQ(14)=>L6,RQ(13)=>L5,RQ(12)=>L4,RQ(11)=>L3,RQ(10)=>L2,RQ(9)=>L1,RQ(8)=>L0,
						  RQ(7)=>K1,RQ(6)=>K2,RQ(5)=>K3,RQ(4)=>K4,RQ(3)=>K5,RQ(2)=>K6,RQ(1)=>a(1),RQ(0)=>a(0));
div2: div port map (Nu(7)=>L7,Nu(6)=>L6,Nu(5)=>L5,Nu(4)=>L4,Nu(3)=>L3,Nu(2)=>L2,Nu(1)=>L1,Nu(0)=>L0,
						  D(7)=>'0',D(6)=>'0',D(5)=>'1',D(4)=>'1',D(3)=>'0',D(2)=>'0',D(1)=>'1',D(0)=>'0',
						  RQ(15)=>K7,RQ(14)=>K8,RQ(13)=>K9,RQ(12)=>K15,RQ(11)=>K10,RQ(10)=>K11,RQ(9)=>K12,RQ(8)=>b,
						  RQ(7)=>K13,RQ(6)=>K14,
						  RQ(5)=>c(5),RQ(4)=>c(4),RQ(3)=>c(3),RQ(2)=>c(2),RQ(1)=>c(1),RQ(0)=>c(0));
						  

end struct;