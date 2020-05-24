with Ada.Text_IO;
with Ada.Strings.Unbounded;
with Ada.Text_IO.Unbounded_IO;
with Ada.Exceptions;

procedure Open_File is
   File_Name : Ada.Strings.Unbounded.Unbounded_String :=
     Ada.Strings.Unbounded.Null_Unbounded_String;
begin
   Ada.Text_IO.Put ("Enter the file name: ");
   File_Name := Ada.Text_IO.Unbounded_IO.Get_Line;
   declare
      File_Handle : Ada.Text_IO.File_Type;
   begin
      Ada.Text_IO.Open
        (File => File_Handle, Mode => Ada.Text_IO.In_File,
         Name => Ada.Strings.Unbounded.To_String (File_Name));
   exception
      when E : Ada.Text_IO.Name_Error =>
         Ada.Text_IO.Put_Line
           ("Cannot open input file: " & Ada.Exceptions.Exception_Message (E));
         raise; -- propagate the error upwards
   end;
end Open_File;
