library ieee;
use ieee.std_logic_1164.all;
entity registrador_sel is 
port(
	R, E, clock: in std_logic;
	D: in std_logic_vector(3 downto 0);
	Q: out std_logic_vector(3 downto 0) 
);
end registrador_sel;
architecture behv213213 of registrador_sel is
begin
	process(clock, E, R)
	begin
		if (R = '1') then -- Se o reset estiver ativo, a saída vai pra "0000"
			Q <= "0000";
		elsif (clock'event and clock = '1') then -- Observo a borda de subida do clock
			if (E = '1') then -- Se o registrador estiver habilitado pelo Enable, a saída receberá a entrada
				Q <= D;
			end if;
		end if;
	end process;
end behv213213;


