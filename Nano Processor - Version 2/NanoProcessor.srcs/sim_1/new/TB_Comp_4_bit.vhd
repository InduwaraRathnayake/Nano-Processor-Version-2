----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2024 01:30:35 AM
-- Design Name: 
-- Module Name: TB_Comp_4_bit - Behavioral
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

entity TB_Comp_4_bit is
--  Port ( );
end TB_Comp_4_bit;

architecture Behavioral of TB_Comp_4_bit is

component Comp_4_bit is
    Port ( num1 : in STD_LOGIC_VECTOR(3 downto 0);
           num2 : in STD_LOGIC_VECTOR(3 downto 0);
           EN : in STD_LOGIC;
           equal : out STD_LOGIC;       --num1 = num2
           greater : out STD_LOGIC;     --num1 > num2
           lesser : out STD_LOGIC );    --num1 < num2 
end component;

SIGNAL num1, num2 : STD_LOGIC_VECTOR(3 downto 0);
SIGNAL EN, equal, greater, lesser : STD_LOGIC;

begin
    UUT : Comp_4_bit
        Port map ( num1 => num1,
           num2 => num2,
           EN => EN,
           equal => equal,
           greater => greater,
           lesser => lesser);
           
    process begin
        
        EN <= '1';
        num1 <= "0101";
        num2 <= "1010";
        wait for 100ns;
        
        num1 <= "1110";
        wait for 100ns;
        
        num2 <= "1111";
        wait for 100ns;
        
        num1 <= "0010";
        wait for 100ns;
        
        num2 <= "0011";
        wait for 100ns;
        
        num1 <= "0011";
        wait for 100ns;
        
        EN <= '0';
        num1 <= "0101";
        num2 <= "1010";
        wait for 100ns;
        
        num1 <= "1110";
        wait for 100ns;
        
        num2 <= "1111";
        wait for 100ns;
        
        num1 <= "0010";
        wait for 100ns;
        
        num2 <= "0011";
        wait for 100ns;
        
        num1 <= "0011";
        wait for 100ns;
        
        wait;
        
    end process;
end Behavioral;
