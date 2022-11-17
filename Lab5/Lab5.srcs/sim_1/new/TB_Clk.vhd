----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/14/2022 11:56:22 PM
-- Design Name: 
-- Module Name: TB_Clk - Behavioral
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

entity TB_Clk is
--  Port ( );
end TB_Clk;

architecture Behavioral of TB_Clk is
Component Slow_Clk
    port(Clk_in: in std_logic;
         Clk_out: out std_logic);
end component;

signal c_in: std_logic:='0';
signal c_out: std_logic;

begin
UUT: Slow_Clk
    port map(
        Clk_in => c_in,
        Clk_out => c_out);

process
begin
    wait for 5ns;
    c_in <= not(c_in);
end process;
    


end Behavioral;
