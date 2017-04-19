--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:49:08 04/09/2017
-- Design Name:   
-- Module Name:   C:/Users/Daniel/Desktop/Procesador_2/Procesador_2/prueba_uC.vhd
-- Project Name:  Procesador_2
-- Target Device:  
-- Tool versions:  
-- Description:   
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
--------------------------------------------------------------------------------
 
ENTITY prueba_uC IS
END prueba_uC;
 
ARCHITECTURE behavior OF prueba_uC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT uC
    PORT(
         op : IN  std_logic_vector(1 downto 0);
         op3 : IN  std_logic_vector(5 downto 0);
         AluOp : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal op : std_logic_vector(1 downto 0) := (others => '0');
   signal op3 : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal AluOp : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: uC PORT MAP (
          op => op,
          op3 => op3,
          AluOp => AluOp
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
			op <= "10";
      -- hold reset state for 100 ns.
				op3 <= "000011";

      -- insert stimulus here 

      wait;
   end process;

END;
