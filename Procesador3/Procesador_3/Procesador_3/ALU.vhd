----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    	18:50:03 04/22/2017 
-- Design Name: 		Daniel Humberto Gallego Lopez
-- Module Name:    	ALU - Behavioral 
-- Project Name: 		Procesador 3
-- Target Devices: 
-- Tool versions: 	3.1
-- Description: 		?
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

----------------------------------------------------------------------------------

entity aLU is
    Port ( Rs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Dmux : in  STD_LOGIC_VECTOR (31 downto 0);
           AluOp : in  STD_LOGIC_VECTOR (5 downto 0);
			  Carry : in  STD_LOGIC;
           SalidALU : out  STD_LOGIC_VECTOR (31 downto 0));
end aLU;

architecture Behavioral of aLU is

begin
process(AluOp ,Rs1,Dmux)
	
			begin
						case aluOp is
						
								when "000000" => -- add
										SalidALU <= Rs1 + Dmux;
								
								when "010000" => -- addcc
										SalidALU <= Rs1+ Dmux;
								
								when "001000" => -- addX
										SalidALU <= Rs1 + Dmux + Carry;
								
								when "011000" => -- addXcc
										SalidALU <= Rs1 + Dmux + Carry;
								
								when "000100" => -- sub
										SalidALU <= Rs1 - Dmux;
								
								when "010100" => -- subcc
										SalidALU <= Rs1 - Dmux;
								
								when "001100" => -- subX
										SalidALU <= Rs1- Dmux - Carry;
								
								when "011100" => -- subXcc
										SalidALU <= Rs1 - Dmux - Carry;
								
								when "000001" => -- and
										SalidALU <= Rs1 and Dmux;
								
								when "000101" => -- andn
										SalidALU <= Rs1 and not (Dmux);
								
								when "010101" => --andNcc
										SalidALU <= Rs1 and Dmux;
								
								when "010001" => --andcc
										SalidALU <= Rs1 and Dmux;
								
								when "000010" => --or
										SalidALU <= Rs1 or Dmux;
								
								when "000110" => --orn
										SalidALU <= Rs1 or not (Dmux);	
									
								when "010010" => --orcc
										SalidALU <= Rs1 or Dmux;	
								
								when "010110" => --orNcc
										SalidALU <= Rs1 or Dmux;  
								
								when "000011" => -- xor
										SalidALU <= Rs1 xor Dmux;
								
								when "000111" => -- xnor
										SalidALU <= Rs1 xnor Dmux;
								
								when "010011" => -- xorcc
										SalidALU <= Rs1 xor Dmux;				
									
								when others => --otras instrucciones
											SalidALU <= (others=>'0');


										
						end case;
end process;


end Behavioral;

