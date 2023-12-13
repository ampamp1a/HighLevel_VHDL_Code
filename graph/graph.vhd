library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity graph is
generic(
    LowX  : integer := 200;   	--4us at clk 50 MHz	 set = 2 for sim --200 for FPGA
	 HighX  : integer := 1450;	--29us at clk 50 MHz	 set = 7 for sim --1450 for FPGA
	 
    LowY  : integer := 300;   	--6us at clk 50 MHz	 set = 3 for sim --300 for FPGA
	 HighY  : integer := 1150;	--23us at clk 50 MHz	 set = 5 for sim --1150 for FPGA
	 
    LowZ  : integer := 1450;   	--29us at clk 50 MHz	 set = 7 for sim --1450 for FPGA
	 HighZ  : integer := 100;		--2us at clk 50 MHz	 set = 1 for sim --100 for FPGA	 
	
	 MAX_COUNTER: integer := 50000000);  	--counter value for time setting
    port (clk_in : in std_logic;
          PB : in std_logic ;
          x : out std_logic := '1';
          y : out std_logic	:= '0';
          z : out std_logic := '0'
    );

end graph;

architecture Behavioral of graph is 
type state_type is (S0,S1,S2,S3,S4,s5);
type state_type2 is (y1,y2,y3,y4);
type state_type3 is (S0,S1,S2,S3,S4,s5);
signal state : state_type := S0;
signal state2 : state_type2 := y1;
signal state3 : state_type3 := S0;
--signal bt : std_logic := '1'; -- for set to put 1 time
signal tx: integer range 0 to MAX_COUNTER;
signal ty: integer range 0 to MAX_COUNTER;
signal tz: integer range 0 to MAX_COUNTER;
begin
	process(clk_in)
	begin
		if PB = '0' then
			--if bt = '1' and state = S5 then  --when done and push pb again
				--bt <= '0';
				state <= S0;
				state2 <= y1;
				state3 <= S0;
				x <= '1';
				y <= '0';
				z <= '0';
			--end if;

		elsif rising_edge(clk_in) then
			case state is
			when S0 =>
				tx <= LowX;
				x <= '0';
				state <= S1;
			when S1 => 
			
				if tx = 0 then
					x <= '1';
					state <= S2;
				else
					tx <= tx - 1;
				end if;
				
				
			when S2 =>
				tx <= HighX;
				x <= '1';
				state <= S3;
			when S3 =>
				if tx = 0 then
					x <= '0';
					state <= S0;
				else
					tx <= tx - 1;
				end if;

			 when others =>
            state <= S0;
        end case;	
		  
		  
		  case state2 is
			when y1 =>
				ty <= LowY;
				y <= '0';
				state2 <= y2;
			when y2 => 
			
				if ty = 0 then
					y <= '1';
					state2 <= y3;
				else
					ty <= ty - 1;
				end if;
				
			when y3 =>
				ty <= HighY;
				x <= '1';
				state2 <= y4;
			when y4 =>
				if ty = 0 then
					y <= '0';
					state2 <= y1;
				else
					ty <= ty - 1;
				end if;
			when others =>
            state2 <= y1;
        end case;		
			case state3 is
			when S0 =>
				tz <= LowZ;
				z <= '0';
				state3 <= S1;
			when S1 => 
			
				if tz = 0 then
					z <= '1';
					state3 <= S2;
				else
					tz <= tz - 1;
				end if;
				
				
			when S2 =>
				tz <= HighZ;
				z <= '1';
				state3 <= S3;		
			when S3 =>
				if tz = 0 then
					z <= '0';
					state3 <= S0;
				else
					tz <= tz - 1;
				end if;

			 when others =>
            state3 <= S0;
        end case;					

		end if;
	end process;

end Behavioral;
