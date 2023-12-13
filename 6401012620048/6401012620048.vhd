library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity '6401012620048 is
generic(
    LowX  : integer := 2;   	--4us at clk 50 MHz	 set = 2 for sim --200 for FPGA
	 HighX  : integer := 7;	--29us at clk 50 MHz	 set = 7 for sim --1450 for FPGA
	 
    LowY  : integer := 3;   	--6us at clk 50 MHz	 set = 3 for sim --300 for FPGA
	 HighY  : integer := 5;	--23us at clk 50 MHz	 set = 5 for sim --1150 for FPGA
	 
    LowZ  : integer := 7;   	--29us at clk 50 MHz	 set = 7 for sim --1450 for FPGA
	 HighZ  : integer := 1;		--2us at clk 50 MHz	 set = 1 for sim --100 for FPGA	 
	
	 MAX_COUNTER: integer := 50000000);  	--counter value for time setting
    port (clk_in : in std_logic;
            PB : in std_logic;
            x : out std_logic := '1';
            y : out std_logic	:= '0';
            z : out std_logic := '0'
    );

end 6401012620048;

architecture Behavioral of graph is 
type state_type is (S0,S1,S2,S3,S4,s5);
signal state : state_type := S0;
signal bt : std_logic := '1'; -- for set to put 1 time
signal tx: integer range 0 to MAX_COUNTER;
signal ty: integer range 0 to MAX_COUNTER;
signal tz: integer range 0 to MAX_COUNTER;
begin
	process(clk_in)
	begin
		if PB = '1' then
			if bt = '1' and state = S5 then  --when done and push pb again
				bt <= '0';
				state <= S0;
				x <= '1';
				y <= '0';
				z <= '0';
			end if;
		elsif rising_edge(clk_in) then
			case state is
			when S0 =>
				tx <= LowX;
				ty <= LowY;
				tz <= Lowz;
				x <= '0';
				y <= '0';
				z <= '0';
			when S1 => 
			
				if tx = 0 then
					x <= '1';
				else
					tx <= tx - 1;
				end if;

				if ty = 0 then
					y <= '1';
				else
					ty <= ty - 1;
				end if;				

				if tz = 0 then
					z <= '1';
				else
					tz <= tz - 1;
				end if;
				
				state <= S2;
			when S2 =>
				tx <= HighX;
				ty <= HighY;
				tz <= Highz;
				x <= '1';
				y <= '1';
				z <= '1';			
			when S3 =>
				if tx = 0 then
					x <= '0';
				else
					tx <= tx - 1;
				end if;

				if ty = 0 then
					y <= '0';
				else
					ty <= ty - 1;
				end if;				

				if tz = 0 then
					z <= '0';
				else
					tz <= tz - 1;
				end if;
				
				state <= S0;
			 when others =>
            state <= S0;
        end case;	
		end if;
	end process;

end Behavioral;
