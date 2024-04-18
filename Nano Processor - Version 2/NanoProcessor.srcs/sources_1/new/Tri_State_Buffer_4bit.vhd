----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2024 12:54:07 AM
-- Design Name: 
-- Module Name: Tri_State_Buffer_4bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Tri_State_Buffer_4bit is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           EN : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end Tri_State_Buffer_4bit;

architecture Behavioral of Tri_State_Buffer_4bit is

begin
  process (I,EN) begin
      if EN = '1' then
          Q <= I;
      else 
          Q <= "ZZZZ";
      end if;
    end process; 

end Behavioral;
