with Ada.Text_IO;
with Ada.IO_Exceptions;

procedure Show_Integer_IO_Inst is
   type Game_Number is range 1 .. 100;

   package Game_Number_IO is new Ada.Text_IO.Integer_IO (Num => Game_Number);

   G : Game_Number;
begin
   declare
   begin
      Ada.Text_IO.Put ("Enter a game number: ");
      Game_Number_IO.Get (G);
      Game_Number_IO.Put (G);
      Ada.Text_IO.New_Line;
   exception
      when Ada.IO_Exceptions.Data_Error =>
         Ada.Text_IO.Put_Line
           (Ada.Text_IO.Standard_Error,
            "Number is out of the range [1, 100].");
   end;
end Show_Integer_IO_Inst;
