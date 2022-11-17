----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2022 04:03:07 PM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;

architecture Behavioral of TB_Mux_8_to_1 is
component Mux_8_to_1
    Port (  I : in STD_LOGIC_VECTOR (7 downto 0);
            EN : in STD_LOGIC;
            Y : out STD_LOGIC;
            S : in STD_LOGIC_VECTOR (2 downto 0));
end component;

signal I0 : std_logic_vector(7 downto 0);
signal EN0, Y0 : std_logic;
signal S0 : std_logic_vector(2 downto 0);

begin
UUT : Mux_8_to_1
    port Map(
        I => I0,
        EN => EN0,
        Y => Y0,
        S => S0);
process
begin
    EN0 <= '1';
    I0 <= "10110010";
    --My index number = 200727M
    --decimal(200727) = binary(11 0001 0000 0001 0111)
    --number binary(110 001 000 000 010 111)
    
    S0 <= "111";
    wait for 50ns;
    
    S0 <= "010";
    wait for 50ns;
    
    S0 <= "000";
    wait for 50ns;
    
    S0 <= "000";
    wait for 50ns;
    
    S0 <= "001";
    wait for 50ns;
    
    S0 <= "110";
    wait for 50ns;
    
    --All the posible combinations
    
    S0 <= "000";
    wait for 50ns;
    
    S0 <= "001";
    wait for 50ns;
    
    S0 <= "010";
    wait for 50ns;
    
    S0 <= "011";
    wait for 50ns;
    
    S0 <= "100";
    wait for 50ns;
    
    S0 <= "101";
    wait for 50ns;
    
    S0 <= "110";
    wait for 50ns;
    
    S0 <= "111";
    wait;
    
 END PROCESS;

end Behavioral;
