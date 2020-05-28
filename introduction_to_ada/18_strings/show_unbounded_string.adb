with Ada.Text_IO;
with Ada.Strings.Unbounded;

procedure Show_Unbounded_String is
   S1, S2 : Ada.Strings.Unbounded.Unbounded_String;

   procedure Display_String_Info
     (S : in Ada.Strings.Unbounded.Unbounded_String)
   is
   begin
      Ada.Text_IO.Put_Line ("String: " & Ada.Strings.Unbounded.To_String (S));
      Ada.Text_IO.Put_Line
        ("Length: " & Integer'Image (Ada.Strings.Unbounded.Length (S)));
   end Display_String_Info;
begin
   S1 := Ada.Strings.Unbounded.To_Unbounded_String ("Hello");
   Display_String_Info (S1);

   S2 := Ada.Strings.Unbounded.To_Unbounded_String ("world");
   Display_String_Info (S2);

   Ada.Strings.Unbounded.Append (S1, "again");
   Ada.Strings.Unbounded.Append (S1, S2);
   Display_String_Info (S1);
end Show_Unbounded_String;
