----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:25:18 05/11/2018 
-- Design Name: 
-- Module Name:    led - Behavioral 
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

entity led is
    Port ( clk : in  STD_LOGIC;
           led : out  STD_LOGIC);
end led;

architecture Behavioral of led is
signal count : std_logic_vector(31 downto 0);
begin
process(clk)
begin
	if(rising_edge(clk) then
		count <= count + 1;
	end if;
end process;

led <= count(24); --Make the blink faster

end Behavioral;

