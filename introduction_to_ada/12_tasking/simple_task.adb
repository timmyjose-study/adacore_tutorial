with Ada.Text_IO;

procedure Simple_Task is
   task T;

   task body T is
   begin
      delay 0.5;
      Ada.Text_IO.Put_Line ("Hello from Task!");
   end T;
begin
   Ada.Text_IO.Put_Line ("Hello from main!");
end Simple_Task;
