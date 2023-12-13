library ieee;
use ieee.std_logic_1164.ALL;
use ieee.STD_LOGIC_ARITH.all;
use ieee.std_logic_unsigned.all; 

entity Test_divide_IP is
		Port ( clk_i  : in  std_logic;	-- system clock
             rst_i  : in  std_logic; 	-- synchronous reset, active-high
				 data 	: in  STD_LOGIC_VECTOR (12 downto 0);
				 ascii_sign_digit : out  STD_LOGIC_VECTOR (7 downto 0);
				 binary_digit_3 : out STD_LOGIC_VECTOR (11 downto 0);
				 binary_digit_2 : out STD_LOGIC_VECTOR (11 downto 0);
				 binary_digit_1 : out STD_LOGIC_VECTOR (11 downto 0);
				 binary_digit_0 : out STD_LOGIC_VECTOR (11 downto 0);
				 seven_seg_digit_3   :out std_logic_vector (6 downto 0);
				 seven_seg_digit_2   :out std_logic_vector (6 downto 0);		
				 seven_seg_digit_1   :out std_logic_vector (6 downto 0);
				 seven_seg_digit_0   :out std_logic_vector (6 downto 0)
				 );
					  
end Test_divide_IP;

architecture Behavioral of Test_divide_IP is
type machine is (read_data, output_result); --needed states
signal state  : machine := read_data;       --state machine
signal count : STD_LOGIC_VECTOR (3 downto 0):="0000";


signal select_bit : STD_LOGIC;
signal process_data : STD_LOGIC_VECTOR (11 downto 0) :="000000000000";
signal divide_digit_3_value : STD_LOGIC_VECTOR (11 downto 0) :=x"3e8";-- divide by 1000 
signal divide_digit_2_value : STD_LOGIC_VECTOR (11 downto 0) :=x"064";-- divide by 100 
signal divide_digit_1_value : STD_LOGIC_VECTOR (11 downto 0) :=x"00a";-- divide by 10 
signal data_to_digit_2_process : STD_LOGIC_VECTOR (11 downto 0) :="000000000000";
signal data_to_digit_1_process : STD_LOGIC_VECTOR (11 downto 0) :="000000000000";
signal data_binary_digit_3 : STD_LOGIC_VECTOR (11 downto 0):="000000000000";
signal data_binary_digit_2 : STD_LOGIC_VECTOR (11 downto 0):="000000000000";
signal data_binary_digit_1 : STD_LOGIC_VECTOR (11 downto 0):="000000000000";
signal data_binary_digit_0 : STD_LOGIC_VECTOR (11 downto 0):="000000000000";
signal data_ascii_sign_digit : STD_LOGIC_VECTOR (7 downto 0):="00000000";

	begin
		process(clk_i, rst_i)
			begin
			select_bit <= data(12);
				if (clk_i'event and clk_i='1') then 
				case state is
					when read_data =>
						
						if (select_bit = '0') then
								process_data <= data(11 downto 0); ------------
								data_ascii_sign_digit <= "00000000";
								state <= output_result;
						else
								process_data <= (not(data(11 downto 0)) + 1); ------------
								data_ascii_sign_digit <= "11111111";
								state <= output_result;
						end if;
				
					
					when output_result =>
						if (count = 4) then
							count <= "0000";
							state <= read_data;
							ascii_sign_digit <= data_ascii_sign_digit;
							binary_digit_3 <= data_binary_digit_3;
							binary_digit_2 <= data_binary_digit_2;
							binary_digit_1 <= data_binary_digit_1;
							binary_digit_0 <= data_binary_digit_0;
						else
							count <= count + 1;
						end if;
						
					end case;
				 end if;
							
		
		end process;

		lpm_digit_3:work.divide_digit_3 port map(
		aclr => rst_i,
		clock => clk_i,
		denom		=> divide_digit_3_value,-- divide by 1000 
		numer		=> process_data,
		quotient	=> data_binary_digit_3,
		remain	=> data_to_digit_2_process
		);
		
		lpm_digit_2:work.divide_digit_2 port map(
		aclr => rst_i,
		clock => clk_i,
		denom		=> divide_digit_2_value,-- divide by 100 
		numer		=> data_to_digit_2_process,
		quotient	=> data_binary_digit_2,
		remain	=> data_to_digit_1_process
		);		

		lpm_digit_1_0:work.divide_digit_1_0 port map(
		aclr => rst_i,
		clock => clk_i,
		denom		=> divide_digit_1_value,-- divide by 10 
		numer		=> data_to_digit_1_process,
		quotient	=> data_binary_digit_1,
		remain	=> data_binary_digit_0
		);

		BCD_to_7_seg_Digit_3 :work.BDC_to_7_segmen port map(
		BCD_i => data_binary_digit_3( 3 downto 0),
		clk_i => clk_i,
		seven_seg	=> seven_seg_digit_3
		);
		
		BCD_to_7_seg_Digit_2 :work.BDC_to_7_segmen port map(
		BCD_i => data_binary_digit_2( 3 downto 0),
		clk_i => clk_i,
		seven_seg	=> seven_seg_digit_2
		);

		BCD_to_7_seg_Digit_1 :work.BDC_to_7_segmen port map(
		BCD_i => data_binary_digit_1( 3 downto 0),
		clk_i => clk_i,
		seven_seg	=> seven_seg_digit_1
		);
		
		BCD_to_7_seg_Digit_0 :work.BDC_to_7_segmen port map(
		BCD_i => data_binary_digit_0( 3 downto 0),
		clk_i => clk_i,
		seven_seg	=> seven_seg_digit_0
		);
		
end Behavioral;