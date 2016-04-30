--------------------------------------------------------------------------------
--	Filename		: BaseClkDividerN.vhd
--	Description		: Obtains a clock devided from one of the main clocks
--  Author:			: mbc - 2015
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ClkDividerN is
	generic(divFactor : positive);
	port(clkIn  : in  std_logic;
         clkOut : out std_logic);
end ClkDividerN;

architecture behav of ClkDividerN is
	
begin
	process(clkIn)
		variable s_divCounter : integer := 0;
		constant halfWay : integer := divFactor / 2 - 1;
	
	begin
		if (rising_edge(clkIn)) then
			s_divCounter := s_divCounter + 1;
			if (s_divCounter = divFactor) then
				clkOut <= '0';
				s_divCounter := 0;
			else
				if (s_divCounter = halfWay) then
					clkOut <= '1';
				end if;
			end if;
		end if;
	end process;
end behav;
