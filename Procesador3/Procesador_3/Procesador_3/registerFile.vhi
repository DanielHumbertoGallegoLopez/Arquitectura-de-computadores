
-- VHDL Instantiation Created from source file registerFile.vhd -- 14:27:37 04/10/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT registerFile
	PORT(
		Rs1 : IN std_logic_vector(4 downto 0);
		Rs2 : IN std_logic_vector(4 downto 0);
		Rd : IN std_logic_vector(4 downto 0);
		Rst : IN std_logic;
		DWR : IN std_logic_vector(31 downto 0);          
		CRs1 : OUT std_logic_vector(31 downto 0);
		CRs2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_registerFile: registerFile PORT MAP(
		Rs1 => ,
		Rs2 => ,
		Rd => ,
		Rst => ,
		DWR => ,
		CRs1 => ,
		CRs2 => 
	);


