library ieee;
use ieee.std_logic_1164.ALL;
use ieee.STD_LOGIC_ARITH.all;

entity BCD_to_2digitDec is
		generic( N : integer := 3);
		Port ( clock  : in  std_logic;	
				 reset : in  std_logic;	
				 ctrl	: in std_logic_vector(1 downto 0);
				 x_axis : in std_logic_vector(15 downto 0);
				 y_axis : in std_logic_vector(15 downto 0);
				 z_axis : in std_logic_vector(15 downto 0);
				 
--				 result_add : in std_logic_vector(N downto 0) := (others => '0');
--				 result_sub : in std_logic_vector(N downto 0) := (others => '0');
--				 result_mul : in std_logic_vector(2*N-1 downto 0) := (others => '0');
--				 result_divide : in std_logic_vector(N-1 downto 0) := (others => '0');
--				 remainder : in std_logic_vector(2*N downto 0) := (others => '0');
				
--				 add_DONE : in std_logic;
--				 sub_DONE : in std_logic;
--				 mul_DONE : in std_logic;
--				 divide_DONE : in std_logic;
				 
--				 DONE : out std_logic;
				 
				 BCD_digit_1 : out STD_LOGIC_VECTOR (3 downto 0);
				 BCD_digit_2 : out STD_LOGIC_VECTOR (3 downto 0);
				 BCD_digit_3 : out STD_LOGIC_VECTOR (3 downto 0);
				 BCD_digit_4 : out STD_LOGIC_VECTOR (3 downto 0);
				 BCD_digit_5 : out STD_LOGIC_VECTOR (3 downto 0);
				 BCD_digit_6 : out STD_LOGIC_VECTOR (3 downto 0));
					  
end BCD_to_2digitDec;

architecture Behavioral of BCD_to_2digitDec is
type state_type is (s0,s1);
signal state : state_type := s0;

signal data 	   : std_logic_vector(N-1 downto 0) := (others => '0');

signal int_data_1 : integer := 0;
signal int_data_2 : integer := 0;
signal int_data_3 : integer := 0;
signal int_data_4 : integer := 0;
signal int_data_5 : integer := 0;
signal int_data_6 : integer := 0;

signal starttt :std_LOGIC ;

signal x : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal y : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal z : STD_LOGIC_VECTOR(15 DOWNTO 0);

signal zero : integer := 0;

	begin
	
--	axis : entity work.pmod_accelerometer_adxl345(behavior)
--			port map(
--			clk		=> clock,
--			reset_n	=> reset,
--			acceleration_x => x,
--			acceleration_y => y,
--			acceleration_z => z,
--			miso 		=> starttt
--			);
	x <= x_axis;
	y <= y_axis;
	z <= z_axis;
--	x <= x"1111";
--	y <= x"1110";
--	z <= x"1100";
		process(clock, reset, data)
			begin
				if (reset='1' ) then  
					int_data_1 <= 0;
					int_data_2 <= 0;
					int_data_3 <= 0;
					int_data_4 <= 0;
					int_data_5 <= 0;
					int_data_6 <= 0;
					
					state <= s0;
				elsif (rising_edge(clock)) then
					case state is
						when s0 =>
							if ctrl ="01" then   --show x
								int_data_1 <= conv_integer(signed(x)) mod 10;
								int_data_2 <= (conv_integer(signed(x))/ 10) mod 10;
								int_data_3 <= (conv_integer(signed(x))/ 100) mod 10;
								int_data_4 <= (conv_integer(signed(x))/ 1000)mod 10;
								int_data_5 <= 0;
								int_data_6 <= 0;
								
								state <= s1;
								
							elsif ctrl ="10" then   --show y
								int_data_1 <= conv_integer(signed(y)) mod 10;
								int_data_2 <= (conv_integer(signed(y))/ 10) mod 10;
								int_data_3 <= (conv_integer(signed(y))/ 100) mod 10;
								int_data_4 <= (conv_integer(signed(y))/ 1000)mod 10;
								int_data_5 <= 0;
								int_data_6 <= 0;
								
								state <= s1;
							
							elsif ctrl ="11" then   --show z
								int_data_1 <= conv_integer(signed(z)) mod 10;
								int_data_2 <= (conv_integer(signed(z))/ 10) mod 10;
								int_data_3 <= (conv_integer(signed(z))/ 100) mod 10;
								int_data_4 <= (conv_integer(signed(z))/ 1000)mod 10  ;
								int_data_5 <= 0;
								int_data_6 <= 0;
								
								state <= s1;
							end if;
							
						when s1 =>
							BCD_digit_1 <= conv_std_logic_vector(int_data_1, 4);
							BCD_digit_2 <= conv_std_logic_vector(int_data_2, 4);
							BCD_digit_3 <= conv_std_logic_vector(int_data_3, 4);
							BCD_digit_4 <= conv_std_logic_vector(int_data_4, 4);
							BCD_digit_5 <= conv_std_logic_vector(int_data_5, 4);
							BCD_digit_6 <= conv_std_logic_vector(int_data_6, 4);
							
							state <= s0;
							
					end case;
				end if;
		end process;
end Behavioral;