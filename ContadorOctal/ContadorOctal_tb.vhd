-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY ContadorOctal_tb IS
  END ContadorOctal_tb;

  ARCHITECTURE behavioral OF ContadorOctal_tb IS 

  -- Component Declaration
          COMPONENT ContadorOctal
          PORT(
                  
		notreset:	IN std_logic;
		clk:		IN std_logic;
		load:		IN std_logic;
		cin:		IN std_logic;
		din:		IN std_logic_vector (2 DOWNTO 0);
--		marcha:	IN std_logic;
--		paro:		IN std_logic;
		dout:		OUT std_logic_vector (2 DOWNTO 0);
		cout:		OUT std_logic
                  );
          END COMPONENT;

			 --Inputs (Inicializamos los valores de las señales de entrada)
			 
			 SIGNAL reset_n:	std_logic:='0';
			 SIGNAL clk:	 	std_logic:='0';
			 SIGNAL load:	 	std_logic:='0';
			 SIGNAL cin:	 	std_logic:='0';
			 SIGNAL din:	 	std_logic_vector(2 DOWNTO 0):="010" ;
--			 SIGNAL marcha:	std_logic:='0';
--			 SIGNAL paro:	 	std_logic:='0';
			 
			 --Outputs
			 
			 SIGNAL dout:	 std_logic_vector (2 DOWNTO 0);
			 SIGNAL cout:	 std_logic; 
          

  BEGIN

  -- Component Instantiation
          uut: ContadorOctal
			 PORT MAP(
                  notreset	=> reset_n,
						clk	=> clk,
						load	=> load,
						cin	=> cin,
						din	=> din,
--						marcha	=> marcha,
--						paro	=> paro,
						dout	=> dout,
						cout	=> cout
          );

clk <= not clk AFTER 20 ns;

  --  Test Bench Statements
     tb : PROCESS
     BEGIN

        reset_n <= '1' after 25 ns;				--Mirar apuntes
		
		  cin <= '1' after 75 ns;
		  
		  load <= '1' after 400 ns,				--Creo debería estar siempre encendida
		  			 '0' after 450 ns;
--		  marcha	<=	'1' AFTER 50 ns;				--Marcha y paro para que se vean tienen que seguir flanco positivo de reloj o no hace falta?
--		  paro	<=	'1' AFTER 1000 ns;			--
		  
		  wait for 1000 ns;
		  
		  	assert false
		  	report "Fin de la simulación. "
		  	severity failure;
		  
     END PROCESS ;
  --  End Test Bench 

  END Behavioral;
