----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    	15:35:22 04/06/2017 
-- Design Name: 		Daniel Humberto Gallego Lopez
-- Module Name:   	MUX - Behavioral 
-- Project Name: 		Procesador 3
-- Target Devices: 
-- Tool versions: 	3.0
-- Description: 		MUltiplexor
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

entity mUX is
    Port ( Dseu : in  STD_LOGIC_VECTOR (31 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           imm : in  STD_LOGIC;
           SalidaMUX : out  STD_LOGIC_VECTOR (31 downto 0));
end mUX;

architecture Behavioral of mUX is

begin
	process(imm,Dseu,Rs2)
	begin
			if(imm = '1')then
					SalidaMUX <= Dseu;
			else 
				if(imm = '0')then
						SalidaMUX <= Rs2;
				end if ; 

			end if; 	

end process; 


end Behavioral;

