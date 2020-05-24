with Ada.Text_IO;

package body Delay_Aux_Pkg is
  use type Ada.Real_Time.Time;

   procedure Show_Elapsed_Time is
      Now_Time     : Ada.Real_Time.Time;
      Elapsed_Time : Ada.Real_Time.Time_Span;
   begin
      Now_Time     := Ada.Real_Time.Clock;
      Elapsed_Time := Now_Time - Start_Time;
      Ada.Text_IO.Put_Line
        ("Elapsed time = " &
         Duration'Image
           (Ada.Real_Time.To_Duration (Elapsed_Time)));
   end Show_Elapsed_Time;

   procedure Computational_Intensive_App is
   begin
      delay 0.5;
   end Computational_Intensive_App;
end Delay_Aux_Pkg;
