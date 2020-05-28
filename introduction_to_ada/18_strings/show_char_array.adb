with Ada.Text_IO;

-- showing different ways of initialising fixed strings, which are essentially
-- fixed-length character arrays
procedure Show_Char_Array is
   S1 : String (1 .. 15);
   S2 : String (1 .. 15);
   S3 : String (1 .. 15);
begin
   S1 := "Hello          ";

   S2 (1 .. 5)       := "Hello";
   S2 (6 .. S2'Last) := (others => ' ');

   S3 := ('H', 'e', 'l', 'l', 'o', others => ' ');
   Ada.Text_IO.Put_Line (S1);
   Ada.Text_IO.Put_Line (S2);
   Ada.Text_IO.Put_Line (S3);
end Show_Char_Array;
