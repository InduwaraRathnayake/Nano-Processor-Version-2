----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2024 06:55:54 PM
-- Design Name: 
-- Module Name: TB_MUX_8way_4bit - Behavioral
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

entity TB_MUX_8way_4bit is
--  Port ( );
end TB_MUX_8way_4bit;

architecture Behavioral of TB_MUX_8way_4bit is

component MUX_8way_4bit 
    Port (
        A1 : in STD_LOGIC_VECTOR (3 downto 0);
        A2 : in STD_LOGIC_VECTOR (3 downto 0);
        A3 : in STD_LOGIC_VECTOR (3 downto 0);
        A4 : in STD_LOGIC_VECTOR (3 downto 0);
        A5 : in STD_LOGIC_VECTOR (3 downto 0);
        A6 : in STD_LOGIC_VECTOR (3 downto 0);
        A7 : in STD_LOGIC_VECTOR (3 downto 0);
        A8 : in STD_LOGIC_VECTOR (3 downto 0);
        Selector : in STD_LOGIC_VECTOR (2 downto 0);
        Output : out STD_LOGIC_VECTOR (3 downto 0)
        );
end component;

signal A1,A2,A3,A4,A5,A6,A7,A8,Output : std_logic_vector (3 downto 0);
signal Selector : std_logic_vector (2 downto 0);

begin
UUT : MUX_8way_4bit port map(
        A1 => A1,
        A2 => A2,
        A3 => A3,
        A4 => A4,
        A5 => A5,
        A6 => A6,
        A7 => A7,
        A8 => A8,
        Selector => Selector,
        Output => Output
        );

process begin
    A1 <= "1111";
    A2 <= "1011";
    A3 <= "1100";
    A4 <= "1110";
    A5 <= "0111";
    A6 <= "0011";
    A7 <= "1010";
    A8 <= "0000";
    
    Selector <= "111";
    wait for 100 ns;
    
    Selector <= "000";
    wait for 100 ns;
    
    Selector <= "101";
    wait for 100 ns;
    
    Selector <= "100";
    wait for 100 ns;
    
    Selector <= "001";
    wait for 100 ns;
    
    Selector <= "010";
    wait for 100 ns;
    
    Selector <= "110";
    wait for 100 ns;
    
    Selector <= "011";
    wait for 100 ns; 
    
end process;
end Behavioral;
