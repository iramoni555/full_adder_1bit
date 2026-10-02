----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:09:43 09/29/2026 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is
    component half_adder
        Port (
            A     : in STD_LOGIC;
            B     : in STD_LOGIC;
            SUM   : out STD_LOGIC;
            CARRY : out STD_LOGIC
        );
    end component;

    component or_gate
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal S1 : STD_LOGIC;
    signal C1 : STD_LOGIC;
    signal C2 : STD_LOGIC;
begin
  HA1 : half_adder
        port map (
            A     => A,
            B     => B,
            SUM   => S1,
            CARRY => C1
        );

    HA2 : half_adder
        port map (
            A     => S1,
            B     => Cin,
            SUM   => SUM,
            CARRY => C2
        );

    OR1 : or_gate
        port map (
            A => C1,
            B => C2,
            Y => Cout
        );

end Behavioral;

