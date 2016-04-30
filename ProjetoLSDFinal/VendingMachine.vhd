library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity VendingMachine is
	port(SW			: in  std_logic_vector(17 downto 0);
		  CLOCK_50 	: in  std_logic;
		  KEY			: in  std_logic_vector(3 downto 0);
		  LCD_DATA	: inout std_logic_vector(7 downto 0);	-- LCD data bus signals
		  LCD_RW		: out std_logic;						-- LCD Read/Write signal
		  LCD_RS		: out std_logic;						-- LCD Mode signal (0 > command, 1 > char)
		  LCD_EN		: out std_logic;						-- LCD Enable signal
		  LCD_ON		: out std_logic;						-- LCD Power On signal		
		  LEDR 		: out std_logic_vector(3 downto 0);
		  HEX4		: out std_logic_vector(6 downto 0);
		  HEX5		: out std_logic_vector(6 downto 0);
		  HEX6		: out std_logic_vector(6 downto 0);
		  HEX7		: out std_logic_vector(6 downto 0));
end VendingMachine;

architecture Shell of VendingMachine is
signal s_product: std_logic_vector(3 downto 0);
signal s_priceU: std_logic_vector(3 downto 0);
signal s_priceD: std_logic_vector(3 downto 0);
signal s_money: std_logic_vector(4 downto 0);
signal s_vinte: std_logic;
signal s_cinquenta: std_logic;
signal s_um: std_logic;
signal s_dois: std_logic;
signal s_clk: std_logic;
signal s_enable : std_logic;
signal s_reset : std_logic;
signal s_choc : std_logic;
signal s_Out1 : std_logic;
signal s_Out2 : std_logic;
signal s_Out3 : std_logic;
signal s_push : std_logic;
signal s_KEY   : std_logic_vector(3 downto 0);
signal s_change: std_logic_vector(4 downto 0);
signal s_change1: std_logic_vector(4 downto 0);
signal s_plafon_10 : std_logic_vector(4 downto 0);
signal s_replacement : std_logic;

type MyState is (ST00, ST01, ST02, ST03, ST04, ST05);
	signal cst, nst  		: MyState;							-- State Machine signals

----------------------------------Keys and cock related signals
	signal clk				: std_logic;						-- Internal clock -> 1MHz
	signal clkd				: std_logic;						-- Internal clock -> 10KHz (for deboucers)
	signal pulse			: std_logic;						-- Pulse request for writing LCD
	signal initPulse		: std_logic;						-- Pulse request for LCD Init

----------------------------------Keys and cock related signals
	signal wordCount    	: natural := 0;						-- Current char sequence counter
	signal wordval	    	: std_logic_vector(8 downto 0);		-- Current char value to be writen
	signal writeReady		: std_logic := '0';					-- Indicates next char can be writen

----------------------------------LCD interface related signals
	signal LcdData			: std_logic_vector(7 downto 0);		-- Byte data to be writen to LCD
	signal LcdMode			: std_logic;						-- Mode (command/data) signal for LCD
	signal LcdWrite			: std_logic;						-- LCD Write request
	signal LcdInit			: std_logic := '0';					-- LCD Init request signal
	signal LcdDone			: std_logic;						-- LCD return signal when operation done

----------------------------------ROM interface related signals
	signal address			: std_logic_vector(4 downto 0);		-- ROM address
	signal char				: std_logic_vector(7 downto 0); 	-- Readen char value from ROM

----------------------------------Constant definitons
	constant CLS			: std_logic_vector(8 downto 0) := "000000001";  -- Clear Screen
	constant CMD			: std_logic := '0'; 							-- Command mode
	constant CHR			: std_logic := '1'; 							-- Data mode


begin
	system_core : entity work.ProductDecoder(Behavioral)
		port map(reset 		=> s_reset,
					resetAux		=> SW(17),
					clk         => CLOCK_50,
					productBol  => SW(3),
					productChoc => SW(1),
					productAgua => SW(2),
					vinte		 	=> s_vinte,
					push        => s_push,
					cinquenta	=> s_cinquenta,
					um			   => s_um,
					VendProd1    => s_Out1,
					VendProd2    => s_Out2,
					VendProd3    => s_Out3,
					dois		   => s_dois,
					product 	   => s_product,
					romOut      => pulse,
					money		   => s_money);
					
	FSM_agua : entity work.AguaFSM(Behavioral)
		port map(reset			=> s_reset,
					clk			=> CLOCK_50,
					push        => s_push,
					id				=> s_product,
					vinte			=> s_vinte,
					cinquenta	=> s_cinquenta,
					um				=> s_um,
					dois			=> s_dois,
					OutAux      => s_Out1,
					product	   => LEDR(2));
	
	FSM_Bolachas : entity work.BolachasFSM(Behavioral)
		port map(reset			=> s_reset,
					clk			=> CLOCK_50,
					push        => s_push,
					id				=> s_product,
					vinte			=> s_vinte,
					cinquenta	=> s_cinquenta,
					um				=> s_um,
					OutAux      => s_Out2,
					dois			=> s_dois,
					product	   => LEDR(3));
					
	FSM_Chocolate : entity work.ChocolateFSM(Behavioral)
		port map(reset			=> s_reset,
					clk			=> CLOCK_50,
					push        => s_push,
					id				=> s_product,
					vinte			=> s_vinte,
					cinquenta	=> s_cinquenta,
					um				=> s_um,
					dois			=> s_dois,
					OutAux      => s_Out3,
					product	   => LEDR(1));
	
	auxiliaryMachine_vinte : entity work.AuxiliaryMachine(Behavioral)
		port map(clk		=> CLOCK_50,
					moeda	   => s_KEY(0),
					saida    => s_vinte);
	
	auxiliaryMachine_cinquenta : entity work.AuxiliaryMachine(Behavioral)
		port map(clk		=> CLOCK_50,
					moeda	   => s_KEY(1),
					saida    => s_cinquenta);
	
	auxiliaryMachine_um : entity work.AuxiliaryMachine(Behavioral)
		port map(clk		=> CLOCK_50,
					moeda	   => s_KEY(2),
					saida    => s_um);
	
	auxiliaryMachine_dois : entity work.AuxiliaryMachine(Behavioral)
		port map(clk		=> CLOCK_50,
					moeda	   => s_KEY(3),
					saida    => s_dois);
					
	auxiliaryMachine_reset : entity work.AuxiliaryMachine(Behavioral)
		port map(clk		=> CLOCK_50,
					moeda	   => SW(17),
					saida    => s_reset);
	
	auxiliaryMachine_replacement : entity work.AuxiliaryMachine(Behavioral)
		port map(clk		=> CLOCK_50,
					moeda	   => SW(0),
					saida    => s_replacement);
					
	auxiliaryMachine_push : entity work.AuxiliaryMachine(Behavioral)
		port map(clk		=> CLOCK_50,
					moeda	   => SW(16),
					saida    => s_push);
					
					
	bin7_money : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput		=> s_money,
					decOut0_n	   => HEX4,
					decOut1_n   => HEX5);
					
	changeMachine : entity work.ChangeMachine(Behavioral)
		port map(id 				=> s_product,
					clk            => CLOCK_50,
					reset          => s_reset,
					push           => s_push,
					money				=> s_money,
					change 	 	 	=> s_change,
					change1        => s_change1);
					
	plafon_pro : entity work.Plafon(Behavioral)
		port map(RunOut         => LEDR(0),
					Push           => s_push,
					replacement		=> s_replacement,
					clk 				=> CLOCK_50,
					change 	 	 	=> s_change1);
					
	bin7_change : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput			=> s_change,
					decOut0_n	   => HEX6,
					decOut1_n   	=> HEX7);
					
	KEY0_debounce : entity WORK.Debouncer(Behavioral)
		generic map(clkFrekHz => 50000,
						blindmSec => 100,
						inPol		 => '0',
						outPol	 => '1')
		port map(reset			 => SW(17),
					refClk		 => CLOCK_50,
					dirtyIn		 => KEY(0),
					pulsedOut	 => s_KEY(0));
					
	KEY1_debounce : entity WORK.Debouncer(Behavioral)
		generic map(clkFrekHz => 50000,
						blindmSec => 100,
						inPol		 => '0',
						outPol	 => '1')
		port map(reset			 => SW(17),
					refClk		 => CLOCK_50,
					dirtyIn		 => KEY(1),
					pulsedOut	 => s_KEY(1));
					
	KEY2_debounce : entity WORK.Debouncer(Behavioral)
		generic map(clkFrekHz => 50000,
						blindmSec => 100,
						inPol		 => '0',
						outPol	 => '1')
		port map(reset			 => SW(17),
					refClk		 => CLOCK_50,
					dirtyIn		 => KEY(2),
					pulsedOut	 => s_KEY(2));
	
	KEY3_debounce : entity WORK.Debouncer(Behavioral)
		generic map(clkFrekHz => 50000,
						blindmSec => 100,
						inPol		 => '0',
						outPol	 => '1')
		port map(reset			 => SW(17),
					refClk		 => CLOCK_50,
					dirtyIn		 => KEY(3),
					pulsedOut	 => s_KEY(3));
		
		----------------------------------BLOCK INSTANTIATION

	clk1: entity work.ClkDividerN(behav)				-- Generates a 1MHz clock
		generic map(50)
		port map(CLOCK_50, clk); 

	clk2: entity work.ClkDividerN(behav)				-- Generates a 10KHz clock for debouncer
		generic map(5000)
		port map(CLOCK_50, clkd); 

	sp2	: entity work.SINGLE_PULSE_DEBOUNCER(behav)		-- Debounces Key(3) for LCD INIT
		port map (clkd, SW(14), initPulse);
		
	lcd2: entity work.LCD_INTERFACE(hibrid)		-- Instanciates the LCD interface module
		port map(clk => clk,
				 INIT => LcdInit,
				 DATA => LcdData, 
				 CMD_DATA => LcdMode, 
				 WRITE_D => LcdWrite, 
				 DONE => LcdDone,
				 GLCD_DATA => LCD_DATA,
				 GLCD_RW => LCD_RW,
				 GLCD_RS => LCD_RS,
				 GLCD_EN => LCD_EN,
				 GLCD_ON => LCD_ON);
				 		 
	rom1: entity work.MYROM(behav)						-- Instanciates my ROM module
		port map(address, s_product, char);
		
----------------------------------NEXT STATE PROCESS	
		
	FSM:	process (cst, pulse, initPulse, writeReady, wordval, LcdDone, wordCount )
	begin
		LcdData <= x"00";						-- Default values for combinatorial signals
		LcdMode <= '0';
		LcdWrite <= '0';
		LcdInit <= '0';
		
		case cst is
			when ST00 =>						-- This is the startup state
				nst <= ST00;				
				if (pulse = '1') then			-- if (KEY(0) has been pressed) then
					nst <= ST01;				-- 		start write process to LCD
				elsif (initPulse = '1') then	-- elsif (initPulse ) then
					nst <= ST04;				--		request a LCD init
				end if;							-- end if

			when ST01 =>						-- Verify if internal ready signal is ON
				if (writeReady = '1') then
					nst <= ST02;
				else
					nst <= ST00;				
				end if;

			when ST02 =>						-- Activates write request
				LcdData <= wordval(7 downto 0);
				LcdMode <= wordval(8);
				LcdWrite <= '1';
				nst <= ST03;

			when ST03 =>
				LcdData <= wordval(7 downto 0);
				LcdMode <= wordval(8);
				LcdWrite <= '0';				-- Removes write request and wait 
				if (LcdDone = '1') then			--        for operation to finish
					nst <= ST01;
				else	
					nst <= ST03;
				end if;				
				
----------------------------------Init Request Sequence	

			when ST04 =>
				LcdInit <= '1';					-- Activates LCD init signal
				nst <= ST05;

			when ST05 =>
				nst <= ST05;
				if (LcdDone = '1') then 		-- wait for operation to conclude
					nst <= ST00;
				end if;			
			
			when others =>
				nst <= ST00;
				
		end case;

	end process;

----------------------------------FSM CONTROL PROCESS				
	main:	process (clk, pulse)	
	begin
		if (rising_edge(clk)) then
			cst <= nst;
			if not (s_product = "0001" or s_product = "0010" or s_product = "0011") then
				wordval <= CLS;
			end if;
			if (nst = ST01) then
				writeReady <= '1';
				if (wordCount = 0) then					-- if wordCount is zero Clear Screen
					wordval <= CLS;
					wordCount <= 1;
				elsif (wordCount = 1) then				-- else if wordCount is one define start address to write 
					wordval <= CMD & '1' & "0000000";
					address <= "00000";
					wordCount <= 2;						-- increment wordCount
				elsif (wordCount < 18) then --18
					wordval <= CHR & char;				-- else write next character
					address <= address + 1;
					wordCount <= wordCount + 1;			-- increment wordCount
				elsif (wordCount = 18) then
					wordval <= CMD & '1' & "1000000";	-- select line 1
					wordCount <= wordCount + 1;			-- increment wordCount
				elsif (wordCount < 35) then
					wordval <= CHR & char;				-- else write next character
					address <= address + 1;
					wordCount <= wordCount + 1;			-- increment wordCount
				else
					writeReady <= '0';					-- stop machine
					wordCount <= 0;
				end if;
			else	
				writeReady <= '0';	
			end if;
		
		end if;

	end process;

end Shell;