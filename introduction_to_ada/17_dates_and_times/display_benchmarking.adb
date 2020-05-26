with Ada.Text_IO;
with Ada.Real_Time;

procedure Display_Benchmarking is
   use type Ada.Real_Time.Time;

   Start_Time, Stop_Time : Ada.Real_Time.Time;
   Elapsed_Time          : Ada.Real_Time.Time_Span;

   procedure Computationally_Intensive_Task is
   begin
      delay 5.0;
   end Computationally_Intensive_Task;
begin
   Start_Time := Ada.Real_Time.Clock;
   Computationally_Intensive_Task;
   Stop_Time    := Ada.Real_Time.Clock;
   Elapsed_Time := Stop_Time - Start_Time;

   Ada.Text_IO.Put_Line
     ("Task took" & Duration'Image (Ada.Real_Time.To_Duration (Elapsed_Time)) &
      " seconds");
end Display_Benchmarking;
