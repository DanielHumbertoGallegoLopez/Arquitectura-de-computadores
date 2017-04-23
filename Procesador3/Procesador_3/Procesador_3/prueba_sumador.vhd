--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:41:21 04/06/2017
-- Design Name:   
-- Module Name:   C:/Users/utp/Desktop/Procesador_2/Procesador_2/prueba_sumador.vhd
-- Project Name:  Procesador_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sumador
-- 
-- Dependencies:
-- 
-- Revision:		Sin empezar
-- Revision 0.01 - File Created
-- Additional Comments:
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use std.textio.all;
 
--------------------------------------------------------------------------------
 
ENTITY prueba_sumador IS
END prueba_sumador;
 
ARCHITECTURE behavior OF prueba_sumador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sumador
    PORT(
         Num1 : IN  std_logic_vector(31 downto 0);
         Num2 : IN  std_logic_vector(31 downto 0);
         SalidaSuma : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Num1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Num2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal SalidaSuma : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sumador PORT MAP (
          Num1 => Num1,
          Num2 => Num2,
          SalidaSuma => SalidaSuma
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
			Num1 <= x"00000002";
		       Num2 <= x"00000001";
				 
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		Num1 <=  x"00000004"; 
		Num2 <=  x"00000024";
		wait for 100 ns;
		Num1 <=  x"00000014";
		Num2 <=  x"00000004";		
		wait for 100 ns;
		Num1 <=  x"00000024";
		Num2 <=  x"00000034";

      wait;
   end process;

END;
