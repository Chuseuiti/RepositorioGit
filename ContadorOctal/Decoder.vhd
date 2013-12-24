----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:24:27 11/07/2013 
-- Design Name: 
-- Module Name:    ejercicio1 - Behavioral 
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY decoder IS

PORT (
code : IN std_logic_vector(2 DOWNTO 0);
led : OUT std_logic_vector(6 DOWNTO 0)
);

END ENTITY decoder;

ARCHITECTURE dataflow OF decoder IS

BEGIN

WITH code SELECT

led <="0000001" WHEN "000",
		"1001111" WHEN "001",
		"0010010" WHEN "010",
		"0000110" WHEN "011",
		"1001100" WHEN "100",
		"0100100" WHEN "101",
		"0100000" WHEN "110",
		"0001111" WHEN "111",
		"1111110" WHEN others;

END ARCHITECTURE dataflow;
