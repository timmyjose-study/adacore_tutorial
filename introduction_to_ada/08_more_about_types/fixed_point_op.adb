with Ada.Text_IO;
with Ada.Float_Text_IO;

procedure Fixed_Point_Op is
   type TQ31 is delta 2.0**(-31) range -1.0 .. 1.0 - 2.0**(-31);

   A, B, R    : TQ31;
   FA, FB, FR : Float;
begin
   A  := 0.25;
   FA := 0.25;

   B  := 0.50;
   FB := 0.50;

   R  := A + B;
   FR := FA + FB;
   Ada.Text_IO.Put_Line (TQ31'Image (R));
   Ada.Text_IO.Put_Line (Float'Image (FR));
   Ada.Float_Text_IO.Put (FR, Aft => 5, Exp => 0);
   Ada.Text_IO.New_Line;
end Fixed_Point_Op;
