with Ada.Text_IO;

procedure Primitives is
   package Week is
      type Days is
        (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);

      -- this is defined in the same package and scope as the type, and so is a
      -- primitive of this type.
      procedure Print_Day (D : in Days);
   end Week;

   package body Week is
      procedure Print_Day (D : in Days) is
      begin
         Ada.Text_IO.Put_Line (Days'Image (D));
      end Print_Day;
   end Week;

   -- this type also inherits the Print_Day subprogram
   type Weekend_Days is new Week.Days range Week.Saturday .. Week.Sunday;
begin
   declare
      D1 : Week.Days    := Week.Friday;
      D2 : Weekend_Days := Sunday;
   begin
      Week.Print_Day (D1);
      Print_Day (D2);
   end;
end Primitives;
