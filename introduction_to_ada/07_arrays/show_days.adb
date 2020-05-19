with Ada.Text_IO;

procedure Show_Days is
   type Days is
     (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
   subtype Day_Name is String (1 .. 2); -- this still has to be a definite type

   type Days_Name_Type is array (Days) of Day_Name;

   Names : constant Days_Name_Type :=
     ("Mo", "Tu", "We", "Th", "Fr", "Sa", "Su");
begin
   for Index in Names'Range loop
      Ada.Text_IO.Put_Line (Names (Index));
   end loop;
end Show_Days;
