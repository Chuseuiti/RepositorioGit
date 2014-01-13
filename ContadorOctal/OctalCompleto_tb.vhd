library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY OctalCompleto_tb IS
END OctalCompleto_tb;

ARCHITECTURE behavioral OF OctalCompleto_tb IS


COMPONENT OctalCompleto

PORT(
		NOTRESET : IN std_logic;
		CLK: IN std_logic;
		LOAD: IN std_logic;
		CIN: IN std_logic;
		DIN0: IN std_logic_vector(2 DOWNTO 0);
		DIN1: IN std_logic_vector(2 DOWNTO 0);
		COUT: OUT std_logic;
		DOUT0: OUT std_logic_vector(2 DOWNTO 0);
		DOUT1: OUT std_logic_vector(2 DOWNTO 0)
		
);
END COMPONENT;
--Inputs

          SIGNAL not_reset:	std_logic:='0';
			 SIGNAL clk:	 	std_logic:='0';
			 SIGNAL load:	 	std_logic:='0';
			 SIGNAL cin:	 	std_logic:='0';
			 SIGNAL din0:	 	std_logic_vector(2 DOWNTO 0):="100" ;
			 SIGNAL din1:	 	std_logic_vector(2 DOWNTO 0):="001" ;
--Outputs

SIGNAL COUT: std_logic:='0';
SIGNAL CUENTA0, CUENTA1, DOUT0, DOUT1: std_logic_vector(2 DOWNTO 0):="000";


BEGIN

uut: OctalCompleto 

PORT MAP(

NOTRESET => NOT_RESET ,
CLK => CLK ,
LOAD => LOAD,
CIN => CIN,
DIN0 => DIN0,
DIN1 => DIN1,
COUT => COUT,
DOUT0 => DOUT0,
DOUT1 => DOUT1

);
--Reloj del sistema
clk <= not clk AFTER 20 ns;

PROCESS
BEGIN
--Reset activado
NOT_RESET<='0';
wait for 20ns;
--COMPROBACION DE RESET
ASSERT (DOUT0="000" AND DOUT1="000")
REPORT "ERROR EN EL RESET"
SEVERITY WARNING;

NOT_RESET<='1';

--Puesta en marcha de la cuenta
wait for 20ns;
CIN<='1';

--Tiempo de espera antes de Activación de la carga
wait for 100ns;
--Activación de la carga
LOAD<='1';
wait for 40ns;
LOAD<='0';
wait for 10ns;
-- COMPRUEBO LOAD
ASSERT DOUT0=DIN0 AND DOUT1=DIN1
REPORT "ERROR EN EL LOAD"
SEVERITY FAILURE;

--PRUEBA CONTAR


--CUENTA0<="100";
--CUENTA1<="010";

--FOR i IN 1 TO 23 LOOP

	--IF DOUT0=CUENTA0 AND DOUT0="111" THEN --OPERACION DE ACARREO

		--	ASSERT COUT=1 --COMPROBACION DE LA ACTIVACION DEL ACARREO
			--REPORT "ERROR EN EL ACARREO"
			--SEVERITY FAILURE;
			
			--CUENTA0<=(OTHERS=>'0');
			
			--CUENTA1<=CUENTA1+1;


			--ASSERT DOUT1=CUENTA1 AND DOUT0=CUENTA0
			--REPORT "ERROR EN LA CUENTA"
			--SEVERITY FAILURE;
			
--	ELSE --OPERACION DE SUMA COMUN
	
	--		CUENTA0<=CUENTA0+1;

		--	CLK<='0';

			--WAIT FOR CLK_PERIOD;
			
			--CLK<='1';

			--WAIT FOR DELAY;

			--ASSERT DOUT0=CUENTA0
			--REPORT "ERROR EN LA CUENTA"
			--SEVERITY FAILURE;

--END IF;
--END LOOP;

 
--ASSERT FALSE
--REPORT "OK"
--SEVERITY FAILURE;

 wait for 1000 ns;
		  
		  	assert false
		  	report "Fin de la simulación. "
		  	severity failure;
			
END PROCESS;

END BEHAVIORAL;