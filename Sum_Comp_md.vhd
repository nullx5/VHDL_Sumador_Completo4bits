----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Juan León
-- 
-- Create Date:    11:10:58 05/29/2018 
-- Design Name: 
-- Module Name:    Sum_Comp_md - Behavioral 
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
-- Sumador Completo de 1 bit.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Sum_Comp_md is
	port(a_i, b_i, c_i: in std_logic;
			s_i, c_i_mas_1  : out std_logic);
end Sum_Comp_md;

architecture Behavioral of Sum_Comp_md is


begin
	
	s_i <= c_i xor (a_i xor b_i);
	c_i_mas_1 <= (a_i and b_i) or ((a_i xor b_i) and c_i);

end Behavioral;

