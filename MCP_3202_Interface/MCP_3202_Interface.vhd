library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity MCP_3202_Interface is 
	port(
			CLK   : in std_logic ;								--- 50MHz
  			HOLD_SS_N : in std_logic;							--- define start logic signal of SPI_SS_N(CS)  when '1' (High to Low),when '0' (Low to High)
			START		: in std_logic:= '1';  					--- when '1' start communicate
			RST_N : in std_logic;								--- when '0' stop (async)
			S_CH : in std_logic;									--- Select channel
			SPI_MISO : in std_logic;							--- Data from Slave (ADC)
			DONE : out std_logic := '1';						--- '1' When finish
			RDATA : out std_logic_vector(11 downto 0) := (others => '0');	--- Digital Output
			SPI_MOSI : out std_logic;							--- Master send instruction to Slave
			SPI_SCK : out std_logic := '0';					--- Master send Clk to Slave
			SPI_SS_N : out std_logic := '1'					--- Slave select
	);

end MCP_3202_Interface;


Architecture Behave of MCP_3202_Interface is
type state_type is (
s0,s1,s2 );
signal state : state_type := s2;
signal bt : std_logic := '1'; 										--- check once time for START
signal WDATA	: std_logic_vector(0 to 3) := "1111"  ;		--- Data for Master send to Slave
signal Count_4 : integer := 0;										--- Count to send instruction to Slave
signal Count_12 : integer := 0;										--- Count to recieve Data from Slave(ADC)
signal Count_17 : integer := 0;
signal Result : std_logic_vector(11 downto 0);					
signal Gen_Clk : integer := 0;										--- Count Clk 
signal clock : std_logic := '1';
signal rise : std_logic := '1';

	begin
		process(CLK,START)
		begin 
			if RST_N = '0' then											--- Reset Async
				WDATA <= "1111";
				bt <= '1';
				DONE <= '1';
				SPI_SS_N <= '1';
				state <= s0;
				RDATA <= (others => '0');

			elsif rising_edge(CLK) then
				if S_CH = '0' then										--- Select Channel
					WDATA <= "1101";
				else
					WDATA <= "1111";
				end if;
	
				case state is
					when s0 =>
							if start = '0'then							--- Wait Start
                            if bt = '1' then						--- Start Once time
                                bt <= '0';
                                DONE <= '0';
                                Gen_Clk <= 0;
                                state <= s1 ;
                                clock <= '1';
                                rise <= '0';
                                SPI_MOSI <= WDATA(count_4);
                                SPI_SS_N <= '0';
                            end if;
                        else
                            bt <= '1';
                      end if;
				
					when s1 =>												--- Send and Recieve follow Clk
						Gen_Clk <= Gen_Clk + 1;
						if Gen_Clk = 100 then
							Gen_Clk <= 0;
							if clock = '0' then
								SPI_SCK <= clock;
								clock <= not(clock);
								if count_17 = 17 then					--- Check Finish
									state <= s2;
								else
									if count_4 > 3 then
										SPI_MOSI <= '0';
									end if;
								end if;							
							else
								SPI_SCK <= clock;
								clock <= not(clock);						--- toggle clk
								count_17 <= count_17 + 1;
								count_4 <= count_4 +1;
								count_12 <= count_12 +1;
								if count_4 < 4 then										--- Send to Slave
									SPI_MOSI <= WDATA(count_4);
								elsif count_12 >= 4 and count_12 < 17 then		--- Recieve from Slave
									Result <=  Result(10 downto 0) & SPI_MISO ;
								end if;
							end if;
						end if;
					   when s2 =>											--- Set to wait start 
                        SPI_SCK <= '0';
                        count_17 <= 0;
                        count_12 <= 0;
                        count_4 <= 0;
                        rise <= '1';
                        DONE <= '1';
                        SPI_SS_N <= '1';	
								state <= s0;								
					end case;					
				if rise = '1' then										--- Check finish output
					RDATA <= Result;
				else
					RDATA <= (others => '0');							--- Not finish set output to zero
				end if;	
			end if;	
		end process ;
	end Behave;