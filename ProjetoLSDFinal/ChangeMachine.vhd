library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ChangeMachine is
	port(id 			 :	in std_logic_vector(3 downto 0);
		  clk        : in std_logic;
		  money		 : in std_logic_vector(4 downto 0);
		  push       : in std_logic;
		  reset      : in std_logic;
		  change 	 : out std_logic_vector(4 downto 0);
		  change1    : out std_logic_vector(4 downto 0));
end ChangeMachine;

architecture Behavioral of ChangeMachine is
constant choc : std_logic_vector(4 downto 0) := "01010";
constant agua : std_logic_vector(4 downto 0) := "00101";
constant bol  : std_logic_vector(4 downto 0) := "00110";
signal plafon_10 : unsigned(4 downto 0) := "01010";
signal s_money : unsigned(4 downto 0);
signal s_change : unsigned(4 downto 0);
signal s_change1 : unsigned(4 downto 0);
begin
	
	
	
	change_process : process(clk, reset, push, money)
	begin	
		s_money <= unsigned(money);
		if rising_edge(clk) then
			if (push = '1') then 
				s_change <= "11111";
			else
				if ((id = "0001" and not (s_money = "00000") and (s_money >= unsigned(choc)))) then
					s_change <= s_money - unsigned(choc); 
					s_change1 <= s_money - unsigned(choc); 
				elsif ((id = "0010" and not (s_money = "00000") and (s_money >= unsigned(agua)))) then
					s_change <= s_money - unsigned(agua);
					s_change1 <= s_money - unsigned(agua);
				elsif ((id = "0011" and not (s_money = "00000") and (s_money >= unsigned(bol)))) then
					s_change <= s_money - unsigned(bol);
					s_change1 <= s_money - unsigned(bol);
				elsif ((reset = '1') and (s_money /= "00000")) then 
					s_change <= s_money; 
					s_change1 <= s_money; 
				elsif (reset='1' and s_money = "00000") then
					s_change <= "11111";
					s_change1 <= "11111";
				elsif (reset='0' and s_money = "00000") then
					s_change <= "11111";
					s_change1 <= "11111";	
				end if;	
			end if; 
		end if;
		change1 <= std_logic_vector(s_change1);
		change <= std_logic_vector(s_change);
	end process;
end Behavioral;
