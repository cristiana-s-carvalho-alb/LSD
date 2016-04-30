-------------------------------------------------------------------------------
--	Filename		: DELAY.vhd
--	Description		: Generates a delay of a defined vale of us
--	NOTES			: clock input must have a 1us period (1MHz)
--  Author			: mbc
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity DELAY is
	generic ( size : natural);
	port (	clkIn		: in std_logic;							    -- Clock should be 1MHz (1 us period)
			endValue	: in std_logic_vector (size - 1 downto 0);  -- EndValue is the desired delay in us
			start		: in std_logic;							    -- Start enables de delay counter. 
																    -- it should be equal or greater than 1 us
			endDelay 	: out std_logic);						    -- When '1' signals delay is over (Mealy)
end DELAY;

architecture behav of DELAY is
	type state is (st0, st1);
	signal cst, nst : state;
	signal s_divCounter : std_logic_vector (size - 1 downto 0);
	
begin
	FMS_nst: process (cst, start, s_divCounter, endValue) is
	begin
		case cst is
			when st0 =>
				if (start = '1') then
					nst <= st1;
					endDelay <= '0';
				else
					nst <= st0;
					endDelay <= '1';
				end if;
			
			when st1 =>
				if (s_divCounter = std_logic_vector(to_unsigned(0, size))) then
					endDelay <= '1';
					nst <= st0;
				else
					endDelay <= '0';
					nst <= st1;
				end if;
		end case;
	end process;
	
	FMS_control: process (clkIn)	
	begin
		if (rising_edge(clkIn)) then
			cst <= nst;
			if (nst = st0) then
				s_divCounter <= std_logic_vector(to_unsigned(0, size));
			elsif (start = '1' and cst = st0) then
				s_divCounter <= endValue;
			else
				s_divCounter <= s_divCounter - 1;
			end if;
		end if;
	end process;

end behav;
