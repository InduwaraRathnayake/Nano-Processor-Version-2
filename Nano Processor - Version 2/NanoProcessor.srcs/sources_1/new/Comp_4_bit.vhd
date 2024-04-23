----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2024 12:02:16 AM
-- Design Name: 
-- Module Name: Comp_4_bit - Behavioral
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

entity Comp_4_bit is
    Port ( num1 : in STD_LOGIC_VECTOR(3 downto 0);
           num2 : in STD_LOGIC_VECTOR(3 downto 0);
           EN : in STD_LOGIC;
           equal : out STD_LOGIC;       --num1 = num2
           greater : out STD_LOGIC;     --num1 > num2
           lesser : out STD_LOGIC );    --num1 < num2 
end Comp_4_bit;

architecture Behavioral of Comp_4_bit is

component Comp_1_bit is
        Port ( num1 : in STD_LOGIC;
               num2 : in STD_LOGIC;
               EN : in STD_LOGIC;
               equal : out STD_LOGIC;
               greater : out STD_LOGIC;     
               lesser : out STD_LOGIC );       
end component;

SIGNAL E_3,G_3,L_3,E_2,G_2,L_2,E_1,G_1,L_1,E_0,G_0,L_0 : STD_LOGIC;

begin

    Comp_1_bit_MSB : Comp_1_bit 
        Port map( num1 => num1(3),
               num2 => num2(3),
               EN => EN, 
               equal => E_3,
               greater => G_3,     
               lesser => L_3 );
           
    Comp_1_bit_2 : Comp_1_bit 
       Port map( num1 => num1(2),
              num2 => num2(2),
              EN => E_3, 
              equal => E_2,
              greater => G_2,     
              lesser => L_2 );
              
    Comp_1_bit_1 : Comp_1_bit 
      Port map( num1 => num1(1),
             num2 => num2(1),
             EN => E_2, 
             equal => E_1,
             greater => G_1,     
             lesser => L_1 );    
             
    Comp_1_bit_LSB : Comp_1_bit 
     Port map( num1 => num1(0),
            num2 => num2(0),
            EN => E_1, 
            equal => E_0,
            greater => G_0,     
            lesser => L_0 );        
               
    equal <= E_0;
    greater <= G_3 OR G_2 OR G_1 OR G_0;
    lesser <= L_3 OR L_2 OR L_1 OR L_0;

end Behavioral;
