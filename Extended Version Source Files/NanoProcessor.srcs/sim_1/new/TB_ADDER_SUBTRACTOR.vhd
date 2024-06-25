----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/07/2024 07:41:01 PM
-- Design Name: 
-- Module Name: TB_ADDER_SUBTRACTOR - Behavioral
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

entity TB_ADDER_SUBTRACTOR is
--  Port ( );
end TB_ADDER_SUBTRACTOR;

architecture Behavioral of TB_ADDER_SUBTRACTOR is

component ADDER_SUBTRACTOR 
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           M : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
--           Overflow_Flag : out STD_LOGIC;
--           C_out : out STD_LOGIC;
--           Zero_Flag : out STD_LOGIC;
--           Sign_Flag : out STD_LOGIC
           Flag_Reg : out STD_LOGIC_VECTOR (3 downto 0));
end component;

--signal A,B,S : std_logic_vector (3 downto 0);
--signal M, Overflow_Flag, C_out, Zero_Flag, Sign_Flag: std_logic;
signal A,B,S, Flag_reg : std_logic_vector (3 downto 0);
signal M: std_logic;

begin 
    UUT: ADDER_SUBTRACTOR port map(
        A => A,
        B => B,
        M => M,
        S => S,
        Flag_Reg => Flag_Reg
        );

process begin
   
    -- 1 + 2 --
    A <= "0001";
    B <= "0010";
    M <= '0';
    wait for 100 ns;
    
    -- 7 + 7 --
    A <= "0111";
    B <= "0111";
    M <= '0';
    wait for 100 ns;
    
    -- 7 - 5 --
    A <= "0111";
    B <= "0101";
    M <= '1';
    wait for 100 ns;

    -- 3 + (-3) --
    A <= "0011";
    B <= "1101";
    M <= '0';
    wait for 100 ns;
    
    -- 4 - 4 --
    A <= "0100";
    B <= "0100";
    M <= '1';
    wait for 100 ns;
    
    -- 1 - 2 --
    A <= "0001";
    B <= "0010";
    M <= '1';
    wait for 100 ns;
    
    -- (-1) + (-1) --
    A <= "1111";
    B <= "1111";
    M <= '0';
    wait for 100 ns;

    -- (-3) - (-7) --
    A <= "1101";
    B <= "1001";
    M <= '1';
    wait for 100 ns; 
      
    -- (-7) + (-3) --
    A <= "1001";
    B <= "1101";
    M <= '0';
    wait for 100 ns;
    
    -- (-2) - (-2) --
    A <= "1110";
    B <= "1110";
    M <= '1';
    wait ;
    
end process;
end Behavioral;
