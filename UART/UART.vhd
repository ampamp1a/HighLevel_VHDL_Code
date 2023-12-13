library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL  ;
entity UART is
  generic(
    SYSTEM_SPEED : integer := 4; --50e6;   	-- clock speed, in Hz 	--for simmulation setting = 4
    BAUDRATE     : integer := 1);--9600 	   -- baudrate 				--for simmulation setting = 1
  port(
    Clk_I   : in  std_logic;	-- system clock 							
    Rst_I   : in  std_logic;	-- synchronous reset, act ive-high
	 
	 Rx      : in std_logic ;	-- Recieve data from USB To UART 
    Req_O   : out std_logic := '0'; 	-- Rx req
	 Sampling_Rx : out std_logic := '0'; -- half bit of data
	 
	 Send_data   : in std_logic := '1'; 	-- Start send Data
    Tx      : out std_logic	-- Send data to USB To UART 
    );
end UART;

architecture structural of UART is
	signal Data_O  : std_logic_vector(7 downto 0); -- data from Rx 
	signal Data_tx : std_logic_vector(7 downto 0);
	--signal Send_data   : std_logic := '1'; 	-- Start send Data
	
 begin
 
	UartRX: entity work.UART_RX(behave)
			port map(
				clk_i => Clk_I, 						
				rst_i => Rst_I,
				req_o => Req_O,
				data_o => Data_O,
				sampling_rx => Sampling_Rx,
				rx => Rx );	-- Rx input
	Data_tx <= Data_O;
	
	UartTx: entity work.UART_TX(behave)
			port map(
				clk_i => Clk_I,							
				rst_i => Rst_I,
				send_data => Send_data,
				Data_TX => Data_tx,
				tx => Tx );	-- Tx output
	
end structural;