----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    	18:46:23 04/04/2017 
-- Design Name: 		Daniel Humberto Gallego Lopez
-- Module Name:    	IM - Behavioral 
-- Project Name: 		Procesador 2
-- Target Devices: 
-- Tool versions: 	2.7
-- Description: 		Instrucciones de Memoria
--
-- Dependencies: 
--
-- Revision: 			Advertencias
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;		--(Ofrece una mejor tipos de señal, Se utiliza al tener operaciones matematicas)
use IEEE.STD_LOGIC_UNSIGNED.ALL;	--(Proporciona cálculo numérico sin signo del tipo de std_logic_vector)
use std.textio.all;					--(Proporciona entrada / salida para 1164 tipos
												--Las funciones definidas incluyen: readline leer
												--WriteLine línea de fondo de escritura)

----------------------------------------------------------------------------------

entity iM is
    Port ( nPC : in  STD_LOGIC_VECTOR (31 downto 0);
			  Rst : in  STD_LOGIC;
           SalidaIM : out  STD_LOGIC_VECTOR (31 downto 0));
end iM;

architecture Behavioral of iM is

--variable que almacenara una matriz de 32*32
type rom_type is array (0 to 31) of std_logic_vector (31 downto 0);

	--funcion que devuelve los mismos resultados siempre y cuando se evalue con los mismos argumentos		
	impure function InitRomFromFile (RomFileName : in string) return rom_type is
		FILE RomFile : text open read_mode is RomFileName;		--Abre un archivo de tipo text en modo lectura
		variable RomFileLine : line;									--Variable para capturar cada linea del archivo abierto;
		variable temp_bv : bit_vector(31 downto 0);				--Variable que almacena bit a bit el valor de la fila;
		variable temp_mem : rom_type;									--variable que almacena todo el fichero en un array;
		begin
			for I in rom_type'range loop
				readline (RomFile, RomFileLine);						--leyendo cada linea del fichero
				read(RomFileLine, temp_bv);							--leyendo y capturando los bits de cada linea
				temp_mem(i) := to_stdlogicvector(temp_bv);
			end loop;
		return temp_mem;
	end function;
	signal instructions : rom_type := InitRomFromFile("InstrMem.txt");


begin

--reset,address, instructions)
	process(Rst, nPC)--clk)
	begin
		--if(rising_edge(clk))then
			if(Rst = '1')then
				SalidaIM <= (others=>'0');
			else
				SalidaIM <= instructions(conv_integer(nPC(5 downto 0)));
			end if;
	end process;

end Behavioral;

