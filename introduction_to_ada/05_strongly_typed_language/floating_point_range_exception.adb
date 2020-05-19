with Ada.Text_IO;

procedure Floating_Point_Range_Exception is
   type Norm_Float is new Float range -1.0 .. 1.0;
   F : Norm_Float;
begin
   -- this will raise a constraint error at runtime
   F := 2.0;
   Ada.Text_IO.Put_Line (Norm_Float'Image (F));
end Floating_Point_Range_Exception;
