----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2022 02:10:49 PM
-- Design Name: 
-- Module Name: D_FF_Sim - Behavioral
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

entity D_FF_Sim is
--  Port ( );
end D_FF_Sim;

architecture Behavioral of D_FF_Sim is
component D_FF
Port     ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
end component;
signal D, Res, Q, Qbar : std_logic;
signal Clk : std_logic := '0';
begin
UUT: D_FF
    port map(
        D => D,
        Res => Res,
        Clk => Clk,
        Q => Q,
        Qbar => Qbar);

process
begin
    wait for 20ns;
    Clk <= not(Clk);
end process;

process
begin
    Res <= '1'; -- Q <= 0
    wait for 50ns;
    
    Res <= '0';
    D <= '0';
    wait for 50ns;
    
    D <= '1';
    wait for 70ns;
    
    D <= '0';
    wait for 80ns;
end process;


end Behavioral;
