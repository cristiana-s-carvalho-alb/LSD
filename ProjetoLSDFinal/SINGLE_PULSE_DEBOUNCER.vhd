--------------------------------------------------------------------------------
--	Filename		: SINGLE_PULSE_DEBOUNCER.vhd - symple debouncer circuit
--	Description		: Set 1 clock sync period pulse when input stays in zero
--					  for more than 1msus
--					: Note: Clock should be 10KHz - Output pulse will be 100us
--  Author:			: mbc - 2015
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SINGLE_PULSE_DEBOUNCER is
	port (	clkIn, dataIn   : in std_logic;
			pulse			: out std_logic);
end SINGLE_PULSE_DEBOUNCER;

architecture behav of SINGLE_PULSE_DEBOUNCER is
	signal s_shifter : std_logic_vector(99 downto 0);
	signal s_tmsb : std_logic;
begin

	sync: process(clkIn) is
	begin
		if (rising_edge(clkIn)) then
			if (dataIn = '1') then
				s_shifter <= s_shifter(98 downto 0) & '1';
			else
				s_shifter <= (others => '0');
			end if;
			pulse <= s_tmsb;
		end if;
	end process;
	s_tmsb <= s_shifter(99) xor s_shifter(98);
	
end behav;