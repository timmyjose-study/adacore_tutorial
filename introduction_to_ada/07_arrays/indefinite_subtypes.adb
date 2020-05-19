with Ada.Text_IO;

procedure Indefinite_Subtypes is
   function Get_Number return Integer is
   begin
      return Integer'Value (Ada.Text_IO.Get_Line);
   end Get_Number;

   A : String          := "Hello"; -- indefinite subtype
   B : String (1 .. 5) := "World"; -- definite subtype
   C : String (1 .. Get_Number); -- indefinite subtype
begin
   null;
end Indefinite_Subtypes;
