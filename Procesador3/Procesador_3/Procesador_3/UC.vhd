----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    	15:29:56 04/22/2017 
-- Design Name:		Daniel Humberto Gallego Lopez
-- Module Name:    	UC - Behavioral 
-- Project Name: 		Procesador 3
-- Target Devices: 
-- Tool versions: 	3.2
-- Description: 		Unidad de Control
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
										when "000000" => -- ADD
										AluOp  <= "000000";
											
										when "010000" => -- ADDcc
										AluOp  <= "010000";
											
										when "001000" => -- ADDX
										AluOp  <= "001000";
										
										when "011000" => -- ADDXcc
										AluOp  <= "011000";

										when "000100" => -- SUB
										AluOp <= "000100";
									 
										when "010100" => -- SUBcc
									   AluOp <= "010100";	
											 
										when "001100" => -- SUBX
										AluOp <= "001100";	
										
										when "011100" => -- SUBXcc
										AluOp <= "011100";							
											 
										when "000001" => -- AND
										AluOp <= "000001";
											 
										when "000101" => -- ANDN
										AluOp <= "000101";
										
										when "010101" => -- ANDNcc
										AluOp <= "010101";
											 
										when "010001" => -- ANDcc
										AluOp <= "010001";							
											 
										when "000010" => -- OR
										AluOp <= "000010";
											
										when "000110" => -- ORN
										AluOp <= "000110";
											
										when "010010" => -- ORcc
										AluOp <= "010010";
											
										when "010110" => -- ORNcc
										AluOp <= "010110";	
											 
										when "000011" => -- XOR
										AluOp  <= "000011"; 
											
										when "000111" => -- XNOR
										AluOp <= "000111";
										
										when "010011" => -- XORcc
										AluOp  <= "010011"; 
											
										when "010111" => -- XNORcc
										AluOp <= "010111";	
											
										when others => --otras instrucciones
										AluOp <= "111111"; 
												
						end case;
				 end if;
end process;

end Behavioral;

