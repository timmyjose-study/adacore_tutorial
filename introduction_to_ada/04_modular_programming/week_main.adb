with Ada.Text_IO;

with Week;

procedure Week_Main is
begin
   Ada.Text_IO.Put_Line ("Day  1 is " & Week.Mon);
   Ada.Text_IO.Put_Line ("Day  2 is " & Week.Tue);
   Ada.Text_IO.Put_Line ("Day  3 is " & Week.Wed);
   Ada.Text_IO.Put_Line ("Day  4 is " & Week.Thu);
   Ada.Text_IO.Put_Line ("Day  5 is " & Week.Fri);
   Ada.Text_IO.Put_Line ("Day  6 is " & Week.Sat);
   Ada.Text_IO.Put_Line ("Day  7 is " & Week.Sun);
end Week_Main;
