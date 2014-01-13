----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:57:03 01/13/2014 
-- Design Name: 
-- Module Name:    SelectorDisplay - Behavioral 
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

entity SelectorDisplay is
	
	PORT(
		CLK: in std_logic;
		notreset:in std_logic;
		dig_ctrl: out std_logic_vector(3 DOWNTO 0)

);
end SelectorDisplay;

architecture Behavioral of SelectorDisplay is

SIGNAL display : std_logic_vector(3 DOWNTO 0);
	begin
	
		PROCESS(notreset,CLK)
		begin
			IF notreset = '0' then
			display <= "0001";
			
			ELSIF CLK'event AND CLK='1' THEN
				CASE display IS
					WHEN "0001"=>
					display <= "0010";
					WHEN "0010"=>
					display <= "0001";
					WHEN OTHERS=>
					display <= "0001";
					END CASE;
				END IF;
		
		END PROCESS;
	dig_ctrl <= display;

end Behavioral;


