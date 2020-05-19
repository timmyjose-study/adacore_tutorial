with Ada.Text_IO;

procedure Floating_Point_Range is
   type Norm_Float is new Float range -1.0 .. 1.0;
   F : Norm_Float;
begin
   F := 0.86;
   Ada.Text_IO.Put_Line (Norm_Float'Image (F));
end Floating_Point_Range;
