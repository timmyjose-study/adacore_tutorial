with Ada.Text_IO;

procedure Index_Type_Mismatch is
   type My_Int is range 0 .. 1000;
   type My_Index is range 1 .. 5;
   type Your_Index is range 1 .. 5;

   type My_Array is array (My_Index) of My_Int;

   Arr : My_Array := (2, 3, 5, 7, 11);
begin
   -- this would not compile due to type mismatch
   --for Index in Your_Index loop
   --   Ada.Text_IO.Put (My_Int'Image (Arr (Index)) & " ");
   --end loop;
   --Ada.Text_IO.New_Line;

   -- this works as expected
   for Index in My_Index loop
     Ada.Text_IO.Put (My_Int'Image (Arr (Index)) & " ");
   end loop;
   Ada.Text_IO.New_Line;
end Index_Type_Mismatch;
