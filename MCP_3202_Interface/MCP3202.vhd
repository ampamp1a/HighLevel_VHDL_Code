----------------------------------------------------------------------------------
-- Company: Intelligent Reconfigurable Computing
-- Engineer: Ferry Wahyu Wibowo
-- 
-- Create Date:    11:04:44 05/07/2018 
-- Design Name: 
-- Module Name:    MCP3202 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MCP3202 is
port ( clk : in std_logic;
		 cs : out std_logic;
		 sc : out std_logic;
		 do : out std_logic;
		 din : in std_logic;
		 output : out std_logic_vector(11 downto 0));
end MCP3202;

architecture Behavioral of MCP3202 is
type state is (spi,conv,flash);
signal present : state := spi;
begin
process(clk)
variable i,j,k : integer := 0;
variable con : std_logic_vector(11 downto 0) := "000000000000";
	begin
	if clk'event and clk = '1' then
		if present = spi then
			if i <= 50 then
				i := i + 1;
				sc <= '1';
			elsif i > 50 and i < 100 then
				i := i + 1;
				sc <= '0';
			elsif i = 100 then
				i := 0; 
				if j < 18 then
					j := j + 1;
				elsif j = 18 then
					present <= conv;
					j := 0;
				end if;
			end if;
		if j = 0 or j >= 18 then
			cs <= '1';
		else
			cs <= '0';
		end if;
	if i > 40 and i < 60 then
		case j is
			when 0 => do <= '0';
			when 1 => do <= '1';
			when 2 => do <= '1';
			when 3 => do <= '0';
			when 4 => do <= '1';
			when others =>
			null;
		end case;
	end if;
	if i >= 0 and i < 10 then
		case j is
			when 6 => con(11) := din;
			when 7 => con(10) := din;
			when 8 => con(9) := din;
			when 9 => con(8) := din;
			when 10 => con(7) := din;
			when 11 => con(6) := din;
			when 12 => con(5) := din;
			when 13 => con(4) := din;
			when 14 => con(3) := din;
			when 15 => con(2) := din;
			when 16 => con(1) := din;
			when 17 => con(0) := din;
			when others =>
			null;
		end case;
	end if;
	end if;
	if present = conv then
		cs <= '1';
		output <= con;
		if i < 5000 then
			i := i + 1;
		elsif i = 5000 then
			i := 0;
			present <= spi;
		end if;
	end if;
end if;
end process;
end Behavioral;