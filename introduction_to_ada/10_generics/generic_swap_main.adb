with Ada.Text_IO;

with Colors;
with Generic_Swap;

procedure Generic_Swap_Main is
   procedure Swap_Colors is new Generic_Swap (T => Colors.Color);
   procedure Swap_Integers is new Generic_Swap (T => Integer);
   procedure Swap_Booleans is new Generic_Swap (T => Boolean);

   C1 : Colors.Color := Colors.Green;
   C2 : Colors.Color := Colors.Orange;

   I1 : Integer := 100;
   I2 : Integer := -200;

   B1 : Boolean := False;
   B2 : Boolean := True;
begin
   Ada.Text_IO.Put_Line
     ("Before swap, C1 = " & Colors.Color'Image (C1) & ", and C2 = " &
      Colors.Color'Image (C2));
   Swap_Colors (C1, C2);
   Ada.Text_IO.Put_Line
     ("After swap, C1 = " & Colors.Color'Image (C1) & ", and C2 = " &
      Colors.Color'Image (C2));

   Ada.Text_IO.Put_Line
     ("Before swap, I1 = " & Integer'Image (I1) & ", and I2 = " &
      Integer'Image (I2));
   Swap_Integers (I1, I2);
   Ada.Text_IO.Put_Line
     ("After swap, I1 = " & Integer'Image (I1) & ", and I2 = " &
      Integer'Image (I2));

   Ada.Text_IO.Put_Line
     ("Before swap, B1 " & Boolean'Image (B1) & ", and C2 = " &
      Boolean'Image (B2));
   Swap_Booleans (B1, B2);
   Ada.Text_IO.Put_Line
     ("After swap, B1 = " & Boolean'Image (B1) & ", and C2 = " &
      Boolean'Image (B2));
end Generic_Swap_Main;
