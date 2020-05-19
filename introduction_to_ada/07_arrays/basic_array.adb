with Ada.Text_IO;

procedure Basic_Array is
   type My_Int is range 0 .. 1000;
   type My_Index is range 1 .. 5;
   type My_Array is array (My_Index) of My_Int;

   Arr : My_Array := (2, 3, 5, 7, 11);
begin
   for Index in My_Array'Range loop
      Ada.Text_IO.Put (My_Int'Image (Arr (Index)) & " ");
   end loop;
   Ada.Text_IO.New_Line;

   for Index in My_Index loop
      Ada.Text_IO.Put (My_Int'Image (Arr (Index)) & " ");
   end loop;
   Ada.Text_IO.New_Line;

   for Index in My_Array'First .. My_Array'Last loop
      Ada.Text_IO.Put (My_Int'Image (Arr (Index)) & " ");
   end loop;
   Ada.Text_IO.New_Line;

   for Index in My_Index'First .. My_Index'Last loop
     Ada.Text_IO.Put (My_Int'Image (Arr (Index)) &  " ");
   end loop;
   Ada.Text_IO.New_Line;
end Basic_Array;
