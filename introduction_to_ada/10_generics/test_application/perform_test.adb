with Ada.Text_IO;

procedure Perform_Test (Arr : in out Array_T) is
begin
   for E of Arr loop
      Ada.Text_IO.Put_Line (S & " : " & Image (E));
   end loop;

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("Testing " & S & "...");
   Ada.Text_IO.New_Line;

   Test (Arr);

   for E of Arr loop
      Ada.Text_IO.Put_Line (S & " : " & Image (E));
   end loop;
end Perform_Test;
