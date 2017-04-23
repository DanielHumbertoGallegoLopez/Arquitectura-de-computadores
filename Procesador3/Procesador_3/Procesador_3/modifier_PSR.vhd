----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:22:09 04/22/2017 
-- Design Name: 
-- Module Name:    modifier_PSR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use std.textio.all;

-------------------------------------------------------
entity modifierPSR is
    Port ( AluOp : in  STD_LOGIC_VECTOR (5 downto 0);
           SalidAlu : in  STD_LOGIC_VECTOR (31 downto 0);
           Rst : in  STD_LOGIC;
           Crs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Operador2 : in  STD_LOGIC_VECTOR (31 downto 0);
           nzvc : out  STD_LOGIC_VECTOR (3 downto 0));
			  
end modifierPSR;

architecture Behavioral of modifierPSR is

begin

	process(AluOp,SalidAlu,Crs1,Operador2,Rst)

	begin 
				if(Rst = '1')then
						 nzvc <= (others => '0');
				else
					-- ANDcc or ANDNcc or ORcc or ORNcc or XORcc or XNORcc
					if(AluOp="010001" or AluOp="010101" or AluOp="010010" or AluOp="010110" or AluOp="010011" or AluOp="010111") then
						nzvc(3)<= SalidAlu(31);
						if(conv_integer(SalidAlu)=0)then
							nzvc(2) <= '1';
						else
							nzvc(2) <= '0';
										
						end if;
						nzvc(1) <= '0';
						nzvc(0) <='0';
								
					end if;
					-- ADDcc or ADDxcc
					if (AluOp="010000" or AluOp="011000")then
						nzvc(3) <= SalidAlu(31);
						if (conv_integer(SalidAlu)=0)then
							nzvc(2) <= '1';
						else
							nzvc(2) <= '0';
						end if;
						nzvc(1) <= (Crs1(31) and Operador2(31) and (not SalidAlu(31))) or ((not Crs1(31)) and (not Operador2(31)) and SalidAlu(31));
						nzvc(0) <= (Crs1(31) and Operador2(31)) or ((not SalidAlu(31)) and (Crs1(31) or Operador2(31)) );
					end if;
					--SUBcc or SUBxcc
					if (AluOp="010100" or SalidAlu="011100")then
						nzvc(3) <= SalidAlu(31);
						if (conv_integer(SalidAlu)=0)then
							nzvc(2) <= '1';
						else
							nzvc(2) <= '0';
						end if;
						nzvc(1) <= (Crs1(31) and (not Operador2(31)) and (not SalidAlu(31))) or ((not Crs1(31)) and Operador2(31) and SalidAlu(31));
						nzvc(0) <= ((not Crs1(31)) and Operador2(31)) or (SalidAlu(31) and ((not Crs1(31)) or Operador2(31)));
					end if;
				end if;		
	end process;

end Behavioral;

