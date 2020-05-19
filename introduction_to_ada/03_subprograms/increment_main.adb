with Ada.Text_IO;
with Ada.Integer_Text_IO;

with Increment;

procedure Increment_Main is
  N: Integer := 99;
begin
  N := Increment (N);
  Ada.Integer_Text_IO.Put (N);
  Ada.Text_IO.New_Line;
end Increment_Main;