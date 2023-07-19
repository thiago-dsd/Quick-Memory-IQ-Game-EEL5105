library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
entity Counter_time is port ( 
  	R, E, clock: in std_logic;
	Q: out std_logic_vector(3 downto 0);
	tc: out std_logic);
end Counter_time;
architecture behv of Counter_time is
  signal cnt: std_logic_vector(3 downto 0);
begin
  process(clock, R, E, cnt) -- Sensitive list todas as variáveis que mudam de valor
  begin
    if (r = '1') then       -- Primeiro passo a se checar é o reset, por ser assíncrono
        cnt <= "1010";
        tc <= '0';
        
    elsif (clock'event and clock = '1') then	-- Se o reset estiver em 0, então olhamos o clock
      if (E = '1') then                -- Na borda, também verificamos o Enable, para habilitar o funcionamento
        cnt <= cnt - "0001";          -- Neste caso a contagem é decrescente, por estar contando o tempo do jogador
        
      if cnt = "0000" then
        cnt <= "0000";
        tc <= '1';                     -- Se a contagem chegar em "0000", o tempo do jogador acabou, portanto, aciono o end_time
      else                             -- Indicando que o tempo do jogador acabou.
        tc <= '0';
    end if;
    end if;
    end if;
   end process;
  Q <= cnt;            
end behv;
