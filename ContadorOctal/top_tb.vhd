--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:24:07 01/13/2014
-- Design Name:   
-- Module Name:   C:/Users/Jesus/Documents/GitHub/RepositorioGit/ContadorOctal/top_tb.vhd
-- Project Name:  ContadorOctal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
 LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY top_tb IS
END top_tb;
 
ARCHITECTURE behavior OF top_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         notreset : IN  std_logic;
         clk : IN  std_logic;
			clk1:IN 	std_logic;
         load : IN  std_logic;
         cin : IN  std_logic;
         cout : OUT  std_logic;
         din0 : IN  std_logic_vector(2 downto 0);
         din1 : IN  std_logic_vector(2 downto 0);
         segment : OUT  std_logic_vector(6 downto 0);
         dout0 : OUT  std_logic_vector(2 downto 0);
         dout1 : OUT  std_logic_vector(2 downto 0);
         digit : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal notreset : std_logic := '0';
   signal clk : std_logic := '0';
	signal clk1 : std_logic := '0';
   signal load : std_logic := '0';
   signal cin : std_logic := '0';
   signal din0 : std_logic_vector(2 downto 0) :="100";
   signal din1 : std_logic_vector(2 downto 0) :="010";

 	--Outputs
   signal cout : std_logic;
   signal segment : std_logic_vector(6 downto 0);
   signal dout0 : std_logic_vector(2 downto 0);
   signal dout1 : std_logic_vector(2 downto 0);
   signal digit : std_logic_vector(3 downto 0);

   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          notreset => notreset,
          clk => clk,
			 clk1 => clk1,
          load => load,
          cin => cin,
          cout => cout,
          din0 => din0,
          din1 => din1,
          segment => segment,
          dout0 => dout0,
          dout1 => dout1,
          digit => digit
        );

  

--Reloj del sistema
clk <= not clk AFTER 20 ns;
clk1 <= not clk1 AFTER 10 ns;
PROCESS
BEGIN
--Reset activado
NOTRESET<='0';
wait for 20ns;
--COMPROBACION DE RESET
ASSERT (DOUT0="000" AND DOUT1="000")
REPORT "ERROR EN EL RESET"
SEVERITY WARNING;

NOTRESET<='1';

--Puesta en marcha de la cuenta
wait for 40ns;
CIN<='1';

--Tiempo de espera antes de Activación de la carga
wait for 100ns;
--Activación de la carga
LOAD<='1';
wait for 40ns;
LOAD<='0';
wait for 10ns;
 --COMPRUEBO LOAD
ASSERT DOUT0=DIN0 AND DOUT1=DIN1
REPORT "ERROR EN EL LOAD"
SEVERITY FAILURE;


wait for 1000 ns;
		  
		  	assert false
		  	report "Fin de la simulación. "
		  	severity failure;
			
END PROCESS;


END;