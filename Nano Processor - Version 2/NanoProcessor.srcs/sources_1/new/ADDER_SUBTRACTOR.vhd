----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2024 07:24:18 PM
-- Design Name: 
-- Module Name: ADDER_SUBTRACTOR - Behavioral
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

entity ADDER_SUBTRACTOR is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           M : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Flag_Reg : out STD_LOGIC_VECTOR (3 downto 0));           
end ADDER_SUBTRACTOR;

architecture Behavioral of ADDER_SUBTRACTOR is

component FA 
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);
end component;
signal BM, OutSum : std_logic_vector(3 downto 0);
signal C1,C2,C3,C4, OverFlow : std_logic;


begin
 
    BM(0) <= B(0) XOR M;
    BM(1) <= B(1) XOR M;
    BM(2) <= B(2) XOR M;
    BM(3) <= B(3) XOR M;

    FA_0 : FA
        port map(
            A => A(0),
            B => BM(0),
            C_in => M,
            S => OutSum(0),
            C_out => C1
        );
        
    FA_1 : FA
        port map(
            A => A(1),
            B => BM(1),
            C_in => C1,
            S => OutSum(1),
            C_out => C2
        );
        
    FA_2 : FA
        port map(
            A => A(2),
            B => BM(2),
            C_in => C2,
            S => OutSum(2),
            C_out => C3
        );
        
    FA_3 : FA
        port map(
            A => A(3),
            B => BM(3),
            C_in => C3,
            S => OutSum(3),
            C_out => C4
        );
        
        S <= OutSum ;                          
        OverFlow <= C4 XOR C3;
    
--      Sign_Flag <= OutSum(3);           -- OutSum(3) AND NOT(OverFlow);
    
        Flag_Reg(0) <= C4;                                                                          --C
        Flag_Reg(1) <= OverFlow;                                                                    --O
        Flag_Reg(2) <= NOT (OutSum(0) OR OutSum(1) OR OutSum(2) OR OutSum(3));                      --Z
        Flag_Reg(3) <= OutSum(3);                                                                   --S
     
end Behavioral;
