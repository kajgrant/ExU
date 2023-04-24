library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity ArithUnit is
Generic ( N : natural := 64 );
Port ( A, B : in std_logic_vector( N-1 downto 0 );
 AddY, Y : out std_logic_vector( N-1 downto 0 );
-- Control signals
AddnSub, ExtWord : in std_logic := '0';
-- Status signals
Cout, Ovfl, Zero, AltB, AltBu : out std_logic );
End Entity ArithUnit;

architecture rtl of ArithUnit is -- declare architecture
signal sgn_ext_vec : unsigned( (N/2)-1 downto 0 );
signal nor_temp : std_logic_vector( N-1 downto 0 );
signal Bsig : std_logic_vector(N-1 downto 0);
signal ZeroVector : std_logic_vector(N-1 downto 0) := (others => '0');

component Adder is -- load component
Port ( A, B : in std_logic_vector( N-1 downto 0 );
Y : out std_logic_vector( N-1 downto 0 );
-- Control signals
Cin : in std_logic;
-- Status signals
Cout, Ovfl : out std_logic );
end component;
begin

Adder1 : entity work.Adder(rtl) -- mapping adder component
		generic map (N => N)
		port map (
			A => A,
			B => Bsig,
			Y => AddY,
			Cin => AddnSub,
			Cout => Cout,
			Ovfl => Ovfl);


ones_complement: process(AddnSub) -- change number into its ones compliment form in order to perform subtraction
begin
	 if AddnSub = '1' then
		Bsig <= NOT B;
	else
		Bsig <= B;
	 end if;
 end process ones_complement;

p_mux : process(AddY, ExtWord) -- sign extention for 32 bit vectors
begin
	case ExtWord is
		when '0' => sgn_ext_vec <= unsigned(AddY(N-1 downto (N/2)));
		when '1' => sgn_ext_vec <= (others => AddY((N/2)-1));
		when others => sgn_ext_vec <= (others => '0');
	end case;
end process p_mux;

Y <= std_logic_vector(sgn_ext_vec) & AddY((N/2)-1 downto 0); -- passing addition output 

nor1: process(AddY) -- nor gate to determine if result of arithmetic is zero
variable result: STD_LOGIC;
    begin
	result := '0';
	for i in 0 to N-1 loop
	    result := result or AddY(i);
	end loop;
        Zero <= not result; -- zero flag
end process nor1;

AltBu <= NOT Cout; -- flag signals for branch and SLT instructions
AltB <= Ovfl XOR AddY(N-1);

end rtl;