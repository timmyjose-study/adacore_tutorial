with Ada.Text_IO;
with Ada.Strings.Bounded;

procedure Show_Bounded_String_Ops is
   package B_Str is new Ada.Strings.Bounded.Generic_Bounded_Length (Max => 10);

   S1, S2 : B_Str.Bounded_String;
begin
   S1 := B_Str.To_Bounded_String ("Hello");
   Ada.Text_IO.Put_Line ("S1 = " & B_Str.To_String (S1));
   S2 := B_Str."&" (B_Str.Null_Bounded_String, "world");
   Ada.Text_IO.Put_Line ("S2 = " & B_Str.To_String (S2));

   B_Str.Append (S1, S2);
   Ada.Text_IO.Put_Line ("S1 = " & B_Str.To_String (S1));

   S2 := B_Str."&" (S2, "again");
   Ada.Text_IO.Put_Line ("S2 = " & B_Str.To_String (S2));

   S2 := B_Str.Append (B_Str.To_Bounded_String ("Hello"), "Waldo!", Ada.Strings.Left);
   Ada.Text_IO.Put_Line ("S2 = " & B_Str.To_String (S2));
end Show_Bounded_String_Ops;
