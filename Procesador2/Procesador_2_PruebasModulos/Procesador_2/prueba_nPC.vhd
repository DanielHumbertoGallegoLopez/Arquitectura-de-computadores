--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:17:08 04/06/2017
-- Design Name:   Daniel Humberto Gallego Lopez
-- Module Name:   C:/Users/utp/Desktop/Procesador_2/Procesador_2/prueba_nPC.vhd
-- Project Name:  Procesador_2
-- Target Device:  
-- Tool versions: 2.1
-- Description:   Next Program Counter
--
-- 
-- VHDL Test Bench Created by ISE for module: nPC
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
--------------------------------------------------------------------------------
 
ENTITY prueba_nPC IS
END prueba_nPC;
 
ARCHITECTURE behavior OF prueba_nPC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nPC
    PORT(
         Din : IN  std_logic_vector(31 downto 0);
         Rst : IN  std_logic;
         clk : IN  std_logic;
         Dout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Din : std_logic_vector(31 downto 0) := (others => '0');
   signal Rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Dout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nPC PORT MAP (
          Din => Din,
          Rst => Rst,
          clk => clk,
          Dout => Dout
        );

   -- Clock process definitions
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
		Din <=  x"00000004"; 

      -- insert stimulus here 

      wait;
   end process;

END;
