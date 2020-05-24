with Ada.Text_IO;

procedure Check (X, Y : T) is
   Result : Boolean;
begin
   Result := Comparison (X, Y);
   if Result then
      Ada.Text_IO.Put_Line ("Compaing " & Description & " is Equal");
   else
      Ada.Text_IO.Put_Line ("Comparing " & Description & " is Not equal");
   end if;
end Check;
