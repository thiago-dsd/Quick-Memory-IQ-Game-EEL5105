library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_unsigned.all; 
entity mux4x1_32bits is
port(
	E0, E1, E2, E3: in std_logic_vector(31 downto 0);
	sel: in std_logic_vector(1 downto 0);
	saida: out std_logic_vector(31 downto 0)
);
end mux4x1_32bits;
architecture circuito of mux4x1_32bits is
begin
		saida <= E0 when sel = "00" else
		E1 when sel = "01" else
		E2 when sel = "10" else
		E3;
	
end circuito;