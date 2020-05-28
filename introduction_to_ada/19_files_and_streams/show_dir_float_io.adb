with Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Direct_IO;

procedure Show_Dir_Float_IO is
   package Float_IO is new Ada.Direct_IO (Element_Type => Float);

   F         : Float_IO.File_Type;
   File_Name : constant String := "float_dir.bin";
begin
   Float_IO.Create (File => F, Mode => Float_IO.Out_File, Name => File_Name);

   Float_IO.Write (F, 1.23);
   Float_IO.Write (F, -0.234_5);
   Float_IO.Write (F, 11.82);
   Float_IO.Write (F, -23.23);
   Float_IO.Write (F, 0.0);

   Float_IO.Close (F);

   declare
      Value : Float;
   begin
      Float_IO.Open (File => F, Mode => Float_IO.In_File, Name => File_Name);

      while not Float_IO.End_Of_File (F) loop
         Float_IO.Read (F, Value);
         Ada.Float_Text_IO.Put (Value, Fore => 10, Aft => 5, Exp => 0);
         Ada.Text_IO.New_Line;
      end loop;
      Float_IO.Delete (F);
   end;
end Show_Dir_Float_IO;
