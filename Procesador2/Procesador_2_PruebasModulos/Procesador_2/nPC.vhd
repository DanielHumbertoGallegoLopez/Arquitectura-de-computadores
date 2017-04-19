----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:37:24 04/04/2017 
-- Design Name:    Daniel Humberto Gallego Lopez
-- Module Name:    nPC - Behavioral 
-- Project Name:   Procesador 2
-- Target Devices: 
-- Tool versions:  2.2
-- Description: 	 Next Program Counter
--
-- Dependencies: 
--
-- Revision:		Acierto
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------------------------------

entity nPC is
    Port ( Din : in  STD_LOGIC_VECTOR (31 downto 0);
           Rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Dout : out  STD_LOGIC_VECTOR (31 downto 0));
end nPC;

architecture Behavioral of nPC is

begin

	process (clk,Rst,Din)
		
		begin
			if(Rst = '1')then
				Dout <= x"00000000";
			else
				if(rising_edge(clk))then
					Dout <= Din;
				end if;
			end if;
end process;


end Behavioral;

