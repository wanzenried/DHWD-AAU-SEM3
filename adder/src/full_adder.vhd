
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity one_bit_full_adder is
    Port (
        inpA : in STD_LOGIC;
        inpB : in STD_LOGIC;
        Cin : in STD_LOGIC;
        outS : out STD_LOGIC;
        Cout : out STD_LOGIC
        );
end one_bit_full_adder;

architecture Behavioral of one_bit_full_adder is

begin

    outS <= inpA XOR inpB XOR Cin;
    Cout <= (inpA AND inpB) OR (Cin AND (inpA XOR inpB));

end Behavioral;
