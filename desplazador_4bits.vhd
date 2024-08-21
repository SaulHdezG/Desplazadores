library ieee;
use ieee.std_logic_1164.all;
entity desplazador_4bits is
port (
S: in std_logic_vector(1 downto 0);
X: in std_logic_vector(3 downto 0);
Y: out std_logic_vector(3 downto 0)
) ;
end desplazador_4bits;
architecture comportamental of desplazador_4bits is
begin
Y(0) <= (not S(0) and not S(1) and X(0)) or (not S(1) and S(0) and (X(3) and not X(3))) or (S(1) and not S(0) and X(1)) or (S(1) and S(0) and X(1));
Y(1) <=  (not S(0) and not S(1) and X(1)) or (not S(1) and S(0) and X(0)) or (S(1) and not S(0) and X(2)) or (S(1) and S(0) and X(2)) ;
Y(2) <= (not S(0) and not S(1) and X(2)) or (not S(1) and S(1) and X(1)) or (S(1) and not S(0) and X(3)) or (S(1) and S(0) and X(3));
Y(3) <= (not S(0) and  not S(1) and X(3))  or (not S(1) and S(0) and X(2)) or (S(1) and not S(0) and (X(3) and not X(3))) or (S(1) and S(0) and X(0))    ;

end comportamental;
