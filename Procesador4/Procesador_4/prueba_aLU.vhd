--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   	18:50:26 04/22/2017
-- Design Name:   
-- Module Name:   	C:/Users/Daniel/Desktop/Procesador_2/Procesador_2/prueba_aLU.vhd
-- Project Name:  	Procesador_3
-- Target Device:  
-- Tool versions:  	3.2
-- Description: 
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
---------------------------------------------------------------------------------
 
ENTITY prueba_aLU IS
END prueba_aLU;
 
ARCHITECTURE behavior OF prueba_aLU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT aLU
    PORT(
         Rs1 : IN  std_logic_vector(31 downto 0);
         Dmux : IN  std_logic_vector(31 downto 0);
         AluOp : IN  std_logic_vector(5 downto 0);
			Carry : IN  std_logic;
         SalidALU : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Rs1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Dmux : std_logic_vector(31 downto 0) := (others => '0');
	signal Carry : STD_LOGIC;
   signal AluOp : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal SalidALU : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: aLU PORT MAP (
          Rs1 => Rs1,
          Dmux => Dmux,
          AluOp => AluOp,
			 Carry => Carry,
          SalidALU => SalidALU
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      -- wait for 100 ns;	
		
				Rs1 <= x"00000004";
					Dmux <= x"00000002";
					AluOp <= "000001";

      wait;
   end process;

END;
