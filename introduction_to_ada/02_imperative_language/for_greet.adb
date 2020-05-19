with Ada.Text_IO;

procedure For_Greet is
begin
  for Iter in 1 .. 5 loop
    Ada.Text_IO.Put_Line ("Hello, " & Integer'Image (Iter));
  end loop;
end For_Greet;