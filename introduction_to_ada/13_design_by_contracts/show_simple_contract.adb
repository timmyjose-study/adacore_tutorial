with Ada.Text_IO;
with Ada.Exceptions;
with System.Assertions;

procedure Show_Simple_Contract is
   type Int_8 is range -2**7 .. 2**7 - 1;

   function Square (V : in Int_8) return Int_8 is (V * V) with
      Pre =>
      (Integer'Size >= Int_8'Size * 2 and
       Integer (V) * Integer (V) < Integer (Int_8'Last)),
      Post =>
      (if abs V in 0 | 1 then Square'Result = abs V else Square'Result > V);

   V : Int_8;
begin
   V := Square (11);
   Ada.Text_IO.Put_Line ("The square of 11 is " & Int_8'Image (V));

   declare
   begin
      V := Square (Square (11));
   exception
      when E : Constraint_Error =>
         Ada.Text_IO.Put_Line
           ("Constraint error : " & Ada.Exceptions.Exception_Message (E));
      when E : System.Assertions.Assert_Failure =>
         Ada.Text_IO.Put_Line
           ("Constraint check failed: " &
            Ada.Exceptions.Exception_Message (E));
   end;

   declare
   begin
      V := Square (128);
   exception
      when E : Constraint_Error =>
         Ada.Text_IO.Put_Line
           ("Constraint error : " & Ada.Exceptions.Exception_Message (E));
      when E : System.Assertions.Assert_Failure =>
         Ada.Text_IO.Put_Line
           ("Constraint check failed: " &
            Ada.Exceptions.Exception_Message (E));
   end;
end Show_Simple_Contract;
