library ieee;
use ieee.std_logic_1164.all;
entity registrador_bonus is 
port(
	R, E, clock: in std_logic;
	D: in std_logic_vector(3 downto 0);
	Q: out std_logic_vector(3 downto 0) 
);
end registrador_bonus;
architecture behv of registrador_bonus is
begin
	process(clock, D, R, E)
	begin
		if R = '1' then    -- Se estiver ativo, seta "1000" para a saída
			Q <= "1000";
		elsif (clock'event and clock = '1') then -- Se não estiver ativo, analiso o clock
			if E = '1' then        -- Também verifico o Enable, se estiver ativo,
				Q <= D;           -- passo o valor da entrada para a saída
			end if;
		end if;
	end process;
end behv;
