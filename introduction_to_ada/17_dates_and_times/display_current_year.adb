with Ada.Text_IO;
with Ada.Calendar;

procedure Display_Current_Year is
   Now     : Ada.Calendar.Time := Ada.Calendar.Clock;
   Year    : Ada.Calendar.Year_Number;
   Month   : Ada.Calendar.Month_Number;
   Day     : Ada.Calendar.Day_Number;
   Seconds : Ada.Calendar.Day_Duration;
begin
   Ada.Calendar.Split (Now, Year, Month, Day, Seconds);
   Ada.Text_IO.Put_Line ("Year : " & Ada.Calendar.Year_Number'Image (Year));
   Ada.Text_IO.Put_Line ("Month : " & Ada.Calendar.Month_Number'Image (Month));
   Ada.Text_IO.Put_Line ("Day : " & Ada.Calendar.Day_Number'Image (Day));
   Ada.Text_IO.Put_Line
     ("Seconds : " & Ada.Calendar.Day_Duration'Image (Seconds));
end Display_Current_Year;
