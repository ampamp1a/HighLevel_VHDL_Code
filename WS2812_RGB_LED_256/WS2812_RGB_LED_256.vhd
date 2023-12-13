library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity WS2812_RGB_LED_256 is
generic(
	T1H  : integer := 2;   	--0.7us at clk 50 MHz(0.7us)	 set = 2 for sim = 35 for FPGA
	T0H  : integer := 1;		--0.4us at clk 50 MHz(0.35us)	 set = 1 for sim = 20 for FPGA
   T1L  : integer := 1;		--0.6us at clk 50 MHz(0.6us)	 set = 1 for sim = 30 for FPGA
   T0L  : integer := 1;		--0.76us at clk 50 MHz(0.8us)	 set = 1 for sim = 38 for FPGA
	Number_LED: integer := 3;	--Number of LED
	MAX_COUNTER: integer := 50000000);  	--counter value for time setting
	 
port(
   CLK         : in std_logic;  						-- system clock (50MHz)
   RST_N       : in std_logic; 						-- active-low, async. system reset
	LED_Display : in std_logic_vector (7 downto 0); 	-- slide switch
	PB          : in std_logic := '1';					-- change color
	DATA				: out std_logic := '0'  			-- connect to DI pin of the RGB LED
);
end WS2812_RGB_LED_256;

architecture BEHAVE of WS2812_RGB_LED_256 is
	type state_type is (S0, S1, S2, S3, S4, S5);
	signal state : state_type := S0;
	subtype ROM_RGB_BITS is unsigned( 23 downto 0 );
	subtype ROM_RGB_ADDR is integer range 0 to 3;
	type ROM_RGB is array (ROM_RGB_ADDR) of ROM_RGB_BITS;
   constant ROM_TABLE : ROM_RGB := (    -- ROM table used to store 24-bit values for pre-defined colors
        x"000000", -- black (off)     color_index 0
        x"0000FF", -- blue             color_index 1
        x"00FF00", -- red              color_index 2			
        x"FF0000"  -- green            color_index 3		  
    );

	signal msb : std_logic;
   signal bt : std_logic := '1'; -- for set to put 1 time
   signal rgb_bits : unsigned(23 downto 0) := (others => '0');
   signal bit_cnt : integer range 0 to 23 := 0;
   signal baudrate_counter : integer range 0 to MAX_COUNTER;
   signal Num_LED : integer range 0 to (Number_LED - 1) := (Number_LED - 1);
   signal led_cnt: integer range 0 to (Number_LED - 1) ;
   signal color_index : integer range 0 to 3 := 0;
	signal num : integer range 0 to (Number_LED-1) := 0;

begin
	msb <= rgb_bits(rgb_bits'left);

   process (RST_N, CLK, PB) 
   begin
		if RST_N = '0' then 									-- async. reset (active-low)
         state       <= S0;
         rgb_bits    <= x"FF0000";
         bit_cnt     <= 23;
			DATA				<= '0';
         color_index <= 3;
			Num_LED     <= Number_LED -1;
			led_cnt		<= Number_LED -1;
			num				<= 0;
				
            				
        elsif rising_edge(CLK) then
            if PB = '0' then
                if bt = '1' and state = S5 then
                    bt <= '0';
                    case color_index is
                        when 1 => color_index <= 2;
                        when 2 => color_index <= 3;
                        when others => color_index <= 1;
                    end case;
                    Num_LED     <= to_integer(unsigned(LED_Display));
						  led_cnt	  <= Number_LED-1;
                    bit_cnt     <= 23;
						  DATA				<= '0';
						  num				<= 1;
                    state       <= S0;
                end if;
            else
                bt <= '1';
            end if;


            case state is		  
                when S0 => 										-- load a 24-bit LED color data
						if Num_LED >= num then
								rgb_bits  <= ROM_TABLE(color_index); 	-- load a 24-bit color value from the ROM table to rgb_bits 
								bit_cnt   <= 23;
								DATA			<= '0'; 							-- 	 is an output LED control bit
								state     <= S1; 								-- goto S1 
								num   	<= num+1;
							else
								rgb_bits  <= (others => '0'); 
								rgb_bits  <= x"000000";
								bit_cnt   <= 23;
								DATA         <= '0'; 							-- 	 is an output LED control bit
								state     <= S1; 								-- goto S1 
							end if;

                when S1 => 										-- start the counter for digital write HIGH for 1 bit 
                    if msb = '1' then   							-- check msb logic  
                        baudrate_counter <= T1H;				-- set time for write logic HIGH   
                    else              
                        baudrate_counter <= T0H;				-- set time for write logic HIGH  
                    end if; 
                    state <= S2; 
							DATA	<= '1';	
                when S2 => 											-- wait until the counter is done.
                    if baudrate_counter = 0 then
								DATA		<= '0';
                        state <= S3;  
                    else
                        baudrate_counter <= baudrate_counter - 1;
                    end if;
                when S3 => 											-- start the counter for digital write LOW for 1 bit
                    if msb = '1' then
                        baudrate_counter <= T1L;
                    else
                        baudrate_counter <= T0L;
                    end if; 
                    state  <= S4; 
                when S4 => 											-- shift left rgb_bits data  until 23 bits
                    if baudrate_counter = 0 then
                        if bit_cnt = 0 then
                            state <= S5; 
                        else
                            bit_cnt <= bit_cnt - 1;
                            rgb_bits <= rgb_bits(rgb_bits'left-1 downto 0) & '0';  -- shift left 1 bit for rgb_bits
                            state <= S1; 
                        end if;
                    else
                        baudrate_counter <= baudrate_counter - 1;
                    end if; 
                when S5 =>
							if led_cnt = 0 then
								DATA <= '0';
							else
								led_cnt <= led_cnt -1;
								state	<= S0;
							end if;
                when others =>
                    state <= S0;
				end case;
        end if;
    end process;
end BEHAVE;