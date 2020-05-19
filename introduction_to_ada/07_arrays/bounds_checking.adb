with Ada.Text_IO;

procedure Bounds_Checking is
   type My_Int is range 0 .. 1000;
   type My_Index is range 1 .. 5;
   type My_Array is array (My_Index) of My_Int;

   Arr : My_Array := (2, 3, 5, 7, 11);
begin
   --- this example raises a constraint error when I reaches 6, since it is
   -- then outside the range of My_Index
   for I in My_Index range 2 .. 6 loop
      Ada.Text_IO.Put (My_Int'Image (Arr (I)) & " ");
   end loop;
   Ada.Text_IO.New_Line;
end Bounds_Checking;
