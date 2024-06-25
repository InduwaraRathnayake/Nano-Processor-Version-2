----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2024 07:16:26 PM
-- Design Name: 
-- Module Name: TB_REGISTER_BANK - Behavioral
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

entity TB_REGISTER_BANK is
--  Port ( );
end TB_REGISTER_BANK;

architecture Behavioral of TB_REGISTER_BANK is

component REGISTER_BANK is
    Port (Reg_EN : in STD_LOGIC_VECTOR (2 downto 0);
          Clk : in STD_LOGIC;
          MUX_Out : in STD_LOGIC_VECTOR (3 downto 0);
          Reset : in STD_LOGIC;
          R0_Out : out STD_LOGIC_VECTOR (3 downto 0);
          R1_Out : out STD_LOGIC_VECTOR (3 downto 0);
          R2_Out : out STD_LOGIC_VECTOR (3 downto 0);
          R3_Out : out STD_LOGIC_VECTOR (3 downto 0);
          R4_Out : out STD_LOGIC_VECTOR (3 downto 0);
          R5_Out : out STD_LOGIC_VECTOR (3 downto 0);
          R6_Out : out STD_LOGIC_VECTOR (3 downto 0);
          R7_Out : out STD_LOGIC_VECTOR (3 downto 0));
end component;

SIGNAL Reg_EN : STD_LOGIC_VECTOR (2 downto 0);
SIGNAL Clk,Reset :  STD_LOGIC;
SIGNAL MUX_Out,R0_Out,R1_Out,R2_Out,R3_Out,R4_Out,R5_Out,R6_Out,R7_Out :  STD_LOGIC_VECTOR (3 downto 0);

begin

UUT : REGISTER_BANK
    Port map(Reg_EN => Reg_EN,
          Clk => Clk,
          MUX_Out => MUX_Out,
          Reset => Reset,
          R0_Out => R0_Out,
          R1_Out => R1_Out,
          R2_Out => R2_Out,
          R3_Out => R3_Out,
          R4_Out => R4_Out,
          R5_Out => R5_Out,
          R6_Out => R6_Out,
          R7_Out => R7_Out);

process begin
    Clk <= '1';
    wait for 10 ns;
    Clk <='0';
    wait for 10 ns;
end process;

process begin
    Reg_EN <= "010";
    Reset <= '0';
    MUX_Out <= "1010";
    wait for 100ns;
    
    Reg_EN <= "010";
    Reset <= '1';
    MUX_Out <= "1010";
    wait for 100ns;
    
    Reg_EN <= "011";
    Reset <= '0';
    MUX_Out <= "1110";
    wait for 100ns;
    
    Reg_EN <= "110";
    Reset <= '1';
    MUX_Out <= "1011";
    wait for 100ns;
    
    Reg_EN <= "000";
    Reset <= '0';
    MUX_Out <= "0010";
    wait for 100ns;
    
    wait;
end process;

end Behavioral;
