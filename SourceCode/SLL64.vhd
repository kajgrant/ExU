library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.math_real.all; --required for ceil() 

Entity SLL64 is -- declare entity
Generic ( N : natural := 64 );
Port ( X : in std_logic_vector( N-1 downto 0 );
Y : out std_logic_vector( N-1 downto 0 );
ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) );
End Entity SLL64;

architecture rtl of SLL64 is -- declare architecture
signal mout1, mout2, mout3 : std_logic_vector( N-1 downto 0 );
begin

shift1_mux : process(X, ShiftCount)
begin
    case ShiftCount(5 downto 4)  is -- first mux deciding 0 16 32 48 bit shift using most significant bits of shiftcount
        when "00" => mout1 <= X;
        when "01" => mout1 <= std_logic_vector(shift_left(unsigned(X),16));
        when "10" => mout1 <= std_logic_vector(shift_left(unsigned(X),32));
        when "11" => mout1 <= std_logic_vector(shift_left(unsigned(X),48));
        when others => mout1 <= X;
    end case;
end process shift1_mux;

shift2_mux : process(mout1, ShiftCount)
begin
    case ShiftCount(3 downto 2) is -- second mux deciding 0 4 8 12 bit shift using middle bits of shiftcount
        when "00" => mout2 <= mout1;
        when "01" => mout2 <= std_logic_vector(shift_left(unsigned(mout1),4));
        when "10" => mout2 <= std_logic_vector(shift_left(unsigned(mout1),8));
        when "11" => mout2 <= std_logic_vector(shift_left(unsigned(mout1),12));
        when others => mout2 <= mout1;
    end case;
end process shift2_mux;

shift3_mux : process(mout2, ShiftCount)
begin
    case ShiftCount(1 downto 0) is -- third mux deciding 0 1 2 3 bit shift using least significant bits of shiftcount
        when "00" => mout3 <= mout2;
        when "01" => mout3 <= std_logic_vector(shift_left(unsigned(mout2),1));
        when "10" => mout3 <= std_logic_vector(shift_left(unsigned(mout2),2));
        when "11" => mout3 <= std_logic_vector(shift_left(unsigned(mout2),3));
        when others => mout3 <= mout2;
    end case;
end process shift3_mux;

Y <= mout3; -- passing output


end rtl;