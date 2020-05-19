with Ada.Text_IO;

procedure Integer_Type_Example is
   type My_Int is range -1 .. 20;
begin
   for Num in My_Int loop
      Ada.Text_IO.Put (My_Int'Image (Num) & " ");
   end loop;
   Ada.Text_IO.New_Line;

   -- same as above
   for Num in My_Int'Range loop
      Ada.Text_IO.Put (My_Int'Image (Num) & " ");
   end loop;
   Ada.Text_IO.New_Line;

   -- still more explicit
   for Num in My_Int'First .. My_Int'Last loop
     Ada.Text_IO.Put (My_Int'Image (Num) & " ");
   end loop;
   Ada.Text_IO.New_Line;
end Integer_Type_Example;
