library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UART_controller2 is
generic(
    SYSTEM_SPEED : integer := 4; --50e6;   	-- clock speed, in Hz 	--for simmulation setting = 4
    BAUDRATE     : integer := 1);--9600 	   -- baudrate 				--for simmulation setting = 1
port(
		Clk_i : in std_logic ;
		CRX : in std_logic;

		Q		: out std_logic  ;
		dt		: out std_logic_vector(7 downto 0);
		test : out std_logic := '0' 
);
end UART_controller2;

architecture structural of UART_controller2 is
	constant MAX_COUNTER: integer := (SYSTEM_SPEED / BAUDRATE);
	type state_type is(
	check_start,
	get_cmd,
	get_addr,
	get_data
	);
	
		signal state : state_type :=	check_start;
		signal bit_counter : integer range 0 to 9 := 0;
		signal rst : std_logic := '1';
		signal req : std_logic := '0';
		signal receive : std_logic_vector(7 downto 0):= (others => '0');
		signal samp : std_logic := '0';
		
		signal RamAddr : std_logic_vector(7 downto 0);
		signal RamWrEn : std_logic ;
		signal RamWrData : std_logic_vector(7 downto 0);
		signal Aclr : std_logic := '1';
		signal ramsend : std_logic := '1';
		
		--receive rx
		signal Ramstr : std_logic_vector(7 downto 0);
		signal Addr : std_logic_vector(7 downto 0);
		signal WrEn : std_logic ;
		signal WrData : std_logic_vector(7 downto 0);
		--signal RamAclr : std_logic := '0';
		
		signal DATA	: std_logic_vector(7 downto 0);
		signal Send_Data : std_logic := '1';
		signal sampling_rx : std_logic := '0';
		signal dt_tx : std_logic_vector(7 downto 0);
		signal ramACLR : std_logic := '1';
		signal qt : std_logic;
		signal RWr : std_logic;--_vector(7 downto 0);
		

	begin
	
	UartRx: entity work.UART_RX(behave)
		port map(
			clk_i => Clk_i,							
			rst_i => rst,
			req_o => req,
			sampling_rx => sampling_rx ,
			rx => CRX,
			RAddr => Addr,
			RWr => RWr,
			RWrData => WrData,
			RamAclr => ramACLR,
			sending => ramsend
			);
		
	RamAddr <= Addr;
	RamWrData <= WrData;
	RamWrEn <= RWr;
	Aclr <= ramACLR;
	samp <= ramsend;
	
	test <= ramsend;	
	
	Ram : entity work.RAM(SYN)
	port map(
		aclr	=> Aclr,
		address		=> RamAddr(2 downto 0),
		clock		=> Clk_i,
		data		=> RamWrData,
		wren		=> RamWrEn,
		q		=> DATA
	);
	
	dt_tx <= DATA;
	dt <= DATA ;
	
	UartTx: entity work.UART_TX(behave)
			port map(
				clk_i => Clk_i,							
				rst_i => rst,
				send_data => samp,
				Data_TX => dt_tx,
				tx => Q
				--raclr => Aclr
	);	-- Tx output
	--Q <= qt;

end structural;