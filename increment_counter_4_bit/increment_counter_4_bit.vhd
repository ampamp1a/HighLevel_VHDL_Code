library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity increment_counter_4_bit is
 	port ( 	clk_in 			: in std_logic;
				reset				: in std_logic;
				logic_out_1 	: out std_logic;
				logic_out_2 	: out std_logic  ); 
end increment_counter_4_bit;
	
architecture Behavioral of increment_counter_4_bit is

signal counter_value : std_logic_vector(3 downto 0)  ;
signal Counter_max 	: std_logic_vector(3 downto 0)  := "1000";
signal Toggle_output :std_logic := '0';

	begin
	 process (clk_in) 
	 begin
		if rising_edge(clk_in) then
			if (reset = '0') then
				counter_value <= (others => '0');
			else
				if (counter_value = Counter_max -1) then
					counter_value <= "0000";
					logic_out_1 <= '1';
					Toggle_output <= not(Toggle_output);
				else 
					counter_value <= counter_value + 1;
					logic_out_1 <= '0';
				end if;
			end if;
		end if;
	  end process ;
	  logic_out_2 <= Toggle_output;
	 
end Behavioral;   