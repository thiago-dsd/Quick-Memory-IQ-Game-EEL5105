library ieee;
use ieee.std_logic_1164.all;

entity controle is
port(
	enter, reset, clock: in std_logic;
	end_game, end_time, end_round, end_FPGA: in std_logic;
	R1, R2, E1, E2, E3, E4, E5: out std_logic
);	
end controle;

architecture diagrama of controle is
   type STATES is (Init, Setup, Play_FPGA, Play_user, Result, Count_Round, Check, swait);
   signal EAtual, PEstado: STATES;
begin

	process(reset, clock)
	begin
	    if (reset = '1') then
			EAtual <= Init;
        elsif (clock'event AND clock = '1') then 
         	EAtual <= PEstado;
	    end if;
	end process;
	
	
    process(EAtual, enter, end_game, end_time, end_round, end_FPGA)
	begin
		case EAtual is
			when Init =>
			Pestado <= Setup;
			
                R1 <= '1'; R2 <= '1'; E1 <= '0'; E2 <= '0'; E3 <= '0'; E4 <= '0'; E5 <= '0';
                
            when Setup =>
                R1 <= '0'; R2 <= '0'; E1 <= '1'; E2 <= '0'; E3 <= '0'; E4 <= '0'; E5 <= '0';
                
                if (enter = '1') then
                    Pestado <= Play_FPGA;
                else Pestado <= Setup; 
                end if;
                
            when Play_FPGA =>
                R1 <= '0'; R2 <= '0'; E1 <= '0'; E2 <= '1'; E3 <= '0'; E4 <= '0'; E5 <= '0';
                
                if (end_FPGA = '1') then
                    Pestado <= Play_user;
                else Pestado <= Play_FPGA;
                end if;
                
            when Play_user => 
                R1 <= '0'; R2 <= '0'; E1 <= '0'; E2 <= '0'; E3 <= '1'; E4 <= '0'; E5 <= '0';
                
                if (end_time = '1') then
                    Pestado <= Result;
                    
                elsif (enter = '1') then
                    Pestado <= Count_Round;
                else Pestado <= Play_user;
                
                end if;
                
            when Result =>
                R1 <= '0'; R2 <= '0'; E1 <= '0'; E2 <= '0'; E3 <= '0'; E4 <= '0'; E5 <= '1';
                if (enter = '1') then
                    Pestado <= Init;
                else Pestado <= Result;
                end if;
                
            when Count_Round => 
            Pestado <= Check;
                R1 <= '0'; R2 <= '0'; E1 <= '0'; E2 <= '0'; E3 <= '0'; E4 <= '1'; E5 <= '0';
                
            when Check =>
                R1 <= '0'; R2 <= '0'; E1 <= '0'; E2 <= '0'; E3 <= '0'; E4 <= '0'; E5 <= '0';
                if (end_game = '1' or end_round = '1') then
                    Pestado <= Result;
                else
                    Pestado <= swait;
                end if;
                
            when swait =>
                R1 <= '1'; R2 <= '0'; E1 <= '0'; E2 <= '0'; E3 <= '0'; E4 <= '0'; E5 <= '0';
                if (enter = '1') then
                    Pestado <= Play_FPGA;
                else Pestado <= swait;
                end if;
		end case;
	end process;
end diagrama;