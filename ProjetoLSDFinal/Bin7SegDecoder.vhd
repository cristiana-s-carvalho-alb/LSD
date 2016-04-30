library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port(binInput	: in  std_logic_vector(4 downto 0);
		  decOut1_n	: out std_logic_vector(6 downto 0);
		  decOut0_n	: out std_logic_vector(6 downto 0));
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is	
	signal dec : std_logic_vector(13 downto 0);
begin
	with binInput select
		dec <=      "10000001000000" when "00000", --0
						"10000001111001" when "00001",   --1
						"10000000100100" when "00010",   --2
						"10000000110000" when "00011",   --3
						"10000000011001" when "00100",   --4
						"10000000010010" when "00101",   --5
						"10000000000010" when "00110",   --6
						"10000001111000" when "00111",   --7
						"10000000000000" when "01000",   --8
						"10000000010000" when "01001",   --9
						"11110011000000" when "01010",   --10
						"11110011111001" when "01011",   --11
						"11110010100100" when "01100",   --12
						"11110010110000" when "01101",   --13
						"11110010011001" when "01110",   --14
						"11110010010010" when "01111",   -- 15
						"11110010000010" when "10000",   --16
						"11110011111000" when "10001",   --17
						"11110010000000" when "10010",   --18
						"11110010010000" when "10011",   --19
						"01001001000000" when "10100",   --20
						"01001001111001" when "10101", -- 21
						"01001000100100" when "10110",-- 22
						"01001000110000" when "10111",-- 23
						"01001000011001" when "11000",-- 24
						"01001000010010" when "11001",--25
						"01001000000010" when "11010",--26
						"01001001111000" when "11011",  --27
						"01001000000000" when "11100",--28
						"01001000010000" when "11101",-- 29
						"01100001000000" when "11110", --30
						"11111111111111" when others;  			
						
		 				
	decOut0_n <= std_logic_vector(dec(6 downto 0));
	decOut1_n <= std_logic_vector(dec(13 downto 7));
end Behavioral;
