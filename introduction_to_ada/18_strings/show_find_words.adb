with Ada.Text_IO;
with Ada.Strings.Fixed;
with Ada.Strings.Maps;

procedure Show_Find_Words is
   S          : String := "Hello" & Ada.Strings.Fixed."*" (3, " World");
   F          : Positive;
   L          : Natural;
   I          : Natural                                 := 1;
   Whitespace : constant Ada.Strings.Maps.Character_Set :=
     Ada.Strings.Maps.To_Set (' ');
begin
   Ada.Text_IO.Put_Line ("String is : " & S);
   Ada.Text_IO.Put_Line ("String length = " & Natural'Image (S'Length));

   while I in S'Range loop
      Ada.Strings.Fixed.Find_Token
        (Source => S, Set => Whitespace, From => I, Test => Ada.Strings.Outside,
         First  => F, Last => L);

      exit when L = 0;

      Ada.Text_IO.Put_Line
        ("Found word instance at position " & Natural'Image (F) & ": " & "'" &
         S (F .. L) & "'");
      I := L + 1;
   end loop;
end Show_Find_Words;
