with Ada.Text_IO;

procedure Enumeration_Example is
   type Days is
     (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
begin
   for D in Days loop
      case D is
         when Saturday | Sunday =>
            Ada.Text_IO.Put_Line (Days'Image (D) & " is a weekend day.");
         when others =>
            Ada.Text_IO.Put_Line (Days'Image (D) & " is a weekday.");
      end case;
   end loop;
end Enumeration_Example;
