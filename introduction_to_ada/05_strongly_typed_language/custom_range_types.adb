with Ada.Text_IO;

procedure Custom_Range_Types is
  type Custom_Float is digits 5 range -6.0 .. 10.0;
  F: Custom_Float;
begin
  F := 3.24;
  Ada.Text_IO.Put_Line (Custom_Float'Image (F));

  F := 3.191919124;
  Ada.Text_IO.Put_Line (Custom_Float'Image (F));

end Custom_Range_Types;