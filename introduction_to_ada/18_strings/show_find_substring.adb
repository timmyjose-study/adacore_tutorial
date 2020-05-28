with Ada.Text_IO;
with Ada.Strings.Fixed;

procedure Show_Find_Substring is
   S   : String          := "Hello" & Ada.Strings.Fixed."*" (3, " World");
   P   : constant String := "World";
   Idx : Natural;
   Cnt : Natural;
begin
   Cnt := Ada.Strings.Fixed.Count (Source => S, Pattern => P);
   Ada.Text_IO.Put_Line ("Source string is : " & S);
   Ada.Text_IO.Put_Line ("Pattern string is : " & P);
   Ada.Text_IO.Put_Line
     ("Found " & Natural'Image (Cnt) &
      " occurrences of the pattern string in the source string.");

   Idx := 0;
   for Iter in 1 .. Cnt loop
      Idx := Ada.Strings.Fixed.Index (Source => S, Pattern => P, From => Idx + 1);
      Ada.Text_IO.Put_Line
        ("Found an occurrence of the pattern string in the source string at index " &
         Natural'Image (Idx));
   end loop;
end Show_Find_Substring;
