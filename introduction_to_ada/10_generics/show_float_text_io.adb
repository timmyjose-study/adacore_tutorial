with Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Numerics;

procedure Show_Float_Text_IO is
   Float1 : Float := 2.78128;
   Float2 : Float := Ada.Numerics.Pi;
begin
   Ada.Float_Text_IO.Put (Float1, Fore => 10, Aft => 5, Exp => 0);
   Ada.Text_IO.New_Line;
   Ada.Float_Text_IO.Put (Float2, Fore => 5, Aft => 5, Exp => 0);
   Ada.Text_IO.New_Line;
end Show_Float_Text_IO;
