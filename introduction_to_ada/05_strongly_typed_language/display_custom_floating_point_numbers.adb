with Ada.Text_IO;

procedure Display_Custom_Floating_Point_Types is
   type T3 is digits 3;
   type T15 is digits 15;
   type T18 is digits 18;

   CI : constant := 1.0e-4; -- type inference, what?

   F3  : T3  := 1.0 + CI;
   F15 : T15 := 1.0 + CI;
   F18 : T18 := 1.0 + CI;
begin
   Ada.Text_IO.Put_Line (T3'Image (F3));
   Ada.Text_IO.Put_Line (T15'Image (F15));
   Ada.Text_IO.Put_Line (T18'Image (F18));
end Display_Custom_Floating_Point_Types;
