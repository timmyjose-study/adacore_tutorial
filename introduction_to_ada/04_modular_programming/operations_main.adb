with Ada.Text_IO;

with Operations;

procedure Operations_Main is
   N  : Integer := 1;
   By : Integer := 0;
begin
   Ada.Text_IO.Put_Line ("N is " & Integer'Image (N));
   Ada.Text_IO.Put_Line
     ("Last increment value (default value) = " &
      Integer'Image (Operations.Get_Increment_Value));

   N := Operations.Increment_By (N, 2);

   Ada.Text_IO.Put_Line ("N is now " & Integer'Image (N));
   Ada.Text_IO.Put_Line
     ("Last increment value = " &
      Integer'Image (Operations.Get_Increment_Value));

   N := Operations.Increment_By (N, By => 12);

   Ada.Text_IO.Put_Line ("N is now " & Integer'Image (N));
   Ada.Text_IO.Put_Line
     ("Last increment value = " &
      Integer'Image (Operations.Get_Increment_Value));
end Operations_Main;
