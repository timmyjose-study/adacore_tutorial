with Ada.Text_IO;

with Colors;

procedure Colors_Main is
   C1 : Colors.Color := Colors.Orange;
   C2 : Colors.Color := Colors.Blue;
begin
   Ada.Text_IO.Put_Line
     ("Before swap, C1 = " & Colors.Color'Image (C1) & ", and C2 = " &
      Colors.Color'Image (C2));
   Colors.Swap_Colors (C1, C2);
   Ada.Text_IO.Put_Line
     ("After swap, C1 = " & Colors.Color'Image (C1) & ", and C2 = " &
      Colors.Color'Image (C2));
end Colors_Main;
