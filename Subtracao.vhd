library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_unsigned.all; 
entity subtracao is
port(
	EntradaA: in std_logic_vector(3 downto 0);
	EntradaB: in std_logic;
	resultado: out std_logic_vector(3 downto 0)
);
end subtracao;
architecture behv of subtracao is
signal tiraUm: std_logic_vector(3 downto 0);
begin
	
	tiraUm <= (EntradaB)&(EntradaB)&(EntradaB)&(EntradaB);     -- Se o erro for 1, ele irá concatenar "1111", se for 0, ficará "0000"
	resultado <= (EntradaA + tiraUm); -- Fazendo essa soma, se o erro for 0, não mudará, somar com 0 permanece a mesma coisa
end behv;                     -- No entanto, se for "1111", iremos realizar a soma e descartar o overflow, que é equivalente a
                                  -- Subtrair uma unidade da quantidade de vidas que tinhamos inicialmente
                                  