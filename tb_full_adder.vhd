--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:40:51 09/29/2026
-- Design Name:   
-- Module Name:   /home/ise/full_adder/tb_full_adder.vhd
-- Project Name:  full_adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_full_adder IS
END tb_full_adder;
 
ARCHITECTURE behavior OF tb_full_adder IS 
 
 
    component full_adder
        Port (
            A    : in  STD_LOGIC;
            B    : in  STD_LOGIC;
            Cin  : in  STD_LOGIC;
            Sum  : out STD_LOGIC;
            Cout : out STD_LOGIC
        );
    end component;

    signal A    : STD_LOGIC := '0';
    signal B    : STD_LOGIC := '0';
    signal Cin  : STD_LOGIC := '0';
    signal Sum  : STD_LOGIC;
    signal Cout : STD_LOGIC;

 
BEGIN
 
   uut: full_adder
        port map (
            A    => A,
            B    => B,
            Cin  => Cin,
            Sum  => Sum,
            Cout => Cout
        );

    stim_proc: process
   begin
	   -- Test 1: 000
        A <= '0';
        B <= '0';
        Cin <= '0';
        wait for 10 ns;

        -- Test 2: 001
        A <= '0';
        B <= '0';
        Cin <= '1';
        wait for 10 ns;

        -- Test 3: 010
        A <= '0';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;
   -- Test 4: 011
        A <= '0';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;

        -- Test 5: 100
        A <= '1';
        B <= '0';
        Cin <= '0';
        wait for 10 ns;

        -- Test 6: 101
        A <= '1';
        B <= '0';
        Cin <= '1';
        wait for 10 ns;
 -- Test 7: 110
        A <= '1';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;

        -- Test 8: 111
        A <= '1';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;

        wait;

    end process stim_proc;

end behavior;
