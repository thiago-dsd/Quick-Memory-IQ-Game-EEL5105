library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM2 is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(31 downto 0)
);
end ROM2;

architecture arc_ROM2 of ROM2 is
begin

--         HEX7      HEX6     HEX5     HEX4     HEX3     HEX2     HEX1     HEX0               round

output <= "1111" & "1001" & "0110" & "1110" & "1111" & "0111" & "1111" & "1000" when address = "0000" else
--des      9      6      E      des      7      des      8

"1110" & "0101" & "1001" & "1111" & "0001" & "1111" & "0111" & "1111" when address = "0001" else
--E      5      9      des      1      des      7      des

"0000" & "0100" & "0010" & "1001" & "1100" & "1111" & "1111" & "1111" when address = "0010" else
--0      4      2      9      C      des      des      des

"1110" & "0110" & "1111" & "1011" & "1111" & "1010" & "0100" & "1111" when address = "0011" else
--E      6      des      B      des      A      4      des

"1000" & "1110" & "1010" & "1111" & "1111" & "1111" & "0010" & "0101" when address = "0100" else
--8      E      A      des      des      des      2      5

"1110" & "1111" & "1111" & "1100" & "0010" & "1001" & "0101" & "1111" when address = "0101" else
--E      des      des      C      2      9      5      des

"1111" & "0011" & "1000" & "0100" & "0111" & "1111" & "1111" & "1001" when address = "0110" else
--des      3      8      4      7      des      des      9

"1111" & "1001" & "0001" & "1111" & "0111" & "0010" & "0000" & "1111" when address = "0111" else
--des      9      1      des      7      2      0      des

"1101" & "1111" & "0000" & "1000" & "1100" & "1111" & "0101" & "1111" when address = "1000" else
--D      des      0      8      C      des      5      des

"1111" & "0110" & "1111" & "0100" & "1101" & "1111" & "0011" & "0000" when address = "1001" else
--des      6      des      4      D      des      3      0

"0100" & "1101" & "0010" & "1010" & "1111" & "1000" & "1111" & "1111" when address = "1010" else
--4      D      2      A      des      8      des      des

"1011" & "0100" & "0001" & "1111" & "1111" & "0011" & "1111" & "1110" when address = "1011" else
--B      4      1      des      des      3      des      E

"1111" & "1111" & "0010" & "1101" & "1010" & "0111" & "0001" & "1111" when address = "1100" else
--des      des      2      D      A      7      1      des

"1000" & "0011" & "1111" & "1111" & "1111" & "1001" & "1101" & "1100" when address = "1101" else
--8      3      des      des      des      9      D      C

"1111" & "1111" & "1111" & "0001" & "0110" & "0010" & "1000" & "0000" when address = "1110" else
--des      des      des      1      6      2      8      0

"0110" & "1111" & "1111" & "0010" & "0000" & "0100" & "1111" & "0001";
--6      des      des      2      0      4      des      1
			 
end arc_ROM2;
