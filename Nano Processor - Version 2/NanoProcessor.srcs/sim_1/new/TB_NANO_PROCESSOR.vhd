----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2024 01:09:11 PM
-- Design Name: 
-- Module Name: TB_NANO_PROCESSOR - Behavioral
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

entity TB_NANO_PROCESSOR is
--  Port ( );
end TB_NANO_PROCESSOR;

architecture Behavioral of TB_NANO_PROCESSOR is

component NANO_PROCESSOR
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Display : out STD_LOGIC_VECTOR (3 downto 0);
--           Zero_Flag : out STD_LOGIC;
--           Carry_Flag : out STD_LOGIC);
           Flags : out STD_LOGIC_VECTOR( 3 downto 0));
end component;

--signal Reset, Zero_Flag, Carry_Flag : std_logic;
signal Reset : std_logic;
signal Flags : std_logic_vector (3 downto 0);
signal Display : std_logic_vector (3 downto 0);
signal Clk : std_logic := '1'; 

begin
    UUT : NANO_PROCESSOR 
        port map (
            Clk => Clk,
            Reset => Reset,
            Display => Display,
--            Zero_Flag => Zero_Flag,
--            Carry_Flag => Carry_Flag);
            Flags => Flags);
            
    process begin 
        Clk <= not Clk; 
        wait for 25 ns;        
    end process; 
    
    process begin
        Reset <= '1';
        wait for 350 ns;
        
        Reset <= '0';
        wait for 2000 ns;
        
        Reset <= '1';
        wait;
        
     end process;
end Behavioral;
