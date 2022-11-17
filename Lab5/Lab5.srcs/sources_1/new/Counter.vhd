----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2022 02:58:55 PM
-- Design Name: 
-- Module Name: Counter - Behavioral
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

entity Counter is
    Port ( Clk : in STD_LOGIC;
           Dir : in STD_LOGIC;
           Res : in STD_LOGIC;
           Q0 : out STD_LOGIC;
           Q1 : out STD_LOGIC;
           Q2 : out STD_LOGIC);
end Counter;

architecture Behavioral of Counter is
    component D_FF
    Port ( D : in STD_LOGIC;
               Res : in STD_LOGIC;
               Clk : in STD_LOGIC;
               Q : out STD_LOGIC;
               Qbar : out STD_LOGIC);
    end component;
    
    component Slow_Clk
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
           
    end component;
signal D0, D1, D2 : std_logic;
signal Q_0, Q_1, Q_2 : std_logic;
signal Clk_slow : std_logic;

begin
Slow_Clk0 : Slow_Clk
    port map(
        Clk_in => Clk,
        Clk_out => Clk_slow);
D_FF0 : D_FF
    port map(
        D => D0,
        Res => Res,
        Clk => Clk_slow,
        Q => Q_0
        );
D_FF1 : D_FF
    port map(
        D => D1,
        Res => Res,
        Clk => Clk_slow,
        Q => Q_1
        );
D_FF2 : D_FF
    port map(
        D => D2,
        Res => Res,
        Clk => Clk_slow,
        Q => Q_2
        );
D0 <= (not(Dir) and not(Q_2)) or (Dir and Q_1) or (not(Q_2) and Q_1);
D1 <= (Dir and Q_2) or (not(Dir) and Q_0) or (Q_2 and Q_0);
D2 <= (not(Dir) and Q_1) or (Q_1 and not(Q_0)) or (Dir and not(Q_0));
Q0 <= Q_0;
Q1 <= Q_1;
Q2 <= Q_2; 

end Behavioral;
