----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2024 11:36:22 PM
-- Design Name: 
-- Module Name: Comp_2_bit - Behavioral
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

entity Comp_2_bit is
    Port ( num1 : in STD_LOGIC_VECTOR(1 downto 0);
           num2 : in STD_LOGIC_VECTOR(1 downto 0);
           EN : in STD_LOGIC;
           equal : out STD_LOGIC;       --num1 = num2
           greater : out STD_LOGIC;     --num1 > num2
           lesser : out STD_LOGIC );    --num1 < num2 
end Comp_2_bit;

architecture Behavioral of Comp_2_bit is

component Comp_1_bit is
        Port ( num1 : in STD_LOGIC;
               num2 : in STD_LOGIC;
               EN : in STD_LOGIC;
               equal : out STD_LOGIC;
               greater : out STD_LOGIC;     
               lesser : out STD_LOGIC );       
end component;
SIGNAL E_1,G_1,L_1,E_0,G_0,L_0 : STD_LOGIC;
begin
    Comp_1_bit_MSB : Comp_1_bit 
        Port map( num1 => num1(1),
               num2 => num2(1),
               EN => EN, 
               equal => E_1,
               greater => G_1,     
               lesser => L_1 );
           
    Comp_1_bit_LSB : Comp_1_bit 
        Port map( num1 => num1(0),
               num2 => num2(0),
               EN => E_1,     --activates the 2nd comparator only if the MSBs are equal,
               equal => E_0,
               greater => G_0,     
               lesser => L_0 );
               
   equal <= E_0;
   greater <= G_1 OR G_0;
   lesser <= L_1 OR L_0;



end Behavioral;
