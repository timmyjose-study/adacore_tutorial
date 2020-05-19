with Ada.Text_IO;

procedure For_Greet_No_Op is
begin
  for Iter in reverse 5 .. 1 loop
    Ada.Text_IO.Put_Line ("This line will never be printed.");
  end loop;
end For_Greet_No_Op;