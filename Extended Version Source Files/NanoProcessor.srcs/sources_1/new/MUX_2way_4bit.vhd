----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2024 01:46:19 PM
-- Design Name: 
-- Module Name: Mux_2way_4bit - Behavioral
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

entity MUX_2way_4bit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Selector : in STD_LOGIC;
           Mux_out : out STD_LOGIC_VECTOR (3 downto 0));
end MUX_2way_4bit;

architecture Behavioral of MUX_2way_4bit is

component Tri_State_Buffer_4bit is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
       EN : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal enable_signals : STD_LOGIC_VECTOR(1 downto 0) := "01" ;
begin 

     enable_signals(0) <= NOT Selector;   
     enable_signals(1) <= Selector;  
     
     buffer_0: Tri_State_Buffer_4bit
           port map (
               I => A,
               EN => enable_signals(0),
               Q => Mux_out
           );

     buffer_1: Tri_State_Buffer_4bit
           port map (
               I => B,
               EN => enable_signals(1),
               Q => Mux_out
           );    

end Behavioral;
