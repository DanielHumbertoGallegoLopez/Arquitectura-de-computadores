
-- VHDL Instantiation Created from source file aLU.vhd -- 14:44:30 04/10/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT aLU
	PORT(
		Rs1 : IN std_logic_vector(31 downto 0);
		Dmux : IN std_logic_vector(31 downto 0);
		AluOp : IN std_logic_vector(5 downto 0);          
		SalidALU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_aLU: aLU PORT MAP(
		Rs1 => ,
		Dmux => ,
		AluOp => ,
		SalidALU => 
	);


