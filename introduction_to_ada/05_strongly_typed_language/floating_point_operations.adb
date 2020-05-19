with Ada.Text_IO;

procedure Floating_Point_Operations is
   A : Float := 2.5;
begin
   A := abs (A - 4.5);
   Ada.Text_IO.Put_Line ("A = " & Float'Image (A));

   A := A**2 + 1.0;
   Ada.Text_IO.Put_Line ("A = " & Float'Image (A));
end Floating_Point_Operations;
