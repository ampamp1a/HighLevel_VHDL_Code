library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL  ;
entity UART_RX is
  generic(
    SYSTEM_SPEED : integer := 4; --50e6;   	-- clock speed, in Hz 	--for simmulation setting = 4
    BAUDRATE     : integer := 1);--9600 	   -- baudrate 				--for simmulation setting = 1
	 
  port(
    clk_i   : in  std_logic;	-- system clock 							
    rst_i   : in  std_logic;	-- synchronous reset, active-high
	 rx      : in std_logic;
	 
    req_o   : out std_logic := '0'; 	-- Rx req
	 sampling_rx : out std_logic := '0'; 
	 
	 ramAddr : out std_logic_vector(7 downto 0);
	 ramWrEn : out std_logic ;
	 ramWrData : out std_logic_vector(7 downto 0);
	 aclr : out std_logic := '0' ;
	 send : out std_logic );
	 
end UART_RX;

architecture behave of UART_RX is
  constant MAX_COUNTER: integer := (SYSTEM_SPEED / BAUDRATE);
  
	-- state for get data 8 bit --
   type state_type is (
     WAIT_FOR_RX_START, 
     WAIT_HALF_BIT,
     RECEIVE_BITS,
     WAIT_FOR_STOP_BIT );
	  
	-- state for 4 byte --
	type UART_state is(
		check_start,
		get_cmd,
		get_addr,
		get_data
	);
	-- set state --  
	signal state : state_type := WAIT_FOR_RX_START;
	signal set_state : UART_state :=	check_start;
	
	-- for count bit and byte --
	signal baudrate_counter  : integer range 0 to max_counter := 0;
	signal bit_counter : integer range 0 to 7 := 0;
	signal count_frame  : integer range 0 to max_counter * 4 := 0; 
	
	-- for get data --
	signal receive_register : std_logic_vector(7 downto 0) := (others => '0');
	
	-- for command write --
	signal w : std_logic := '0';
	
begin
  process (clk_i)
  begin
    if rising_edge(clk_i) then
      if rst_i = '0' then
        state  <= WAIT_FOR_RX_START;
        req_o  <= '0';
		  send	<= '0';
		  set_state <= check_start;
      else
        case state is
          when WAIT_FOR_RX_START =>
				send <= '0';	-- for Tx not send data 
            if rx = '0' then
              -- start bit received, wait for a half bit time
              -- to sample bits in the middle of the signal
              state <= WAIT_HALF_BIT;
              baudrate_counter <= (MAX_COUNTER / 2) - 1;
				  req_o  <= '1';
				  count_frame <= 1;	-- start first byte
				  send <= '0';
				else 
					if not(set_state = check_start) then		-- not first byte
						if count_frame = max_counter * 4 then  -- check finish 4 byte	
								set_state <= check_start;			-- back to wait first byte to start	
						else
								count_frame <= count_frame + 1;	-- next byte
						end if;	
					
					end if;
            end if;
				
          when WAIT_HALF_BIT =>
            if baudrate_counter = 0 then
              -- now we are in the middle of the start bit,
              -- wait a full bit for the middle of the first bit
              state <= RECEIVE_BITS;
              bit_counter <= 7;
              baudrate_counter <= MAX_COUNTER - 1;
            else
              baudrate_counter <= baudrate_counter - 1;
            end if;
				
          when RECEIVE_BITS =>
            -- sample a bit
            if baudrate_counter = 0 then
               receive_register <= rx & receive_register(7 downto 1); --shift right sequence for keep lsb first
				   sampling_rx <= '1';
					  if bit_counter = 0 then
						 state <= WAIT_FOR_STOP_BIT;
					  else
						 bit_counter <= bit_counter - 1;
					  end if;
              baudrate_counter <= MAX_COUNTER - 1;
            else
              baudrate_counter <= baudrate_counter - 1;
				  sampling_rx <= '0';
            end if;
            
          when WAIT_FOR_STOP_BIT =>
            -- wait for stop bit
            if baudrate_counter = 0 then
				
              if rx = '1' then
                --data_o <= receive_register;
                req_o  <= '0';
					 state <= WAIT_FOR_RX_START;
					 
					 case set_state is
							 when check_start =>
								state <= WAIT_FOR_RX_START;			-- for recieve next byte
								  if receive_register = X"23" then	-- find start byte
										set_state <= get_cmd;
								  end if;

							 when get_cmd =>
								state <= WAIT_FOR_RX_START;			-- for recieve next byte
								  if receive_register = X"24" then	-- command write
										RamWrEn <= '1';					-- get command
										w <= '1';
										set_state <= get_addr;
										aclr <= '1';
										send <= '0';
								  else										-- command read
										RamWrEn <= '0';					-- get command
										set_state <= get_addr;
										send <= '1';
										aclr <= '0';
								  end if;

							 when get_addr =>
								RamAddr <= receive_register;		-- get address
								state <= WAIT_FOR_RX_START;			-- for recieve next byte
								  if w = '1' then							-- command write have to get data
										set_state <= get_data;
								  else
										set_state <= check_start;		-- back to wait start byte
								  end if;

							 when get_data =>
								RamWrData <= receive_register;		-- get data
								state <= WAIT_FOR_RX_START;			-- back to wait start bit
								set_state <= check_start;				-- back to wait start byte
								
					end case;
              end if; 
				 
            else
              baudrate_counter <= baudrate_counter - 1;
            end if;
				
        end case;
		  
      end if;
    end if;
  end process;

end behave;