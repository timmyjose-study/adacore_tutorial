-- display_delay_next_specific_time.adb

with Ada.Text_IO;
with Ada.Calendar;
with Ada.Calendar.Formatting;
with Ada.Calendar.Time_Zones;

procedure Display_Delay_Next_Specific_Time is
   Now                 : Ada.Calendar.Time := Ada.Calendar.Clock;
   Year_Number         : Ada.Calendar.Year_Number;
   Month_Number        : Ada.Calendar.Month_Number;
   Day_Number          : Ada.Calendar.Day_Number;
   Day_Duration_Number : Ada.Calendar.Day_Duration;

   TZ : Ada.Calendar.Time_Zones.Time_Offset :=
     Ada.Calendar.Time_Zones.UTC_Time_Offset;

   Next : Ada.Calendar.Time;
begin
   Ada.Calendar.Split
     (Now, Year_Number, Month_Number, Day_Number, Day_Duration_Number);

   declare
      Hour_Number, Minute_Number, Second_Number : Natural;
      Total_Seconds : Natural := Natural (Day_Duration_Number);
   begin
      Hour_Number   := Total_Seconds / 3_600;
      Total_Seconds := Total_Seconds rem 3_600;
      Minute_Number := Total_Seconds / 60;
      Total_Seconds := Total_Seconds rem 60;
      Second_Number := Total_Seconds;

      -- generate the time to delay until as current_time + 10 seconds (say)
      Next :=
        Ada.Calendar.Formatting.Time_Of
          (Year => Year_Number, Month => Month_Number, Day => Day_Number,
           Hour        => Hour_Number, Minute => Minute_Number,
           Second      => Second_Number + 10, Sub_Second => 0.0,
           Leap_Second => False, Time_Zone => TZ);

      Ada.Text_IO.Put_Line
        ("Current time is " & Ada.Calendar.Formatting.Image (Now, True, TZ));
      Ada.Text_IO.Put_Line
        ("Let's wait until " & Ada.Calendar.Formatting.Image (Next, True, TZ));

      delay until Next;

      Ada.Text_IO.Put_Line ("Enough waiting!");

      Now := Ada.Calendar.Clock;
      Ada.Text_IO.Put_Line
        ("Current time is " & Ada.Calendar.Formatting.Image (Now, True, TZ));
   end;
end Display_Delay_Next_Specific_Time;
