----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    	19:52:48 04/04/2017 
-- Design Name: 		Daniel Humberto Gallego Lopez
-- Module Name:   	RegisterFile - Behavioral 
-- Project Name: 		Procesador 2
-- Target Devices: 
-- Tool versions: 	2.3
-- Description: 		Registrar archivo
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

entity registerFile is
    Port ( Rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rd : in  STD_LOGIC_VECTOR (4 downto 0);
			  Rst : in STD_LOGIC;
           DWR : in  STD_LOGIC_VECTOR (31 downto 0);
           CRs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           CRs2 : out  STD_LOGIC_VECTOR (31 downto 0));
end registerFile;

architecture Behavioral of registerFile is

type ram_type is array (0 to 39) of std_logic_vector (31 downto 0);
	signal regist : ram_type :=(others => x"00000000");

begin
	process(Rs1, Rs2, Rst, Rd, DWR)
	begin
		if(Rst = '1')then
					CRs1 <= (others=>'0');
					CRs2 <= (others=>'0');
			
					regist <= (others => x"00000000");
		else
					CRs1 <= regist(conv_integer(Rs1));
					CRs2 <= regist(conv_integer(Rs1));
				
				
				if(Rd  /= "000000")then
						regist(conv_integer(Rd)) <= DWR;
				end if;
		end if;
	
end process; 

end Behavioral;

