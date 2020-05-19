with Ada.Text_IO;

procedure Derived_Enumerations is
   type Days is
     (Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday);

   type Weekday_Days is new Days range Monday .. Friday;
begin
   for D in Days loop
      Ada.Text_IO.Put_Line (Days'Image (D));
   end loop;
   Ada.Text_IO.New_Line (2);

   for W in Weekday_Days loop
      Ada.Text_IO.Put_Line (Weekday_Days'Image (W));
   end loop;
   Ada.Text_IO.New_Line;
end Derived_Enumerations;
