--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:58:18 04/22/2017
-- Design Name:   Daniel Humberto Gallego Lopez
-- Module Name:   C:/Users/Daniel/Desktop/Procesador_3/Procesador_2/prueba_pSR.vhd
-- Project Name:  Procesador_3
-- Target Device:  
-- Tool versions: 3.2
-- Description:   
-- 
-- Revision:		Acierto

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
----------------------------------------------------------------------
ENTITY prueba_pSR IS
END prueba_pSR;
 
ARCHITECTURE behavior OF prueba_pSR IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pSR
    PORT(
         nzvc : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         Rst : IN  std_logic;
         Carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal nzvc : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal Rst : std_logic := '0';

 	--Outputs
   signal Carry : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pSR PORT MAP (
          nzvc => nzvc,
          clk => clk,
          Rst => Rst,
          Carry => Carry
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
			nzvc <= "0010";
			wait for 50 ns;

			Rst <= '0';
			nzvc <= "1010";
			wait for 50 ns;
			nzvc <= "0010";
			wait for 50 ns;

	wait;
   end process;

END;
