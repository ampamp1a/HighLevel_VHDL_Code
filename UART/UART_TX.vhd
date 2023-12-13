library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--use IEEE.MATH_REAL.ALL;
entity UART_TX is
  generic(
    SYSTEM_SPEED : integer := 4; --50e6;   	-- clock speed, in Hz 	--for simmulation setting = 4
    BAUDRATE     : integer := 1);--9600 	   -- baudrate 				--for simmulation setting = 1
  port(
    clk_i   : in  std_logic;	-- system clock 							
    rst_i   : in  std_logic;	-- synchronous reset, active-high
    send_data   : in std_logic := '1'; 	-- Start send Data
    Data_TX  : in std_logic_vector(7 downto 0); -- Tx data
    tx      : out std_logic );	-- Tx output
end UART_TX;

architecture behave of UART_TX is
  constant MAX_COUNTER: integer := (SYSTEM_SPEED / BAUDRATE);
   type state_type is (
     SET_FOR_TX_START, 
	  COUNT_BIT,
     SENDING_BITS,
     WAIT_FOR_SEND_STOP_BIT );

  signal state : state_type := SET_FOR_TX_START;
  signal baudrate_counter  : integer range 0 to max_counter := 0;
  signal bit_counter : integer range 0 to 8 := 0;
  signal sending_register : std_logic_vector(7 downto 0) := (others => '0');
  signal send_pause : std_logic := '0';
  
begin
	process (clk_i)
		begin
			if rising_edge(clk_i) then
			
				if rst_i = '0' then
					state  <= SET_FOR_TX_START;
					tx <= '1';
					
				else
					case state is
					
						when SET_FOR_TX_START =>
							if send_data ='1' then
								if send_pause = '0' then
									send_pause <= '1';
									state <= SENDING_BITS;
									tx <= '0';
									bit_counter <= 0;
									sending_register <= Data_TX ;
									baudrate_counter <= MAX_COUNTER - 1 ;
									
								end if;
							else
								tx <= '1';
								send_pause <= '0';
							end if;
				 
							
						when SENDING_BITS =>
							if baudrate_counter = 0 then
								baudrate_counter <= MAX_COUNTER - 1;
								if bit_counter = 9 then --send all data
									state <= WAIT_FOR_SEND_STOP_BIT;
									bit_counter <= 0;
								else
									
									tx <= sending_register(bit_counter); --send data (lsb to msb)
									state <= COUNT_BIT;
								end if;
								
							else
								baudrate_counter <= baudrate_counter - 1;
							end if;
							
						when COUNT_BIT =>
							bit_counter <= bit_counter + 1;
							state <= SENDING_BITS;
					
						when WAIT_FOR_SEND_STOP_BIT =>
							if baudrate_counter = 0 then
								tx <= '1'; --send logic 1 (stop bit for RX)
								state <= SET_FOR_TX_START;
								
							else 
								baudrate_counter <= baudrate_counter - 1;
							end if;
						
					end case;
				end if;
			end if;
	end process;
end behave;