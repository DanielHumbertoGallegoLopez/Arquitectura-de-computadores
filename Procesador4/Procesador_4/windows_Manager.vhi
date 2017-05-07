
-- VHDL Instantiation Created from source file windows_Manager.vhd -- 18:52:03 05/04/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT windows_Manager
	PORT(
		Rs1 : IN std_logic_vector(4 downto 0);
		Rs2 : IN std_logic_vector(4 downto 0);
		Rd : IN std_logic_vector(4 downto 0);
		Op : IN std_logic_vector(1 downto 0);
		Op3 : IN std_logic_vector(5 downto 0);
		cwp : IN std_logic;          
		ncwp : OUT std_logic;
		SalidaRs1 : OUT std_logic_vector(5 downto 0);
		SalidaRs2 : OUT std_logic_vector(5 downto 0);
		SalidaRd : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_windows_Manager: windows_Manager PORT MAP(
		Rs1 => ,
		Rs2 => ,
		Rd => ,
		Op => ,
		Op3 => ,
		cwp => ,
		ncwp => ,
		SalidaRs1 => ,
		SalidaRs2 => ,
		SalidaRd => 
	);


