library ieee;
use ieee.std_logic_1164.all;
--La entidad del banco de pruebas siempre va vacía
entity desplazador_4bits_tb is
end desplazador_4bits_tb;
architecture estructural of desplazador_4bits_tb is
--Componente que se va a probar
component desplazador_4bits
port (
    S: in std_logic_vector(1 downto 0);
    X: in std_logic_vector(3 downto 0);
    Y: out std_logic_vector(3 downto 0)
) ;
end component;
--Declara cables para los puertos del componente que se va a probar
signal cable_x: std_logic_vector(3 downto 0);
signal cable_y: std_logic_vector(3 downto 0);
signal cable_S: std_logic_vector(1 downto 0);
begin
--Conectamos los cables a los puertos del componente que se va a probar
moduloPrueba: desplazador_4bits
port map(
S => cable_S,
X => cable_x,
Y => cable_y
);
--Estimulamos las entradas del componente que se va a probar
estimulacion:
process begin
cable_S <= "00";
cable_x <= "1011";
wait for 1 ns;
cable_S <= "01";
cable_x <= "1101";
wait for 1 ns;
cable_S <= "10";
cable_x <= "1101";
wait for 1 ns;
cable_S <= "11";
cable_x <= "1101";
wait for 1 ns;
cable_S <= "10";
cable_x <= "1001";
wait for 1 ns;
end process;
end;
