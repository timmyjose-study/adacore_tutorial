with Ada.Text_IO;
with Ada.Containers.Indefinite_Hashed_Maps;
with Ada.Strings.Hash;

procedure Show_Hashed_Map is
   package Integer_Hashed_Maps is new Ada.Containers.Indefinite_Hashed_Maps
     (Key_Type => String, Element_Type => Integer, Hash => Ada.Strings.Hash,
      Equivalent_Keys => "=");

   M : Integer_Hashed_Maps.Map;
begin
   M.Include ("Alice", 24);
   M.Include ("Bob", 28);
   M.Include ("John", 40);

   if M.Contains ("Alice") then
      Ada.Text_IO.Put_Line ("Alice's age is " & Integer'Image (M ("Alice")));
   end if;

   M ("Alice") := 25;

   for C in M.Iterate loop
      Ada.Text_IO.Put_Line
        ("Name: " & Integer_Hashed_Maps.Key (C) & ", Value: " &
         Integer'Image (M (C)));
   end loop;
   Ada.Text_IO.New_Line;
end Show_Hashed_Map;
