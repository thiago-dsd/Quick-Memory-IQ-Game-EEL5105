library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
entity Counter_round is port ( 
  	R, E, clock: in std_logic;
	Q: out std_logic_vector(3 downto 0);
	tc: out std_logic);
end Counter_round;
architecture behv of Counter_round is
  signal cnt: std_logic_vector(3 downto 0);
begin
  process(clock, R, E, cnt) -- Sensitive list todas as variáveis que mudam de valor
  begin
    if (r = '1') then        -- Primeira coisa a se checar é o reset, por ser assíncrono
        cnt <= "0000";
        tc <= '0';
        
    elsif (clock'event and clock = '1') then   -- Se o reset estiver em 0, então olhamos o clock
      if (E = '1') then                   -- Na borda, também verificamos o Enable, para habilitar o funcionamento
        cnt <= cnt + "0001";              -- A contagem é crescente, por estar contando os rounds do jogador
        
      if cnt = "1111" then         
        cnt <= "1111";
        tc <= '1';                         -- Se a contagem chegar em "1111", o jogador está no último nível,
      else                                 -- Portanto, irei indicar que acabaram os rounds, através da variável tc
        tc <= '0';
    end if;
    end if;
    end if;
   end process;
  Q <= cnt;
end behv;
