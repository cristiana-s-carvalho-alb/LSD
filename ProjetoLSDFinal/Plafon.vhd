library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;	
	
	
entity Plafon is
	port(change 	 :	in std_logic_vector(4 downto 0);
		  Push       : in std_logic;
		  replacement: in std_logic;
		  clk 		 : in std_logic;
		  RunOut		 : out std_logic);
end Plafon;

architecture Behavioral of Plafon is
signal s_plafon_10 : unsigned(4 downto 0) := "01111";
signal s_change : unsigned(4 downto 0);
begin
	
	plafon_process : process(Push)
	begin
	s_change <= unsigned(change);
	if(rising_edge(clk)) then
		if(Push = '1' and s_change <= s_plafon_10 ) then
			s_plafon_10 <= s_plafon_10 - s_change;
			RunOut <= '0';
		elsif(Push = '1' and s_change > s_plafon_10) then
			s_plafon_10 <= "00000";
			RunOut <= '1';
		end if;
		if(replacement = '1') then
			s_plafon_10 <= "01111";
			RunOut	<= '0';
		end if;
	end if;
	end process;
end Behavioral;
