----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/23/2022 04:20:42 PM
-- Design Name: 
-- Module Name: AU_7_sim - Behavioral
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

entity AU_7_sim is
--  Port ( );
end AU_7_sim;

architecture Behavioral of AU_7_sim is
component AU_7_seg
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           RegSel : in STD_LOGIC;
           S_LED : out STD_LOGIC_VECTOR (3 downto 0);
           S_7Seg : out STD_LOGIC_VECTOR(6 downto 0);
           Carry : out STD_LOGIC;
           Zero : out STD_LOGIC);
end component;

signal a, s_led : std_logic_vector(3 downto 0);
signal regsel, carry, zero : std_logic;
signal clk: std_logic :='0';
signal s_7seg : std_logic_vector(6 downto 0);
 

begin

UUT: AU_7_seg
port map(
        A => a,
        RegSel => regsel,
        Clk => clk,
        S_LED => s_led,
        S_7Seg => s_7seg,
        Carry => carry,
        Zero => zero);
process
begin
    wait for 2ns;
    clk <= not(clk);
end process;

process
begin
    a <= "0111";
    regsel <= '0';
    
    wait for 200ns;
    
    regsel <= '1';
    a <= "0001";
    
    wait for 200ns;
    
    regsel <= '0';
    a <= "0000";
    
    wait for 200ns;
    
    regsel <= '1';
    a <= "0001";
    
    wait;
    

end process;

end Behavioral;
