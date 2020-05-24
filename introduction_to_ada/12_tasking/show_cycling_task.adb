with Ada.Text_IO;
with Ada.Real_Time;

with Delay_Aux_Pkg;

procedure Show_Cycling_Task is
   use type Ada.Real_Time.Time;

   package Aux renames Delay_Aux_Pkg;

   task T;

   task body T is
      Cycle : constant Ada.Real_Time.Time_Span :=
        Ada.Real_Time.Milliseconds (1000);
      Next    : Ada.Real_Time.Time := Aux.Get_Start_Time + Cycle;
      Counter : Integer            := 0;
   begin
      for Iter in 1 .. 5 loop
         delay until Next;

         Aux.Show_Elapsed_Time;
         Aux.Computational_Intensive_App;

         Next := Next + Cycle;

         Ada.Text_IO.Put_Line ("Cycle # " & Integer'Image (Counter));
         Counter := Counter + 1;
      end loop;
      Ada.Text_IO.Put_Line ("Finished cycling");
   end T;
begin
   null;
end Show_Cycling_Task;
