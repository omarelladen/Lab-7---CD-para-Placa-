library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity Timing_Reference_80hz is
	port ( clk: in std_logic; -- Pin connected to P11 (N14)
			clk_40kHz: out std_logic);-- Can check it using PIN A8 - LEDR0

	end Timing_Reference_80hz;
  
architecture freq_div of Timing_Reference_80hz is
  
signal count: integer:=1;
signal tmp : std_logic := '0';
  
begin
  
process(clk)
	begin
	if(clk'event and clk='1') then
		count <=count+1;
		if (count = 50000000/160000) then --625 (40kHz - FCS)
			tmp <= NOT tmp;
			count <= 1;
		end if;
	end if;
	clk_40kHz <= tmp;
end process;
 
end freq_div;