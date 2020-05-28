with Ada.Text_IO;
with Ada.Sequential_IO;

procedure Show_Seq_Rec_IO is
   type Num_Info is record
      Valid : Boolean := False;
      Value : Float;
   end record;

   procedure Display_Num_Info (N : in Num_Info) is
   begin
      if N.Valid then
         Ada.Text_IO.Put_Line ("(ok, " & Float'Image (N.Value) & ")");
      else
         Ada.Text_IO.Put_Line ("(not ok, ----------)");
      end if;
   end Display_Num_Info;

   package Num_Info_IO is new Ada.Sequential_IO (Element_Type => Num_Info);

   F         : Num_Info_IO.File_Type;
   File_Name : constant String := "num_info_file.bin";
begin
   Num_Info_IO.Create
     (File => F, Mode => Num_Info_IO.Out_File, Name => File_Name);

   Num_Info_IO.Write (F, (True, 1.345));
   Num_Info_IO.Write (F, (False, -1.234));
   Num_Info_IO.Write (F, (True, -0.000_023));
   Num_Info_IO.Write (F, (False, 12.278_2));
   Num_Info_IO.Write (F, (True, 2.781_28));

   Num_Info_IO.Close (F);

   declare
      Rec : Num_Info;
   begin
      Num_Info_IO.Open
        (File => F, Mode => Num_Info_IO.In_File, Name => File_Name);
      while not Num_Info_IO.End_Of_File (F) loop
         Num_Info_IO.Read (F, Rec);
         Display_Num_Info (Rec);
      end loop;
      Num_Info_IO.Delete (F);
   end;
end Show_Seq_Rec_IO;
