--- exceptions raised in the declarative part(s) of a program will not be caught at the same level. This is very important to remember while debugging such errors.
--- This can be easily remedied by introducing a nested layer inside the same subprogram which handles the exception, as shown here, or simply moving the code that
--  triggers the exception out of the declarative block.

with Ada.Text_IO;

procedure Be_Careful_Fixed is
   function Dangerous return Integer is
   begin
      raise Constraint_Error;
      return 42;
   end Dangerous;
begin
   declare
      A : Integer;
   begin
      A := Dangerous; -- this will now trigger the exception locally
      Ada.Text_IO.Put_Line (Integer'Image (A));
   exception
      when Constraint_Error =>
         Ada.Text_IO.Put_Line ("Constraint error while trying to initialise variable with integer");
      when others =>
         Ada.Text_IO.Put_Line ("Some other error occurred");
   end;
end Be_Careful_Fixed;
