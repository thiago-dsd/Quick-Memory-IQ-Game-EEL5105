library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM3 is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(31 downto 0)
);
end ROM3;

architecture arc_ROM3 of ROM3 is
begin

--         HEX7      HEX6     HEX5     HEX4     HEX3     HEX2     HEX1     HEX0               round

output <= "0011" & "1111" & "0001" & "0110" & "0111" & "1000" & "1111" & "1001" when address = "0000" else
--3      des      1      6      7      8      des      9

"1111" & "1100" & "1111" & "1010" & "1011" & "0110" & "0100" & "0000" when address = "0001" else
--des      C      des      A      B      6      4      0

"1001" & "1111" & "1000" & "1011" & "1010" & "0000" & "1111" & "0110" when address = "0010" else
--9      des      8      B      A      0      des      6

"0010" & "1011" & "0011" & "0110" & "1111" & "1111" & "0100" & "0001" when address = "0011" else
--2      B      3      6      des      des      4      1

"1111" & "1000" & "0101" & "1101" & "0111" & "0011" & "1100" & "1111" when address = "0100" else
--des      8      5      D      7      3      C      des

"0011" & "0101" & "0110" & "1000" & "1111" & "1001" & "1111" & "1011" when address = "0101" else
--3      5      6      8      des      9      des      B

"0000" & "1111" & "0011" & "0101" & "0100" & "1001" & "0001" & "1111" when address = "0110" else
--0      des      3      5      4      9      1      des

"0101" & "1001" & "1111" & "1011" & "0011" & "1100" & "1111" & "1110" when address = "0111" else
--5      9      des      B      3      C      des      E

"0101" & "1110" & "0100" & "1111" & "1100" & "0000" & "1111" & "1001" when address = "1000" else
--5      E      4      des      C      0      des      9

"1111" & "0110" & "1111" & "1001" & "1110" & "1100" & "0010" & "0111" when address = "1001" else
--des      6      des      9      E      C      2      7

"0011" & "1100" & "1010" & "1110" & "0000" & "1111" & "1111" & "1000" when address = "1010" else
--3      C      A      E      0      des      des      8

"0000" & "1111" & "1111" & "0011" & "0111" & "0110" & "1011" & "1010" when address = "1011" else
--0      des      des      3      7      6      B      A

"1011" & "0010" & "1010" & "1100" & "1111" & "0100" & "0101" & "1111" when address = "1100" else
--B      2      A      C      des      4      5      des

"1110" & "1100" & "1111" & "1101" & "1011" & "1111" & "0001" & "1001" when address = "1101" else
--E      C      des      D      B      des      1      9

"1010" & "1111" & "0101" & "0110" & "1000" & "1110" & "1111" & "0011" when address = "1110" else
--A      des      5      6      8      E      des      3

"0101" & "1001" & "0111" & "0011" & "1111" & "1111" & "1100" & "0110";
--5      9      7      3      des      des      C      6
			 
end arc_ROM3;
