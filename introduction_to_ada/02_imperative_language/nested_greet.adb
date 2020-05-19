with Ada.Text_IO;

procedure Nested_Greet is
  procedure Greet is
  begin
    Ada.Text_IO.Put_Line ("Hello one more time, world!");
  end Greet;
begin
  Greet;
end Nested_Greet;