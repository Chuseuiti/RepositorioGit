----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:32:37 12/23/2013 
-- Design Name: 
-- Module Name:    OctalCompleto - Behavioral 
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

entity OctalCompleto is
GENERIC(
 width: positive:=2
 );
PORT( 
	notreset: in std_logic;
	clk: in std_logic;
	load:in std_logic;
	cin:in std_logic;
	cout:out std_logic;
	din0: in std_logic_vector(width DOWNTO 0);
	din1: in std_logic_vector(width DOWNTO 0);
	dout0:out std_logic_vector(width DOWNTO 0);
	dout1:out std_logic_vector(width DOWNTO 0)
	);
end OctalCompleto;

architecture Behavioral of OctalCompleto is

COMPONENT ContadorOctal
PORT(
	notreset: in std_logic;
	clk: in std_logic;
	load:in std_logic;
	cin:in std_logic;
	cout:out std_logic;
	din: in std_logic_vector(width DOWNTO 0);
	dout:out std_logic_vector(width DOWNTO 0)
	);
END COMPONENT;


signal dout1_aux:std_logic_vector(width DOWNTO 0);
signal notreset0:std_logic;
signal notreset1:std_logic;
signal cin_intermedio0:std_logic;
signal cin_intermedio1:std_logic;--En principio no es necesaria

BEGIN
--Con dout1 si supera 2 le debe cargar un reset 0 y que vuelva a contar desde 0 el segundo contador. 
--Logica funcionamiento reset negado
PROCESS(dout1_aux,notreset)
BEGIN
	IF dout1_aux="011" THEN
	notreset1<='0';
	notreset0<='1';
	ELSE
	notreset0<=notreset;
	notreset1<=notreset;
	END IF;
END PROCESS;
dout1<=dout1_aux;

-- Instantiate the module
Inst_ContadorOctal0: ContadorOctal PORT MAP(
    notreset=> notreset0,
    clk=> clk,
    load=> load,
    cin=> cin,
    cout=> cin_intermedio0,
    din=> din0,
    dout=>dout0
    );
-- Instantiate the module
Inst_ContadorOctal1: ContadorOctal PORT MAP(
    notreset=> notreset1,
    clk=> clk,
    load=>load,
    cin=> cin_intermedio0,
    cout=>cout ,
    din=> din1,
    dout=>dout1_aux
    );



end Behavioral;

