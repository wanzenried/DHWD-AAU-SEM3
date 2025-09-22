----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2025 06:28:34 PM
-- Design Name: 
-- Module Name: four-bit-shift - Behavioral
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

entity four_bit_shift is
    Port ( klok : in STD_LOGIC;
           btn : in STD_LOGIC;
           outp : out STD_LOGIC_VECTOR (3 downto 0));
end four_bit_shift;

architecture Behavioral of four_bit_shift is

begin

process(klok)
variable buff : std_logic_vector (3 downto 0);
begin
    if (klok'event and klok = '1') then
        buff(3) := buff(2);
        buff(2) := buff(1);
        buff(1) := buff(0);
        buff(0) := btn;
        
        outp <= buff;
    
    end if;
    
end process;

end Behavioral;
