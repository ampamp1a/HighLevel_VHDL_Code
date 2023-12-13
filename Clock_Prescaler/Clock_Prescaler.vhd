library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Clock_Prescaler is
	port(
			Clk_in : in std_logic;
			Enable : in std_logic;
			Clk_Selector : in std_logic_vector(1 downto 0);
			Clk_Out : out std_logic
	);
end Clock_Prescaler ;
	
architecture Behavioral of	Clock_Prescaler is

signal clk_1 : std_logic;
signal clk_2 : std_logic;
signal clk_3 : std_logic;
signal clk_4 : std_logic;

begin
	
	clock_scaler : entity work.clock_scaler(Behavioral)
						port map(
							clk_in => Clk_in,
							enable => Enable,
							clk_out_1 => clk_1,
							clk_out_2 => clk_2,
							clk_out_3 => clk_3,
							clk_out_4 => clk_4 );
						
	clock_multiplexer :  entity work.clock_multiplexer(Behavioral)
								port map(
								   clk_out_1 => clk_1,
									clk_out_2 => clk_2,
									clk_out_3 => clk_3,
									clk_out_4 => clk_4,
									Clk_selector => Clk_Selector,
									Clk_out => Clk_Out );

	
end Behavioral;