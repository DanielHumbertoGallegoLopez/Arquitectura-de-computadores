----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    	13:42:47 04/10/2017 
-- Design Name: 		Daniel Humberto Gallego Lopez
-- Module Name:    	procesadorUnion - Behavioral 
-- Project Name: 		Procesador 2
-- Target Devices: 
-- Tool versions: 	2.2
-- Description: 		Union de los modulos para tener el procesador
--
-- Dependencies: 
--
-- Revision: 			Acierto
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------------------------------

entity procesadorUnion is
    Port ( Rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           SalidaProcesador : out  STD_LOGIC_VECTOR (31 downto 0));
end procesadorUnion;

architecture Behavioral of procesadorUnion is

COMPONENT sumador
	PORT(
		Num1 : IN std_logic_vector(31 downto 0);
		Num2 : IN std_logic_vector(31 downto 0);          
		SalidaSuma : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT nPC
	PORT(
		Din : IN std_logic_vector(31 downto 0);
		Rst : IN std_logic;
		clk : IN std_logic;          
		Dout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	COMPONENT iM
	PORT(
		nPC : IN std_logic_vector(31 downto 0);
		Rst : IN std_logic;          
		SalidaIM : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT uC
	PORT(
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);          
		AluOp : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
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
	
	COMPONENT sEU
	PORT(
		imm13 : IN std_logic_vector(12 downto 0);          
		SalidaSEU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT mUX
	PORT(
		Dseu : IN std_logic_vector(31 downto 0);
		Rs2 : IN std_logic_vector(31 downto 0);
		imm : IN std_logic;          
		SalidaMUX : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT aLU
	PORT(
		Rs1 : IN std_logic_vector(31 downto 0);
		Dmux : IN std_logic_vector(31 downto 0);
		AluOp : IN std_logic_vector(5 downto 0);          
		SalidALU : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

signal sumadorTonPC,nPCToiM,iMTouCrFsEU,rFDWRToAluResultado,rFToaLURs1,rFTomUXRs2,sEUTomUX,mUXToaLU: std_logic_vector(31 downto 0);
signal aluOp1: STD_LOGIC_VECTOR (5 downto 0);

begin

	Inst_sumador: sumador PORT MAP(
		Num1 => x"00000001",
		Num2 => nPCToiM,
		SalidaSuma => sumadorTonPC 
	);
	
	Inst_nPC: nPC PORT MAP(
		Din => sumadorTonPC,
		Rst => Rst,
		clk => clk,
		Dout => nPCToiM
	);
	
	Inst_iM: iM PORT MAP(
		nPC => nPCToiM,
		Rst => Rst,
		SalidaIM => iMTouCrFsEU 
	);
	
	Inst_uC: uC PORT MAP(
		op => iMTouCrFsEU(31 downto 30),
		op3 => iMTouCrFsEU(24 downto 19),
		AluOp => aluOp1 
	);
	
	Inst_registerFile: registerFile PORT MAP(
		Rs1 => iMTouCrFsEU(18 downto 14),
		Rs2 => iMTouCrFsEU(4 downto 0),
		Rd => iMTouCrFsEU(29 downto 25),
		Rst => Rst,
		DWR => rFDWRToAluResultado,
		CRs1 => rFToaLURs1,
		CRs2 => rFTomUXRs2
	);
	
	Inst_sEU: sEU PORT MAP(
		imm13 => iMTouCrFsEU(12 downto 0),
		SalidaSEU => sEUTomUX
	);
	
	Inst_mUX: mUX PORT MAP(
		Dseu => sEUTomUX,
		Rs2 => rFTomUXRs2,
		imm => iMTouCrFsEU(13),
		SalidaMUX => mUXToaLU
	);
	
	Inst_aLU: aLU PORT MAP(
		Rs1 => rFToaLURs1,
		Dmux => mUXToaLU,
		AluOp => aluOp1 ,
		SalidALU => rFDWRToAluResultado
	);

SalidaProcesador <= rFDWRToAluResultado;

end Behavioral;

