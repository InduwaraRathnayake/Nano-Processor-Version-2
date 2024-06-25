----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2024 10:20:12 PM
-- Design Name: 
-- Module Name: TB_PC - Behavioral
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

entity TB_PC is
--  Port ( );
end TB_PC;

architecture Behavioral of TB_PC is

component PC 
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Data_Bus: in STD_LOGIC_VECTOR (2 downto 0);
           Mem_Selector : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal  Reset : std_logic;
signal Data_Bus, Mem_Selector : std_logic_vector (2 downto 0);
signal Clk : std_logic := '0';
begin
UUT : PC port map (
        Clk => Clk,
        Reset => Reset,
        Data_Bus => Data_Bus,
        Mem_Selector => Mem_Selector
      );

process begin
    Clk <= not Clk;
    wait for 10 ns;
end process;

process begin
    Reset <= '1'; 
       
    Data_Bus <= "001";
    wait for 100 ns;
   
    Data_Bus <= "101";
    wait for 100 ns;
-----------------------------------------------------
    Reset <= '0';
        
    Data_Bus <= "001";
    wait for 100 ns;            

    Data_Bus <= "111";
    wait for 100 ns;
----------------------------------------------------   
    Reset <= '1'; 
       
    Data_Bus <= "001";
    wait for 100 ns;
   
    Data_Bus <= "101";
    wait for 100 ns;
-----------------------------------------------------
    Reset <= '0';
        
    Data_Bus <= "001";
    wait for 100 ns;            

    Data_Bus <= "111";
    wait for 100 ns;    
    
    Data_Bus <= "101";
    wait ;
end process;        
end Behavioral;
