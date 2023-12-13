--library ieee;
--use ieee.std_logic_1164.ALL;
--use ieee.STD_LOGIC_ARITH.all;
--use ieee.std_logic_unsigned.all; 
--
--entity Test_divide_IP is
--		Port ( clk_i  : in  std_logic;	-- system clock
--             rst_i  : in  std_logic; 	-- synchronous reset, active-high
--				 --data 	: in  STD_LOGIC_VECTOR (12 downto 0);
--				 	sclk     : BUFFER STD_LOGIC;
--					ss_n 		: BUFFER STD_LOGIC_VECTOR(0 DOWNTO 0);
--				 	miso : IN STD_LOGIC;
--					mosi : OUT STD_LOGIC;
--				 ascii_sign_digit : out  STD_LOGIC_VECTOR (6 downto 0);
--				 seven_seg_digit_3   :out std_logic_vector (6 downto 0);
--				 seven_seg_digit_2   :out std_logic_vector (6 downto 0);		
--				 seven_seg_digit_1   :out std_logic_vector (6 downto 0);
--				 seven_seg_digit_0   :out std_logic_vector (6 downto 0)
--				 );
--					  
--end Test_divide_IP;
--
--architecture Behavioral of Test_divide_IP is
--type machine is (read_data, output_result); --needed states
--signal state  : machine := read_data;       --state machine
--signal count : STD_LOGIC_VECTOR (3 downto 0):="0000";
----signal data 	: STD_LOGIC_VECTOR (12 downto 0);
--
--
----
----signal axis_x : STD_LOGIC_VECTOR(15 DOWNTO 0);
----signal axis_y : STD_LOGIC_VECTOR(15 DOWNTO 0);
----signal axis_z : STD_LOGIC_VECTOR(15 DOWNTO 0);
----
----	signal xxx : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
----	signal yyy : STD_LOGIC_VECTOR(15 DOWNTO 0);
----	signal zzz : STD_LOGIC_VECTOR(15 DOWNTO 0);
----	signal data : STD_LOGIC_VECTOR(12 DOWNTO 0);
--	
--	
--
--signal select_bit : STD_LOGIC;
--signal process_data : STD_LOGIC_VECTOR (11 downto 0) :="000000000000";
--signal divide_digit_3_value : STD_LOGIC_VECTOR (11 downto 0) :=x"3e8";-- divide by 1000 
--signal divide_digit_2_value : STD_LOGIC_VECTOR (11 downto 0) :=x"064";-- divide by 100 
--signal divide_digit_1_value : STD_LOGIC_VECTOR (11 downto 0) :=x"00a";-- divide by 10 
--signal data_to_digit_2_process : STD_LOGIC_VECTOR (11 downto 0) :="000000000000";
--signal data_to_digit_1_process : STD_LOGIC_VECTOR (11 downto 0) :="000000000000";
--signal data_binary_digit_3 : STD_LOGIC_VECTOR (11 downto 0):="000000000000";
--signal data_binary_digit_2 : STD_LOGIC_VECTOR (11 downto 0):="000000000000";
--signal data_binary_digit_1 : STD_LOGIC_VECTOR (11 downto 0):="000000000000";
--signal data_binary_digit_0 : STD_LOGIC_VECTOR (11 downto 0):="000000000000";
--signal data_ascii_sign_digit : STD_LOGIC_VECTOR (6 downto 0):="0000000";
--
--
--  COMPONENT pmod_accelerometer_adxl345 IS	 
--	 PORT(
--    clk            : IN      STD_LOGIC;                      --system clock
--    reset_n        : IN      STD_LOGIC;                      --active low asynchronous reset
--    miso           : IN      STD_LOGIC;                      --SPI bus: master in, slave out
--    sclk           : BUFFER  STD_LOGIC;                      --SPI bus: serial clock
--    ss_n           : BUFFER  STD_LOGIC_VECTOR(0 DOWNTO 0);   --SPI bus: slave select
--    mosi           : OUT     STD_LOGIC;                      --SPI bus: master out, slave in
--    acceleration_x : OUT     STD_LOGIC_VECTOR(15 DOWNTO 0);  --x-axis acceleration data
--    acceleration_y : OUT     STD_LOGIC_VECTOR(15 DOWNTO 0);  --y-axis acceleration data
--    acceleration_z : OUT     STD_LOGIC_VECTOR(15 DOWNTO 0)); --z-axis acceleration data
--END COMPONENT pmod_accelerometer_adxl345;	
--
--	begin
--	
--		Pmod	:  pmod_accelerometer_adxl345
--		PORT MAP (
--      clk => clk_i,
--      reset_n => rst_i,
--      miso => miso,
--      sclk => sclk,
--      ss_n => ss_n,
--      mosi => mosi,
--      acceleration_x => axis_x,
--      acceleration_y => axis_y,
--      acceleration_z => axis_z
--    );
--	 
--
--		xxx <= axis_x;
--		yyy <= axis_y;
--		zzz <= axis_z;
--		data <= xxx(12 downto 0);
--		
--		process(clk_i, rst_i)
--			begin
--			select_bit <= data(12);
--				if (clk_i'event and clk_i='1') then 
--				case state is
--					when read_data =>
--						
--						if (select_bit = '0') then
--								process_data <= data(11 downto 0); ------------
--								data_ascii_sign_digit <= "0000000";
--								state <= output_result;
--						else
--								process_data <= (not(data(11 downto 0)) + 1); ------------
--								data_ascii_sign_digit <= "0111111";
--								state <= output_result;
--						end if;
--				
--					
--					when output_result =>
--						if (count = 4) then
--							count <= "0000";
--							state <= read_data;
--
--						else
--							count <= count + 1;
--						end if;
--						
--					end case;
--				 end if;
--							
--		
--		end process;
--
--		lpm_digit_3:work.divide_digit_3 port map(
--		aclr => rst_i,
--		clock => clk_i,
--		denom		=> divide_digit_3_value,-- divide by 1000 
--		numer		=> process_data,
--		quotient	=> data_binary_digit_3,
--		remain	=> data_to_digit_2_process
--		);
--		
--		lpm_digit_2:work.divide_digit_2 port map(
--		aclr => rst_i,
--		clock => clk_i,
--		denom		=> divide_digit_2_value,-- divide by 100 
--		numer		=> data_to_digit_2_process,
--		quotient	=> data_binary_digit_2,
--		remain	=> data_to_digit_1_process
--		);		
--
--		lpm_digit_1_0:work.divide_digit_1 port map(
--		aclr => rst_i,
--		clock => clk_i,
--		denom		=> divide_digit_1_value,-- divide by 10 
--		numer		=> data_to_digit_1_process,
--		quotient	=> data_binary_digit_1,
--		remain	=> data_binary_digit_0
--		);
--
--		BCD_to_7_seg_Digit_3 :work.BCD_to_7_segment port map(
--		BCD_i => data_binary_digit_3( 3 downto 0),
--		clk_i => clk_i,
--		seven_seg	=> seven_seg_digit_3
--		);
--		
--		BCD_to_7_seg_Digit_2 :work.BCD_to_7_segment port map(
--		BCD_i => data_binary_digit_2( 3 downto 0),
--		clk_i => clk_i,
--		seven_seg	=> seven_seg_digit_2
--		);
--
--		BCD_to_7_seg_Digit_1 :work.BCD_to_7_segment port map(
--		BCD_i => data_binary_digit_1( 3 downto 0),
--		clk_i => clk_i,
--		seven_seg	=> seven_seg_digit_1
--		);
--		
--		BCD_to_7_seg_Digit_0 :work.BCD_to_7_segment port map(
--		BCD_i => data_binary_digit_0( 3 downto 0),
--		clk_i => clk_i,
--		seven_seg	=> seven_seg_digit_0
--		);
--		
--end Behavioral;