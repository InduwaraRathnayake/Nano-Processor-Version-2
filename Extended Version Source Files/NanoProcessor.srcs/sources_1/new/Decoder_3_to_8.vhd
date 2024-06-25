----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2024 02:38:01 PM
-- Design Name: 
-- Module Name: Decoder_3_to_8 - Behavioral
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

entity Decoder_3_to_8 is
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end Decoder_3_to_8;

architecture Behavioral of Decoder_3_to_8 is
component Decoder_2_to_4
   Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
          EN : in STD_LOGIC;
          Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;

SIGNAL input_vec : std_logic_vector (1 downto 0);
SIGNAL out_vec_1,out_vec_2 : std_logic_vector (3 downto 0);
SIGNAL EN_dec1, EN_dec2 : std_logic;

begin
    EN_dec1 <= EN and not(I(2));
    EN_dec2 <= EN and I(2);
    input_vec<= I(1 downto 0);
    
    
    
    Decoder_2_to_4_0: Decoder_2_to_4
        port map(I=>input_vec,
                EN=>EN_dec1,
                Y => out_vec_1);
    Decoder_2_to_4_1: Decoder_2_to_4
        port map(I=>input_vec,
                EN=>EN_dec2,
                Y => out_vec_2);                
                    
    Y(3 downto 0)<= out_vec_1;
    Y(7 downto 4)<= out_vec_2;
    
end Behavioral;
