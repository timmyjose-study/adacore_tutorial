with Ada.Text_IO;
with Ada.Integer_Text_IO;

with Increment_By;

procedure Increment_By_Main is
   N : Integer := 99;
begin
   Ada.Integer_Text_IO.Put (N);
   Ada.Text_IO.New_Line;

   N := Increment_By (N, 2);
   Ada.Integer_Text_IO.Put (N);
   Ada.Text_IO.New_Line;
end Increment_By_Main;
