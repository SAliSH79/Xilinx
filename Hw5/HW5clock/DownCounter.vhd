----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:20:17 11/11/2020 
-- Design Name: 
-- Module Name:    DownCounter - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DownCounter is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sig_o : out  STD_LOGIC_VECTOR (3 downto 0));
end DownCounter;

architecture Behavioral of DownCounter is


signal so : std_logic_vector (3 downto 0 ) := "0000";

begin

process(clk , reset)
   variable count : integer := 0;
   begin
   if reset = '1' then 
      so <= ( others => '0' );
      count := 0 ;		
   elsif rising_edge (clk) then 
	   count := count + 1 ;
		if count = 100 then
		   so <= so + 1 ;
			count := 0;
	      if so = 1010 then 
		     so <= "1001";
			end if;
		end if;
	end if;
	count := 0;
	if reset = '1' then 
      so <= ( others => '0' );
      count := 0 ;		
   elsif rising_edge (clk) then 
	   count := count + 1 ;
			  if count = 100 then 
			     so <= so - 1 ;
			     count := 0 ;
		        if so = 1111 then
				     so <= "0000";
				  end if;
				end if;
	 end if;
end process ;
sig_o <= so ;

end Behavioral;

