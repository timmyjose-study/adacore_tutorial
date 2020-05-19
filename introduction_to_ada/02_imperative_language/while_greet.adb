with Ada.Text_IO;

procedure While_Greet is
  N: Integer := 1;
begin
  while N <= 5 loop
    Ada.Text_IO.Put_Line ("Hello " & Integer'Image (N));
    N := N + 1;
  end loop;
end While_Greet;