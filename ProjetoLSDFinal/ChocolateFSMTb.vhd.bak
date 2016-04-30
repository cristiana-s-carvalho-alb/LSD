library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ChocolateFSMTb is
end ChocolateFSMTb;

architecture Stimulus of ChocolateFSMTb is

 signal s_reset		:   std_logic;
 signal s_id			:  std_logic_vector(3 downto 0);
 signal s_clk			:  std_logic;
 signal s_push       : std_logic;
 signal s_vinte		: std_logic;
 signal s_cinquenta	: std_logic;
 signal s_um			: std_logic;
 signal s_dois			: std_logic;
 
 signal s_product		: std_logic;
 signal s_OutAux     : std_logic;
 
		begin

		uut: entity work.ChocolateFSM(Behavioral)
				port map(reset => s_reset,	 
							id	=> s_id,
							clk => s_clk,
							push => s_push,
							vinte => s_vinte,
							cinquenta => s_cinquenta,
							um => s_um,
							OutAux => s_OutAux,
							dois => s_dois,
							product => s_product);

	clock_proc: process
	begin
		s_clk <= '1'; wait for 50 ns;
		s_clk <= '0';	wait for 50 ns;
	end process;
							
	stim_proc : process
	begin
		wait for 50 ns;
			s_reset <= '0';
		wait for 50 ns;
			s_id <= "0001";
		wait for 50 ns;
			s_id <= "0010";
		wait for 50 ns;
			s_id <= "0011";
		wait for 50 ns;
			s_vinte <= '0';
		wait for 50 ns;
			s_vinte <= '1';
		wait for 50 ns;
			s_cinquenta <= '0';
		wait for 50 ns;
			s_cinquenta <= '1';
		wait for 50 ns;
			s_um <= '0';
		wait for 50 ns;
			s_um <= '1';
		wait for 50 ns;
			s_dois <= '0';
		wait for 50 ns;
			s_dois <= '1';
		wait for 50 ns;
			s_push <= '0';
		wait for 50 ns;
			s_push <= '1';
		wait for 50 ns;
			s_reset <= '1';
		wait for 50 ns;
	end process;