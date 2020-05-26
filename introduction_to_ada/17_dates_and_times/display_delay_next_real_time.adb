with Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

procedure Display_Delay_Next_Real_Time is
   D    : Ada.Real_Time.Time_Span := Ada.Real_Time.Seconds (5);
   Next : Ada.Real_Time.Time      := Ada.Real_Time.Clock + D;
begin
   Ada.Text_IO.Put_Line
     ("Let's wait for " & Duration'Image (Ada.Real_Time.To_Duration (D)) &
      " seconds");
   delay until Next;
   Ada.Text_IO.Put_Line ("Enough waiting!");
end Display_Delay_Next_Real_Time;
