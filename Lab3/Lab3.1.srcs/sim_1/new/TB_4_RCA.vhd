----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2022 06:53:55 PM
-- Design Name: 
-- Module Name: TB_4_RCA - Behavioral
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

entity TB_4_RCA is
--  Port ( );
end TB_4_RCA;

architecture Behavioral of TB_4_RCA is
component RCA_4
    Port ( A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A3 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S0 : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S3 : out STD_LOGIC;
           C_out : out STD_LOGIC);
end component;

signal a0, a1, a2, a3, b0, b1, b2, b3, c_in, c_out, s0, s1, s2, s3 : std_logic;

begin

UUT: RCA_4 port map(
    A0 => a0,
    A1 => a1,
    A2 => a2,
    A3 => a3,
    B0 => b0,
    B1 => b1,
    B2 => b2,
    B3 => b3,
    C_in => c_in,
    C_out => c_out,
    S0 => s0,
    S1 => s1,
    S2 => s2,
    S3 => s3);

process
begin  -- index checking numbers
    a0 <= '1';
    a1 <= '1';
    a2 <= '1';
    a3 <= '0';
    b0 <= '1';
    b1 <= '0';
    b2 <= '0';
    b3 <= '0';
    
    wait for 100 ns;
    
    a0 <= '0';
    a1 <= '0';
    a2 <= '0';
    a3 <= '0';
    b0 <= '1';
    b1 <= '0';
    b2 <= '0';
    b3 <= '0';
    
    wait for 100 ns;

-- Given inputs to add

    a0 <= '1';
    a1 <= '0';
    a2 <= '1';
    a3 <= '0';
    b0 <= '1';
    b1 <= '1';
    b2 <= '0';
    b3 <= '1';
    
    wait for 100 ns;
    a0 <= '1';
    a1 <= '1';
    a2 <= '1';
    a3 <= '0';
    b0 <= '1';
    b1 <= '1';
    b2 <= '1';
    b3 <= '1';
    
    wait for 100 ns;
    
--RAMDOM INPUTS

    a0 <= '1';
    a1 <= '1';
    a2 <= '1';
    a3 <= '1';
    b0 <= '1';
    b1 <= '1';
    b2 <= '1';
    b3 <= '1';
    
    wait for 100 ns;

    a0 <= '1';
    a1 <= '1';
    a2 <= '1';
    a3 <= '1';
    b0 <= '0';
    b1 <= '0';
    b2 <= '0';
    b3 <= '1';
    
    wait for 100 ns;

    a0 <= '1';
    a1 <= '0';
    a2 <= '0';
    a3 <= '1';
    b0 <= '0';
    b1 <= '1';
    b2 <= '1';
    b3 <= '0';
    
    wait for 100 ns;

    a0 <= '0';
    a1 <= '1';
    a2 <= '1';
    a3 <= '1';
    b0 <= '1';
    b1 <= '1';
    b2 <= '0';
    b3 <= '1';
    
    wait;
    
    
end process;
    
    

end Behavioral;
