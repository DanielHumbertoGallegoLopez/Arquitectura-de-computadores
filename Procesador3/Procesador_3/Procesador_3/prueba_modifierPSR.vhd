--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:29:29 04/22/2017
-- Design Name:   Daniel Humberto Gallego Lopez
-- Module Name:   C:/Users/Daniel/Desktop/Procesador_3/Procesador_2/prueba_modifierPSR.vhd
-- Project Name:  Procesador_3
-- Target Device:  
-- Tool versions: 3.2
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: modifier_PSR
-- 
-- Dependencies:
-- 
-- Revision:		Acierto
-----------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-----------------------------------------------------------
 
ENTITY prueba_modifierPSR IS
END prueba_modifierPSR;
 
ARCHITECTURE behavior OF prueba_modifierPSR IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT modifierPSR
    PORT(
         AluOp : IN  std_logic_vector(5 downto 0);
         SalidAlu : IN  std_logic_vector(31 downto 0);
         Rst : IN  std_logic;
         Crs1 : IN  std_logic_vector(31 downto 0);
         Operador2 : IN  std_logic_vector(31 downto 0);
         nzvc : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal AluOp : std_logic_vector(5 downto 0) := (others => '0');
   signal SalidAlu : std_logic_vector(31 downto 0) := (others => '0');
   signal Rst : std_logic := '0';
   signal Crs1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Operador2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal nzvc : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: modifierPSR PORT MAP (
          AluOp => AluOp,
          SalidAlu => SalidAlu,
          Rst => Rst,
          Crs1 => Crs1,
          Operador2 => Operador2,
          nzvc => nzvc
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		Rst <= '1';
			wait for 100 ns;
				Rst <= '0';
				AluOp <= "010100";
				Crs1 <= x"00010000";
				Operador2 <= x"00010001";
				SalidAlu <= "11111111111111111111111111110011";
			wait;
   end process;

END;
