with Ada.Text_IO;

procedure Array_Bounds_Example is
   type My_Int is range 0 .. 1000;
   type My_Array is array (11 .. 15) of My_Int;

   Arr : My_Array := (2, 3, 5, 7, 11);
begin
   for Index in My_Array'Range loop
      Ada.Text_IO.Put (My_Int'Image (Arr (Index)) & " ");
   end loop;
   Ada.Text_IO.New_Line;
end Array_Bounds_Example;
