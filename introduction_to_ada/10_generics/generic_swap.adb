procedure Generic_Swap (X, Y : in out T) is
  Temp : T := X;
begin
  X := Y;
  Y := Temp;
end Generic_Swap;
