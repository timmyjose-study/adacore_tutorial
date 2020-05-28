with Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Show_Unbounded_String_Ops is
   S1, S2 : Unbounded_String := Null_Unbounded_String;
begin
   S1 := S1 & "Hello";
   S2 := S2 & "Hello";

   Append (S1, " World");
   Ada.Text_IO.Put_Line (To_String (S1));

   S1 := S1 & " " & S2;
   Ada.Text_IO.Put_Line (To_String (S1));

end Show_Unbounded_String_Ops;
