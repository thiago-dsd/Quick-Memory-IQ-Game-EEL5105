library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM3a is
port(
	  address: in std_logic_vector(3 downto 0);
	  output: out std_logic_vector(14 downto 0)
);
end ROM3a;

architecture arc_ROM3a of ROM3a is
begin

--         switches 0 a 14
--         EDCBA9876543210                 round
output <= "000001111001010" when address = "0000" else
"001110001010001" when address = "0001" else
"000111101000001" when address = "0010" else
"000100001011110" when address = "0011" else
"011000110101000" when address = "0100" else
"000101101101000" when address = "0101" else
"000001000111011" when address = "0110" else
"101101000101000" when address = "0111" else
"101001000110001" when address = "1000" else
"101001011000100" when address = "1001" else
"101010100001001" when address = "1010" else
"000110011001001" when address = "1011" else
"001110000110100" when address = "1100" else
"111101000000010" when address = "1101" else
"100010101101000" when address = "1110" else
"001001011101000";
			 
end arc_ROM3a;
