LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
--decided to keep all modules in the same file for submission purposes

Entity full_adder is --initialize entity
  port (
      input1  : in  std_logic;
      input2  : in  std_logic;
      i_carry : in  std_logic;
      result   : out std_logic;
      o_carry : out std_logic);
end full_adder;
 
architecture logic of full_adder is
 
begin
 -- logic for a single full adder 
 result <= input1 XOR input2 XOR i_carry ;
 o_carry <= (input1 AND input2) OR (i_carry AND input1) OR (i_carry AND input2) ;
 
end logic;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


Entity Adder is -- initialize entity
Generic ( N : natural := 64 );
Port ( A, B : in std_logic_vector( N-1 downto 0 );
Y : out std_logic_vector( N-1 downto 0 );
-- Control signals
Cin : in std_logic;
-- Status signals
Cout, Ovfl : out std_logic );
End Entity Adder;


architecture rtl of Adder is
 
  component full_adder is --load component into adder
    port (
      input1  : in  std_logic;
      input2  : in  std_logic;
      i_carry : in  std_logic;
      result   : out std_logic;
      o_carry : out std_logic);
  end component full_adder;
 
  signal temp_carry : std_logic_vector(N downto 0); --create temporary signals to hold carry and result of calculation
  signal temp_result   : std_logic_vector(N-1 downto 0);
 
   
begin
 
  temp_carry(0) <= Cin;                   
   
  adder_loop : for i in 0 to N-1 generate -- generate sequence of full adders 
    full_adder_inst : full_adder
      port map (
        input1  => A(i),
        input2  => B(i),
        i_carry => temp_carry(i), 
        result   => temp_result(i),
        o_carry => temp_carry(i+1)
        );
  end generate adder_loop;
 --create and pass output signals
  Y <= temp_result;  
  Cout <= temp_carry(N);
  Ovfl <= temp_carry(N) XOR temp_carry(N-1);
  
   
end rtl;

