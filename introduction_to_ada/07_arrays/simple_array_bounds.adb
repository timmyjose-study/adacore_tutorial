with Ada.Text_IO;

procedure Simple_Array_Bounds is
   type My_Int is range 0 .. 1000;
   -- index type here is a subtype of integer
   type My_Array is array (1 .. 5) of My_Int;

   Arr : My_Array := (2, 3, 5, 7, 11);
begin
   for Index in My_Array'Range loop
      Ada.Text_IO.Put (My_Int'Image (Arr (Index)) & " ");
   end loop;
   Ada.Text_IO.New_Line;
end Simple_Array_Bounds;
