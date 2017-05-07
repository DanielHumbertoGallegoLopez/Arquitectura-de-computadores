--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   	18:47:26 04/18/2017
-- Design Name:   	Daniel Humberto Gallego Lopez
-- Module Name:   	C:/Users/utp/Desktop/Procesador_2/Procesador_2/Prueba_sEU.vhd
-- Project Name:  	Procesador_3
-- Target Device:  
-- Tool versions:  	3.0
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sEU
-- 
-- Dependencies:
-- 
-- Revision:		Acierto
-- Revision 0.01 - File Created
-- Additional Comments:
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
--------------------------------------------------------------------------------
 
ENTITY Prueba_sEU IS
END Prueba_sEU;
 
ARCHITECTURE behavior OF Prueba_sEU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sEU
    PORT(
         imm13 : IN  std_logic_vector(12 downto 0);
         SalidaSEU : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal imm13 : std_logic_vector(12 downto 0) := (others => '0');

 	--Outputs
   signal SalidaSEU : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sEU PORT MAP (
          imm13 => imm13,
          SalidaSEU => SalidaSEU
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      
		imm13 <= "0100111001010";

      wait;
   end process;

END;
