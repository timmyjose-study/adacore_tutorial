with Ada.Text_IO;

procedure String_Literals is
   A : String := "Hello, world";
   B : String := ('H', 'e', 'l', 'l', 'o', ',', ' ', 'w', 'o', 'r', 'l', 'd');
begin
   Ada.Text_IO.Put_Line (A);
   Ada.Text_IO.Put_Line (B);
end String_Literals;
