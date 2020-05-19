with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Check_Positive is
   N : Integer := 0;
begin
   Ada.Text_IO.Put ("Enter a number: ");
   Ada.Integer_Text_IO.Get (N);

   if N > 0 then
      Ada.Integer_Text_IO.Put (N);
      Ada.Text_IO.Put_Line (" is a positive number");
   end if;
end Check_Positive;
