library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--use IEEE.MATH_REAL.ALL;
entity UART_RX is
  generic(
    SYSTEM_SPEED : integer := 4; --50e6;   	-- clock speed, in Hz 	--for simmulation setting = 4
    BAUDRATE     : integer := 1);--9600 	   -- baudrate 				--for simmulation setting = 1
  port(
    clk_i   : in  std_logic;	-- system clock 							
    rst_i   : in  std_logic;	-- synchronous reset, active-high
    req_o   : out std_logic := '0'; 	-- Rx req
	 sampling_rx : out std_logic := '0'; 
    rx      : in std_logic;
	--RAM
	 RADDR : out std_logic_vector(7 downto 0);
	 RWr : out std_logic; 
	 RWrData : out std_logic_vector(7 downto 0);
	 RamAclr : out std_logic;
	 sending : out std_logic);

end UART_RX;
architecture behave of UART_RX is
  constant MAX_COUNTER: integer := (SYSTEM_SPEED / BAUDRATE);
   type state_type is (
     WAIT_FOR_RX_START, 
     WAIT_HALF_BIT,
     RECEIVE_BITS,
     WAIT_FOR_STOP_BIT );
	type get_state_type is (
	  a,
	  b,
	  c,
	  d);
	  

  signal state : state_type := WAIT_FOR_RX_START;
  signal get_state : get_state_type := a;
  signal baudrate_counter  : integer range 0 to max_counter := 0;
  signal bit_counter : integer range 0 to 7 := 0;
  signal receive_register : std_logic_vector(7 downto 0) := (others => '0');
  signal data_o : std_logic_vector(7 downto 0) := (others => '0');
  signal n : std_logic;
  signal timeout : integer;

begin
  process (clk_i)
  begin
    if rising_edge(clk_i) then
      if rst_i = '0' then
        state  <= WAIT_FOR_RX_START;
        data_o <= (others => '0');
        req_o  <= '0';
      else
        case state is
		  
          when WAIT_FOR_RX_START =>
            if rx = '0' then
              -- start bit received, wait for a half bit time
              -- to sample bits in the middle of the signal
              state <= WAIT_HALF_BIT;
				  timeout <= MAX_COUNTER *4;
              baudrate_counter <= (MAX_COUNTER / 2) - 1;
				  req_o  <= '1';
				else
					if not (get_state = a) then
						if timeout = 0 then
							get_state <= a;
							req_o <= '0';
						else
							timeout <= timeout -1;
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
                req_o  <= '0';
					 
					 case get_state is
					 when a =>
					   state <= WAIT_FOR_RX_START;
						if receive_register = x"23" then
							get_state <= b;
						end if;
						
					 when b =>
					   state <= WAIT_FOR_RX_START;
						if receive_register = x"24" then
							RWr <= '1';
							n <= '1';
							RamAclr <= '1';
							sending <= '0';
							get_state <= c;
						elsif receive_register = x"25" then
							RWr <= '0';
							RamAclr <= '0';
							sending <= '1';
							get_state <= c;
						else
							get_state <= a; 
						end if;
						
					 when c =>
					   state <= WAIT_FOR_RX_START;
						RADDR <= receive_register;
						if n = '1' then
							get_state <= d;
						else
							get_state <= a;
						end if;
						
					 when d =>
					   state <= WAIT_FOR_RX_START;
						RWrData <= receive_register;
						get_state <= a;
					 
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