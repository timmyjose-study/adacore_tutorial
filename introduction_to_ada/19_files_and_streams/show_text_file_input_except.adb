with Ada.Text_IO;

procedure Show_Text_File_Input_Except is
   F         : Ada.Text_IO.File_Type;
   File_Name : constant String := "simple.txt";
begin
   Ada.Text_IO.Create
     (File => F, Mode => Ada.Text_IO.Out_File, Name => File_Name);

   Ada.Text_IO.Delete (F);

   -- this triggers an exception
   Ada.Text_IO.Open
     (File => F, Mode => Ada.Text_IO.In_File, Name => File_Name);
   Ada.Text_IO.Close (F);
exception
   when Ada.Text_IO.Name_Error =>
      Ada.Text_IO.Put_Line (Ada.Text_IO.Standard_Error, "file does not exist");
   when others =>
      Ada.Text_IO.Put_Line
        (Ada.Text_IO.Standard_Error, "error while trying to read file");
end Show_Text_File_Input_Except;
