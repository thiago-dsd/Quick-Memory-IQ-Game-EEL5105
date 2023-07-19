library ieee;
use IEEE.Std_Logic_1164.all;


entity comp_igualdade is port ( 
  Q: out std_logic;
  E0, E1: in std_logic_vector(14 downto 0) );
end comp_igualdade;

architecture comparadorEx of comp_igualdade is
begin
  Q <= '1' when (E0 /= E1) else '0'; -- O operador " /= " é equivalente ao != do python, nomeado como "diferente de"
end comparadorEx; -- Ou seja, se as duas entradas forem diferentes, me retorna 1, por ter um erro, caso não, retorna 0
