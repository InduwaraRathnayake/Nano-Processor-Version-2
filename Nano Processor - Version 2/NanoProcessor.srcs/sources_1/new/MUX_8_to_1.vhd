----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2024 05:52:41 PM
-- Design Name: 
-- Module Name: MUX_8_to_1 - Behavioral
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

entity MUX_8_to_1 is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end MUX_8_to_1;

architecture Behavioral of MUX_8_to_1 is

component Decoder_3_to_8
    port(
     I : in STD_LOGIC_VECTOR (2 downto 0);
     EN : in STD_LOGIC;
     Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

Signal A : std_logic_vector(7 downto 0);

begin
Decoder : Decoder_3_to_8 
    port map(
    I => S,
    EN => EN,
    Y => A);
      
Y <= (D(0) AND A(0)) OR (D(1) AND A(1)) OR (D(2) AND A(2)) OR (D(3) AND A(3)) OR (D(4) AND A(4)) OR (D(5) AND A(5)) OR (D(6) AND A(6)) OR (D(7) AND A(7));   
   
end Behavioral;
