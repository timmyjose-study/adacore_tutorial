-- While both Ada.Sequential_IO and Ada.Direct_IO work with binary data, they
-- are generic and therefore need to be specialised for specific data types.
-- For general binary I/O, Ada.Streams.Stream_IO works best since it handles
-- any data type.

with Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.Streams.Stream_IO;

procedure Show_Float_Stream is
   F         : Ada.Streams.Stream_IO.File_Type;
   S         : Ada.Streams.Stream_IO.Stream_Access;
   File_Name : constant String := "float_file.bin";
begin
   Ada.Streams.Stream_IO.Create
     (File => F, Mode => Ada.Streams.Stream_IO.Out_File, Name => File_Name);

   S := Ada.Streams.Stream_IO.Stream (F);

   Float'Write (S, 1.23);
   Float'Write (S, -0.99);
   Float'Write (S, 31.023);
   Float'Write (S, -99.912);
   Float'Write (S, 09.23);

   Ada.Streams.Stream_IO.Close (F);

   declare
      Value : Float;
   begin
      Ada.Streams.Stream_IO.Open
        (File => F, Mode => Ada.Streams.Stream_IO.In_File, Name => File_Name);
      S := Ada.Streams.Stream_IO.Stream (F);

      while not Ada.Streams.Stream_IO.End_Of_File (F) loop
         Float'Read (S, Value);
         Ada.Float_Text_IO.Put (Value, Fore => 10, Aft => 5, Exp => 0);
         Ada.Text_IO.New_Line;
      end loop;
      Ada.Streams.Stream_IO.Delete (F);
   end;
end Show_Float_Stream;
