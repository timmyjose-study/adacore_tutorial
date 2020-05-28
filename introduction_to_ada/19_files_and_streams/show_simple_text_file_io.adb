with Ada.Text_IO;

procedure Show_Simple_Text_File_IO is
   F         : Ada.Text_IO.File_Type;
   File_Name : constant String := "simple.text";
begin
   Ada.Text_IO.Create
     (File => F, Mode => Ada.Text_IO.Out_File, Name => File_Name);

   Ada.Text_IO.Put_Line (F, "This is the first line");
   Ada.Text_IO.Put_Line (F, "This is the second line");
   Ada.Text_IO.Put_Line (F, "This is the third line");
   Ada.Text_IO.Put_Line (F, "This is the fourth line");
   Ada.Text_IO.Put_Line (F, "This is the fifth line");

   Ada.Text_IO.Close (F);

   Ada.Text_IO.Open
     (File => F, Mode => Ada.Text_IO.In_File, Name => File_Name);

   while not Ada.Text_IO.End_Of_File (F) loop
      Ada.Text_IO.Put_Line
        (Ada.Text_IO.Standard_Output, Ada.Text_IO.Get_Line (F));
   end loop;

   -- cleanup - this will also automatically close the file handle
   Ada.Text_IO.Delete (F);
end Show_Simple_Text_File_IO;
