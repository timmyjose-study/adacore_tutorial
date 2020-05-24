--- exceptions raised in the declarative part(s) of a program will not be caught at the same level. This is very important to remember while debugging such errors.

with Ada.Text_IO;

procedure Be_Careful is
   function Dangerous return Integer is
   begin
      raise Constraint_Error;
      return 42;
   end Dangerous;
begin
   declare
      A : Integer := Dangerous; -- this triggers the exception
   begin
      Ada.Text_IO.Put_Line (Integer'Image (A));
   exception
      when Constraint_Error =>
         Ada.Text_IO.Put_Line ("This line will never be printed.");
      when others =>
         Ada.Text_IO.Put_Line ("And neither will this one.");
   end;
end Be_Careful;
