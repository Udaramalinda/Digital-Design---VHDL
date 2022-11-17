----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/19/2022 03:13:32 PM
-- Design Name: 
-- Module Name: Circuit2Sim - Behavioral
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

entity Circuit2Sim is
--  Port ( );
end Circuit2Sim;

architecture Behavioral of Circuit2Sim is

COMPONENT Lab2
    PORT( A, B, C    : IN STD_LOGIC;
          X, Y, Z    : OUT STD_LOGIC);
END COMPONENT;

Signal g0, g1, g2    : std_logic;
Signal g, a, r       : std_logic;         

begin
    UUT: Lab2 PORT MAP(
            A => g0,
            B => g1,
            C => g2,
            X => g,
            Y => a,
            Z => r
        );
process
begin
    g0 <= '0';
    g1 <= '0';
    g2 <= '0';
    
    WAIT FOR 100 ns;
    g2 <= '1';
    
    WAIT FOR 100 ns;
    g1 <= '1';
    g2 <= '0';
    
    WAIT FOR 100 ns;
    g2 <= '1';
    
    WAIT FOR 100 ns;
    g0 <= '1';
    g1 <= '0';
    g2 <= '0';
    
    WAIT FOR 100 ns;
    g2 <= '1';
    
    WAIT FOR 100 ns;
    g1 <= '1';
    g2 <= '0';
    
    WAIT FOR 100 ns;
    g2 <= '1';
    
    WAIT;
end process; 


end Behavioral;
