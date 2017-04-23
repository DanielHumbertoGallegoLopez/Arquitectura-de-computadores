----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    	15:32:43 04/06/2017 
-- Design Name: 		Daniel Humberto Gallego Lopez
-- Module Name:    	SEU - Behavioral 
-- Project Name: 		Procesador 3
-- Target Devices: 
-- Tool versions: 	3.0
-- Description: 		Extencion de signo
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

----------------------------------------------------------------------------------

entity sEU is
    Port ( imm13 : in  STD_LOGIC_VECTOR (12 downto 0);
           SalidaSEU : out  STD_LOGIC_VECTOR (31 downto 0));
end sEU;

architecture Behavioral of sEU is

begin

	process(imm13)
	begin

		if(imm13(12) = '1')then
			SalidaSEU(12 downto 0) <= imm13;
			SalidaSEU(31 downto 13) <= (others=>'1');

		else
			SalidaSEU(12 downto 0) <= imm13;
			SalidaSEU(31 downto 13) <= (others=>'0');

		end if;

end process; 


end Behavioral;

