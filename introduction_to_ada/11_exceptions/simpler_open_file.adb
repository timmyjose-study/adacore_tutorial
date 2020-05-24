with Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded;
with Ada.Exceptions;

procedure Simpler_Open_File is
   File_Name : Ada.Strings.Unbounded.Unbounded_String :=
     Ada.Strings.Unbounded.Null_Unbounded_String;
   File_Handle : Ada.Text_IO.File_Type;
begin
   Ada.Text_IO.Put ("Enter the file name: ");
   File_Name := Ada.Text_IO.Unbounded_IO.Get_Line;

   Ada.Text_IO.Open
     (File => File_Handle, Mode => Ada.Text_IO.In_File,
      Name => Ada.Strings.Unbounded.To_String (File_Name));
exception
   when E : Ada.Text_IO.Name_Error =>
      Ada.Text_IO.Put_Line
        ("Cannot open file : " & Ada.Exceptions.Exception_Message (E));
      raise;
   when others =>
      Ada.Text_IO.Put_Line
        (Ada.Text_IO.Standard_Error, "Some other error occurred");
end Simpler_Open_File;
