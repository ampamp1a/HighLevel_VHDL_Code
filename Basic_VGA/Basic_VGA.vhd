library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Basic_VGA is

	port(
			clock		:in std_logic;
			reset		:in std_logic;
			Seclector:in std_logic_vector(1 downto 0);
			VGA_HS	:out std_logic;
			VGA_VS	:out std_logic;
			VGA_HS_1	:out std_logic;
			VGA_VS_1	:out std_logic;
			VGA_Data	:out std_logic;--set pin for test point measurement time @D
			Red		:out std_logic_vector(3 downto 0);
			Blue		:out std_logic_vector(3 downto 0);			
			Green		:out std_logic_vector(3 downto 0) 
	);
end;

architecture MAX_10 of Basic_VGA is
	signal p_clock :std_logic;
	signal	XX			: std_logic_vector(9 downto 0);
	signal	YY			: std_logic_vector(8 downto 0);
	type state_type is (
        Horizontal_sync,
        Vertical_sync_P_Q,
		  Vertical_sync_S);
	signal state: state_type := Horizontal_sync;

begin
	process(p_clock, reset) is
		variable Signal_count:integer range 0 to 500000;
		variable H_pixel		:integer range 0 to 800;
		variable V_Line		:integer range 0 to 500;
	begin

		if(reset ='1') then
			Signal_count := 0;
			V_Line :=0;
			-----This section Imprement for measurement signal---------
			VGA_HS_1  <='1';
			VGA_VS_1  <='1';
			VGA_Data	 <='0';
			-----------------------------------------------------------
			VGA_HS  <='1';
			VGA_VS  <='1';

			state <= Horizontal_sync ;
		elsif(p_clock'event and p_clock ='1' ) then

		case state is 
--Horizonal Dots         640        
--Vertical Scan Lines    480
--Horiz. Sync Polarity   NEG
--A (us)                 31.77     Scanline time
--B (us)                 3.77      Sync pulse lenght 
--C (us)                 1.89      Back porch
--D (us)                 25.17     Active video time
--E (us)                 0.94      Front porch
--         ______________________          ________
--________|        VIDEO         |________| VIDEO (next line)
--    |-C-|----------D-----------|-E-|
--__   ______________________________   ___________
--  |_|                              |_|
--  |B|
--  |---------------A----------------|
--
--
--ref: http://martin.hinner.info/vga/timing.html
			when Horizontal_sync =>
				if (Signal_count >= 0 and Signal_count <= 94 ) then		--generate signal @B VGA_HS as low untill time to 3.77us
					VGA_HS  <='0'; 													--Signal_count = 95; (3.77us x 25.248MHz ) @p_clock = 25.248MHz 
					-----This section Imprement for measurement signal---------
					VGA_HS_1  <='0';
					-----------------------------------------------------------
				elsif (Signal_count >= 95 and Signal_count <= 141) then	--generate @C VGA_HS as High untill time to 1.89us 
					VGA_HS  <='1'; 													--Signal_count = 47; (1.89us x 25.248MHz ) @p_clock = 25.248MHz  
					-----This section Imprement for measurement signal---------
					VGA_HS_1  <='1';
					-----------------------------------------------------------
				elsif (Signal_count >= 141 and Signal_count <= 780) then--782--generate signal @D VGA_HS as High untill time to 25.17us 
					VGA_HS  <='1'; 													--Signal_count = 635; (25.17us x 25.248MHz ) @p_clock = 25.248MHz 
					-----This section Imprement for measurement signal---------
					VGA_HS_1  <='1';
					VGA_Data	 <='1'; 																	
					-----------------------------------------------------------
					H_pixel := Signal_count - 143; 					         --count horizontal pixe(0 to 639) 	
					XX <= std_logic_vector(to_unsigned(H_pixel,10)); 		--convert to pinout for interface data in Horizontal RAM
					YY <= std_logic_vector(to_unsigned(V_Line,9)); 			--convert to pinout for interface data in Vertical RAM
				
				elsif (Signal_count >= 781 and Signal_count <= 803) then	--783--VGA_HS as High untill time to 0.94us 
					VGA_HS  <='1'; 										         --generate Horizontal signal @E --805
					-----This section Imprement for measurement signal---------
					VGA_HS_1  <='1';
					VGA_Data	 <='0';	
					-----------------------------------------------------------
					XX <= "0000000000";												-- clear RGB data of send blank data
				else
					Signal_count :=0;
					VGA_HS  <='0';
					-----This section Imprement for measurement signal---------
					VGA_HS_1  <='0';
					-----------------------------------------------------------
					V_Line := V_Line + 1;
					if (V_Line >= 479) then											--VGA send data complete 640(H) and 480(V)
						state <= Vertical_sync_S ;
						Signal_count :=0;
						V_Line :=0;	
					end if;	

				
				end if;
				
				Signal_count := Signal_count + 1;
---------------------------------------------------------------------------------
--Horizonal Dots         640
--Vertical Scan Lines    480
--Vert. Sync Polarity    NEG      
--Vertical Frequency     60Hz
--O (ms)                 16.68     Total frame time
--P (ms)                 0.064     Sync length
--Q (ms)                 1.02      Back porch
--R (ms)                 15.25     Active video time
--S (ms)                 0.35      Front porch
--         ______________________          ________
--________|        VIDEO         |________|  VIDEO (next frame)
--    |-Q-|----------R-----------|-S-|
--__   ______________________________   ___________
--  |_|                              |_|
--  |P|
--  |---------------O----------------|
----------------------------------------------------------------------------------				
			when Vertical_sync_P_Q =>
			if (Signal_count >= 0 and Signal_count <= 1614)  then	--VGA_VS as Low untill time to 64us
				VGA_VS  <='0'; 												--Signal_count = 1615; (64us x 25.248MHz ) @p_clock = 25.248MHz 
																					--generate Vertical signal @P
				-----This section Imprement for measurement signal---------
				VGA_VS_1  <='0';
				-----------------------------------------------------------	
			elsif (Signal_count >= 1615 and Signal_count <= 27343)  then	--VGA_VS as High untill time to 1.02ms
				VGA_VS  <='1'; 												--Signal_count = 25752; (1.02ms x 25.248MHz ) @p_clock = 25.248MHz 
																					--generate Vertical signal @Q 
				-----This section Imprement for measurement signal---------
				VGA_VS_1  <='1';
				-----------------------------------------------------------
			else																	
				VGA_VS  <='1'; 												--state go to  Horizontal_sync for send data 640(H) and 480(V)
				-----This section Imprement for measurement signal---------
				VGA_VS_1  <='1';
				-----------------------------------------------------------
				state <= Horizontal_sync;									--generate signal @R VGA_VS as High untill time to 15.25ms 
				Signal_count :=0;				

			end if;
				Signal_count := Signal_count + 1;
				

			when Vertical_sync_S =>
			if (Signal_count >= 0 and Signal_count <= 8835)  then	--VGA_VS as Low untill time to 0.35ms
				VGA_VS  <='1'; 												--Signal_count = 8836; (0.35ms x 25.248MHz ) @p_clock = 25.248MHz 
				-----This section Imprement for measurement signal---------
				VGA_VS_1  <='1';
				-----------------------------------------------------------
																					--generate Vertical signal @S 
			else																	
				VGA_VS  <='1'; 												--state go to  Vertical_sync_P_Q for send data nex fram
				-----This section Imprement for measurement signal---------
				VGA_VS_1  <='1';
				-----------------------------------------------------------
				state <= Vertical_sync_P_Q;								
				Signal_count :=0;				

			end if;			
			Signal_count := Signal_count + 1;
	
		end case;	

	end if;
	end process;

	
process(XX, YY,Seclector) is
		variable H_pix		:integer range 0 to 800;
		variable V_pix		:integer range 0 to 500;

		
	begin	
		H_pix := to_integer(unsigned(XX));
		V_pix := to_integer(unsigned(YY));
		
		if(Seclector = "00") then										--- Horizontal

				if (V_pix >= 0 and V_pix <= 89) then 
								Red 	<= x"F";
								Blue 	<= x"0";
								Green <= x"0";
				elsif (V_pix >= 90 and V_pix <= 179) then 
								Red 	<= x"F";
								Blue 	<= x"F";
								Green <= x"F";
				elsif (V_pix >= 180 and V_pix <=299 ) then 
								Red 	<= x"0";
								Blue 	<= x"F";
								Green <= x"0";
				elsif (V_pix >= 300 and V_pix <= 389) then 
								Red 	<= x"F";
								Blue 	<= x"F";
								Green <= x"F";
				elsif (V_pix >= 390 and V_pix <= 479) then 
								Red 	<= x"F";
								Blue 	<= x"0";
								Green <= x"0";
				end if;
				
		elsif (Seclector = "01") then									--- Vertical						
				if (H_pix >= 0 and H_pix <= 119) then 
								Red 	<= x"F";
								Blue 	<= x"0";
								Green <= x"0";
				elsif (H_pix >= 120 and H_pix <= 239) then 
								Red 	<= x"F";
								Blue 	<= x"F";
								Green <= x"F";
				elsif (H_pix >= 240 and H_pix <= 399) then 
								Red 	<= x"0";
								Blue 	<= x"F";
								Green <= x"0";
				elsif (H_pix >= 400 and H_pix <= 519) then 
								Red 	<= x"F";
								Blue 	<= x"F";
								Green <= x"F";
				elsif (H_pix >= 520 and H_pix <= 639) then 
								Red 	<= x"F";
								Blue 	<= x"0";
								Green <= x"0";
				end if;
		elsif (Seclector = "10") then								--- Square 3 angle
				if (H_pix >= 0 and H_pix <= 119 and V_pix >= 0 and V_pix <= 119 ) then 
								Red 	<= x"0";
								Blue 	<= x"F";
								Green <= x"0";
				
				elsif (H_pix >= 520 and H_pix <= 639 and V_pix >= 0 and V_pix <= 119 ) then 
								Red 	<= x"F";
								Blue 	<= x"0";
								Green <= x"0";
							
				elsif (H_pix >= 240 and H_pix <= 359 and V_pix >= 360 and V_pix <= 479 ) then 
								Red 	<= x"0";
								Blue 	<= x"0";
								Green <= x"F";
				else
								Red 	<= x"F";
								Blue 	<= x"F";
								Green <= x"F";	
					
				end if;
		else 																--- white bg
								Red 	<= x"F";
								Blue 	<= x"F";
								Green <= x"F";	
					
								
		end if;

	if (XX = "0000000000") then
			Red 	<= x"0";
			Blue 	<= x"0";
			Green <= x"0";	
	end if;
		----------------------------

		-------------------------------------------
			end process;

-----------------------------------------
pll:work.VGAPLL port map(
		inclk0 => clock,
		areset => reset,
		c0		=> P_clock
		);
end MAX_10;