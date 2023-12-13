library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity clock_scaler is
    port (clk_in : in std_logic;
            enable : in std_logic;
            clk_out_1 : out std_logic;
            clk_out_2 : out std_logic;
            clk_out_3 : out std_logic;
            clk_out_4 : out std_logic
    );

end clock_scaler;

architecture Behavioral of clock_scaler is 

signal counter_value1 : integer := 0;											--- count rising edge

signal Toggle1 : std_logic := '0';												--- clk out 1
signal Toggle2 : std_logic := '0';												--- clk out 2
signal Toggle3 : std_logic := '0';												--- clk out 3
signal Toggle4 : std_logic := '0';												--- clk out 4

    begin
        process(clk_in)
        begin
            if rising_edge(clk_in) then

                    if (enable='0') then
                        counter_value1 <= 0;


                    else
								if counter_value1 > 0 then

									if (counter_value1 mod 2 = 0 ) then			--- clk in / 2
                            Toggle1 <= not(Toggle1);

									end if;

									if (counter_value1 mod 4 = 0) then			--- clk in / 4
                            Toggle2 <= not(Toggle2);


									end if;
									
									if (counter_value1 mod 8 = 0 ) then			--- clk in / 8
                            Toggle3 <= not(Toggle3);

									end if;
									
									if (counter_value1 mod 16 = 0 ) then		--- clk in / 16
                            Toggle4 <= not(Toggle4);

									end if;
									
									counter_value1 <= counter_value1 + 1;		--- count value
										
								
								else 
									counter_value1 <= counter_value1 + 1;		--- count value


                        end if;

                    end if;

                end if;

        end process;

          clk_out_1 <= Toggle1;
			 clk_out_2 <= Toggle2;
			 clk_out_3 <= Toggle3;
			 clk_out_4 <= Toggle4;

end Behavioral;