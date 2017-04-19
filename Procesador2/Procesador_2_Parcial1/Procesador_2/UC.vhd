----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    	15:29:56 04/06/2017 
-- Design Name:		Daniel Humberto Gallego Lopez
-- Module Name:    	UC - Behavioral 
-- Project Name: 		Procesador 2
-- Target Devices: 
-- Tool versions: 	2.3
-- Description: 		Unidad de Control
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

entity uC is
    Port ( op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           AluOp : out  STD_LOGIC_VECTOR (5 downto 0));
end uC;

architecture Behavioral of uC is

begin

	process(op,op3)
	begin
	if (op="10")then 


						case op3 is 
										when "000000"=>--suma
												AluOp <= "000001";
												
										when "000100"=>--resta
												AluOp <= "000010";
												
										when "000010" =>--or
												AluOp <= "000011";
												
										when "000110"=>--orN
												AluOp <= "000100";
												
										when "000001"=>--and
												AluOp <= "000101";
												
										when "000101"=>--andN
												AluOp <= "000110";
												
										when "000011" =>--xor
												AluOp <= "000111";
												
										when "000111"=>--xNor
												AluOp <= "001000";
												
										when others => --Otras instrcciones
												AluOp <= "111111";
												
						end case;
	end if;
end process;

end Behavioral;

