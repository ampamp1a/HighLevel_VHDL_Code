library ieee;
use ieee.std_logic_1164.all;

entity BCD_to_7_segment is

     port(
				BCD_i 	 	: in std_logic_vector (3 downto 0);
				clk_i 			: in std_logic;
				seven_seg   :out std_logic_vector (6 downto 0));
				
end BCD_to_7_segment;

architecture data_process of BCD_to_7_segment is
begin
  process(clk_i)  -- sensitivity listc 
	 begin
		if clk_i'event and clk_i='1' THEN   
				case BCD_i is             --gfedcba
					when "0000" => seven_seg <= "1000000"; --7-segment display number 0
					when "0001" => seven_seg <= "1111001"; --7-segment display number 1
					when "0010" => seven_seg <= "0100100"; --7-segment display number 2
					when "0011" => seven_seg <= "0110000"; --7-segment display number 3
					when "0100" => seven_seg <= "0011001"; --7-segment display number 4 
					when "0101" => seven_seg <= "0010010"; --7-segment display number 5
					when "0110" => seven_seg <= "0000010"; --7-segment display number 6
					when "0111" => seven_seg <= "1111000"; --7-segment display number 7
					when "1000" => seven_seg <= "0000000"; --7-segment display number 8
					when "1001" => seven_seg <= "0010000"; --7-segment display number 9
					when "1010" => seven_seg <= "0111111"; -- 7 segment display negative sign (g)
					when others => seven_seg <= "0001110"; --7-segment display F
				
				end case;
		end if;
	end process;
end data_process;