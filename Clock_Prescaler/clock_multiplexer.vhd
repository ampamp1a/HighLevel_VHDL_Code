library ieee;
use ieee.std_logic_1164.all;

entity clock_multiplexer is
	port(
         clk_out_1 : in std_logic;
         clk_out_2 : in std_logic;
         clk_out_3 : in std_logic;
         clk_out_4 : in std_logic;
			Clk_selector : in std_logic_vector(1 downto 0);
			Clk_out : out std_logic);
	end clock_multiplexer;

architecture Behavioral of clock_multiplexer is
begin
		process (Clk_selector)
			begin
			
				if Clk_selector = "00" then
						Clk_out <= clk_out_1;
				elsif Clk_selector = "01" then
						Clk_out <= clk_out_2;
				elsif Clk_selector = "10" then
						Clk_out <= clk_out_3;
				elsif Clk_selector = "11" then
						Clk_out <= clk_out_4;

				end if;
		end process;
end Behavioral;
		