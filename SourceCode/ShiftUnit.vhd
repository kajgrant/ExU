library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.math_real.all; --required for ceil() 

Entity ShiftUnit is -- declare entity
Generic ( N : natural := 64 );
Port ( A, B, C : in std_logic_vector( N-1 downto 0 );
Y : out std_logic_vector( N-1 downto 0 );
ShiftFN : in std_logic_vector( 1 downto 0 );
ExtWord : in std_logic );
End Entity ShiftUnit;

architecture rtl of ShiftUnit is -- initialize signals
signal wordAnd : std_logic;
signal shiftSig : unsigned( integer(ceil(log2(real(N))))-1 downto 0 ); -- determine size of shiftcount vector based on N
signal SLLout, SRLout, SRAout, shiftIn, shiftOut : std_logic_vector( N-1 downto 0 );
signal SwapWord : std_logic_vector( N-1 downto 0 );
signal mux1OutUp, mux1OutLow : std_logic_vector( N-1 downto 0 );
signal mux2OutUp, mux2OutLow : std_logic_vector( N-1 downto 0 );
signal SgnExtUp, SgnExtLow : std_logic_vector( (N/2)-1 downto 0 );	

component SLL64 is -- import component for logical left
Port ( X : in std_logic_vector( N-1 downto 0 );
Y : out std_logic_vector( N-1 downto 0 );
ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) );
end component;

component SRL64 is -- import component for logical right
Port ( X : in std_logic_vector( N-1 downto 0 );
Y : out std_logic_vector( N-1 downto 0 );
ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) );
end component;

component SRA64 is -- import component for arithmetic right shift
Port ( X : in std_logic_vector( N-1 downto 0 );
Y : out std_logic_vector( N-1 downto 0 );
ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) );
end component;

begin

	wordAnd <= ShiftFN(1) AND ExtWord; -- signal to decide if swapping top 32 and bottom 32 bits for 32 bit SRA
	SwapWord <= A((N/2)-1 downto 0) & A((N-1) downto (N/2)) ; -- swapping of the bits

	sixthbit_mask : process(shiftSig, B)
	begin
		case ExtWord is
			when '0' => shiftSig <= unsigned(B(5 downto 0)); -- take last 6 bits for 64 bit number
			when '1' => shiftSig <= '0' & unsigned( B( integer(ceil(log2(real(N))))-2 downto 0 )); -- take last 5 bits for 32 bit number
			when others => shiftSig <= unsigned(B(5 downto 0)); -- others cmd to avoid breaking code
		end case;
	end process sixthbit_mask;

	word_mux : process(A, wordAnd)
	begin
		case wordAnd is -- passing of the swapped or non swapped bits to the shifting units
			when '0' => shiftIn <= A;
			when '1' => shiftIn <= SwapWord;
			when others => shiftIn <= A;
		end case;
	end process word_mux;


	SLL641 : entity work.SLL64(rtl) -- mapping component
			generic map (N => N)
			port map (
				X => shiftIn,
				Y => SLLout,
				ShiftCount => shiftSig
			);

	SRL641 : entity work.SRL64(rtl) -- mapping component
			generic map (N => N)
			port map (
				X => shiftIn,
				Y => SRLout,
				ShiftCount => shiftSig
			);
			
	SRA641 : entity work.SRA64(rtl) -- mapping component
			generic map (N => N)
			port map (
				X => shiftIn,
				Y => SRAout,
				ShiftCount => shiftSig
			);


	shift_mux_low1 : process(SLLOut, C, ShiftFN) -- deciding which output to pass from shifting units
	begin
		case ShiftFN(0) is
			when '0' => mux1OutLow <= C;
			when '1' => mux1OutLow <= SLLout;
			when others => mux1OutLow <= C;
		end case;
	end process shift_mux_low1;

	shift_mux_up1 : process(SRLOut, SRAout, ShiftFN) -- deciding which output to pass from shifting units
	begin
		case ShiftFN(0) is
			when '0' => mux1OutUp <= SRLout;
			when '1' => mux1OutUp <= SRAout;
			when others => mux1OutUp <= SRLout;
		end case;
	end process shift_mux_up1;

	sgnExtLow <= (others => mux1OutLow((N/2)-1)); -- sign extention creation
	sgnExtUp <= (others => mux1OutUp((N-1)));

	shift_mux_low2 : process(mux1OutLow, SgnExtLow, ExtWord)
	begin
		case ExtWord is -- sign extention passing
			when '0' => mux2OutLow <= mux1OutLow;
			when '1' => mux2OutLow <= std_logic_vector(SgnExtLow) & mux1OutLow((N/2)-1 downto 0);
			when others => mux2OutLow <= mux1OutLow;
		end case;
	end process shift_mux_low2;

	shift_mux_up2 : process(mux1OutUp, SgnExtUp, ExtWord)
	begin
		case ExtWord is -- sign extention passing
			when '0' => mux2OutUp <= mux1OutUp;
			when '1' => mux2OutUp <= std_logic_vector(SgnExtUp) & mux1OutUp((N-1) downto (N/2));
			when others => mux2OutUp <= mux1OutUp;
		end case;
	end process shift_mux_up2;

	shift_final_mux : process(mux2OutUp, mux2OutLow, ShiftFN) -- final mux for filtering output from top or bottom half of circuit
	begin
		case ShiftFN(1) is
			when '0' => shiftOut <= mux2OutLow;
			when '1' => shiftOut <= mux2OutUp;
			when others => shiftOut <= mux2OutLow;
		end case;
	end process shift_final_mux;
	
	Y <= shiftOut;

end rtl;