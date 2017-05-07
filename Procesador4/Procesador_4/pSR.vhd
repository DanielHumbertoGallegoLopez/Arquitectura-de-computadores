----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    	17:55:13 04/22/2017 
-- Design Name: 		Daniel Humberto Gallego Lopez
-- Module Name:    	pSR - Behavioral 
-- Project Name: 		Procesador 3
-- Target Devices: 
-- Tool versions: 	3.4
-- Description: 		???????
--
-- Dependencies: 
--
-- Revision: 			Acierto
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-------------------------------------------------------------------
entity pSR is
    Port ( nzvc : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
			  Rst : in  STD_LOGIC;
			  ncwp : in  STD_LOGIC;
           Carry : out  STD_LOGIC;
			  cwp : out  STD_LOGIC);
end pSR;

architecture Behavioral of pSR is

begin
	process(Rst,clk,nzvc,ncwp)
	begin
			if(Rst = '1') then
				cwp<= '0';
				Carry<= '0';
			else
				if(rising_edge(clk)) then
					Carry <= nzvc(0);
					cwp <= ncwp;
				end if;
			end if;
	end process;

end Behavioral;

