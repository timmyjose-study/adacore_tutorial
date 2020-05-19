with Ada.Text_IO;

procedure Subtypes is
   type Days is
     (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);

   subtype Weekend_Days is Days range Saturday .. Sunday;

   D : Days := Monday;
begin
   for D in Days loop
      case D is
         when Weekend_Days =>
            Ada.Text_IO.Put_Line (Days'Image (D) & " is a weekend day.");
         when others =>
            Ada.Text_IO.Put_Line (Days'Image (D) & " is a weekday day.");
      end case;
   end loop;
end Subtypes;
