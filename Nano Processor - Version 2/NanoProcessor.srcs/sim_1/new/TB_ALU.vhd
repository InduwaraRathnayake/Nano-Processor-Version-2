----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2024 01:58:47 AM
-- Design Name: 
-- Module Name: TB_ALU - Behavioral
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

entity TB_ALU is
--  Port ( );
end TB_ALU;

architecture Behavioral of TB_ALU is

component ALU
    port ( 
          A : in std_logic_vector (3 downto 0);
          B : in std_logic_vector (3 downto 0);
          Flag_EN : in std_logic;
          Selector : in std_logic_vector (2 downto 0);
          Y : out std_logic_vector (3 downto 0);
          Flag_Reg : out STD_LOGIC_VECTOR (3 downto 0)
          );         
end component;

signal A, B, Y, Flag_Reg : STD_LOGIC_VECTOR (3 downto 0);
signal Selector : STD_LOGIC_VECTOR (2 downto 0);
signal Flag_EN : STD_LOGIC;

begin
    UUT : ALU
        port map(
           A => A, 
           B => B, 
           Flag_EN => Flag_EN,
           Selector => Selector, 
           Y => Y, 
           Flag_Reg => Flag_Reg
        );

process begin
    A <= "0001"; 
    B <= "0011"; 
    Flag_EN <= '1';
    
    Selector <= "000";
    wait for 100 ns;
    
    Selector <= "001";
    wait for 100 ns;
    
    Selector <= "010";
    wait for 100 ns;
    
    Selector <= "011";
    wait for 100 ns;
    
    Selector <= "100";
    wait for 100 ns;
    
    Selector <= "101";
    wait for 100 ns;
    
    Selector <= "110";
    wait for 100 ns; 
    
    Selector <= "111";
    wait for 100 ns;
    
    A <= "0011";
    Flag_EN <= '0';
    Selector <= "101";
    wait for 100 ns;
    
    Selector <= "110";
    wait for 100 ns; 
    
    Selector <= "111";
    wait;
    
end process;
                 
end Behavioral;
