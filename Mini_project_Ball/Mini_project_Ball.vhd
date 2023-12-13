library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Mini_project_Ball is

	port(
			clock		:in std_logic;
			reset		:in std_logic;
			Seclector:in std_logic_vector(2 downto 0);
			VGA_HS	:out std_logic;
			VGA_VS	:out std_logic;
			VGA_HS_1	:out std_logic;
			VGA_VS_1	:out std_logic;
			VGA_Data	:out std_logic;--set pin for test point measurement time @D
			Red		:out std_logic_vector(3 downto 0);
			Blue		:out std_logic_vector(3 downto 0);			
			Green		:out std_logic_vector(3 downto 0);
			sclk     : BUFFER STD_LOGIC;							--SPI bus: serial clock
			ss_n 		: BUFFER STD_LOGIC_VECTOR(0 DOWNTO 0); --SPI bus: slave select
			miso : IN STD_LOGIC;										--master in, slave out
			mosi : OUT STD_LOGIC;									--master out, slave in
			cleargame : in std_logic
			
	);
end;

architecture MAX_10 of Mini_project_Ball is
	signal p_clock :std_logic;
	signal	XX			: std_logic_vector(9 downto 0);
	signal	YY			: std_logic_vector(8 downto 0);
	signal slope_x : integer range 0 to 500000 := 320; 	-- move x
	signal slope_y : integer range 0 to 500000 := 240; 	-- move y
	signal selec        : std_logic_vector(2 downto 0);	
	signal clear : std_logic;
	type state_type is (
        Horizontal_sync,
        Vertical_sync_P_Q,
		  Vertical_sync_S);
	signal state: state_type := Horizontal_sync;

	signal axis_x : STD_LOGIC_VECTOR(15 DOWNTO 0):= (OTHERS => '0');
	signal axis_y : STD_LOGIC_VECTOR(15 DOWNTO 0):= (OTHERS => '0');
	signal axis_z : STD_LOGIC_VECTOR(15 DOWNTO 0):= (OTHERS => '0');

	signal xxx : integer :=0 ;
	signal yyy : integer :=0 ;
	signal zzz : integer :=0 ;
	
	-----------
  COMPONENT pmod_accelerometer_adxl345 IS	 
	 PORT(
    clk            : IN      STD_LOGIC;                      --system clock
    reset_n        : IN      STD_LOGIC;                      --active low asynchronous reset
    miso           : IN      STD_LOGIC;                      --SPI bus: master in, slave out
    sclk           : BUFFER  STD_LOGIC;                      --SPI bus: serial clock
    ss_n           : BUFFER  STD_LOGIC_VECTOR(0 DOWNTO 0);   --SPI bus: slave select
    mosi           : OUT     STD_LOGIC;                      --SPI bus: master out, slave in
    acceleration_x : OUT     STD_LOGIC_VECTOR(15 DOWNTO 0);  --x-axis acceleration data
    acceleration_y : OUT     STD_LOGIC_VECTOR(15 DOWNTO 0);  --y-axis acceleration data
    acceleration_z : OUT     STD_LOGIC_VECTOR(15 DOWNTO 0)); --z-axis acceleration data
END COMPONENT pmod_accelerometer_adxl345;
	
begin

	Pmod	:  pmod_accelerometer_adxl345
		PORT MAP (
      clk => p_clock,
      reset_n => reset,
      miso => miso,
      sclk => sclk,
      ss_n => ss_n,
      mosi => mosi,
      acceleration_x => axis_x,
      acceleration_y => axis_y,
      acceleration_z => axis_z
    );			
	 
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

	
process(XX, YY,Seclector,cleargame) is
		variable H_pix		:integer range 0 to 800;
		variable V_pix		:integer range 0 to 500;
		variable R			:integer := 20;

		variable Win_1 : std_logic := '0';
		variable Win_2 : std_logic := '0';
		variable Win_3 : std_logic := '0';
		
		variable finish_game : std_logic := '0';
		variable cnt : integer ;
		variable checkst : std_logic := '1';
	begin	
		H_pix := to_integer(unsigned(XX));
		V_pix := to_integer(unsigned(YY));
		
		
	if cleargame ='0'then
			Win_1 := '0';
			Win_2 := '0';
			Win_3 := '0';
			clear <= '0';
			checkst := '0';
			finish_game := '0';
			cnt := 0;
	else
			clear <= '1';
	end if;
		
	if Seclector = "000"  then	
	 if checkst = '0' then
	 
		if Win_1 = '1' and Win_2 = '1' and Win_3 = '1' then												-- Check Win
			finish_game := '1';
		else 
			finish_game := '0';
		end if;
		
		if finish_game = '1' then
			if cnt = 307201 then
				checkst := '1';
				cnt := 0;
			else 
				cnt := cnt+1;
			end if;
				 --  W
				 if (H_pix >= 39 and H_pix <= 59 and V_pix >= 160 and V_pix <= 320) then
					  Red <= x"F";
					  Green <= x"0";
					  Blue <= x"0";	  
					  
				 elsif (H_pix >= 79 and H_pix <= 99 and V_pix >= 160 and V_pix <= 320) then
					  Red <= x"F";
					  Green <= x"0";
					  Blue <= x"0";

				 elsif (H_pix >= 119 and H_pix <= 139 and V_pix >= 160 and V_pix <= 320) then
					  Red <= x"F";
					  Green <= x"0";
					  Blue <= x"0";
					  
				 elsif (H_pix >= 59 and H_pix <= 79 and V_pix >= 280 and V_pix <= 320) then
					  Red <= x"F";
					  Green <= x"0";
					  Blue <= x"0";					  

				 elsif (H_pix >= 99 and H_pix <= 119 and V_pix >= 280 and V_pix <= 320) then
					  Red <= x"F";
					  Green <= x"0";
					  Blue <= x"0";
					  
				 --  I
				 elsif (H_pix >= 299 and H_pix <= 339 and V_pix >= 100 and V_pix <= 140) then
					  Red <= x"F";
					  Green <= x"0";
					  Blue <= x"0";
					  
				 elsif (H_pix >= 299 and H_pix <= 339 and V_pix >= 160 and V_pix <= 320) then
					  Red <= x"F";
					  Green <= x"0";
					  Blue <= x"0";

				 --  N
				 elsif (H_pix >= 499 and H_pix <= 519 and V_pix >= 160 and V_pix <= 320) then
					  Red <= x"F";
					  Green <= x"0";
					  Blue <= x"0";

				 elsif (H_pix >= 519 and H_pix <= 539 and V_pix >= 160 and V_pix <= 200) then
					  Red <= x"F";
					  Green <= x"0";
					  Blue <= x"0";
					  
 				 elsif (H_pix >= 539 and H_pix <= 559 and V_pix >= 160 and V_pix <= 320) then
					  Red <= x"F";
					  Green <= x"0";
					  Blue <= x"0";

					  
				 else
							Red 	<= x"0";
							Blue 	<= x"0";
							Green <= x"0";

				end if;
		--finish game = 0		
		else
				
				if (H_pix >= 50 and H_pix <= 119 and V_pix >= 50 and V_pix <= 119  ) then -- square 1
					if Win_1 ='0' then
									Red 	<= x"0";
									Blue 	<= x"F";
									Green <= x"0";
					else
									Red 	<= x"F";
									Blue 	<= x"F";
									Green <= x"F";				
					end if;		

				elsif (H_pix >= 520 and H_pix <= 589 and V_pix >= 50 and V_pix <= 119 ) then -- square 2
					if Win_2 ='0' then
									Red 	<= x"F";
									Blue 	<= x"0";
									Green <= x"0";
					else
									Red 	<= x"F";
									Blue 	<= x"F";
									Green <= x"F";				
					end if;
							
				elsif (H_pix >= 240 and H_pix <= 309 and V_pix >= 360 and V_pix <= 429 ) then -- square 3
					if Win_3 ='0' then
									Red 	<= x"0";
									Blue 	<= x"0";
									Green <= x"F";
					else
									Red 	<= x"F";
									Blue 	<= x"F";
									Green <= x"F";				
					end if;

				else										
					Red 	<= x"F";
					Blue 	<= x"F";
					Green <= x"F";		
				end if;
				
				-- circle
				if (H_pix - slope_x) ** 2 + (V_pix - slope_y) **2 <= R**2 then
											Red 	<= x"7";
											Blue 	<= x"c";
											Green <= x"a";

					if (H_pix >= 50 and H_pix <= 119 and V_pix >= 50 and V_pix <= 119 and Win_1 ='0'  ) then 
						 Win_1 := '1';
										
					end if;	
					
					if (H_pix >= 520 and H_pix <= 589 and V_pix >= 50 and V_pix <= 119 and Win_2 ='0' ) then 
						 Win_2 := '1';

					end if;
					
					if (H_pix >= 240 and H_pix <= 309 and V_pix >= 360 and V_pix <= 429 and Win_3 ='0' ) then 
						 Win_3 := '1';

					end if;
				end if;								 
		
		end if;
	 -- checkst = '1'	
	  else

			Red 	<= x"F";
			Blue 	<= x"F";
			Green <= x"F";

	  end if;
	 -- selector not 000
	 else

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
			
process(p_clock) is

	variable c_clk  :integer range 0 to 12500000 := 0;
		begin
		
	if p_clock'event and p_clock ='1' then   --clock for circle move 	
			
				xxx <= to_integer((signed(axis_x(12 downto 0))));
				yyy <= to_integer((signed(axis_y(12 downto 0))));
				zzz <= to_integer((signed(axis_z(12 downto 0))));
				
				if clear = '0' then
					slope_x <= 320;
					slope_y <= 240;
				end if;
				
					if c_clk =  150000  then
						c_clk := 0;
					
						if (yyy < 50 ) and (yyy > -50) then  		-- right or left
							
							if (xxx < -50 ) then						-- right
								if slope_x = 619 then
									slope_x <= 619;
								else
									slope_x <= slope_x + 1;
								end if;
								
							elsif (xxx > 50) then						-- left
								if slope_x = 33 then
									slope_x <= 33;
								else
									slope_x <= slope_x - 1;
								end if;
							end if;
							
						elsif (xxx < 10) and (xxx > -40) then 		-- up or down

							if (yyy < -50) then							-- down
								if slope_y = 459 then
									slope_y <= 459;
								else
									slope_y <= slope_y + 1;
								end if;
							
							elsif (yyy > 60) then						-- up
								if slope_y = 20 then
									slope_y <= 20  ;
								else
									slope_y <= slope_y - 1;
								end if;
							end if;
							
						elsif (yyy > 100) then							-- up left or up right
						
							if (xxx > 70) then							-- up left
								if slope_x = 33 then
									slope_x <= 33;
									slope_y <= slope_y;
								elsif slope_y = 20 then
									slope_y <= 20;
									slope_x <= slope_x;
								else
									slope_x <= slope_x - 1;
									slope_y <= slope_y - 1;
								end if;
						
							elsif (xxx < -70) then						-- up right
							
								if slope_x = 619 then
									slope_x <= 619;
									slope_y <= slope_y;
									
								elsif slope_y = 20 then
									slope_y <= 20;
									slope_x <= slope_x;
								else
									slope_x <= slope_x + 1;
									slope_y <= slope_y - 1;
								end if;
							end if;
							
						elsif (yyy < -100) then							-- down right or down left
						
							if (xxx > 70) then							-- down left
								if slope_x = 33 then
									slope_x <= 33;
									slope_y <= slope_y;
								elsif slope_y = 459 then
									slope_y <= 459;
									slope_x <= slope_x;
								else
									slope_x <= slope_x - 1;
									slope_y <= slope_y + 1; 
								end if;
						
							elsif (xxx < -50) then						-- down right
								if slope_x = 619 then
									slope_x <= 619;
									slope_y <= slope_y;
								elsif slope_y = 459 then
									slope_y <= 459;
									slope_x <= slope_x;
								else
									slope_x <= slope_x + 1;
									slope_y <= slope_y + 1;
								end if;
							end if;
							
						end if;
					else
						c_clk := c_clk + 1; 
					end if;
				
			end if;
end process;

-----------------------------------------
pll:work.VGAPLL port map(
		inclk0 => clock,
		areset => reset,
		c0		=> P_clock
		);
end MAX_10;