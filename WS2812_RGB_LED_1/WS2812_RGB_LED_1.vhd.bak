library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity WS2812 is
generic(
    T1H  : integer := 35;   	--0.7us at clk 50 MHz(0.7us)	 set = 2 for sim
	 T0H  : integer := 20;		--0.4us at clk 50 MHz(0.35us)	 set = 1 for sim
    T1L  : integer := 30;		--0.6us at clk 50 MHz(0.6us)	 set = 1 for sim
    T0L  : integer := 38;		--0.76us at clk 50 MHz(0.8us)	 set = 1 for sim
	 Number_LED: integer := 256;		--Number of LED
	 MAX_COUNTER: integer := 50000000);  	--counter value for time setting
	 
  port( CLK   	: in std_logic;  			-- system clock (50MHz)
        RST_N 	: in std_logic; 		 	-- active-low, async. system reset
		  ADDR 	:in std_logic_vector (2 downto 0); --selector ROM addresss
        Q     	: out std_logic :='0' 	-- connect to DI pin of the RGB LED
  );
end WS2812;

architecture BEHAVE of WS2812 is
	type state_type is (S0,S1,S2,S3,S4,s5);
   signal state : state_type := S0;
   subtype ROM_RGB_BITS is unsigned( 23 downto 0 );
   subtype ROM_RGB_ADDR is integer range 0 to 7;
   type ROM_RGB is array (ROM_RGB_ADDR) of ROM_RGB_BITS;
   constant ROM_TABLE : ROM_RGB := (    -- ROM table used to store 24-bit values for pre-defined colors
     x"000F00", -- red				color_index 0			
     x"0F0000", -- green			color_index 1		   
     x"00000F", -- blue				color_index 2		
     x"0F000F", -- magenta			color_index 3		
     x"0F000F", -- cyan				color_index 4		
     x"0F0F00", -- yellow			color_index 5		
     x"0F0F0F", -- white			color_index 6		   
     x"000000"  -- black (off) 	color_index 7	
   );
 
   signal msb : std_logic;
   signal rgb_bits    : unsigned( 23 downto 0 ) := (others =>'0');
   signal bit_cnt     : integer range 0 to 23 := 0;
   signal color_index : integer range 0 to 7 := 0;
	signal baudrate_counter: integer range 0 to MAX_COUNTER ;
	signal Num_LED: integer range 0 to (Number_LED - 1):=(Number_LED - 1);

begin
   msb <= rgb_bits(rgb_bits'left);
	color_index <=  to_integer(unsigned(ADDR));     
   process (RST_N, CLK) 
   begin
      if RST_N = '0' then -- async. reset (active-low)
         state       <= S0;
         rgb_bits    <= (others => '0');
         bit_cnt     <=  23;
         Q           <= '0';
      elsif rising_edge(CLK) then
        case state is
          when S0 => -- load a 24-bit LED color data
            rgb_bits  <= ROM_TABLE( color_index ); -- load a 24-bit color value from the ROM table to rgb_bits 
				bit_cnt   <= 23;
            Q         <= '0'; --Q is a output LED control bit
				state     <= S1; -- goto S1 
          when S1 => -- start the counter for digital write HIGH for 1 bit 
            if msb = '1' then   				--check msb logic  
               baudrate_counter <= T1H;	--set time for write logic HIGH   
            else              
               baudrate_counter <= T0H;	--set time for write logic HIGH  
            end if; 
            state <= S2; 
			   Q <= '1';	
			when S2 => -- wait until the counter is done.
            if baudrate_counter = 0 then
               Q <= '0';
               state <= S3;  
				else
               baudrate_counter <= baudrate_counter - 1;
            end if;
			when S3 => -- start the counter for digital write LOW for 1 bit
            if msb = '1' then
               baudrate_counter <= T1L;
            else
               baudrate_counter <= T0L;
            end if; 
            state  <= S4; 
			when S4 => --shift left rgb_bits data  until 23 bits
            if baudrate_counter = 0 then
				   if bit_cnt = 0 then
					  state    <= S5; 
               else
                  bit_cnt  <= bit_cnt - 1;
                  rgb_bits <= rgb_bits(rgb_bits'left-1 downto 0) & '0';  -- shift left 1 bit for rgb_bits
                  state    <= S1; 
               end if;
				else
               baudrate_counter <= baudrate_counter - 1;
            end if; 
			when S5 =>
				Q <= '0';
         when others =>
            state <= S0;
        end case;
      end if;
   end process;
end BEHAVE;