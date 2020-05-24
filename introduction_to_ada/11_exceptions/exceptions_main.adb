with Ada.Text_IO;
with Ada.Exceptions;

with Exceptions; use Exceptions;

procedure Exceptions_Main is
begin
   declare
   begin
      raise My_Exception;
   exception
      when My_Exception =>
         Ada.Text_IO.Put_Line ("Caught an instance of My_Exception");
   end;

   -- we can also raise exceptions with error messages, which are optional
   declare
   begin
      raise My_Exception with "Something went wrong!";
   exception
      when Constraint_Error =>
         Ada.Text_IO.Put_Line ("A constraint error occurred");
      when E : My_Exception =>
         Ada.Text_IO.Put_Line
           ("Caught an instance of My_Exception with message: " & Ada.Exceptions.Exception_Message (E));
   end;
end Exceptions_Main;
