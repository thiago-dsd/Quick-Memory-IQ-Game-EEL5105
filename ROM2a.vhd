library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM2a is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(14 downto 0)
);
end ROM2a;

architecture arc_ROM2a of ROM2a is
begin

--         switches 0 a 14
--         EDCBA9876543210                 round
output <= "100001111000000" when address = "0000" else
"100001010100010" when address = "0001" else
"001001000010101" when address = "0010" else
"100110001010000" when address = "0011" else
"100010100100100" when address = "0100" else
"101001000100100" when address = "0101" else
"000001110011000" when address = "0110" else
"000001010000111" when address = "0111" else
"011000100100001" when address = "1000" else
"010000001011001" when address = "1001" else
"010010100010100" when address = "1010" else
"100100000011010" when address = "1011" else
"010010010000110" when address = "1100" else
"011001100001000" when address = "1101" else
"000000101000111" when address = "1110" else
"000000001010111";
			 
end arc_ROM2a;
