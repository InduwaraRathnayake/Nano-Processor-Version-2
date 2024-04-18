----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2024 09:07:35 AM
-- Design Name: 
-- Module Name: REGISTER_BANK - Behavioral
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

entity REGISTER_BANK is
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
          R7_Out : out STD_LOGIC_VECTOR (3 downto 0)
          );                
end REGISTER_BANK;

architecture Behavioral of Register_Bank is

component Decoder_3_to_8
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Reg_4_bit is
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           EN : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

SIGNAL Select_Reg : STD_LOGIC_VECTOR (7 downto 0);

begin

    Decoder_3_to_8_0 : Decoder_3_to_8
          Port map( I=>Reg_EN,
                    EN=>'1',
                    Y=>Select_Reg );
                    
    R0 : Reg_4_bit
          Port map ( D=>"0000",
                EN=>Select_Reg(0),
                Clk=>Clk,
                Reset=>Reset,
                Q=> R0_Out );
               
    R1 : Reg_4_bit
         Port map ( D=>MUX_Out,
                EN=>Select_Reg(1),
                Clk=>Clk,
                Reset=>Reset,
                Q=> R1_Out );
              
    R2 : Reg_4_bit
         Port map ( D=>MUX_Out,
                EN=>Select_Reg(2),
                Clk=>Clk,
                Reset=>Reset,
                Q=> R2_Out );
              
    R3 : Reg_4_bit
         Port map ( D=>MUX_Out,
                EN=>Select_Reg(3),
                Clk=>Clk,
                Reset=>Reset,
                Q=> R3_Out );
                        
    R4 : Reg_4_bit
         Port map ( D=>MUX_Out,
                EN=>Select_Reg(4),
                Clk=>Clk,
                Reset=>Reset,
                Q=> R4_Out );
              
    R5 : Reg_4_bit
         Port map ( D=>MUX_Out,
                EN=>Select_Reg(5),
                Clk=>Clk,
                Reset=>Reset,
                Q=> R5_Out );
                        
    R6 : Reg_4_bit
         Port map ( D=>MUX_Out,
                EN=>Select_Reg(6),
                Clk=>Clk,
                Reset=>Reset,
                Q=> R6_Out );
                                  
    R7 : Reg_4_bit
         Port map ( D=>MUX_Out,
                EN=>Select_Reg(7),
                Clk=>Clk,
                Reset=>Reset,
                Q=> R7_Out );
    
end Behavioral;
