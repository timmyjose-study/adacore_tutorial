with Ada.Text_IO;

procedure Show_Simple_Task_Type is
   task type TT;

   task body TT is
   begin
      Ada.Text_IO.Put_Line ("Hello from Task!");
   end TT;

   Task_1 : TT;
   Task_2 : TT;
begin
   null;
end Show_Simple_Task_Type;
