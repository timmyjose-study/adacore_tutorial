with Ada.Text_IO;

procedure Show_Delays is
   task Print_Task;

   task body Print_Task is
   begin
      for Iter in 1 .. 5 loop
         Ada.Text_IO.Put_Line ("Hello from Task Print_Task");
         delay 0.2;
      end loop;
   end Print_Task;
begin
   delay 1.5;
   Ada.Text_IO.Put_Line ("Hello and adios from Main!");
end Show_Delays;
