
-- VHDL Instantiation Created from source file mUX.vhd -- 14:39:03 04/10/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT mUX
	PORT(
		Dseu : IN std_logic_vector(31 downto 0);
		Rs2 : IN std_logic_vector(31 downto 0);
		imm : IN std_logic;          
		SalidaMUX : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_mUX: mUX PORT MAP(
		Dseu => ,
		Rs2 => ,
		imm => ,
		SalidaMUX => 
	);


