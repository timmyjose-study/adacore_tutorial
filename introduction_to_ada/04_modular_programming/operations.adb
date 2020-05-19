package body Operations is
  Last_Increment: Integer := 1;

  function Increment_By (N: in Integer; By: in Integer := 1) return Integer is
  begin
    Last_Increment := By;
    return N + By;
  end Increment_By;

  function Get_Increment_Value return Integer is
  begin
    return Last_Increment;
  end Get_Increment_Value;
end Operations;
