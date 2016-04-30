library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ChocolateFSM is
	port(reset		: in  std_logic;
		  clk			: in  std_logic;
		  push      : in std_logic;
		  enable    : out std_logic;
		  id 			: in 	std_logic_vector(3 downto 0);
		  vinte		: in  std_logic;
		  cinquenta	: in  std_logic;
		  OutAux    : out std_logic;
		  um			: in  std_logic;
		  dois		: in  std_logic;
		  product	: out std_logic);
end ChocolateFSM;

architecture Behavioral of ChocolateFSM is

	type estado is (E0, E6, E1, E2, E3, E4, E5);
	signal s_currentState, s_nextState : estado;

begin
	sync_proc : process(clk)
	begin
	if (id = "0001") then 
		if (rising_edge(clk)) then
			if (reset = '1' and s_currentState /= E5) then
				s_currentState <= E0;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end if;
	end process;

	comb_proc : process(s_currentState, s_nextState, vinte, cinquenta, um, dois)
	begin
		OutAux <='0';
		case (s_currentState) is	
		when E0 =>
			product <='0';
			if (vinte = '1') then
				s_nextState <= E1;
			elsif (cinquenta = '1') then 
				s_nextState <= E6;
			elsif ((um or dois) = '1') then
				s_nextState <= E5;
			else 
				s_nextState <= s_currentState;
			end if;
			
		when E6 =>
			product <='0';
			if (vinte = '1') then
				s_nextState <= E3;
			elsif ((cinquenta or um or dois) = '1') then
				s_nextState <= E5;
			else 
				s_nextState <= s_currentState;
			end if;

		when E1 =>
			product <='0';
			if (vinte = '1') then
				s_nextState <= E2;
			elsif (cinquenta = '1') then
				s_nextState <= E3;
			elsif ((um or dois) = '1') then
				s_nextState <= E5;
			else
				s_nextState <= s_currentState;
			end if;

		when E2 =>
			product <='0';
			if (vinte = '1') then
				s_nextState <= E3;
			elsif (cinquenta = '1') then
				s_nextState <= E4;
			elsif ((um or dois) = '1') then
				s_nextState <= E5;
			else
				s_nextState <= s_currentState;
			end if;
			
		when E3 =>
			product <='0';
			if (vinte = '1') then
				s_nextState <= E4;
			elsif ((cinquenta or um or dois) = '1') then
				s_nextState <= E5;
			else
				s_nextState <= s_currentState;
			end if;
		
		when E4 =>
			product <='0';
			if ((vinte or cinquenta or um or dois) = '1') then
				s_nextState <= E5;
			else
				s_nextState <= s_currentState;
			end if;
			
		when E5 =>
		
		product <='1';
		OutAux <='1';	
		enable <= '1';
		   if (push = '1') then 
				s_nextState <= E0;
			else
				s_nextState <= s_currentState;
			end if;
		
			
		end case;
	end process;
end Behavioral;