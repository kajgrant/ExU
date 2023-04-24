library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity LogicUnit is -- initialize entity
Generic ( N : natural := 64 );
Port ( A, B : in std_logic_vector( N-1 downto 0 );
Y : out std_logic_vector( N-1 downto 0 );
LogicFN : in std_logic_vector( 1 downto 0 ) );
End Entity LogicUnit;


architecture rtl of LogicUnit is -- declare architecture
begin

p_mux : process(A, B, LogicFN) -- multiplexor to determine logic operation performed if any and pass it to output signal.
begin
	case LogicFN is
		when "00" => Y <= B;
		when "01" => Y <= A XOR B;
		when "10" => Y <= A OR B;
		when "11" => Y <= A AND B;
		when others => Y <= B;
	end case;
end process p_mux;

end rtl;