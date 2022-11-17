----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/23/2022 04:07:48 PM
-- Design Name: 
-- Module Name: LUT_sim - Behavioral
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

entity LUT_sim is
--  Port ( );
end LUT_sim;

architecture Behavioral of LUT_sim is
component LUT_16_7
    Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
           data : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal address : std_logic_vector(3 downto 0);
signal data : std_logic_vector(6 downto 0);
begin

UUT: LUT_16_7
port map(address => address,
         data => data);

process
begin
    address <= "0111";
    wait for 200ns;
    
    address <= "0001";
    wait for 200ns;
    
    address <= "0000";
    wait for 200ns;
    
    address <= "0001";
    wait for 200ns;
end process;


end Behavioral;
