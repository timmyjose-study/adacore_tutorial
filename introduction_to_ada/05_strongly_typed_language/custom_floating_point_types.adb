with Ada.Text_IO;

procedure Custom_Floating_Point_Types is
   type F3 is digits 3;
   type F15 is digits 15;
   type F18 is digits 18; -- maximum allowed value for digits - uses 128 bits
begin
   Ada.Text_IO.Put_Line ("F3 requires " & Integer'Image (F3'Size) & " bits");
   Ada.Text_IO.Put_Line ("F15 requires " & Integer'Image (F15'Size) & " bits");
   Ada.Text_IO.Put_Line ("F18 requires " & Integer'Image (F18'Size) & " bits");
end Custom_Floating_Point_Types;
