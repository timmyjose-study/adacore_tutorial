with Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;
with Ada.Execution_Time; use Ada.Execution_Time;

procedure Display_Benchmarking_CPU_Time is
   procedure Computationally_Intensive_App is
   begin
      delay 5.0;
   end Computationally_Intensive_App;

   Start_Time, Stop_Time : CPU_Time;
   Elapsed_Time          : Time_Span;
begin
   Start_Time := Clock;
   Computationally_Intensive_App;
   Stop_Time    := Clock;
   Elapsed_Time := Stop_Time - Start_Time;

   Ada.Text_IO.Put_Line
     ("CPU time : " & Duration'Image (To_Duration (Elapsed_Time)) &
      "  seconds");
end Display_Benchmarking_CPU_Time;
