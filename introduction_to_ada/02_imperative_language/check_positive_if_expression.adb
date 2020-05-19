with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Check_Positive_If_Expression is
   N : Integer := 0;
begin
   Ada.Text_IO.Put ("Enter a number: ");
   Ada.Integer_Text_IO.Get (N);

   Ada.Integer_Text_IO.Put (N);
   declare
      Message : String :=
        (if N > 0 then " is positive" else " is not positive");
   begin
      Ada.Text_IO.Put_Line (Message);
   end;
end Check_Positive_If_Expression;
