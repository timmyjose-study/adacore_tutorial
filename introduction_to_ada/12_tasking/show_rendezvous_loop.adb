with Ada.Text_IO;

procedure Show_Rendezvous_Loop is
   task T is
      entry Start;
      entry Reset;
      entry Increment;
   end T;

   task body T is
      Counter : Integer := 0;
   begin
      accept Start do
         Ada.Text_IO.Put_Line ("Task T started");
      end Start;

      loop
         select
            accept Reset do
               Counter := 0;
               delay 0.02;
               Ada.Text_IO.Put_Line ("Counter reset");
            end Reset;
         or
            accept Increment do
               Counter := Counter + 1;
               delay 0.05;
               Ada.Text_IO.Put_Line ("Counter incremented");
            end Increment;
         or
            terminate; -- stop the task when the main task is no longer active
         end select;
      end loop;
   end T;
begin
   Ada.Text_IO.Put_Line ("Hello from Main. Task T starting in...");
   for Iter in reverse 1 .. 5 loop
      delay 1.0;
      Ada.Text_IO.Put (Integer'Image (Iter) & "... ");
   end loop;

   T.Start;

   for Iter in 1 .. 5 loop
      T.Increment;
   end loop;

   T.Reset;
   for Iter in 1 .. 10 loop
      T.Increment;
   end loop;

   Ada.Text_IO.Put_Line ("Adios from Main");
end Show_Rendezvous_Loop;
