library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity ExecUnit is -- initialize entity
Generic ( N : natural := 64 );
Port ( A, B : in std_logic_vector( N-1 downto 0 );
FuncClass, LogicFN, ShiftFN : in std_logic_vector( 1 downto 0 );
AddnSub, ExtWord : in std_logic := '0';
Y : out std_logic_vector( N-1 downto 0 );
Zero, AltB, AltBu : out std_logic );
End Entity ExecUnit;


architecture rtl of ExecUnit is -- declare architecture
signal Cout, Ovfl : std_logic;
signal ArithOut, LogicOut, ShiftOut : std_logic_vector( N-1 downto 0 );
signal AltOut : unsigned( N-1 downto 0 ) := (others => '0');

component ArithUnit is -- add components
Port ( A, B : in std_logic_vector( N-1 downto 0 );
AddY, Y : out std_logic_vector( N-1 downto 0 );
-- Control signals
AddnSub, ExtWord : in std_logic := '0';
-- Status signals
Cout, Ovfl, Zero, AltB, AltBu : out std_logic );
end component;

component ShiftUnit is -- add component
Port ( A, B, C : in std_logic_vector( N-1 downto 0 );
Y : out std_logic_vector( N-1 downto 0 );
ShiftFN : in std_logic_vector( 1 downto 0 );
ExtWord : in std_logic );
end component;

component LogicUnit is -- add component
Port ( A, B : in std_logic_vector( N-1 downto 0 );
			 Y : out std_logic_vector( N-1 downto 0 );
	 LogicFN : in std_logic_vector( 1 downto 0 ) );
end component;

begin


	ArithUnit1 : entity work.ArithUnit(rtl) -- port map to component
			generic map (N => N)
			port map ( 
				A => A,
				B => B,
				AddnSub => AddnSub,
				ExtWord => ExtWord,
				Zero => Zero,
				AltB => AltB,
				AltBu => AltBu,
				Y => ArithOut
			);
			
	ShiftUnit1 : entity work.ShiftUnit(rtl) -- port map to component
			generic map (N => N)
			port map ( 
				A => A,
				B => B,
				C => ArithOut,
				ShiftFN => ShiftFN,
				ExtWord => ExtWord,
				Y => ShiftOut
			);


	LogicUnit1 : entity work.LogicUnit(rtl) -- port map to component
			port map (
				A => A,
				B => B,
				LogicFN => LogicFN,
				Y => LogicOut
			);


	out_mux : process(AltBu, AltB, LogicOut, shiftOut, FuncClass)
	begin
		case FuncClass is -- select signal for multiplexor at execution unit output
			when "11" => Y <= std_logic_vector(AltOut(N-1 downto 1)) & AltBu;
			when "10" => Y <= std_logic_vector(AltOut(N-1 downto 1)) & AltB;
			when "01" => Y <= LogicOut;
			when "00" => Y <= ShiftOut;
			when others => Y <= ShiftOut;
		end case;
	end process out_mux;


end rtl;