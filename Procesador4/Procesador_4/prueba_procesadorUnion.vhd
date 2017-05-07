--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:15:35 04/22/2017
-- Design Name:   Daniel Humberto Gallego Lopez
-- Module Name:   C:/Users/Daniel/Desktop/Procesador_2/Procesador_2/prueba_procesadorUnion.vhd
-- Project Name:  Procesador_2
-- Target Device:  
-- Tool versions: 
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: procesadorUnion
-- 
-- Dependencies:
-- 
-- Revision:		
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

--------------------------------------------------------------------------------

ENTITY prueba_procesadorUnion IS
END prueba_procesadorUnion;
 
ARCHITECTURE behavior OF prueba_procesadorUnion IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT procesadorUnion
    PORT(
         Rst : IN  std_logic;
         clk : IN  std_logic;
         SalidaProcesador : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal SalidaProcesador : std_logic_vector(31 downto 0);
	
	constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: procesadorUnion PORT MAP (
          Rst => Rst,
          clk => clk,
          SalidaProcesador => SalidaProcesador
        );
		  
	clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
			Rst <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;
			Rst <= '0';
		
      wait;
   end process;

END;
