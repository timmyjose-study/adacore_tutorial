with Ada.Text_IO;
with Ada.Calendar;

procedure Display_Delay_Next is
  use type Ada.Calendar.Time;

   D    : Duration          := 5.0;
   Now  : Ada.Calendar.Time := Ada.Calendar.Clock;
   Next : Ada.Calendar.Time := Now + D;
begin
   Ada.Text_IO.Put_Line ("Delaying for " & Duration'Image (D));
   delay until Next;
   Ada.Text_IO.Put_Line ("Enough waiting!");
end Display_Delay_Next;
