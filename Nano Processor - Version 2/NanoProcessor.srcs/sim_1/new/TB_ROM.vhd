----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2024 11:21:20 PM
-- Design Name: 
-- Module Name: TB_ROM - Behavioral
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

entity TB_ROM is
--  Port ( );
end TB_ROM;

architecture Behavioral of TB_ROM is

component ROM 
    Port ( address : in STD_LOGIC_VECTOR (2 downto 0);
           data : out STD_LOGIC_VECTOR (11 downto 0));
end component;

signal data:std_logic_vector(11 downto 0);
signal address:std_logic_vector(2 downto 0);

begin
    UUT: ROM
        PORT MAP(
        address=>address,
        data=>data
    );

process begin

    address<="000";
    wait for 100ns;

    address<="001";
    wait for 100ns;
    
    address<="010";
    wait for 100ns;
    
    address<="011";
    wait for 100ns;
    
    address<="100";
    wait for 100ns;
    
    address<="101";
    wait for 100ns;  
    
    address<="110";
    wait for 100ns;      
      
    address<="111";       
    wait ;

end process;
end Behavioral;
