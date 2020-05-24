with Ada.Text_IO;

procedure Show_Simple_Tasks is
   task T1;
   task T2;

   task body T1 is
   begin
      delay 0.4;
      Ada.Text_IO.Put_Line ("In Task T1");
   end T1;

   task body T2 is
   begin
      delay 0.3;
      Ada.Text_IO.Put_Line ("In Task T2");
   end T2;
begin
   Ada.Text_IO.Put_Line ("In Main");
end Show_Simple_Tasks;
