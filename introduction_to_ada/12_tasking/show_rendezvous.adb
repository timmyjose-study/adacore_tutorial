with Ada.Text_IO;

procedure Show_Rendezvous is
   task T is
      entry Start;
   end T;

   task body T is
   begin
      accept Start;
      Ada.Text_IO.Put_Line ("In Task T");
   end T;
begin
   Ada.Text_IO.Put_Line ("Hello and adios from Main");
   delay 3.0;
   T.Start;
end Show_Rendezvous;
