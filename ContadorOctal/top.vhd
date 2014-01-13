----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:05:47 12/23/2013 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
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
	segment0 : out  STD_LOGIC_VECTOR (6 downto 0);
	segment1 : out  STD_LOGIC_VECTOR (6 downto 0);
	dout0:out std_logic_vector(width DOWNTO 0);
	dout1:out std_logic_vector(width DOWNTO 0)
	);
end top;

architecture Behavioral of top is
--Componente OctalCompleto
COMPONENT OctalCompleto
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
END COMPONENT;
--Componente Decodificador
COMPONENT decoder
PORT (
code : IN std_logic_vector(2 DOWNTO 0);
led : OUT std_logic_vector(6 DOWNTO 0)
);
END COMPONENT;
--SEÑALES
signal dout0_aux:std_logic_vector(width DOWNTO 0);
signal dout1_aux:std_logic_vector(width DOWNTO 0);

begin

Inst_OctalCompleto: OctalCompleto 
PORT MAP(
    notreset=> notreset,
    clk=> clk,
    load=> load,
    cin=> cin,
    cout=> cout,
    din0=> din0,
	 din1=> din1,
	 dout0=>dout0_aux,
    dout1=>dout1_aux
    );
Inst_Decoder0: decoder 
PORT MAP(
    code=>dout0_aux,
	 led=>segment0
    );
Inst_Decoder1: decoder 
PORT MAP(
    code=>dout1_aux,
	 led=>segment1
    );
end Behavioral;

