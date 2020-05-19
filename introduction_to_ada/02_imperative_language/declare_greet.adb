with Ada.Text_IO;

procedure Declare_Greet is
begin
   loop
      Ada.Text_IO.Put ("What is your name? ");

      declare
         Name : String := Ada.Text_IO.Get_Line;
      begin
         exit when Name = "";
         Ada.Text_IO.Put_Line ("Nice to meet you, " & Name);
         Ada.Text_IO.New_Line;
      end;
   end loop;
end Declare_Greet;
