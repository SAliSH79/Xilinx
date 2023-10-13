----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:47:06 10/12/2020 
-- Design Name: 
-- Module Name:    Decoder2to4UsingMux4to1 - Behavioral 
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

entity Decoder2to4UsingMux4to1 is

     Port(
	      s0 : in std_logic ;
			s1 : in std_logic ;
			enable : in std_logic ;
			y : out std_logic_vector(3 downto 0)
			);
			
end Decoder2to4UsingMux4to1;

architecture Behavioral of Decoder2to4UsingMux4to1 is

     Component Mux4to1_class
	  Port (
	  a : in  STD_LOGIC;
     b : in  STD_LOGIC;
     c : in  STD_LOGIC;
     d : in  STD_LOGIC;
     s0 : in  STD_LOGIC;
     s1 : in  STD_LOGIC;
     q : out  STD_LOGIC
			  );
	  End Component ;

begin

      MuX1 : Mux4to1_class Port Map (
		a => '1' ,
		b => '0' ,
		c => '0' ,
		d => '0' ,
		s0 => s0 ,
		s1 => s1 ,
		q => y(0) );
      	  
      MuX2 : Mux4to1_class Port Map (
		a => '0' ,
		b => '1' ,
		c => '0' ,
		d => '0' ,
		s0 => s0 ,
		s1 => s1 ,
		q => y(1) );
		
		MuX3 : Mux4to1_class Port Map (
		a => '0' ,
		b => '0' ,
		c => '1' ,
		d => '0' ,
		s0 => s0 ,
		s1 => s1 ,
		q => y(2) );
		
		MuX4 : Mux4to1_class Port Map (
		a => '0' ,
		b => '0' ,
		c => '0' ,
		d => '1' ,
		s0 => s0 ,
		s1 => s1 ,
		q => y(3) );
		
end Behavioral;

