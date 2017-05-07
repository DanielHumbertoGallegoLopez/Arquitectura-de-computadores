
-- VHDL Instantiation Created from source file modifierPSR.vhd -- 18:50:31 04/22/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT modifierPSR
	PORT(
		AluOp : IN std_logic_vector(5 downto 0);
		SalidAlu : IN std_logic_vector(31 downto 0);
		Crs1 : IN std_logic_vector(31 downto 0);
		Operador2 : IN std_logic_vector(31 downto 0);
		Rst : IN std_logic;          
		nzvc : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_modifierPSR: modifierPSR PORT MAP(
		AluOp => ,
		SalidAlu => ,
		Crs1 => ,
		Operador2 => ,
		Rst => ,
		nzvc => 
	);


