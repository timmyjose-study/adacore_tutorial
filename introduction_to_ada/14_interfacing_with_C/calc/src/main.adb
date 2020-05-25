with Ada.Text_IO;
with Interfaces.C;

with Calc;

procedure Main is
   X : constant Interfaces.C.int := 12;
   Y : constant Interfaces.C.int := 3;
begin
   Ada.Text_IO.Put_Line
     (Interfaces.C.int'Image (X) & " + " & Interfaces.C.int'Image (Y) & " = " &
      Interfaces.C.int'Image (Calc.Add (X, Y)));
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put_Line
     (Interfaces.C.int'Image (X) & " - " & Interfaces.C.int'Image (Y) & " = " &
      Interfaces.C.int'Image (Calc.Sub (X, Y)));
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put_Line
     (Interfaces.C.int'Image (X) & " * " & Interfaces.C.int'Image (Y) & " = " &
      Interfaces.C.int'Image (Calc.Mul (X, Y)));
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put_Line
     (Interfaces.C.int'Image (X) & " / " & Interfaces.C.int'Image (Y) & " = " &
      Interfaces.C.int'Image (Calc.Div (X, Y)));
   Ada.Text_IO.New_Line;
end Main;
