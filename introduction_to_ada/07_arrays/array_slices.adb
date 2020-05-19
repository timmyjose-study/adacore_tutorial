with Ada.Text_IO;

procedure Array_Slices is
   Buf       : String := "Hello ...";
   Full_Name : String := "John Smith";
begin
   Buf (7 .. 9) := "Bob";
   Ada.Text_IO.Put_Line (Buf);
   Ada.Text_IO.Put_Line ("Hello, " & Full_Name (Full_Name'First .. Full_Name'First + 4));
end Array_Slices;
