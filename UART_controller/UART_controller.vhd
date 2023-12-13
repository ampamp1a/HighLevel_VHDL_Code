library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UART_controller is
	port(
			Clk_i : in std_logic ;
			CRX : in std_logic;
			Q		: out std_logic  ;
			test : out std_logic := '1' ;
			DATA	: out std_logic_vector(7 downto 0)
	);
end UART_controller;

architecture structural of UART_controller is

		-- UART_RX --
		signal rst : std_logic := '1';
		signal req : std_logic := '0';
		signal samp : std_logic := '0';
		signal RamAddr : std_logic_vector(7 downto 0);
		signal RamWrEn : std_logic ;
		signal RamWrData : std_logic_vector(7 downto 0);
		signal Send_dt : std_logic := '1';
		signal Aclr : std_logic := '0';
		
		-- Set for RAM --
		signal addr : std_logic_vector(2 downto 0);
		signal wr : std_logic ;
		signal dt : std_logic_vector(7 downto 0);
		signal ac : std_logic := '0';
		
		-- Set for UART_TX --
		signal DATA2	: std_logic_vector(7 downto 0);
		signal Send_Data : std_logic := '1';
		signal dt_tx : std_logic_vector(7 downto 0);
				

begin
	UartRX: entity work.UART_RX(behave)
		port map(
			clk_i => Clk_i, 						
			rst_i => rst,
			rx => CRX,
			req_o => req,
			sampling_rx => samp,
			ramAddr => RamAddr,
			ramWrEN => RamWrEn,
			ramWrData => RamWrData,
			send => send_dt,
			aclr => Aclr
			 );	-- Rx input
			 
	test <= Aclr;		 
	wr <=	RamWrEn;	
	dt <=	RamWrData;
	addr <= RamAddr(2 downto 0);
	ac <= Aclr;
	Send_data <= send_dt;
	
	Ram : entity work.RAM(SYN)
		port map(
			aclr	=> ac,
			address		=> addr,
			clock		=> Clk_i,
			data		=> dt,
			wren		=> wr,
			q		=> DATA2
		);
		
		DATA <= DATA2;
		dt_tx <= DATA2;
		
	UartTx: entity work.UART_TX(behave)
				port map(
					clk_i => Clk_i,							
					rst_i => rst   ,
					send_data => Send_data,
					Data_TX => dt_tx,
					tx => Q );	-- Tx output

end structural;