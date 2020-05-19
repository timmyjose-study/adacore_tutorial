with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Integer_Index_Range is
   type Integer_Array is array (Natural range <>) of Integer;

   Arr : constant Integer_Array := (2, 3, 5, 7, 11);
begin
   for Index in reverse Arr'Range loop
      Ada.Integer_Text_IO.Put (Arr (Index));
   end loop;
   Ada.Text_IO.New_Line;
end Integer_Index_Range;
