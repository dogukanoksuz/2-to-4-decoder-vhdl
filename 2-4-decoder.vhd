-- Dogukan Oksuz / 365304

Library IEEE;
Use IEEE.STD_logic_1164.all;

Entity two_to_four_decoder is
  Port(
    input: in std_logic_vector(1 downto 0);
    output: out std_logic_vector(3 downto 0)
  );
end two_to_four_decoder;

Architecture Behv of two_to_four_decoder is
Begin
  output(0) <= (not input(0)) and (not input(1));
  output(1) <= (input(0)) and (not input(1));
  output(2) <= (not input(0)) and (input(1));
  output(3) <= (input(0)) and (input(1));
end Behv;