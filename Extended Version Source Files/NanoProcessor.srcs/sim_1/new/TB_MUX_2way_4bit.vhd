----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2024 12:04:42 AM
-- Design Name: 
-- Module Name: TB_MUX_2way_4bit - Behavioral
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

entity TB_MUX_2way_4bit is
--  Port ( );
end TB_MUX_2way_4bit;

architecture Behavioral of TB_MUX_2way_4bit is

component Mux_2way_4bit 
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Selector : in STD_LOGIC;
           Mux_out : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal A,B,Mux_out:std_logic_vector(3 downto 0);
signal Selector: std_logic;

begin
    UUT:Mux_2way_4bit
        PORT MAP(
        A=>A,
        B=>B,
        Mux_out=>Mux_out,
        Selector=>Selector
    );

process begin

    A<="0000";
    B<="0001";
    Selector<='0';    
    wait for 100ns;
    
    Selector<='1';    
    wait for 100ns;
    
    A<="0010";
    B<="0011";
    Selector<='0';    
    wait for 100ns;
    
    Selector<='1';    
    wait for 100ns;
    
    wait;
end process;

end Behavioral;

