----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    	18:43:30 05/04/2017 
-- Design Name: 		Daniel Humberto Gallego Lopez
-- Module Name:    	windows_Manager - Behavioral 
-- Project Name: 		Procesador_4
-- Target Devices: 
-- Tool versions: 
-- Description: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

----------------------------------------------------------------------------------

entity windows_Manager is

    Port ( Rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rd : in  STD_LOGIC_VECTOR (4 downto 0);
           Op : in  STD_LOGIC_VECTOR (1 downto 0);
           Op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           cwp : in  STD_LOGIC;
           ncwp : out  STD_LOGIC;
           SalidaRs1 : out  STD_LOGIC_VECTOR (5 downto 0);
           SalidaRs2 : out  STD_LOGIC_VECTOR (5 downto 0);
           SalidaRd : out  STD_LOGIC_VECTOR (5 downto 0));
end windows_Manager;

architecture Behavioral of windows_Manager is

signal axRs1,axRs2,axRd: integer range 0 to 39;
signal axncwp: std_logic;

begin

	process(Rs1,Rs2,Rd,Op,Op3,cwp,axncwp)
		begin
			if(Op = "10") then
				if(Op3= "111100") then --Save
					axncwp<= '1';
				elsif(Op3="111101") then --Restore 
					axncwp<= '0';
				else
					axncwp<=cwp;
				end if;
			end if;
				
				if(Rs1>="11000" and Rs1<="11111") then--Formula registro de entrada (r[24] - r[31])
						axRs1 <= conv_integer(Rs1)-(conv_integer(cwp)*16);
				elsif(Rs1>="10000" and Rs1<="10111") then--Formula registro de local (r[16] - r[23])
						axRs1 <= conv_integer(Rs1)+(conv_integer(cwp)*16);
				elsif(Rs1>="01000" and Rs1<="01111") then--Formula registro de salida (r[8] - r[15])
						axRs1 <= conv_integer(Rs1)+ (conv_integer(cwp)*16);
				elsif(Rs1>="00000" and Rs1<="00111") then--Formula registro global (r[0] - r[7])
						axRs1 <= conv_integer(Rs1);
				end if;
				
				if(Rs2>="11000" and Rs2<="11111") then--Formula registro de entrada (r[24] - r[31])
						axRs2 <= conv_integer(Rs2)-(conv_integer(cwp)*16);
				elsif(Rs2>="10000" and Rs2<="10111") then--Formula registro de local (r[16] - r[23])
						axRs2 <= conv_integer(Rs2)+(conv_integer(cwp)*16);
				elsif(Rs2>="01000" and Rs2<="01111") then--Formula registro de salida (r[8] - r[15])
						axRs2 <= conv_integer(Rs2)+ (conv_integer(cwp)*16);
				elsif(Rs2>="00000" and Rs2<="00111") then--Formula registro global (r[0] - r[7])
						axRs2 <= conv_integer(Rs2);
				end if;
				
				if(Rd>="11000" and Rd<="11111") then--Formula registro de entrada (r[24] - r[31])
						axRd <= conv_integer(Rd)-(conv_integer(axncwp)*16);
				elsif(Rd>="10000" and Rd<="10111") then--Formula registro de local (r[16] - r[23])
						axRd <= conv_integer(Rd)+(conv_integer(axncwp)*16);
				elsif(Rd>="01000" and Rd<="01111") then--Formula registro de salida (r[8] - r[15])
						axRd <= conv_integer(Rd)+ (conv_integer(axncwp)*16);
				elsif(Rd>="00000" and Rd<="00111") then--Formula registro global (r[0] - r[7])
						axRd <= conv_integer(Rd);
				end if;
				
		end process;
		
		SalidaRs1 <= conv_std_logic_vector(axRs1, 6);
		SalidaRs2 <= conv_std_logic_vector(axRs2, 6);
		SalidaRd <= conv_std_logic_vector(axRd, 6);
		ncwp <= axncwp;

end Behavioral;

