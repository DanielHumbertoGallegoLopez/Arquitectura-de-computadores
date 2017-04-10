
-- VHDL Instantiation Created from source file sEU.vhd -- 14:37:07 04/10/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT sEU
	PORT(
		imm13 : IN std_logic_vector(12 downto 0);          
		SalidaSEU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_sEU: sEU PORT MAP(
		imm13 => ,
		SalidaSEU => 
	);


