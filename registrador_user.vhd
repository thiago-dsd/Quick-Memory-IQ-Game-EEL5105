library ieee;
use ieee.std_logic_1164.all;
entity registrador_user is 
port(
	R, E, clock: in std_logic;
	D: in std_logic_vector(14 downto 0);
	Q: out std_logic_vector(14 downto 0) 
);
end registrador_user;
architecture behv of registrador_user is
begin
	process(clock, D, R, E)
	begin
		if R = '1' then -- Caso o reset estiver ativo, minha saída é resetada
			Q <= "000000000000000";
		elsif (clock'event and clock = '1') then -- Observo a borda de subida do clock, caso o reset estiver inativo
			if E = '1' then  -- Se o registrador estiver ativado, então a saída receberá a entrada
				Q <= D;
			end if;
		end if;
	end process;
end behv;