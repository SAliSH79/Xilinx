----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:08:01 10/26/2020 
-- Design Name: 
-- Module Name:    BCDto7SegmentCon - Behavioral 
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

entity BCDto7SegmentCon is
    Port ( input : in  STD_LOGIC_VECTOR (3 downto 0);
           yout : out  STD_LOGIC_VECTOR (6 downto 0));
end BCDto7SegmentCon;

architecture Behavioral of BCDto7SegmentCon is

begin

      yout <= "1111110" when input = "0000" else
              "0110000" when input = "0001" else
	           "1101101" when input = "0010" else
		        "1111001" when input = "0011" else
	           "0110011" when input = "0100" else
	           "1011011" when input = "0101" else
		        "1011111" when input = "0110" else
              "1110000" when input = "0111" else
              "1111111" when input = "1000" else
              "1111011" when input = "1001";
		
end Behavioral;

