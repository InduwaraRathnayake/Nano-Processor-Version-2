----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2024 05:48:26 PM
-- Design Name: 
-- Module Name: MUX_8way_4bit - Behavioral
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

entity MUX_8way_4bit is
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
end MUX_8way_4bit;

architecture Behavioral of MUX_8way_4bit is

component MUX_8_to_1 
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;
signal MUX_D1, MUX_D2, MUX_D3, MUX_D4 : STD_LOGIC_VECTOR (7 downto 0);

begin
    MUX_D1(0) <= A1(0); 
    MUX_D1(1) <= A2(0); 
    MUX_D1(2) <= A3(0);
    MUX_D1(3) <= A4(0);
    MUX_D1(4) <= A5(0);
    MUX_D1(5) <= A6(0);
    MUX_D1(6) <= A7(0);
    MUX_D1(7) <= A8(0);
    
    MUX_D2(0) <= A1(1);
    MUX_D2(1) <= A2(1); 
    MUX_D2(2) <= A3(1);
    MUX_D2(3) <= A4(1);
    MUX_D2(4) <= A5(1);
    MUX_D2(5) <= A6(1);
    MUX_D2(6) <= A7(1);
    MUX_D2(7) <= A8(1);

    MUX_D3(0) <= A1(2);
    MUX_D3(1) <= A2(2); 
    MUX_D3(2) <= A3(2);
    MUX_D3(3) <= A4(2);
    MUX_D3(4) <= A5(2);
    MUX_D3(5) <= A6(2);
    MUX_D3(6) <= A7(2);
    MUX_D3(7) <= A8(2);
    
    MUX_D4(0) <= A1(3);  
    MUX_D4(1) <= A2(3);  
    MUX_D4(2) <= A3(3);
    MUX_D4(3) <= A4(3);
    MUX_D4(4) <= A5(3);
    MUX_D4(5) <= A6(3);
    MUX_D4(6) <= A7(3);
    MUX_D4(7) <= A8(3);            
    
    MUX_1 : MUX_8_to_1
        port map (
            S => Selector,
            D => MUX_D1,
            EN => '1',
            Y => Output(0)
         );
         
     MUX_2 : MUX_8_to_1
         port map (
             S => Selector,
             D => MUX_D2,
             EN => '1',
             Y => Output(1)
          );
                  
     MUX_3 : MUX_8_to_1
        port map (
            S => Selector,
            D => MUX_D3,
            EN => '1',
            Y => Output(2)
        );
                           
     MUX_4 : MUX_8_to_1
       port map (
            S => Selector,
            D => MUX_D4,
            EN => '1',
            Y => Output(3)
        );
            

end Behavioral;
