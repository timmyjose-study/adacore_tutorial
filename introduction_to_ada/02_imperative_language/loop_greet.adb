with Ada.Text_IO;

procedure Loop_Greet is
   N : Integer;
begin
   N := 1;

   loop
      Ada.Text_IO.Put_Line ("Hello " & Integer'Image (N));
      exit when N = 5;
      N := N + 1;
   end loop;
end Loop_Greet;
