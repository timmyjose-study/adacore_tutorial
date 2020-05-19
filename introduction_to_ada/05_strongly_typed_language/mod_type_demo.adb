with Ada.Text_IO;

procedure Mod_Type_Demo is
   type My_Mod_Type is mod 3**4; -- 0 to 80
begin
   for Num in My_Mod_Type loop
      Ada.Text_IO.Put (My_Mod_Type'Image (Num) & " ");
   end loop;
   Ada.Text_IO.New_Line;
end Mod_Type_Demo;
