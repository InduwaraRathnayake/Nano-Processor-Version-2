----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2024 12:57:05 AM
-- Design Name: 
-- Module Name: MUX_4way_4bit - Behavioral
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

entity MUX_4way_4bit is
    Port (
       A1 : in STD_LOGIC_VECTOR (3 downto 0);
       A2 : in STD_LOGIC_VECTOR (3 downto 0);
       A3 : in STD_LOGIC_VECTOR (3 downto 0);
       A4 : in STD_LOGIC_VECTOR (3 downto 0);      
       Selector : in STD_LOGIC_VECTOR (1 downto 0);
       Output : out STD_LOGIC_VECTOR (3 downto 0));
end MUX_4way_4bit;

architecture Behavioral of MUX_4way_4bit is

component Tri_State_Buffer_4bit 
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           EN : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Decoder_2_to_4 
    Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal enable_signals : std_logic_vector (3 downto 0);
begin
    Decoder : Decoder_2_to_4
        port map(
            I => Selector,
            EN => '1',
            Y => enable_signals
        );
        
    buffer_0: Tri_State_Buffer_4bit
        port map (
            I => A1,
            EN => enable_signals(0),
            Q => Output
        );

    buffer_1: Tri_State_Buffer_4bit
        port map (
            I => A2,
            EN => enable_signals(1),
            Q => Output
        );
        
    buffer_2: Tri_State_Buffer_4bit
        port map (
            I => A3,
            EN => enable_signals(2),
            Q => Output
        );
            
    buffer_3: Tri_State_Buffer_4bit
        port map (
            I => A4,
            EN => enable_signals(3),
            Q => Output
        );                    

end Behavioral;
