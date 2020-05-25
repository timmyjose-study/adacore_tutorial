with Ada.Text_IO;

with Newtypes;

procedure Newtypes_Main is
   P : Newtypes.Point_Type := Newtypes.Point_Type'(X => 100, Y => 200);
begin
   Ada.Text_IO.Put_Line
     ("Point { X = " & Integer'Image (P.X) & ", Y = " & Integer'Image (P.Y) &
      " }");
end Newtypes_Main;
