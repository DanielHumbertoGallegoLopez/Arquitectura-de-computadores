--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:08:35 04/10/2017
-- Design Name:   
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
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
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
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: procesadorUnion PORT MAP (
          Rst => Rst,
          clk => clk,
          SalidaProcesador => SalidaProcesador
        );

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
