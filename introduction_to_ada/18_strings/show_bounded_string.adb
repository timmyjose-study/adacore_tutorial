with Ada.Text_IO;
with Ada.Strings.Bounded;

procedure Show_Bounded_String is
   -- bounded strings are generic on the maximum length of string to be
   -- potentially stored in them
   package B_Str is new Ada.Strings.Bounded.Generic_Bounded_Length (Max => 15);
   package Another_B_Str is new Ada.Strings.Bounded.Generic_Bounded_Length
     (Max => 100);

   S1, S2 : B_Str.Bounded_String;
   S3     : Another_B_Str.Bounded_String;

   procedure Display_String_Info (S : B_Str.Bounded_String) is
   begin
      Ada.Text_IO.Put_Line ("String: " & B_Str.To_String (S));
      Ada.Text_IO.Put_Line ("Length: " & Integer'Image (B_Str.Length (S)));
      Ada.Text_IO.Put_Line ("Max length: " & Integer'Image (B_Str.Max_Length));
      Ada.Text_IO.New_Line;
   end Display_String_Info;

   procedure Display_Another_String_Info (S : Another_B_Str.Bounded_String) is
   begin
      Ada.Text_IO.Put_Line ("String: " & Another_B_Str.To_String (S));
      Ada.Text_IO.Put_Line
        ("Length: " & Integer'Image (Another_B_Str.Length (S)));
      Ada.Text_IO.Put_Line
        ("Max length: " & Integer'Image (Another_B_Str.Max_Length));
      Ada.Text_IO.New_Line;
   end Display_Another_String_Info;
begin
   S1 := B_Str.To_Bounded_String ("Hello");
   Display_String_Info (S1);

   S2 := B_Str.To_Bounded_String ("Hello, world");
   Display_String_Info (S2);

   S1 :=
     B_Str.To_Bounded_String
       ("This is a very long line indeed ...", Ada.Strings.Right);
   Display_String_Info (S1);

   S1 :=
     B_Str.To_Bounded_String
       ("This is a very long line indeed ...", Ada.Strings.Left);
   Display_String_Info (S1);

   S3 :=
     Another_B_Str.To_Bounded_String
       ("Hola, mundo! Como estas? Muy bien, gracias!");
   Display_Another_String_Info (S3);
end Show_Bounded_String;
