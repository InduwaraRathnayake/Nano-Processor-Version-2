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


begin 
    Mux_out(0) <= (A(0) and not Selector) or (B(0) and Selector);
    Mux_out(1) <= (A(1) and not Selector) or (B(1) and Selector); 
    Mux_out(2) <= (A(2) and not Selector) or (B(2) and Selector);
    Mux_out(3) <= (A(3) and not Selector) or (B(3) and Selector);

end Behavioral;
