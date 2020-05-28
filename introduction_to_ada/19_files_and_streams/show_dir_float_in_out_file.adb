with Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Direct_IO;

procedure Show_Dir_Float_In_Out_File is
   package Float_IO is new Ada.Direct_IO (Element_Type => Float);
   use Float_IO;

   F         : Float_IO.File_Type;
   File_Name : constant String := "float_file.bin";
begin
   Float_IO.Create (File => F, Mode => Float_IO.Inout_File, Name => File_Name);

   Float_IO.Write (F, 1.123);
   Float_IO.Write (F, -1.234);
   Float_IO.Write (F, -19.017_8);
   Float_IO.Write (F, 21.0023);
   Float_IO.Write (F, -0.999);

   -- set index to previous location and overwrite the last value
   Float_IO.Set_Index (F, Float_IO.Index (F) - 1);
   Float_IO.Write (F, 99.999);

   declare
      Value : Float;
   begin
      -- reset index to beginning of file
      Float_IO.Set_Index (F, 1);

      while not Float_IO.End_Of_File (F) loop
         Float_IO.Read (F, Value);
         Ada.Float_Text_IO.Put (Value, Fore => 10, Aft => 7, Exp => 0);
         Ada.Text_IO.New_Line;
      end loop;
   end;
   Float_IO.Delete (F);
end Show_Dir_Float_In_Out_File;
