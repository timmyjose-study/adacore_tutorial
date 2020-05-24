with Ada.Text_IO;
with Ada.Real_Time;

with Delay_Aux_Pkg;

procedure Show_Time_Drifting_Task is
   package Aux renames Delay_Aux_Pkg;

   task T;

   task body T is
      Counter : Integer := 0;
   begin
      for Iter in 1 .. 5 loop
         delay 1.0;

         Aux.Show_Elapsed_Time;
         Aux.Computational_Intensive_App;

         Ada.Text_IO.Put_Line ("Cycle # " & Integer'Image (Iter));
         Counter := Counter + 1;
      end loop;
      Ada.Text_IO.Put_Line ("Finished time-drifting loop.");
   end T;
begin
   null;
end Show_Time_Drifting_Task;
