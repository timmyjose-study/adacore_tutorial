with Ada.Text_IO;

procedure Show_Task_Type_Array is
   task type TT is
      entry Start (N : Integer);
   end TT;

   task body TT is
      Task_N : Integer;
   begin
      accept Start (N : Integer) do
         Task_N := N;
      end Start;
      Ada.Text_IO.Put_Line ("In task T: " & Integer'Image (Task_N));
   end TT;

   My_Tasks : array (1 .. 5) of TT;
begin
   Ada.Text_IO.Put_Line ("Hello from Main");

   for Index in My_Tasks'Range loop
      My_Tasks (Index).Start (Index);
   end loop;

   Ada.Text_IO.Put_Line ("Adios from Main");
end Show_Task_Type_Array;
