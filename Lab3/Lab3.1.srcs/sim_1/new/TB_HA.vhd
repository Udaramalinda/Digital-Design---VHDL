----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2022 05:08:37 PM
-- Design Name: 
-- Module Name: TB_HA - Behavioral
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

entity TB_HA is
--  Port ( );
end TB_HA;

architecture Behavioral of TB_HA is
COMPONENT HA
    port( A, B : in std_logic;
          S, C : out std_logic);
END COMPONENT;

signal a, b, s, c : std_logic;

begin
UUT: HA port map(
    A => a,
    B => b,
    S => s,
    C => c
);

process
begin

    a <= '0';
    b <= '0';
    
    WAIT FOR 100 ns;
    
    b <= '1';
    
    WAIT FOR 100 ns;
    
    a <= '1';
    b <= '0';
    
    WAIT FOR 100 ns;
    
    b <= '1';
    
    WAIT;
END PROCESS;
    
    
    
    


end Behavioral;
