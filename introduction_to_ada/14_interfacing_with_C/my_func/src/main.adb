with Interfaces.C; use Interfaces.C;
with Ada.Text_IO;
with Show_C_Func;

procedure Main is
  N : int := 11;
begin
  N := Show_C_Func.my_func (N);
  Ada.Text_IO.Put_Line ("N = " & int'Image (N));
end Main;