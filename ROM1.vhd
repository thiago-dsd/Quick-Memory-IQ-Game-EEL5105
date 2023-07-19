library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM1 is
port(
	  address: in std_logic_vector(3 downto 0);
	  output : out std_logic_vector(31 downto 0)
);
end ROM1;

architecture arc_ROM1 of ROM1 is
begin

--         HEX7      HEX6     HEX5     HEX4     HEX3     HEX2     HEX1     HEX0               round

output <= "1111" & "1111" & "1010" & "1101" & "1111" & "1100" & "0001" & "1111" when address = "0000" else
--des      des      A      D      des      C      1      des

"0100" & "0001" & "0010" & "1111" & "0011" & "1111" & "1111" & "1111" when address = "0001" else
--4      1      2      des      3      des      des      des

"1111" & "1111" & "0101" & "1011" & "1100" & "1111" & "1111" & "0010" when address = "0010" else
--des      des      5      B      C      des      des      2

"1111" & "1111" & "0110" & "1001" & "1010" & "1111" & "1111" & "0100" when address = "0011" else
--des      des      6      9      A      des      des      4

"0100" & "1111" & "1111" & "0000" & "0110" & "1111" & "0011" & "1111" when address = "0100" else
--4      des      des      0      6      des      3      des

"0001" & "1111" & "0101" & "1111" & "1000" & "1100" & "1111" & "1111" when address = "0101" else
--1      des      5      des      8      C      des      des

"1001" & "0100" & "0111" & "1111" & "1100" & "1111" & "1111" & "1111" when address = "0110" else
--9      4      7      des      C      des      des      des

"1001" & "1110" & "0010" & "1111" & "1111" & "1111" & "1101" & "1111" when address = "0111" else
--9      E      2      des      des      des      D      des

"1111" & "1111" & "0110" & "0010" & "0000" & "1111" & "0101" & "1111" when address = "1000" else
--des      des      6      2      0      des      5      des

"1111" & "1011" & "1100" & "1111" & "0001" & "1111" & "1101" & "1111" when address = "1001" else
--des      B      C      des      1      des      D      des

"1111" & "1011" & "1111" & "1010" & "0010" & "1111" & "1111" & "1101" when address = "1010" else
--des      B      des      A      2      des      des      D

"0010" & "1111" & "1111" & "1111" & "1111" & "0100" & "1001" & "1101" when address = "1011" else
--2      des      des      des      des      4      9      D

"1111" & "1111" & "1001" & "0011" & "1111" & "1101" & "1111" & "1010" when address = "1100" else
--des      des      9      3      des      D      des      A

"1111" & "1111" & "0011" & "1111" & "1001" & "1111" & "0101" & "1000" when address = "1101" else
--des      des      3      des      9      des      5      8

"1111" & "1110" & "0100" & "1111" & "1111" & "0101" & "1100" & "1111" when address = "1110" else
--des      E      4      des      des      5      C      des

"1111" & "0001" & "1101" & "1001" & "1111" & "1111" & "1111" & "0101";
--des      1      D      9      des      des      des      5
			 
end arc_ROM1;
