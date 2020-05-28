with Ada.Text_IO;
with Ada.Streams.Stream_IO;

procedure Show_String_Stream is
   F         : Ada.Streams.Stream_IO.File_Type;
   S         : Ada.Streams.Stream_IO.Stream_Access;
   File_Name : constant String := "out.bin";

   procedure Output
     (S :    Ada.Streams.Stream_IO.Stream_Access; String_Value : in String;
      Float_Value : in Float)
   is
   begin
      String'Output (S, String_Value);
      Float'Output (S, Float_Value);
   end Output;

   procedure Display_Read (S : Ada.Streams.Stream_IO.Stream_Access) is
      String_Value : String := String'Input (S);
      Float_Value  : Float  := Float'Input (S);
   begin
      Ada.Text_IO.Put_Line (Float'Image (Float_Value) & " " & String_Value);
   end Display_Read;
begin
   Ada.Streams.Stream_IO.Create
     (File => F, Mode => Ada.Streams.Stream_IO.Out_File, Name => File_Name);

   S := Ada.Streams.Stream_IO.Stream (F);

   Output (S, "Hello", 1.234);
   Output (S, "World", -99.922);
   Output (S, "Again", 0.000);
   Output (S, "We", 129.166);
   Output (S, "Meet!", 0.008_978);

   Ada.Streams.Stream_IO.Close (F);

   Ada.Streams.Stream_IO.Open
     (File => F, Mode => Ada.Streams.Stream_IO.In_File, Name => File_Name);

   S := Ada.Streams.Stream_IO.Stream (F);

   while not Ada.Streams.Stream_IO.End_Of_File (F) loop
      Display_Read (S);
   end loop;
   Ada.Streams.Stream_IO.Delete (F);
end Show_String_Stream;
