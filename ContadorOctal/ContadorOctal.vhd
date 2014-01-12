----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:32:05 12/23/2013 
-- Design Name: 
-- Module Name:    ContadorOctal - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ContadorOctal is
GENERIC(
 width: positive:=2 
 );
PORT(
	notreset: in std_logic;
	clk: in std_logic;
	load:in std_logic;
	cin:in std_logic;
	cout:out std_logic;
	din: in std_logic_vector(width DOWNTO 0);
	dout:out std_logic_vector(width DOWNTO 0)
	);
end ContadorOctal;


architecture Behavioral of ContadorOctal is
--Señal auxiliar de salida
signal dout_aux: std_logic_vector(width DOWNTO 0);
--Señal auxiliar para la suma

begin
PROCESS(clk,notreset)
--variable last_enable:std_logic;
BEGIN
--REVISAR TODAS LA COMILLAS
IF notreset ='0' THEN 
	dout_aux<=(OTHERS=>'0');
	cout<='0';
	
ELSIF clk'event AND clk='1'  THEN
	--Carga valor externo
	IF load='1' THEN

		dout_aux<=din;--Para que la primera vez no cuente 
		cout<='0';		
	ELSIF load='0' AND cin='1' THEN
		--Caso de acarreo
		IF dout_aux="111" THEN
		dout_aux<=(OTHERS=>'0');
		cout<='1';
		--Suma al siguiente valor
		ELSE
		dout_aux<=dout_aux + 1;
		cout<='0';
		
		END IF;
	END IF;
	
END IF;
	
	
	
END PROCESS;

dout<=dout_aux;
end Behavioral;

