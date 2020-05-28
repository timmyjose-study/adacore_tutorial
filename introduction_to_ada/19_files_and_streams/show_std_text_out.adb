with Ada.Text_IO;

procedure Show_Std_Text_Out is
begin
   Ada.Text_IO.Put_Line (Ada.Text_IO.Standard_Output, "Hello, stdout!");
   Ada.Text_IO.Put_Line (Ada.Text_IO.Standard_Error, "Hello, stderr!");
end Show_Std_Text_Out;
