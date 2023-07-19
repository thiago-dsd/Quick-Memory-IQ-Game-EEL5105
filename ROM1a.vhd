library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM1a is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(14 downto 0)
);
end ROM1a;

architecture arc_ROM1a of ROM1a is
begin

--         switches 0 a 14
--         EDCBA9876543210                 round
output <= "011010000000010" when address = "0000" else
"000000000011110" when address = "0001" else
"001100000100100" when address = "0010" else
"000011001010000" when address = "0011" else
"000000001011001" when address = "0100" else
"001000100100010" when address = "0101" else
"001001010010000" when address = "0110" else
"110001000000100" when address = "0111" else
"000000001100101" when address = "1000" else
"011100000000010" when address = "1001" else
"010110000000100" when address = "1010" else
"010001000010100" when address = "1011" else
"010011000001000" when address = "1100" else
"000001100101000" when address = "1101" else
"101000000110000" when address = "1110" else
"010001000100010";
			 
end arc_ROM1a;
