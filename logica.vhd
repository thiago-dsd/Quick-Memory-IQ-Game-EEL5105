library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity logica is
port(
	round, bonus: in std_logic_vector(3 downto 0);
	nivel: in std_logic_vector(1 downto 0);
	points: out std_logic_vector(7 downto 0)
);
end logica;
architecture circuito of logica is
begin
points <= '0' & nivel & bonus(3 downto 1) & round(3 downto 2);
end circuito;