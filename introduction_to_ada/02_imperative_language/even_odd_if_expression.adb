with Ada.Text_IO;

procedure Even_Odd_If_Expression is
begin
  for Num in 1 .. 10 loop
    Ada.Text_IO.Put_Line (Integer'Image (Num) & (if Num mod 2 = 0 then " is even" else " is odd"));
  end loop;
end Even_Odd_If_Expression;
