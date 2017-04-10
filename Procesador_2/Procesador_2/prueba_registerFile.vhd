--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:39:05 04/09/2017
-- Design Name:   
-- Module Name:   C:/Users/Daniel/Desktop/Procesador_2/Procesador_2/prueba_registerFile.vhd
-- Project Name:  Procesador_2
-- Target Device:  
-- Tool versions:  
-- Description:   
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
--------------------------------------------------------------------------------
 
ENTITY prueba_registerFile IS
END prueba_registerFile;
 
ARCHITECTURE behavior OF prueba_registerFile IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registerFile
    PORT(
         Rs1 : IN  std_logic_vector(4 downto 0);
         Rs2 : IN  std_logic_vector(4 downto 0);
         Rd : IN  std_logic_vector(4 downto 0);
         Rst : IN  std_logic;
         DWR : IN  std_logic_vector(31 downto 0);
         CRs1 : OUT  std_logic_vector(31 downto 0);
         CRs2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rd : std_logic_vector(4 downto 0) := (others => '0');
   signal Rst : std_logic := '0';
   signal DWR : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal CRs1 : std_logic_vector(31 downto 0);
   signal CRs2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registerFile PORT MAP (
          Rs1 => Rs1,
          Rs2 => Rs2,
          Rd => Rd,
          Rst => Rst,
          DWR => DWR,
          CRs1 => CRs1,
          CRs2 => CRs2
        );

   -- Stimulus process
   stim_proc: process
   begin	

			Rst <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			
			Rst <= '0';
			Rs1 <= "10000";
			Rs2 <= "10001";
			Rd <= "10010";
			DWR <= x"00010110";

     -- wait;
   end process;

END;
