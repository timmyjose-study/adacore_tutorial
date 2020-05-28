with Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Sequential_IO;

procedure Show_Seq_Float_IO is
   package Float_IO is new Ada.Sequential_IO (Element_Type => Float);

   F         : Float_IO.File_Type;
   File_Name : constant String := "floats.bin";
begin
   Float_IO.Create (File => F, Mode => Float_IO.Out_File, Name => File_Name);

   Float_IO.Write (F, 1.5);
   Float_IO.Write (F, 2.34);
   Float_IO.Write (F, -1.23);
   Float_IO.Write (F, 99.12);
   Float_IO.Write (F, -0.012_3);

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
end Show_Seq_Float_IO;
