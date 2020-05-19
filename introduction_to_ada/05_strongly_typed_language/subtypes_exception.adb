with Ada.Text_IO;

procedure Subtypes_Exception is
   type Days is
     (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
   subtype Weekend_Days is Days range Saturday .. Sunday;

   D : Weekend_Days := Sunday;
begin
   Ada.Text_IO.Put_Line ("Today is " & Days'Image (D));

   -- this will raise a constraint error at runtime
   D := Wednesday;
end Subtypes_Exception;
