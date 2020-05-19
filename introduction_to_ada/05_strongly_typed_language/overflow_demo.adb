procedure Overflow_Demo is
  N: Integer := Integer'Last;
begin
  N := N + 1; -- trigger overflow, does raise a warning at compile time
end Overflow_Demo;
