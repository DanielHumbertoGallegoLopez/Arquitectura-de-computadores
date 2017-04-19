--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:02:41 04/09/2017
-- Design Name:   
-- Module Name:   C:/Users/Daniel/Desktop/Procesador_2/Procesador_2/prueba_iM.vhd
-- Project Name:  Procesador_2
-- Target Device:  
-- Tool versions:  
-- Description:  

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-----------------------------------------------------------------------------------
 
ENTITY prueba_iM IS
END prueba_iM;
 
ARCHITECTURE behavior OF prueba_iM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT iM
    PORT(
         nPC : IN  std_logic_vector(31 downto 0);
         Rst : IN  std_logic;
         SalidaIM : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal nPC : std_logic_vector(31 downto 0) := (others => '0');
   signal Rst : std_logic := '0';

 	--Outputs
   signal SalidaIM : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: iM PORT MAP (
          nPC => nPC,
          Rst => Rst,
          SalidaIM => SalidaIM
        );
 

   -- Stimulus process
   stim_proc: process
   begin	
		Rst <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
				Rst <= '0';
				nPC <= x"00000001";

      wait;
   end process;

END;
