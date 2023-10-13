--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:27:44 10/26/2020
-- Design Name:   
-- Module Name:   D:/Digital Design Lab/VHDL/Hw4Conditions/BCDto7SegmentTestbenchCondition.vhd
-- Project Name:  Hw4Conditions
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BCDto7SegmentCon
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
 
ENTITY BCDto7SegmentTestbenchCondition IS
END BCDto7SegmentTestbenchCondition;
 
ARCHITECTURE behavior OF BCDto7SegmentTestbenchCondition IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BCDto7SegmentCon
    PORT(
         input : IN  std_logic_vector(3 downto 0);
         yout : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal yout : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BCDto7SegmentCon PORT MAP (
          input => input,
          yout => yout
        );


   -- Stimulus process
   stim_proc: process
   begin		
     
		input <= "0000";
      wait for 100 ns;	
      input <= "0001";
      wait for 100 ns;
		input <= "0010";
      wait for 100 ns;
		input <= "0011";
      wait for 100 ns;
		input <= "0100";
      wait for 100 ns;
		input <= "0101";
      wait for 100 ns;
		input <= "0110";
      wait for 100 ns;
		input <= "0111";
      wait for 100 ns;
		input <= "1000";
      wait for 100 ns;
		input <= "1001";
      wait for 100 ns;
		
      wait;
   end process;

END;
