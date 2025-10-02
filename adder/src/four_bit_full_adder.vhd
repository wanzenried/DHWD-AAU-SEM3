
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_bit_full_adder is
    Port (
        inpA : in STD_LOGIC_VECTOR (3 downto 0);
        inpB : in STD_LOGIC_VECTOR (3 downto 0);
        outS : out STD_LOGIC_VECTOR (3 downto 0);
        Cin : in STD_LOGIC;
        Cout : out STD_LOGIC
    );
end four_bit_full_adder;

architecture Behavioral of four_bit_full_adder is

signal carry : std_logic_vector (3 downto 0);

begin


adder0 : entity work.one_bit_full_adder

port map (
    inpA => inpA(0),
    inpB => inpB(0),
    outS => outS(0),
    Cin => Cin,
    Cout => carry(0)

);

adder1 : entity work.one_bit_full_adder

port map (
    inpA => inpA(1),
    inpB => inpB(1),
    outS => outS(1),
    Cin => carry(0),
    Cout => carry(1)

);

adder2 : entity work.one_bit_full_adder

port map (
    inpA => inpA(2),
    inpB => inpB(2),
    outS => outS(2),
    Cin => carry(1),
    Cout => carry(2)

);

adder3 : entity work.one_bit_full_adder

port map (
    inpA => inpA(3),
    inpB => inpB(3),
    outS => outS(3),
    Cin => carry(2),
    Cout => Cout

);

end Behavioral;