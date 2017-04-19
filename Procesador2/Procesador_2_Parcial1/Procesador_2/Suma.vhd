----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    	15:21:05 04/06/2017 
-- Design Name: 		Daniel Humberto Gallego Lopez
-- Module Name:    	Suma - Behavioral 
-- Project Name: 		Procesador 2
-- Target Devices: 
-- Tool versions: 	2.3
-- Description: 		Sumador
--
-- Dependencies: 
--
-- Revision: 			Advertencias
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

----------------------------------------------------------------------------------

entity sumador is
    Port ( Num1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Num2 : in  STD_LOGIC_VECTOR (31 downto 0);
           SalidaSuma : out  STD_LOGIC_VECTOR (31 downto 0));
end sumador;

architecture Behavioral of sumador is

begin
	process(Num1,Num2)
	begin
		SalidaSuma <= Num1 + Num2; 
	end process; 

end Behavioral;

