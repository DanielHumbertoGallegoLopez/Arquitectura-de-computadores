
-- VHDL Instantiation Created from source file iM.vhd -- 14:05:52 04/10/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT iM
	PORT(
		nPC : IN std_logic_vector(31 downto 0);
		Rst : IN std_logic;          
		SalidaIM : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_iM: iM PORT MAP(
		nPC => ,
		Rst => ,
		SalidaIM => 
	);


