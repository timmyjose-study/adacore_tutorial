with Ada.Text_IO;

with Record_Discriminants; use Record_Discriminants;

procedure Record_Discriminants_Main is
begin
   Ada.Text_IO.Put_Line
     ("Point { X = " & Natural'Image (P1.X) & ", Y = " & Natural'Image (P1.Y) &
      " }");
   Ada.Text_IO.Put_Line
     ("Point { X = " & Natural'Image (P2.X) & ", Y = " & Natural'Image (P2.Y) &
      " }");
end Record_Discriminants_Main;
