with Ada.Text_IO;

procedure String_Range is
   -- these two are essentially identical
   A : String (1 .. 13) := "Hello, world!";
   B : String           := "Hello, world!";
begin
   Ada.Text_IO.Put_Line (A);
   Ada.Text_IO.Put_Line (B);
end String_Range;
