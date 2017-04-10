----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    	15:38:03 04/06/2017 
-- Design Name: 		Daniel Humberto Gallego Lopez
-- Module Name:    	ALU - Behavioral 
-- Project Name: 		Procesador 2
-- Target Devices: 
-- Tool versions: 	2.1
-- Description: 		?
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

entity aLU is
    Port ( Rs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Dmux : in  STD_LOGIC_VECTOR (31 downto 0);
           AluOp : in  STD_LOGIC_VECTOR (5 downto 0);
           SalidALU : out  STD_LOGIC_VECTOR (31 downto 0));
end aLU;

architecture Behavioral of aLU is

begin
process(AluOp,Rs1,Dmux)
			begin
						case AluOp is
						
								when "000001"=>--suma
										SalidALU <= Rs1 + Dmux;
										
								when "000010"=>--resta
										SalidALU <= Rs1 - Dmux;
										
								when "000011"=>--or
										SalidALU <= Rs1 or Dmux;
										
								when "000100"=>--orN
										SalidALU <= Rs1 or not Dmux;
										
								when "000101"=>--and
										SalidALU <= Rs1 and Dmux;
										
								when "000110"=>--andN
										SalidALU <= Rs1 and not Dmux;
								
								when "000111"=>--xor
										SalidALU <= Rs1 xor Dmux;
										
								when "001000"=>--xNor
										SalidALU <= Rs1 xnor Dmux;
										
								when others =>--not
										SalidALU <=(others =>'0');
										
						end case;
end process;


end Behavioral;

