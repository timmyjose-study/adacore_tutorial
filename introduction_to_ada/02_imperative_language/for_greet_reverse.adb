with Ada.Text_IO;

procedure For_Greet_Reverse is
begin
  for Iter in reverse 1 .. 5 loop
    Ada.Text_IO.Put_Line ("Hello " & Integer'Image (Iter));
  end loop;
end For_Greet_Reverse;
