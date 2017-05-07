
-- VHDL Instantiation Created from source file pSR.vhd -- 19:03:22 05/04/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT pSR
	PORT(
		nzvc : IN std_logic_vector(3 downto 0);
		clk : IN std_logic;
		Rst : IN std_logic;
		ncwp : IN std_logic;          
		Carry : OUT std_logic;
		cwp : OUT std_logic
		);
	END COMPONENT;

	Inst_pSR: pSR PORT MAP(
		nzvc => ,
		clk => ,
		Rst => ,
		ncwp => ,
		Carry => ,
		cwp => 
	);


