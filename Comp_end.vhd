library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity COMP_end is
port(
	E0: in std_logic_vector(3 downto 0);
	endgame: out std_logic
);
end COMP_end;
architecture circuito of COMP_end is
begin
endgame <= '1' when E0 = "0000" else '0';
end circuito;