----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Juan León
-- 
-- Create Date:    16:38:55 05/29/2018 
-- Design Name: 
-- Module Name:    Sum_Comp_md4Bits - Behavioral 
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
-- Sumador Completo de 4 bits de alto nivel bloque principal, descripción estructural.  
-- Se utiliza for ... generate, para generar instancias para 4 sumadores completos de 1 bit,
-- para No repetir codigo.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Inicio  entidad
entity Sum_Comp_md4Bits is
	port( a, b: in std_logic_vector(3 downto 0); -- Entradas
				s: out std_logic_vector(3 downto 0); -- Salida
			c_out: out std_logic);                 -- Acarreo de Salida
				

end Sum_Comp_md4Bits;
-- Fin entidad

-- Inicio arquitectura
architecture structural of Sum_Comp_md4Bits is

-- Inicio Señales
	signal c: std_logic_vector(4 downto 0);     -- Acarreos internos
-- Fin Señales

-- Inicio Component
component Sum_Comp_md
	port(
		a_i : in std_logic;
		b_i : in std_logic;
		c_i : in std_logic;          
		s_i : out std_logic;
		c_i_mas_1 : out std_logic);
	end component;
-- Fin Component

begin

c(0) <= '0';                                   --Acarreo inicial en cero
c_out <= c(4);                                 --Acarreo final en c(4)

GenSum : for i in 0 to 3 generate
	Inst_Sum_Comp_md: Sum_Comp_md 
	port map(
		a_i => a(i),
		b_i => b(i),
		c_i => c(i),
		s_i => s(i),
		c_i_mas_1 => c(i +1));
end generate GenSum;


end structural;
-- Fin arquitectura.

