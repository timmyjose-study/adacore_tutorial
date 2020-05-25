with Ada.Text_IO;

with PP;

procedure PP_Main is
   T3_Val : PP.T3;
begin
   PP.Init (T3_Val);
   Ada.Text_IO.Put_Line (Integer'Image (T3_Val.Get));
end PP_Main;
