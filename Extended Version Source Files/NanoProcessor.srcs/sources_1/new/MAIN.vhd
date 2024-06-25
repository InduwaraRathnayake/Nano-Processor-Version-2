----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2024 12:44:18 PM
-- Design Name: 
-- Module Name: MAIN - Behavioral
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

entity MAIN is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Dis_LED : out STD_LOGIC_VECTOR (3 downto 0);
           Dis_7Seg : out STD_LOGIC_VECTOR (6 downto 0);
           Flags : out STD_LOGIC_VECTOR (3 downto 0);
           Comparator_out : out STD_LOGIC_VECTOR (2 downto 0);
           AnodeSelector : out STD_LOGIC_VECTOR (3 downto 0)
          );
end MAIN;

architecture Behavioral of MAIN is

component NANO_PROCESSOR is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Display : out STD_LOGIC_VECTOR (3 downto 0);
           Flags : out STD_LOGIC_VECTOR( 3 downto 0);
           Comp_equal : out STD_LOGIC;      
           Comp_greater : out STD_LOGIC;     
           Comp_lesser : out STD_LOGIC);
end component;

component LUT_16_7 is
    Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
           data : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component Slow_Clk 
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end component;

signal Display_out : STD_LOGIC_VECTOR (3 downto 0);
signal SlowClk_out : std_logic;

begin
    Slow_Clock : Slow_Clk
        Port map(
            Clk_in => Clk,
            Clk_out => SlowClk_out
         );
         
    NanoProcessor : NANO_PROCESSOR
         PORT MAP(
             Clk => SlowClk_out,
             Reset => Reset,
             Display => Display_out,
             Flags => Flags,
             Comp_equal => Comparator_out(0),     
             Comp_greater => Comparator_out(1),     
             Comp_lesser => Comparator_out(2)             
          );
              
          
    LUT : LUT_16_7
        port map(
            address => Display_out, 
            data => Dis_7Seg
         );
   
   Dis_LED <= Display_out;
   AnodeSelector <= "1110";

end Behavioral;
