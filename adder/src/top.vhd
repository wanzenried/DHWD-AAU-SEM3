----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2025 06:28:34 PM
-- Design Name: 
-- Module Name: top level - Behavioral
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

entity top is
    Port (
        a : in STD_LOGIC_VECTOR (3 downto 0);
        b : in STD_LOGIC_VECTOR (3 downto 0);
        ci : in STD_LOGIC;
        s : out STD_LOGIC_VECTOR (3 downto 0);
        co : out STD_LOGIC
    );
end top;

architecture Behavioral of top is

begin

four_bit : entity work.four_bit_full_adder

port map (
    inpA => a,
    inpB => b,
    outS => s,
    Cin => ci,
    Cout => co
);


end Behavioral;
