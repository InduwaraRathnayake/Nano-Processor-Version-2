----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2024 11:56:08 AM
-- Design Name: 
-- Module Name: ROM - Behavioral
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

use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
    Port ( address : in STD_LOGIC_VECTOR (2 downto 0);
           data : out STD_LOGIC_VECTOR (11 downto 0));
end ROM;

architecture Behavioral of ROM is

type rom_type is array (0 to 7) of std_logic_vector(11 downto 0);
signal prosseser_ROM : rom_type := (

--        process => 3 + 2 + 1 = 6   
        "100010000100", -- MOVI R1,4        R1 <- 4             0
        "100100000001", -- MOVI R2,1        R2 <- 1             1
        "010100000000", -- NEG  R2          R2 <- -1            2
        "000010100010", -- ADD  R1,R2       R1 <- R2 + R1       3
        "110010000111", -- JZR  R1,7                            4
        "001110010010", -- ADD  R7,R1       R7 <- R7 + R1       5
        "110000000011", -- JZR  R0,3                            6
        "110000000111" -- JZR  R0,7                             7 
 
--        process => (-1) AND 5 = 5       
--        "101110001111", -- MOVI R7,-1     R7 <- -1
--        "100010000101", -- MOVI R1,5      R1 <- 5
--        "001110010000", -- AND  R7,R1     R7 <- R7 AND R1
--        "110000000011", -- JZR  R0,3
--        "000000000000", 
--        "000000000000", 
--        "000000000000", 
--        "000000000000"

--        process => 1 OR 7 = 7       
--        "101110000001", -- MOVI R7,1     R7 <- 1
--        "100010000111", -- MOVI R1,7     R1 <- 7
--        "001110010001", -- OR  R7,R1     R7 <- R7 OR R1
--        "110000000011", -- JZR  R0,3
--        "000000000000", 
--        "000000000000", 
--        "000000000000", 
--        "000000000000"

     --   process => (-1) ANDN 5 = (-6)        
--        "101110001111", -- MOVI R7,-1     R7 <- -1
--        "100010000101", -- MOVI R1,5      R1 <- 5
--        "001110010100", -- ANDN R7,R1     R7 <- R7 AND NOT(R1)
--        "110000000011", -- JZR  R0,3
--        "000000000000", 
--        "000000000000", 
--        "000000000000", 
--        "000000000000"  

--        process => 1 ORN 7 = (-7)       
--        "101110000001", -- MOVI R7,1     R7 <- 1
--        "100010000111", -- MOVI R1,7     R1 <- 7
--        "001110010101", -- ORN  R7,R1     R7 <- R7 OR NOT(R1)
--        "110000000011", -- JZR  R0,3
--        "000000000000", 
--        "000000000000", 
--        "000000000000", 
--        "000000000000"  

--        process => 1 SUB 7 = (-6)       
--        "101110000001", -- MOVI R7,1     R7 <- 1
--        "100010000111", -- MOVI R1,7     R1 <- 7
--        "001110010110", -- SUB  R7,R1    R7 <- R7 SUB R1
--        "110000000011", -- JZR  R0,3
--        "000000000000", 
--        "000000000000", 
--        "000000000000", 
--        "000000000000"  

--        process => 3 MUL 2 = 6       
--        "101110000011", -- MOVI R7,3     R7 <- 3
--        "100010000010", -- MOVI R1,2     R1 <- 2
--        "001110010111", -- MUL  R7,R1    R7 <- R7 MUL R1
--        "110000000011", -- JZR  R0,3
--        "000000000000", 
--        "000000000000", 
--        "000000000000", 
--        "000000000000"
           
    ); 

begin

data <= prosseser_ROM(to_integer(unsigned(address)));

end Behavioral;

