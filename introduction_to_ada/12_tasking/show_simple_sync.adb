with Ada.Text_IO;

procedure Show_Simple_Sync is
   task T;

   task body T is
   begin
      for Iter in 1 .. 100 loop
         delay 0.01;
         Ada.Text_IO.Put_Line ("Hello from Task!");
      end loop;
   end T;
begin
   Ada.Text_IO.Put_Line ("Hello and goodbye from Main!");
end Show_Simple_Sync;
