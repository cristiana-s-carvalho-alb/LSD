library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AuxiliaryMachine is
	port(clk			: in  std_logic;
		  moeda		: in  std_logic;
		  saida     : out std_logic);
end AuxiliaryMachine;

architecture Behavioral of AuxiliaryMachine is

	type estado is (E0, E1, E2);
	signal s_currentState, s_nextState : estado;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
				s_currentState <= s_nextState;
		end if;
	end process;

	comb_proc : process(s_currentState, s_nextState, moeda)
	begin
		case (s_currentState) is
		when E0 =>
			saida <= '0';
			if (moeda = '1') then
				s_nextState <= E1;
			else 
				s_nextState <= s_currentState;
			end if;

		when E1 =>
			saida <= '1';
			s_nextState <= E2;

		when E2 =>
			saida <= '0';
			if (moeda = '1') then
				s_nextState <= s_currentState;
			else
				s_nextState <= E0;
			end if;
		end case;
	end process;

end Behavioral;