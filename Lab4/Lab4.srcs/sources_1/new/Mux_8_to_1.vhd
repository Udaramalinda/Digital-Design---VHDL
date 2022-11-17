----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2022 03:40:50 PM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port ( I : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC;
           S : in STD_LOGIC_VECTOR (2 downto 0));
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is
Component Decoder_3_to_8
port (  I : in std_logic_vector(2 downto 0);
        EN : in std_logic;
        Y : out std_logic_vector(7 downto 0));
end component;
signal YD : std_logic_vector (7 downto 0);
begin

Decoder_3_to_8_0 : Decoder_3_to_8
    port map(
        I => S,
        EN => EN,
        Y => YD);
        
    Y <= (YD(0) AND I(0)) OR
         (YD(1) AND I(1)) OR
         (YD(2) AND I(2)) OR
         (YD(3) AND I(3)) OR
         (YD(4) AND I(4)) OR
         (YD(5) AND I(5)) OR
         (YD(6) AND I(6)) OR
         (YD(7) AND I(7));
         
         


end Behavioral;
