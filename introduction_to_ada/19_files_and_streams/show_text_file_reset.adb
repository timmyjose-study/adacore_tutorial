with Ada.Text_IO;

procedure Show_Text_File_Reset is
   F         : Ada.Text_IO.File_Type;
   File_Name : constant String := "simple.txt";

   procedure Write_To_File (F : in out Ada.Text_IO.File_Type) is
   begin
      while not Ada.Text_IO.End_Of_File (Ada.Text_IO.Standard_Input) loop
         declare
            Line : String := Ada.Text_IO.Get_Line;
         begin
            Ada.Text_IO.Put_Line (F, Line);
         end;
      end loop;
   end Write_To_File;

   procedure Read_From_File (F : in Ada.Text_IO.File_Type) is
   begin
      while not Ada.Text_IO.End_Of_File (F) loop
         declare
            Line : String := Ada.Text_IO.Get_Line (F);
         begin
            Ada.Text_IO.Put_Line (Ada.Text_IO.Standard_Output, Line);
         end;
      end loop;
   end Read_From_File;
begin
   Ada.Text_IO.Create
     (File => F, Mode => Ada.Text_IO.Out_File, Name => File_Name);

   Write_To_File (F);
   Ada.Text_IO.Close (F);

   Ada.Text_IO.Open
     (File => F, Mode => Ada.Text_IO.In_File, Name => File_Name);

   Read_From_File (F);
   Ada.Text_IO.Close (F);

   Ada.Text_IO.Open
     (File => F, Mode => Ada.Text_IO.Out_File, Name => File_Name);

   Ada.Text_IO.Put_Line ("Resetting file...");
   Ada.Text_IO.Reset (F);
   Ada.Text_IO.Close (F);

   Ada.Text_IO.Open
     (File => F, Mode => Ada.Text_IO.In_File, Name => File_Name);
   Read_From_File (F);

   Ada.Text_IO.Delete (F);
end Show_Text_File_Reset;
