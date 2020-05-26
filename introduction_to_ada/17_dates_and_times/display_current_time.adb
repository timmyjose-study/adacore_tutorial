with Ada.Text_IO;
with Ada.Calendar;
with Ada.Calendar.Formatting;

procedure Display_Current_Time is
   -- UTC Time
   Now : constant Ada.Calendar.Time := Ada.Calendar.Clock;
begin
   Ada.Text_IO.Put_Line
     ("The current time is " & Ada.Calendar.Formatting.Image (Now));
end Display_Current_Time;
