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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pSR is
    Port ( nzvc : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
			  Rst : in  STD_LOGIC;
           Carry : out  STD_LOGIC);
end pSR;

architecture Behavioral of pSR is

begin
	process(Rst,clk,nzvc)
	begin
			if Rst= '1' then
						Carry <= '0';
			else
						if rising_edge(clk) then
								  Carry <= nzvc(0);
						end if;
			end if;
end process;

end Behavioral;

