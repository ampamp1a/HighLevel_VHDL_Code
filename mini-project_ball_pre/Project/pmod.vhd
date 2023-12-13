library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
use ieee.STD_LOGIC_ARITH.all;

entity pmod is
	port (
		clock		: in std_logic;
		reset		: in std_logic;
		ctrl		: in std_logic_vector(1 downto 0);
		
		miso		: in std_logic;
		sclk     : BUFFER  STD_LOGIC;                      --SPI bus: serial clock
		ss_n     : BUFFER  STD_LOGIC_VECTOR(0 DOWNTO 0);   --SPI bus: slave select
		mosi     : OUT    STD_LOGIC;                             --master out, slave in
		
		seven_seg_digit_1 : out STD_LOGIC_VECTOR (6 downto 0);
		seven_seg_digit_2 : out STD_LOGIC_VECTOR (6 downto 0);
		seven_seg_digit_3 : out STD_LOGIC_VECTOR (6 downto 0);
		seven_seg_digit_4 : out STD_LOGIC_VECTOR (6 downto 0);
		seven_seg_digit_5 : out STD_LOGIC_VECTOR (6 downto 0);
		seven_seg_digit_6 : out STD_LOGIC_VECTOR (6 downto 0)
	);
	
end pmod;

ARCHITECTURE behavior OF pmod IS

	COMPONENT pmod_accelerometer_adxl345 IS
		port(
		 clk            : IN      STD_LOGIC;                      --system clock
		 reset_n        : IN      STD_LOGIC;                      --active low asynchronous reset
		 miso           : IN      STD_LOGIC;                      --SPI bus: master in, slave out
		 sclk           : BUFFER  STD_LOGIC;                      --SPI bus: serial clock
		 ss_n           : BUFFER  STD_LOGIC_VECTOR(0 DOWNTO 0);   --SPI bus: slave select
		 mosi           : OUT     STD_LOGIC;                      --SPI bus: master out, slave in
		 acceleration_x : OUT     STD_LOGIC_VECTOR(15 DOWNTO 0);  --x-axis acceleration data
		 acceleration_y : OUT     STD_LOGIC_VECTOR(15 DOWNTO 0);  --y-axis acceleration data
		 acceleration_z : OUT     STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
  END COMPONENT pmod_accelerometer_adxl345;


signal int_data_1 : integer := 0;
signal int_data_2 : integer := 0;
signal int_data_3 : integer := 0;
signal int_data_4 : integer := 0;
signal int_data_5 : integer := 0;

signal addsub : integer := 0;

type state_type is (s0,s1);
signal state : state_type := s0;

signal axis_x : STD_LOGIC_VECTOR(12 DOWNTO 0) := (OTHERS => '0');
signal axis_y : STD_LOGIC_VECTOR(12 DOWNTO 0) := (OTHERS => '0');
signal axis_z : STD_LOGIC_VECTOR(12 DOWNTO 0) := (OTHERS => '0');

signal x : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
signal y : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
signal z : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');

signal BCD_digit_1 : STD_LOGIC_VECTOR (3 downto 0);
signal BCD_digit_2 : STD_LOGIC_VECTOR (3 downto 0);
signal BCD_digit_3 : STD_LOGIC_VECTOR (3 downto 0);
signal BCD_digit_4 : STD_LOGIC_VECTOR (3 downto 0);
signal BCD_digit_5 : STD_LOGIC_VECTOR (3 downto 0);
signal BCD_digit_6 : STD_LOGIC_VECTOR (3 downto 0);

signal count : integer := 0;

begin
	pmod : pmod_accelerometer_adxl345
		port map(
		 clk       => clock,
		 reset_n   => not reset,	 
		 miso      => miso,
		 sclk      => sclk,
		 ss_n      => ss_n,
		 mosi      => mosi,
		 acceleration_x  => x,
		 acceleration_y  => y,
		 acceleration_z  => z
		);
	
 process(clock)
	begin
		
		axis_x <= x(12 downto 0);
		axis_y <= y(12 downto 0);
		axis_z <= z(12 downto 0);
		
		if (reset='1' ) then  
			int_data_1 <= 0;
			int_data_2 <= 0;
			int_data_3 <= 0;
			int_data_4 <= 0;
			int_data_5 <= 0;
			
			state <= s0;
		elsif (rising_edge(clock)) then
			case state is
			when s0 =>
				if ctrl = "01" then
					int_data_1 <= conv_integer(abs(signed(axis_x))) mod 10;
					int_data_2 <= (conv_integer(abs(signed(axis_x)))/ 10) mod 10;
					int_data_3 <= (conv_integer(abs(signed(axis_x)))/ 100) mod 10;
					int_data_4 <= (conv_integer(abs(signed(axis_x)))/ 1000);
					int_data_5 <= 0;
					
					if conv_integer(x(12)) = 1 then
						addsub <= 10;
					else
						addsub <= 0;
					end if;
					
					state <= s1;

					
				elsif ctrl = "10" then
					int_data_1 <= conv_integer(abs(signed(axis_y))) mod 10;
					int_data_2 <= (conv_integer(abs(signed(axis_y)))/ 10) mod 10;
					int_data_3 <= (conv_integer(abs(signed(axis_y)))/ 100) mod 10;
					int_data_4 <= (conv_integer(abs(signed(axis_y)))/ 1000);
					int_data_5 <= 0;
					
					if conv_integer(y(12)) = 1 then 
						addsub <= 10;
					else
						addsub <= 0;
					end if;
					
					state <= s1;
			
				elsif ctrl = "11" then
					int_data_1 <= (conv_integer(abs(signed(axis_z)))) mod 10;
					int_data_2 <= (conv_integer(abs(signed(axis_z)))/ 10) mod 10;
					int_data_3 <= (conv_integer(abs(signed(axis_z)))/ 100) mod 10;
					int_data_4 <= (conv_integer(abs(signed(axis_z)))/ 1000);
					int_data_5 <= 0;
					
					if conv_integer(z(12)) = 1 then
						addsub <= 10;
					else
						addsub <= 0;
					end if;
					
					state <= s1;
					
				end if;
				
			when s1 =>
				if (count = 4) then
					count <= 0;
					state <= s0;
					BCD_digit_1 <= conv_std_logic_vector(int_data_1, 4);
					BCD_digit_2 <= conv_std_logic_vector(int_data_2, 4);
					BCD_digit_3 <= conv_std_logic_vector(int_data_3, 4);
					BCD_digit_4 <= conv_std_logic_vector(int_data_4, 4);
					BCD_digit_5 <= conv_std_logic_vector(int_data_5, 4);
					BCD_digit_6 <= conv_std_logic_vector(addsub, 4);
				else
					count <= count + 1;
				end if;
			
			end case;
		end if;
	
end process;

	seven_seg_display_1: entity work.BCD_to_7_segment(data_process)
									port map(
										clk_i => clock,
										BCD_i  => BCD_digit_1,
										seven_seg  =>seven_seg_digit_1 );
	seven_seg_display_2: entity work.BCD_to_7_segment(data_process)
									port map(
										clk_i => clock,
										BCD_i  => BCD_digit_2,
										seven_seg  =>seven_seg_digit_2);
	seven_seg_display_3: entity work.BCD_to_7_segment(data_process)
									port map(
										clk_i => clock,
										BCD_i  => BCD_digit_3,
										seven_seg  =>seven_seg_digit_3 );
	seven_seg_display_4: entity work.BCD_to_7_segment(data_process)
									port map(
										clk_i => clock,
										BCD_i  => BCD_digit_4,
										seven_seg  =>seven_seg_digit_4 );
	seven_seg_display_5: entity work.BCD_to_7_segment(data_process)
									port map(
										clk_i => clock,
										BCD_i  => BCD_digit_5,
										seven_seg  =>seven_seg_digit_5 );
	seven_seg_display_6: entity work.BCD_to_7_segment(data_process)
									port map(
										clk_i => clock,
										BCD_i  => BCD_digit_6,
										seven_seg  =>seven_seg_digit_6 );

END behavior;