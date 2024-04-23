----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2024 12:14:22 AM
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
    port ( 
          A : in std_logic_vector (3 downto 0);
          B : in std_logic_vector (3 downto 0);
          Flag_EN : in std_logic;
          Comp_EN : in std_logic;
          Selector : in std_logic_vector (2 downto 0);
          Y : out std_logic_vector (3 downto 0);
          Flag_Reg : out STD_LOGIC_VECTOR (3 downto 0);
          equal : out STD_LOGIC;      
          greater : out STD_LOGIC;     
          lesser : out STD_LOGIC
          );         
end ALU;

architecture Behavioral of ALU is

component Comp_4_bit is
    Port ( num1 : in STD_LOGIC_VECTOR(3 downto 0);
           num2 : in STD_LOGIC_VECTOR(3 downto 0);
           EN : in STD_LOGIC;
           equal : out STD_LOGIC;      
           greater : out STD_LOGIC;     
           lesser : out STD_LOGIC );   
end component;

component MUX_2way_4bit 
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Selector : in STD_LOGIC;
           Mux_out : out STD_LOGIC_VECTOR (3 downto 0));
end component;  

component MUX_4way_4bit 
    Port (
       A1 : in STD_LOGIC_VECTOR (3 downto 0);
       A2 : in STD_LOGIC_VECTOR (3 downto 0);
       A3 : in STD_LOGIC_VECTOR (3 downto 0);
       A4 : in STD_LOGIC_VECTOR (3 downto 0);      
       Selector : in STD_LOGIC_VECTOR (1 downto 0);
       Output : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component ADDER_SUBTRACTOR
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           M : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Flag_Reg : out STD_LOGIC_VECTOR (3 downto 0));           
end component;

component Multiplier_2by2 
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;  

signal not_B : std_logic_vector (3 downto 0);
signal Mux_1_out, Mux_2_out : std_logic_vector (3 downto 0);
signal A_AND_B : std_logic_vector (3 downto 0);
signal A_OR_B : std_logic_vector (3 downto 0);
signal A_plus_B : std_logic_vector (3 downto 0);
signal A_into_B : std_logic_vector (3 downto 0);
signal Flags : std_logic_vector (3 downto 0);

begin
    not_B <= NOT B;
    
    MUX_1 : MUX_2way_4bit
        port map(
            A => B,
            B => not_B,
            Selector => Selector(2),
            Mux_out => Mux_1_out
        );
        
    A_AND_B <= Mux_1_out AND A;
    A_OR_B <= Mux_1_out OR A;
    
    ADD_SUB_UNIT : ADDER_SUBTRACTOR
        port map(
            A => A,
            B => B,
            M => Selector(2),
            S => A_plus_B,
            Flag_Reg => Flags
        );

     
     Multiplier : Multiplier_2by2
        port map (
            A => A(1 downto 0),
            B => B(1 downto 0),
            Y => A_into_B
         );
         
     MUX_2 : MUX_4way_4bit
        port map(
            A1 => A_AND_B,
            A2 => A_OR_B,
            A3 => A_plus_B,
            A4 => A_into_B,      
            Selector => Selector(1 downto 0),
            Output => Mux_2_out
         );
         
     Comparator : Comp_4_bit
        port map(
            num1 => A,
            num2=>B,
            EN => Comp_EN,
            equal => equal,     
            greater => greater,  
            lesser => lesser);  
            

Flag_Reg(0) <= Flags(0) AND Flag_EN;
Flag_Reg(1) <= Flags(1) AND Flag_EN;
Flag_Reg(2) <= Flags(2) AND Flag_EN;
Flag_Reg(3) <= Flags(3) AND Flag_EN;
Y <= Mux_2_out;

end Behavioral;
