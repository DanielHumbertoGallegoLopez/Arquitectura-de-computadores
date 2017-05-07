--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:34:37 04/09/2017
-- Design Name:   
-- Module Name:   C:/Users/Daniel/Desktop/Procesador_2/Procesador_2/prueba_mUX.vhd
-- Project Name:  Procesador_2
-- Target Device:  
-- Tool versions:  
-- Description:   
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
--------------------------------------------------------------------------------
 
ENTITY prueba_mUX IS
END prueba_mUX;
 
ARCHITECTURE behavior OF prueba_mUX IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mUX
    PORT(
         Dseu : IN  std_logic_vector(31 downto 0);
         Rs2 : IN  std_logic_vector(31 downto 0);
         imm : IN  std_logic;
         SalidaMUX : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Dseu : std_logic_vector(31 downto 0) := (others => '0');
   signal Rs2 : std_logic_vector(31 downto 0) := (others => '0');
   signal imm : std_logic := '0';

 	--Outputs
   signal SalidaMUX : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mUX PORT MAP (
          Dseu => Dseu,
          Rs2 => Rs2,
          imm => imm,
          SalidaMUX => SalidaMUX
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		imm <= '0';
			Dseu <= x"00000004";
			
			--wait for 100 ns;
			--imm <= '0';
			Rs2 <= x"00000008";
     
      wait;
   end process;

END;
