----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2024 01:32:12 PM
-- Design Name: 
-- Module Name: TB_MUX_2way_3bit - Behavioral
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

entity TB_MUX_2way_3bit is
--  Port ( );
end TB_MUX_2way_3bit;

architecture Behavioral of TB_MUX_2way_3bit is

component MUX_2way_3bit 
    Port ( A1 : in STD_LOGIC_VECTOR (2 downto 0);
           A2 : in STD_LOGIC_VECTOR (2 downto 0);
           Selector : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal A1, A2, Output : std_logic_vector (2 downto 0);
signal Selector : std_logic;

begin
UUT : MUX_2way_3bit port map(
        A1 => A1,
        A2 => A2,
        Selector => Selector,
        Output => Output
     );
     
process begin 
    A1 <= "001";
    A2 <= "111";
--    Selector <= '0';
    wait for 100 ns;   

    A1 <= "001";
    A2 <= "111";
    Selector <= 'U';
    wait for 100 ns;   

    A1 <= "110";
    A2 <= "010";
    Selector <= '0';
    wait for 100 ns;
    
    A1 <= "101";
    A2 <= "111";
    Selector <= 'Z';
    wait for 100 ns;   

    A1 <= "001";
    A2 <= "111";
    Selector <= '0';
    wait for 100 ns;        

    A1 <= "011";
    A2 <= "000";
    Selector <= '1';
    wait for 100 ns;   
 
end process;

end Behavioral;
