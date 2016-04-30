library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity ProductDecoder is
	port(reset 		 : in  std_logic;
		  clk			 : in  std_logic;
		  resetAux	 : in  std_logic; 
		  push		 : in  std_logic;
		  VendProd1   : in std_logic;
		  VendProd2   : in std_logic;
		  VendProd3   : in std_logic;
		  productBol : in std_logic;
		  productChoc: in std_logic;
		  productAgua: in std_logic;
		  vinte		 : in std_logic;
		  cinquenta	 : in std_logic;
		  um			 : in std_logic;
		  dois		 : in std_logic;
		  product 	 : out std_logic_vector(3 downto 0);
		  priceD		 : out std_logic_vector(3 downto 0);
		  priceU		 : out std_logic_vector(3 downto 0);
		  romOut		 : out std_logic;
		  money		 : out std_logic_vector(4 downto 0));
end ProductDecoder;

architecture Behavioral of ProductDecoder is
signal s_money : unsigned(4 downto 0);
signal s_resetAux : std_logic;
begin
	id_product : process(productAgua, productBol, productChoc)
	begin
		if (rising_edge(clk)) then
		if (reset = '1') then
			product <= "0000";
		else
			if (productChoc = '1') then
				product <= "0001";
				romOut <= '1';
			elsif (productAgua = '1') then
				product <= "0010";
				romOut <= '1';
			elsif (productBol = '1') then
				product <= "0011";
				romOut <= '1';
			else 
				product <= "0000";
				romOut <= '0';
			end if;
		end if;
		end if;
	end process;
	
	
	moneyOut: process(push, clk, vinte, cinquenta, dois, um)
	begin
	if (rising_edge(clk)) then	if(reset = '1') then
			s_resetAux <= '1';
	end if;	
	if (s_resetAux = '1' and resetAux = '0' and (VendProd1 or VendProd2 or VendProd3) = '0') or (push = '1' and (VendProd1 or VendProd2 or VendProd3)= '1') then
		s_money <= "00000";
		s_resetAux <= '0';
	else
	if ((VendProd1 or VendProd2 or VendProd3) = '1') then
		s_money <= s_money;
	elsif (vinte = '1') then
		s_money <= s_money + 2;
	elsif (cinquenta = '1' ) then
		s_money <= s_money + 5;
	elsif (um = '1') then
		s_money <= s_money + 10;
	elsif (dois = '1') then
		s_money <= s_money + 20;
	end if;
	end if;
	end if;
	money <= std_logic_vector(s_money);
	end process;
end Behavioral;